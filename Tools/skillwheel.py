import shutil
from collections import defaultdict
from fileinput import filename
from os import utime, walk
from xdb import XDB
from math import sin, cos, radians
import traceback
from settings import *
from utilities import *
from tqdm import tqdm


def camel_case(name):
    return ''.join(word.capitalize() for word in name.split('_'))

def name(skill):
    return 'HERO_SKILL_'+skill

def dependency(skill, hero):
    deps  = XDB.new('dependenciesIDs',[XDB.new('Item', 'HERO_SKILL_'+skill)])
    return XDB.new('Item', [XDB.new('Class', 'HERO_CLASS_'+hero), deps])

def is128x128(href):
    any_of, none_of = ['H5A2/', 'H5A1/', 'Added/'], [
        'Bodybuilding', 'AgonizingStrike', 'Basic_Voice',
        'Advanced_Voice', 'Expert_Voice', 'Our_Blood', 
        'MightOverMagic', 'GatingMastery', 'Shatter', 'Detain',
        'Runic_Machines', 'CursedGround', 'Path_of_War',
        'Rage_of_the_Forest',
    ]
    return any(x in href for x in any_of) and not any(x in href for x in none_of)


def skills():
    root = XDB.load('GameMechanics/RefTables/Skills.xdb')
    data = {s['ID'].txt: s for s in root['objects']}


    for skillname, skill in data.items():
        if skillname[11:] not in ['ELEMENTAL_VISION', 'ABSOLUTE_CHAINS']:
            skill['obj']['SkillPrerequisites'] = []
            skill['obj']['SkillType'].txt = 'SKILLTYPE_DISABLED'

    for skill, perks in SKILLS.items():
        data[name(skill)]['obj']['SkillType'].txt = 'SKILLTYPE_SKILL'
        for perk1, perk2 in zip(perks[::2], perks[1::2]):
            deps2 = [dependency(perk1, hero) for hero in HEROES]
            perk1, perk2 = data[name(perk1)], data[name(perk2)]
            perk1['obj']['SkillType'].txt = 'SKILLTYPE_STANDART_PERK'
            perk2['obj']['SkillType'].txt = 'SKILLTYPE_SPECIAL_PERK'
            perk1['obj']['BasicSkillID'].txt = name(skill)
            perk2['obj']['BasicSkillID'].txt = name(skill)
            perk1['obj']['SkillPrerequisites'] = []
            perk2['obj']['SkillPrerequisites'] = deps2

            # TODO Ultimate Dependencies
    
    
    root.save('Frax/GameMechanics/RefTables/Skills.xdb')

def duels():
    for hero, (tag, ult, skills) in DUELS.items():
        path = f'Frax/Maps/DuelMode/Heroes/{hero}.xdb'
        root = XDB.load(path)

        skillnames = [ULTIMATES[ult]] + list(skills)
        perknames = [(SKILLS[s][2*p[0]], SKILLS[s][2*p[0]+1], SKILLS[s][2*p[1]]) for s, p in skills.items()]
        root['Editable']['skills'] = [XDB.new('Item', {'Mastery':'MASTERY_EXPERT', 'SkillID': name(s)}) for s in skillnames]
        root['Editable']['perkIDs'] = [XDB.new('Item', name(p)) for ps in perknames for p in ps]
        root['Editable']['spellIDs'] = [XDB.new('Item', 'SPELL_'+s) for sk in skills if sk in SPELLS for s in SPELLS[sk]]
        if ult == LEARNING:
            root['Editable']['spellIDs'] = [XDB.new('Item', 'SPELL_'+s) for ss in SPELLS.values() for s in ss]

        stats = next(h[2] for h in HEROES.values() if tag+hero[-1:] == h[0]+str(h[1]))
        root['Editable']['Offence'].int    = int(0.5 * stats[0])
        root['Editable']['Defence'].int    = int(0.5 * stats[1])
        root['Editable']['Spellpower'].int = int(0.5 * stats[2])
        root['Editable']['Knowledge'].int  = int(0.5 * (100 - stats[0] - stats[1] - stats[2]))


        root['PrimarySkillMastery'].txt = 'MASTERY_EXPERT'

        root.save(path)



