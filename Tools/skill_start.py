import sys
import os
from xdb import XDB
from skillwheel import camel_case


masteries = {'': '', 'MASTERY_BASIC':'', 'MASTERY_ADVANCED':'Advanced ', 'MASTERY_EXPERT':'Expert '}
table = {
    'Voice': 'Shouting',
    'Artificier': 'Artificer',
    'Invocation': 'Occultism',
    'Training': 'Combat',
    'Bodybuilding': 'Strength',
    'Warcry Learning': 'Rush',
    'Shatter Dark Magic': 'Curses',
    'Learning': 'Englightment',
}
def skillname(name, mastery=''):
    name = ' '.join(word.capitalize() for word in name[11:].split('_'))
    if name in table: 
        name = table[name]
    return masteries[mastery] + name

names = []
def start_skills():
    for dirname, _, filenames in os.walk('MapObjects/'):
        for filename in filenames:
            try:
                data  = XDB.load(dirname + '/' + filename)
                perk = [skillname(perk.txt) for perk in data['Editable']['perkIDs']]
                skil = skillname(data['Editable']['skills'][0]['SkillID'].txt, data['Editable']['skills'][0]['Mastery'].txt)
                name = data['SpecializationNameFileRef'].atr['href'][1:]
                if name not in names:
                    names.append(name)
                    open(name, 'a', encoding='utf-16').write(f'<color=yellow>Starts with {skil}.')

            except Exception as e:
                print(filename)
                print(e)


start_skills()