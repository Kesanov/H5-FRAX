import os
from xdb import XDB

abilities = {
    'Academy': ([1,4,6,7], ['STORMSTRIKE']),
    'Dungeon': ([5,6,7], ['INCORPOREAL']),
    'Dwarf': ([], ['MAGMA_SHIELD']),
    'Haven': ([], ['LIZARD_BITE']),
    'Inferno': ([1], ['SEARING_AURA']),
    'Necropolis': ([], ['WEAKENING_STRIKE']),
    'Neutrals': ([], ['AURA_OF_BRAVERY']),
    'Preserve': ([3,4,5,6], ['ENTANGLING_ROOTS', 'NO_ENEMY_RETALIATION']),
}

creatures = {
    'Haven': [['PEASANT','MILITIAMAN','LANDLORD'],['ARCHER','MARKSMAN','LONGBOWMAN'],['FOOTMAN','SWORDSMAN','VINDICATOR'],['GRIFFIN','ROYAL_GRIFFIN','BATTLE_GRIFFIN'],['PRIEST','CLERIC','ZEALOT'],['CAVALIER','PALADIN','CHAMPION'],['ANGEL','ARCHANGEL','SERAPH']],

    'Inferno': [['FAMILIAR','IMP','QUASIT'],['DEMON','HORNED_DEMON','HORNED_LEAPER'],['HELL_HOUND','CERBERI','FIREBREATHER_HOUND'],['SUCCUBUS','INFERNAL_SUCCUBUS','SUCCUBUS_SEDUCER'],['NIGHTMARE','FRIGHTFUL_NIGHTMARE','HELLMARE'],['PIT_FIEND','BALOR','PIT_SPAWN'],['DEVIL','ARCHDEVIL','ARCH_DEMON']],

    'Necropolis': [['SKELETON','SKELETON_ARCHER','SKELETON_WARRIOR'],['WALKING_DEAD','ZOMBIE','DISEASE_ZOMBIE'],['MANES','GHOST','POLTERGEIST'],['VAMPIRE','VAMPIRE_LORD','NOSFERATU'],['LICH','DEMILICH','LICH_MASTER'],['WIGHT','WRAITH','BANSHEE'],['BONE_DRAGON','SHADOW_DRAGON','HORROR_DRAGON']],
    
    'Preserve':[['PIXIE','SPRITE','DRYAD'],['BLADE_JUGGLER','WAR_DANCER','BLADE_SINGER'],['WOOD_ELF','GRAND_ELF','SHARP_SHOOTER'],['DRUID','DRUID_ELDER','HIGH_DRUID'],['UNICORN','WAR_UNICORN','WHITE_UNICORN'],['TREANT','TREANT_GUARDIAN','ANGER_TREANT'],['GREEN_DRAGON','GOLD_DRAGON','RAINBOW_DRAGON']],
    
    'Academy':[['GREMLIN','MASTER_GREMLIN','GREMLIN_SABOTEUR'],['STONE_GARGOYLE','OBSIDIAN_GARGOYLE','MARBLE_GARGOYLE'],['IRON_GOLEM','STEEL_GOLEM','OBSIDIAN_GOLEM'],['MAGI','ARCH_MAGI','COMBAT_MAGE'],['GENIE','MASTER_GENIE','DJINN_VIZIER'],['RAKSHASA','RAKSHASA_RUKH','RAKSHASA_KSHATRI'],['GIANT','TITAN','STORM_LORD']],
    
    'Dungeon':[['SCOUT','ASSASSIN','STALKER'],['WITCH','BLOOD_WITCH','BLOOD_WITCH_2'],['MINOTAUR','MINOTAUR_KING','MINOTAUR_CAPTAIN'],['RIDER','RAVAGER','BLACK_RIDER'],['HYDRA','CHAOS_HYDRA','ACIDIC_HYDRA'],['MATRON','MATRIARCH','SHADOW_MISTRESS'],['DEEP_DRAGON','BLACK_DRAGON','RED_DRAGON']],
    
    'Neutrals':[['FIRE_ELEMENTAL','WATER_ELEMENTAL'],['EARTH_ELEMENTAL','AIR_ELEMENTAL'],['WOLF'],['MUMMY'],['SNOW_APE','MANTICORE'],['DEATH_KNIGHT', 'BLACK_KNIGHT'],['PHOENIX']],
    
    'Dwarf':[['DEFENDER','STOUT_DEFENDER','STONE_DEFENDER'],['AXE_FIGHTER','AXE_THROWER','HARPOONER'],['BEAR_RIDER','BLACKBEAR_RIDER','WHITE_BEAR_RIDER'],['BROWLER','BERSERKER','BATTLE_RAGER'],['RUNE_MAGE','FLAME_MAGE','FLAME_KEEPER'],['THANE','WARLORD','THUNDER_THANE'],['FIRE_DRAGON','MAGMA_DRAGON','LAVA_DRAGON']],
    
    'Stronghold':[['GOBLIN','GOBLIN_TRAPPER','GOBLIN_DEFILER'],['CENTAUR','CENTAUR_NOMAD','CENTAUR_MARADEUR',],['ORC_WARRIOR','ORC_SLAYER','ORC_WARMONGER'],['SHAMAN','SHAMAN_WITCH','SHAMAN_HAG'],['ORCCHIEF_BUTCHER','ORCCHIEF_EXECUTIONER','ORCCHIEF_CHIEFTAIN'],['WYVERN','WYVERN_POISONOUS','WYVERN_PAOKAI'],['CYCLOP','CYCLOP_UNTAMED','CYCLOP_BLOODEYED']],
}

def ability(abilities):
    return XDB.new('Item', [
        XDB.new('Type', 'DEMON_RAGE_BONUS_ABILITY'), 
        XDB.new('IntParam', '0'), 
        XDB.new('FloatParam', '0'), 
        XDB.new('Spells', []),  
        XDB.new('Abilities', [XDB.new('Item', 'ABILITY_'+a) for a in abilities]), 
    ])

def creature(creature, abilities):
    return XDB.new('Item', [
        XDB.new('Creature', 'CREATURE_'+creature), 
        XDB.new('Bonus1', [XDB.new('Item', ability(abilities[0]))]),
        XDB.new('Bonus2', [XDB.new('Item', ability(abilities[1]))]),
        XDB.new('Bonus3', [XDB.new('Item', ability(abilities[2]))]),
    ])

def frax(tier, town):
    return [] if tier in abilities[town][0] else abilities[town][1]

def main():
    root = XDB.load('GameMechanics/RPGStats/DefaultStats.xdb')
    
    bonuses = [creature(c, [['FLAMEWAVE', 'FIRE_SHIELD'], ['HEXING_ATTACK'], frax(ix+1, t)]) for t, css in creatures.items() for ix, cs in enumerate(css) for c in cs if t != 'Stronghold']

    root['combat']['Creatures']['Stronghold']['DemonRage']['Bonuses'] = list(root['combat']['Creatures']['Stronghold']['DemonRage']['Bonuses']) + bonuses

    root.save('Frax/GameMechanics/RPGStats/DefaultStats.xdb')

if __name__ == '__main__':
    main()