def lua():
    file = open('scripts/Frax/Skills.lua', 'w')

    file.write(f'SKILL_STAMINA = SKILL_{STAMINA}\n')
    file.write(f'SKILL_RUSH = SKILL_{RUSH}\n')
    file.write(f'SKILL_FAITH = SKILL_{FAITH}\n\n')

    file.write('Fx_Skills = {\n')
    for s in SKILLS:
        file.write(f'  SKILL_{s},\n')
    file.write('}\n\n')
    
    file.write('Fx_Perks = {\n')
    for s, ps in SKILLS.items():
        file.write(f'  [SKILL_{s}] = {{ {", ".join("SKILL_"+p for p in ps)} }},\n')
    file.write('}\n\n')

    file.write('Fx_Ultimates = {\n')
    for s, u in ULTIMATES.items():
        file.write(f'  [SKILL_{s}] = SKILL_{u},\n')
    file.write('}\n\n')

    file.write('Fx_UltimateText = {\n')
    for s, (name, text) in ultimate_text.items():
        file.write(f'  [SKILL_{s}] = {{ "{name}", "{text}" }},\n')
    file.write('}\n\n')
    file.close()
    shutil.copy('scripts/Frax/Skills.lua', 'Frax/scripts/Frax/')
    



def classes():
    root = XDB.load('GameMechanics/RefTables/HeroClass.xdb')
    
    for data in root['objects']:
        hero = data['ID'].txt[11:]
        if hero == 'NONE': continue
        hero = HEROES[hero]
        data['obj']['SkillsProbs'] = [XDB.new('Item', {'SkillID': name(s), 'Prob': '5'}) for s in hero[4]]
        data['obj']['AttributeProbs'] = {
            'OffenceProb': hero[2][0],
            'DefenceProb': hero[2][1],
            'SpellpowerProb': hero[2][2],
            'KnowledgeProb': 100 - hero[2][0] - hero[2][1] - hero[2][2],
        }

    root.save('Frax/GameMechanics/RefTables/HeroClass.xdb')


    for dirname, _, names in walk('Frax/MapObjects/'):
        for filename in names:
            if filename[:-4] != '.xdb': continue
            path = dirname + '/' + filename
            data = XDB.load(path)
            if data.tag != 'AdvMapHeroShared': continue

            clss = data['Class'].txt[11:]
            data['PrimarySkill']['Mastery'].txt = 'MASTERY_BASIC'
            data['PrimarySkill']['SkillID'].txt = name(HEROES[clss][3])

            data.save()


def swname(name):
    name = camel_case(name).replace('Magic', '').replace('ExpertTrainer', 'ShatterSummoning').replace('WarcryLearning','ShatterDestructive')
    alias =  {
        'Offence': 'Offense',
        'Defence': 'Defense',
        'Training': 'Combat',
        'Learning': 'Enlightenment',
        'DemonicRage': 'Bloodrage',
        'Voice': 'Shout',
        'Invocation': 'Occultism',
        'Artificier': 'Artificer',
        'Voice': 'Shouting',
    }
    return name if name not in alias else alias[name]

