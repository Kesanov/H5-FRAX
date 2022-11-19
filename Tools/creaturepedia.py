from asyncore import write
import sys
import os
from xdb import XDB
from shutil import copyfile
import traceback
from utilities import *
from tqdm import tqdm


stats = [
	'AttackSkill',
	'DefenceSkill',
	'MinDamage', # 'MaxDamage',
	'Initiative',
	'Speed',
    'Health',
    'SpellPoints', #'SpellPoints1',
	'Shots',
    'Exp',
    'WeeklyGrowth',
    # 'Cost -> Gold'
]

towns = {
    'Academy': 'AC',
    'Dungeon': 'DU',
    'Dwarf': 'FO',
    'Haven': 'HA',
    'Inferno': 'IN',
    'Necropolis': 'NE',
    'Neutrals': 'NL',
    'Orcs': 'ST',
    'Preserve': 'SY',
}

# tiers and upgrades of neutral units i
neutrals = {
    'Air_Elemental': (1,1),
    'Earth_Elemental': (1,2),
    'Water_Elemental': (2,1),
    'Fire_Elemental': (2,2),
    'Wolf': (3,1),
    'Mummy': (4,1),
    'Manticore': (5,1),
    'Death_Knight': (6,1),
    'SnowApe': (7,3),
    'Black_Knight': (7,2),
    'Phoenix': (7,1),
}

def upgrade3(town):
    return '3rd' if town != 'Haven' else 'Renegates'

def nozero(text):
    return text if text != '0' else '-'

def dps(unit):
    damage = (unit['MinDamage'].int + unit['MaxDamage'].int + 1)/2 
    power  = unit['WeeklyGrowth'].int * unit['Initiative'].int
    return damage * power / 10

def hp(unit):
    health = unit['WeeklyGrowth'].int * unit['Health'].int
    return health / 10

caster_text = '''\
<br><br><color_bright>~Spells~<br>
'''

def creaturepedia():
    path = 'GameMechanics/Creature/Creatures'
    spellname = {'VAMPIRISM': 'Vampirism', 'SORROW': 'Sorrow', 'ABILITY_LAY_HANDS': 'Lay Hands'}

    ### LOAD SPELLS ###################

    for data in list(XDB.load('GameMechanics/RefTables/UndividedSpells.xdb')['objects'])[1:]:
        name = data['Obj'].atr['href'][1:-17]
        try:
            name = open(XDB.load(name)['NameFileRef'].atr['href'][1:], encoding='utf-16').read()
        except Exception:
            name = ' '.join(word.capitalize() for word in data['ID'].txt[6:].split('_'))
        spellname[data['ID'].txt[6:]] = name

    for town, townID in tqdm(towns.items(), desc = 'Creaturepedia'):
        u3 = upgrade3(town)
        thirds = [f'{u3}/{name}' for name in os.listdir(f'{path}/{town}/{u3}')] if town != 'Neutrals' else []
        for filename in os.listdir(f'{path}/{town}') + thirds:
            if filename[-4:] != ".xdb": continue
            filepath = os.path.join(path, town, filename)
            try:
            # if True:
                # LOAD DATA
                data = XDB.load(filepath)
                tier = data['CreatureTier'].int
                upgr = 0 if data['BaseCreature'].txt == 'CREATURE_UNKNOWN' else 1 if u3 not in filepath else 2
                if town == 'Neutrals':
                    tier, upgr = neutrals[filename[:-4]]
                
                # STATISTICS
                cost = [data['Cost']['Gold'].txt] + [f'{d.txt} {d.tag}' for d in data['Cost'] if d.txt != '0'][:-1]
                stat = [nozero(data[s].txt) for s in stats] + [' + <br>'.join(cost)]
                stat[2] += ' - ' + data['MaxDamage'].txt
                stat[6] += ' | ' + nozero(data['SpellPoints1'].txt)
                stat[8]  = f'{int(dps(data) * hp(data) / 50)}%'

                filepath = f'Frax/UI/Doc/Creaturepedia/{townID}/T{tier}/{upgr}'
                for ix, text in enumerate(stat):
                    write_txt(f'{filepath}/s{ix+1}', text)

                # ABILITIES
                abilities = [a.txt[8:] for a in data['Abilities']]
                # LIVING
                if not any(a in ('ELEMENTAL', 'UNDEAD', 'MECHANICAL') for a in abilities):
                    abilities = ['FLESH_AND_BLOOD'] + abilities
                # SHOOTER
                if data['Shots'].txt != '0':
                    abilities = abilities + ['SHOOTER']  
                # CASTER           
                if data['KnownSpells'].tree:
                    spells = (f'{spellname[s["Spell"].txt[6:]]} ({s["Mastery"].txt[8:].capitalize()})' for s in data['KnownSpells'])
                    copyfile(f'UI/Doc/Creaturepedia/Common/Abilities/CASTER/P{len(abilities)}.(WindowMSButton).xdb', f'{filepath}/C.(WindowMSButton).xdb')
                    write_txt(f'{filepath}/C', caster_text + '\n'.join(spells))
                caster_ability = XDB.new('Item', [], {'href': 'C.(WindowMSButton).xdb#xpointer(/WindowMSButton)'}) 
                # OTHER
                abilities = [f'/UI/Doc/Creaturepedia/Common/Abilities/{a}/P{i}.(WindowMSButton).xdb#xpointer(/WindowMSButton)' for i, a in enumerate(abilities)]
                xdb = XDB.load(f'Tools/Templates/Creaturepedia/A.(WindowSimpleShared).xdb')
                xdb['Children'] = XDB.new('Children', [XDB.new('Item', [], {'href': a}) for a in abilities] + [caster_ability])
                xdb.save(f'{filepath}/A.(WindowSimpleShared).xdb')



            except Exception as e:
                print('ERROR:', filename, e)
                # print(traceback.print_exc())
                

def ability_positions():
    path = 'UI/Doc/Creaturepedia'
    temp = [XDB.load(f'Tools/Templates/Creaturepedia/P{i}.(WindowMSButton).xdb') for i in range(8)]
    for data in XDB.load('GameMechanics/RefTables/CombatAbilities.xdb')['objects']:
        for i, t in enumerate(temp):
            t['TextFileRef'].atr['href'] = data['obj']['NameFileRef'].atr['href']
            t['TooltipFileRef'].atr['href'] = data['obj']['DescriptionFileRef'].atr['href']
            if data['ID'].txt == 'ABILITY_CASTER':
                t['TooltipFileRef'].atr['href'] = 'C.txt'
            t.save(f'Frax/{path}/Common/Abilities/{data["ID"].txt[8:]}/P{i}.(WindowMSButton).xdb')

def main():
    ability_positions()
    creaturepedia()

if __name__ == '__main__':
    main()