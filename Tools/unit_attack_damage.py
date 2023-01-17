import sys
import os
from xdb import XDB

value = [5, 10, 15, 20, 25, 30, 35, 40]

def scale(path):
    for filename in os.listdir(path):
        filepath = f'{path}/{filename}'
        if os.path.isdir(filepath): scale(filepath)
        if filename[-4:] != ".xdb": continue

        data = XDB.load(filepath)
        if data.tag != 'Creature': continue

        tier = data['CreatureTier'].int
        grow = data['WeeklyGrowth'].int
        upgr = data['BaseCreature'].txt != 'CREATURE_UNKNOWN'
        powr = (1 + .02*value[tier])**2 / (1 + .02*value[1])**2 * (1 + 0.2 * upgr)
        data['AttackSkill'].int = value[tier]
        data['DefenceSkill'].int = value[tier]
        data['Exp'].int = round(200 / grow * powr)
        data['Cost']['Gold'].int = round(1000 / grow * powr)
        data.save()

scale('GameMechanics/Creature')