ultimate_text = {}
SW = 'UI/Doc/SkillWheel'
def skillwheel():
    root = XDB.load('./GameMechanics/RefTables/Skills.xdb')
    root = {s['ID'].txt: s for s in root['objects']}

    # BUTTON TEMPLATES
    pb = XDB.load(f'Tools/Templates/Skillwheel/PerkButtonX.(WindowMSButtonShared).xdb')
    pd = XDB.load(f'Tools/Templates/Skillwheel/PerkDescX.(WindowTextViewShared).xdb')
    pp = XDB.load(f'Tools/Templates/Skillwheel/PerkPageX.(WindowSimple).xdb')
    pg = XDB.load(f'Tools/Templates/Skillwheel/PerkPageX.(WindowSimpleShared).xdb')
    so = XDB.load(f'Tools/Templates/Skillwheel/SwitchOnX.(UISSendUIMessage).xdb')
    for skill in (swname(s) for s in SKILLS):
        for i in range(10):
            for tag in ('Normal', 'MouseOver', 'Pushed', 'Disabled', 'RightButtonDown'):
                pb['VisualStates'][0][tag]['Background'].atr['href'] = f'{i}.(BackgroundSimpleScallingTexture).xdb#xpointer(/BackgroundSimpleScallingTexture)'
            pb['VisualStates'][0]['MouseOver']['OnEnterSubState']['Commands'][0].atr['href'] = f'SwitchOn{i}.(UISSendUIMessage).xdb#xpointer(/UISSendUIMessage)'
            pd['Children'][0].atr['href'] = f'PerkName{i}.(WindowTextView).xdb#xpointer(/WindowTextView)'
            pp['Shared'].atr['href'] = f'PerkPage{i}.(WindowSimpleShared).xdb#xpointer(/WindowSimpleShared)'
            pp['Name'].txt = f'{swname(skill)}_Perk{i}'
            pg['Children'][0].atr['href'] = f'PerkDesc{i}.(WindowTextView).xdb#xpointer(/WindowTextView)'
            so['szParam'][0].txt = f'{swname(skill)}_Perk{i}'
            pb.save(f'Frax/{SW}/Skills/{skill}/PerkButton{i}.(WindowMSButtonShared).xdb')
            pd.save(f'Frax/{SW}/Skills/{skill}/PerkDesc{i}.(WindowTextViewShared).xdb')
            pp.save(f'Frax/{SW}/Skills/{skill}/PerkPage{i}.(WindowSimple).xdb')
            pg.save(f'Frax/{SW}/Skills/{skill}/PerkPage{i}.(WindowSimpleShared).xdb')
            so.save(f'Frax/{SW}/Skills/{skill}/SwitchOn{i}.(UISSendUIMessage).xdb')

        

    # BUTTONS POSITIONS
    pb = XDB.load(f'Tools/Templates/Skillwheel/PerkButtonX.(WindowMSButton).xdb')
    for skill in (swname(s) for s in SKILLS):
        for i in range(12):
            for j, (angle, dist) in enumerate(((20,190), (30,350), (20,350), (10,350), (30,300), (20,300), (10,300), (30,250), (20,250), (10,250))):
                dist, angle = dist - 10, radians(angle - 5 + 360/12 * i)
                pb['Shared'].atr['href'] = f'/{SW}/Skills/{skill}/PerkButton{j}.(WindowMSButtonShared).xdb#xpointer(/WindowMSButtonShared)'
                pb['Placement']['Position']['First']['x'].int = int(612 + sin(angle) * dist)
                pb['Placement']['Position']['First']['y'].int = int(366 + cos(angle) * dist)
                pb.save(f'Frax/{SW}/Skills/{skill}/P{i+1}/PerkButton{j}.(WindowMSButton).xdb')
        for i in (13,14):
            for j in range(10):
                b = XDB.load(f'Tools/Templates/Skillwheel/P{i}/PerkButton{j}.(WindowMSButton).xdb')
                b['Shared'].atr['href'] = f'/{SW}/Skills/{skill}/PerkButton{j}.(WindowMSButtonShared).xdb#xpointer(/WindowMSButtonShared)'
                b.save(f'Frax/{SW}/Skills/{skill}/P{i}/PerkButton{j}.(WindowMSButton).xdb')

    # CLASSES
    for id, ix, probs, skill, _ in HEROES.values():
        path = f'Tools/Templates/Skillwheel/Icon.(BackgroundSimpleScallingTexture).xdb'
        data = XDB.load(path)

        href = root[name(skill)]['obj']['Texture'][3].atr['href']
        size = '128' if is128x128(href) else '64'

        data['Texture'].atr['href'] = root[name(skill)]['obj']['Texture'][3].atr['href']
        data['Size']['x'].txt = size
        data['Size']['y'].txt = size

        data.save(f'Frax/{SW}/Classes/{id}{ix}/Icon.(BackgroundSimpleScallingTexture).xdb')

        for i, namE in enumerate(('Attack', 'Defense', 'Spellpower', 'Knowledge')):
            prob = probs[i] if i < 3 else 100 - probs[0] - probs[1] - probs[2]
            write_txt(f'Frax/{SW}/Classes/{id}{ix}/PrimarySkills/Prob_{namE}.txt', f'{prob}<br><font size=15>%')

    
    # CLASSES SKILL AVAILABILITY
    for id, ix, _, _, skills in HEROES.values():
        tree = [f'{swname(s)}/P{i+1}/PerkButton{j}' for i, s in enumerate(skills) for j in range(10)]
        tree = [f'/{SW}/Skills/{t}.(WindowMSButton).xdb#xpointer(/WindowMSButton)' for t in tree]
        tree = [XDB.new('Item', [], {'href' : t}) for t in tree]

        data = XDB.load(f'Tools/Templates/Skillwheel/Class.(WindowSimpleShared).xdb')
        data['Children'] = list(data['Children']) + tree
        data.save(f'Frax/{SW}/Wheels/{id}{ix}.(WindowSimpleShared).xdb')

    # SKILL ORDER
    pict = XDB.load(f'Tools/Templates/Skillwheel/X.(BackgroundSimpleScallingTexture).xdb')
    namE = XDB.load(f'Tools/Templates/Skillwheel/PerkNameX.(WindowTextView).xdb')
    desc = XDB.load(f'Tools/Templates/Skillwheel/PerkDescX.(WindowTextView).xdb')
    for skill, perks in tqdm(SKILLS.items(), desc='Skillwheel'):
        perks = [root[name(p)]['obj'] for p in perks]
        perks = [(p['Texture'][1], p['NameFileRef'][0], p['DescriptionFileRef'][0]) for p in perks]
        level = root[name(skill)]['obj']
        level = [(level['Texture'][1+i], level['NameFileRef'][i], level['DescriptionFileRef'][i]) for i in range(3)]
        ultim = root[name(ULTIMATES[skill])]['obj']
        ultim = [(ultim['Texture'][1], ultim['NameFileRef'][0], ultim['DescriptionFileRef'][0])] if ULTIMATES[skill] != 'NONE' else []

        ultimate_text[skill] = (ultim[0][1].atr['href'], ultim[0][2].atr['href'])
        
        # SKILLS
        for ix, href in zip((1,2,3,4,7,5,8,6,9,0), (level + perks[:6] + ultim)):
            href = [h.atr['href'] for h in href]
            path = f'Frax/{SW}/Skills/{swname(skill)}'

            size = '128' if is128x128(href[0]) else '64'
            for xy in pict['Size']: 
                xy.txt = size
            pict['Texture'].atr['href'] = href[0]
            pict.save(f'{path}/{ix}.(BackgroundSimpleScallingTexture).xdb')

            namE['TextFileRef'].atr['href'] = href[1]
            namE.save(f'{path}/PerkName{ix}.(WindowTextView).xdb')

            desc['Shared'].atr['href'] = f'PerkDesc{ix}.(WindowTextViewShared).xdb#xpointer(/WindowTextViewShared)'
            desc['TextFileRef'].atr['href'] = href[2][:-3] + 'u.txt' if ix == 0 else href[2]
            desc.save(f'{path}/PerkDesc{ix}.(WindowTextView).xdb')

def main():
    skills()
    skillwheel()
    classes()
    lua()
    duels()

if __name__ == '__main__':
    main()
    # skillwheel()
    # lua()