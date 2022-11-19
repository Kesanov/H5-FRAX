OFFENCE = 'OFFENCE'
DEFENCE = 'DEFENCE'
LUCK = 'LUCK'
LEADERSHIP = 'LEADERSHIP'
MACHINES = 'WAR_MACHINES'
COMBAT = 'TRAINING'
LOGISTICS = 'LOGISTICS'
LEARNING = 'LEARNING'
SORCERY = 'SORCERY'
INVOCATION = 'INVOCATION'
STAMINA = 'EXPERT_TRAINER'
RUSH = 'WARCRY_LEARNING'
FAITH = 'SHATTER_DARK_MAGIC'
SUMMON = 'SUMMONING_MAGIC'
CHAOS = 'DESTRUCTIVE_MAGIC'
DARK = 'DARK_MAGIC'
LIGHT = 'LIGHT_MAGIC'
GATING = 'GATING'
NECROMANCY = 'NECROMANCY'
AVENGER = 'AVENGER'
ARTIFICIER = 'ARTIFICIER'
RUNELORE = 'RUNELORE'
RAGE = 'DEMONIC_RAGE'
VOICE = 'VOICE'

SKILLS = {
    OFFENCE: ( 'FAST_AND_FURIOUS',  'FRENZY', 'TACTICS', 'CHILLING_STEEL', 'OFFENSIVE_FORMATION', 'ARCHERY' ),
    DEFENCE: ( 'DEFENSIVE_FORMATION', 'HOLD_GROUND', 'LAST_STAND', 'EVASION', 'PROTECTION', 'SPELLPROOF_BONES' ),
    LUCK: ( 'ELVEN_LUCK', 'LUCKY_STRIKE', 'DEAD_LUCK', 'DARK_REVELATION', 'CHAOTIC_SPELLS', 'LUCKY_SPELLS' ),
    STAMINA: ( 'TOUGHNESS', 'PREPARATION', 'RESISTANCE', 'DWARVEN_LUCK', 'POWER_OF_STONE', 'BODYBUILDING' ),
    RUSH: ( 'POWER_OF_HASTE', 'TELEPORT_ASSAULT', 'SNATCH', 'DEATH_TREAD', 'WILDFIRE', 'RUNIC_MACHINES' ),
    LOGISTICS: ( 'DISGUISE_AND_RECKON', 'REMOTE_CONTROL', 'PATHFINDING', 'NAVIGATION', 'GRAIL_VISION', 'ESTATES' ),

    FAITH: ( 'DETAIN_SUMMONING', 'BARBARIAN_FOG_VEIL', 'DETAIN_DESTRUCTIVE', 'BARBARIAN_ANCIENT_SMITHY', 'DETAIN_LIGHT', 'BARBARIAN_STORM_WIND', 'DETAIN_DARK', 'BARBARIAN_SOIL_BURN' ),
    MACHINES: ( 'BALLISTA', 'TRIPLE_BALLISTA', 'FIRST_AID', 'LAST_AID', 'CATAPULT', 'TRIPLE_CATAPULT' ),
    LEARNING: ( 'SCOUTING', 'QUICKNESS_OF_MIND', 'SCHOLAR', 'MENTORING', 'INTELLIGENCE', 'COUNTERSPELL' ),

    COMBAT: ( 'HOLY_CHARGE', 'CRITICAL_STRIKE', 'STUNNING_BLOW', 'POWERFULL_BLOW','DEMONIC_STRIKE', 'BARBARIAN_WEAKENING_STRIKE' ),
    LEADERSHIP: ( 'RECRUITMENT', 'DIPLOMACY', 'ENCOURAGE', 'PRAYER', 'RAISE_ARCHERS', 'ROAD_HOME' ),

    SORCERY: ( 'MAGIC_BOND', 'ELITE_CASTERS', 'WISDOM', 'EAGLE_EYE', 'DARK_RITUAL', 'PAYBACK' ),
    INVOCATION: ( 'SPIRIT_LINK', 'DISTRACT', 'ARCANE_TRAINING', 'EMPOWERED_SPELLS', 'CONSUME_CORPSE', 'EXPLODING_CORPSES'),

    #'SHATTER_LIGHT_MAGIC': ( 'DEFENSIVE_FORMATION', 'EVASION', 'PROTECTION', 'SPELLPROOF_BONES', 'TOUGHNESS', 'HOLDGROUND' ),
    SUMMON: ( 'ELEMENTAL_BALANCE', 'FOG_VEIL' , 'SUN_FIRE', 'FIRE_AFFINITY', 'MASTER_OF_QUAKES', 'SHAKE_GROUND'),
    CHAOS: ( 'DEADLY_COLD', 'MASTER_OF_ICE', 'MASTER_OF_FIRE',  'SET_AFIRE', 'ANCIENT_SMITHY', 'MASTER_OF_LIGHTNINGS' ),
    DARK: ( 'MASTER_OF_SICKNESS', 'PARIAH', 'WEAKENING_STRIKE', 'MASTER_OF_MIND', 'MASTER_OF_CURSES',  'SOIL_BURN' ),
    LIGHT: ( 'MASTER_OF_ABJURATION', 'ETERNAL_LIGHT', 'TWILIGHT',  'MASTER_OF_WRATH', 'MASTER_OF_BLESSING', 'GUARDIAN_ANGEL'),

    GATING: ( 'SPOILS_OF_WAR', 'PATH_OF_WAR', 'GATING_MASTERY', 'CRITICAL_GATING', 'DEMONIC_FIRE', 'QUICK_GATING' ),
    NECROMANCY: ( 'DEATH_SCREAM', 'SHRUG_DARKNESS', 'NO_REST_FOR_THE_WICKED', 'LORD_OF_UNDEAD', 'CHILLING_BONES', 'HERALD_OF_DEATH' ), # 'HAUNT_MINE'
    AVENGER: ( 'FOREST_RAGE', 'FOREST_GUARD_EMBLEM', 'IMBUE_ARROW', 'IMBUE_BALLISTA', 'SNIPE_DEAD', 'MULTISHOT' ),
    ARTIFICIER: ( 'ACADEMY_AWARD', 'SUPRESS_LIGHT', 'MELT_ARTIFACT', 'MAGIC_MIRROR', 'ARTIFICIAL_GLORY', 'MARCH_OF_THE_MACHINES' ),
    RUNELORE: ( 'DEMONIC_FLAME', 'RUNIC_ATTUNEMENT', 'FINE_RUNE', 'TAP_RUNES', 'FORTUNATE_ADVENTURER', 'STRONG_RUNE'),
    RAGE: ( 'POWER_OF_BLOOD',  'MIGHT_OVER_MAGIC', 'BATTLE_ELATION', 'MEMORY_OF_OUR_BLOOD', 'GOBLIN_SUPPORT', 'DEFEND_US_ALL' ),

    VOICE: ( 'MIGHTY_VOICE', 'VOICE_OF_RAGE', 'BARBARIAN_MYSTICISM', 'BARBARIAN_DISTRACT', 'VOICE_TRAINING', 'BARBARIAN_ELITE_CASTERS' ),
}

ULTIMATES = {
    # STORM_WIND, MAGIC_CUSHION, UNSUMMON,
    OFFENCE: 'WEAKEN_DESTRUCTIVE',  # DragonForm - 2 Dragons #
    DEFENCE: 'SHATTER_SUMMONING_MAGIC',  # Benedicted - Visit Monastery
    LUCK: 'ABSOLUTE_LUCK',  # Absolute Protection - 2 Armors
    STAMINA: 'CORRUPT_DARK', # High Ground - 2 Boots
    RUSH: 'EMPATHY',  # Dodge - 2 INI items
    LOGISTICS: 'CORRUPT_DESTRUCTIVE',  # Charge & Governor - 2 Boots

    FAITH: 'ABSOLUTE_PROTECTION', # Join - 2 Saint #
    MACHINES: 'WEAKEN_SUMMONING',#'RUNELORE',  # Steroids - 2 Dragons
    LEARNING: 'ABSOLUTE_WIZARDY',  # Spells - 2 Books

    COMBAT: 'ABSOLUTE_CHARGE',  # Anti Magic - 2 resists
    LEADERSHIP: 'RETRIBUTION',  # Empathy - 2 Lions

    SORCERY: 'MYSTICISM',  # Hexing - 2 staffs
    INVOCATION: 'WEAKEN_DARK',  # Vampirism - 2 Necro

    SUMMON: 'MASTER_OF_CREATURES',
    CHAOS: 'SHATTER_DESTRUCTIVE_MAGIC',
    DARK: 'SHATTER_LIGHT_MAGIC',
    LIGHT: 'RUNIC_ARMOR',

    GATING: 'WEAKEN_LIGHT', # Instant
    NECROMANCY: 'WEAKEN_LIGHT', # Horror
    AVENGER: 'WEAKEN_LIGHT', # CUNNING_OF_THE_WOODS
    ARTIFICIER: 'WEAKEN_LIGHT',
    RUNELORE: 'WEAKEN_LIGHT',

    VOICE: 'WEAKEN_DARK',

    RAGE: 'ABSOLUTE_RAGE',

    'ABSOLUTE_GATING': 'ABSOLUTE_GATING',
    'ABSOLUTE_FEAR': 'ABSOLUTE_FEAR',
}


MIGHT = [COMBAT, LEADERSHIP, MACHINES]
MAGE1 = [SORCERY, INVOCATION, MACHINES]
MAGE2 = [SORCERY, INVOCATION, CHAOS]
def BASIC(replace):
    BASIC = [OFFENCE, DEFENCE, LUCK, STAMINA, RUSH, LOGISTICS] + [FAITH, LEARNING]
    return [replace[s] if s in replace else s for s in BASIC]

HEROES = {
    'KNIGHT':       ('H', 1, (40,25,25), OFFENCE    , BASIC({})                + [COMBAT, INVOCATION, MACHINES, DARK]), # RENEGADE
    'RANGER':       ('H', 2, (30,40,15), LIGHT      , BASIC({})                + MIGHT + [LIGHT]), # KNIGHT
    'HERETIC':      ('H', 3, (25,10,40), LEARNING   , BASIC({STAMINA:LIGHT})   + MAGE2 + [DARK, SUMMON]), # HERETIC
    'WIZARD':       ('I', 1, (50,25,10), COMBAT     , BASIC({DEFENCE: DARK})   + MIGHT + [GATING]), # DEMON LORD
    'DEMON_LORD':   ('I', 2, (35,15,30), GATING     , BASIC({OFFENCE: DARK})   + MAGE1 + [GATING, CHAOS]), # GATEKEEPER
    'SORCERER':     ('I', 3, (15,10,45), SORCERY    , BASIC({STAMINA: DARK})   + MAGE2 + [GATING, SUMMON]), # SORCERER
    'RUNEMAGE':     ('N', 1, (35,35,20), RUSH       , BASIC({})                + [COMBAT, INVOCATION, DARK, NECROMANCY]), # DEATH KNIGHT
    'NECROMANCERA': ('N', 2, (15,25,35), NECROMANCY , BASIC({})                + MAGE2 + [NECROMANCY, DARK]), # NECROMANCER
    'REAVER':       ('N', 3, (10,15,50), LOGISTICS  , BASIC({RUSH: DARK})      + MAGE2 + [NECROMANCY, SUMMON]), # NETHERMAGE
    'BEASTMASTER':  ('D', 1, (40,30,15), LEADERSHIP , BASIC({})                + MIGHT + [DARK]), # OVERLORD
    'SEER':         ('D', 2, (30,10,40), LUCK       , BASIC({STAMINA: DARK})   + MAGE1 + [NECROMANCY, CHAOS]), # TRICKSTER
    'WARLOCK':      ('D', 3, (15,10,50), INVOCATION , BASIC({OFFENCE: DARK})   + MAGE2 + [NECROMANCY, SUMMON]), # WARLOCK
    'RANGERA':      ('S', 1, (45,30,10), DEFENCE    , BASIC({STAMINA: LIGHT})  + MIGHT + [AVENGER]), # RANGER
    'WARDEN':       ('S', 2, (35,25,15), AVENGER    , BASIC({RUSH: DARK})      + MIGHT + [AVENGER, CHAOS]), # AVENGER
    'ENCHANTER':    ('S', 3, (10,20,40), LEARNING   , BASIC({})                + MAGE2 + [LIGHT, SUMMON]), # DRUID
    'GUILDMASTER':  ('A', 1, (35,25,10), LOGISTICS  , BASIC({LUCK: LIGHT})     + [DARK, LEADERSHIP, MACHINES, ARTIFICIER]), # ENCHANTER
    'ELEMENTALIST': ('A', 2, ( 5,35,30), ARTIFICIER , BASIC({OFFENCE: CHAOS})  + MAGE1 + [ARTIFICIER, SUMMON]), # CONJURER
    'WIZARDA':      ('A', 3, ( 5,15,40), SORCERY    , BASIC({FAITH: DARK})     + MAGE2 + [ARTIFICIER, SUMMON]), # WIZARD
    'NECROMANCER':  ('F', 1, (35,45,10), MACHINES   , BASIC({LEARNING: LIGHT}) + MIGHT + [RUNELORE]), # ENGINEER
    'FLAMEKEEPERA': ('F', 2, (30,20,30), RUNELORE   , BASIC({LEARNING: DARK})  + MAGE1 + [RUNELORE, CHAOS]), # FLAMEKEEPER
    'RUNEMAGEA':    ('F', 3, (10,15,45), STAMINA    , BASIC({LUCK: LIGHT})     + MAGE2 + [RUNELORE, SUMMON]), # RUNEMAGE
    'BARBARIAN':    ('B', 1, (50,35, 0), RAGE       , BASIC({RUSH: VOICE})     + MIGHT + [RAGE]), # CHIEFTAN
    'SHAMAN':       ('B', 2, (20,20,30), DARK       , BASIC({RUSH: DARK})      + MIGHT + [RAGE, INVOCATION]), # SHAMAN
    'WARLOCKB':     ('B', 3, (20,10,40), FAITH      , BASIC({LUCK: LIGHT})     + MAGE2 + [NECROMANCY, SUMMON]), # WITCH
}

DUELS = {
    'AcademyPreset1': ('A', LIGHT, {LIGHT:(0,2), LEARNING:(0,2), ARTIFICIER:(1,2), LEADERSHIP:(1,0), DEFENCE:(1,2), RUSH:(0,1)}),
    'AcademyPreset2': ('A', GATING, {RUSH:(0,1), LEARNING:(0,2), SORCERY:(0,2), DEFENCE:(1,2), ARTIFICIER:(1,2), STAMINA:(0,2)}),
    'AcademyPreset3': ('A', LUCK, {CHAOS:(0,2), LEARNING:(0,2), SORCERY:(0,2), DEFENCE:(1,2), INVOCATION:(0,1), STAMINA:(0,1)}),
    'AdvMapHero1': ('H', RUSH, {DARK:(0,2), LEADERSHIP:(1,0), COMBAT:(1,0), RUSH:(0,1), DEFENCE:(1,2), OFFENCE:(2,0)}),
    'AdvMapHero2': ('H', GATING, {LIGHT:(0,2), LEARNING:(0,2), COMBAT:(1,0), LEADERSHIP:(1,0), DEFENCE:(1,2), RUSH:(0,1)}),
    'AdvMapHero3': ('H', OFFENCE, {DARK:(0,2), LEARNING:(0,2), SORCERY:(0,2), STAMINA:(0,1), OFFENCE:(2,0), RUSH:(0,1)}),
    'DungeonPreset1': ('D', COMBAT, {DARK:(0,2), COMBAT:(1,0), LEADERSHIP:(1,0), DEFENCE:(1,2), OFFENCE:(2,0), RUSH:(0,1)}),
    'DungeonPreset2': ('D', GATING, {CHAOS:(0,2), LEARNING:(0,2), SORCERY:(0,2), LUCK:(0,1), DEFENCE:(1,2), STAMINA:(0,1)}),
    'DungeonPreset3': ('D', CHAOS, {CHAOS:(0,2),  SORCERY:(0,2), INVOCATION:(0,1), DEFENCE:(1,2), OFFENCE:(2,0), STAMINA:(0,1)}),
    'InfernoPreset1': ('I', GATING, {DARK:(0,2), LEARNING:(0,2), GATING:(2,1), LEADERSHIP:(1,0), COMBAT:(2,0), STAMINA:(0,1)}),
    'InfernoPreset2': ('I', 'ABSOLUTE_GATING', {SUMMON:(1,0), GATING:(2,1), SORCERY:(0,2),DEFENCE:(1,2), RUSH:(0,1), OFFENCE:(1,0)}),
    'InfernoPreset3': ('I', DARK, {CHAOS:(0,2), LEARNING:(0,2), SORCERY:(0,2), STAMINA:(0,1), GATING:(2,1), RUSH:(0,1)}),
    'NecropolisPreset1': ('N', GATING, {DARK:(0,2), LEARNING:(1,0), DEFENCE:(1,2), FAITH:(3,2), RUSH:(0,1), OFFENCE:(1,0)}),
    'NecropolisPreset2': ('N', 'ABSOLUTE_FEAR', {DARK:(0,2), NECROMANCY:(0,2), SORCERY:(0,2), OFFENCE:(1,0), RUSH:(0,1), STAMINA:(0,1)}),
    'NecropolisPreset3': ('N', INVOCATION, {DARK:(0,2), SORCERY:(0,2), RUSH:(0,1), INVOCATION:(2,1), OFFENCE:(2,0), STAMINA:(0,1)}),
    'RuneMagePreset1': ('F', MACHINES, {LIGHT:(0,2),  RUNELORE:(0,1), LEADERSHIP:(1,0), DEFENCE:(1,2), FAITH:(2,3), RUSH:(0,1)}),
    'RuneMagePreset2': ('F', GATING, {LIGHT:(0,2), SORCERY:(0,2), DARK:(1,0), DEFENCE:(1,2), RUNELORE:(0,1), STAMINA:(0,1)}),
    'RuneMagePreset3': ('F', FAITH, {CHAOS:(0,2), LEARNING:(0,2), SORCERY:(0,2), RUNELORE:(0,1), DEFENCE:(1,2),  STAMINA:(0,1)}),
    'StrongHoldPreset1': ('B', LEADERSHIP, {VOICE: (0,2), LEARNING:(0,2), RAGE:(1,0), LEADERSHIP:(1,0), DEFENCE:(1,2), FAITH:(2,3)}),
    'StrongHoldPreset2': ('B', RAGE, {DARK:(0,2), COMBAT:(1,0), LEADERSHIP:(1,0), OFFENCE:(1,2), RAGE:(0,1), STAMINA:(0,1)}),
    'StrongHoldPreset3': ('B', SUMMON, {SUMMON:(1,0), SORCERY:(0,2), RUSH:(0,1), OFFENCE:(1,2), FAITH:(1,2), STAMINA:(0,1)}),
    'SylvanPreset1': ('S', LEARNING, {OFFENCE:(0,2), LEARNING:(0,2), AVENGER:(2,1), LEADERSHIP:(1,0), DEFENCE:(1,2), RUSH:(0,1)}),
    'SylvanPreset2': ('S', GATING, {DARK:(0,2), LEARNING:(0,2), AVENGER:(2,1), LEADERSHIP:(1,0), COMBAT:(1,2), STAMINA:(0,1)}),
    'SylvanPreset3': ('S', SORCERY, {SUMMON:(1,0), LEARNING:(0,2), SORCERY:(0,2), FAITH:(0,1), DEFENCE:(1,2), OFFENCE:(1,0)}),
    # DEFENCE
}

SPELLS = {
    LIGHT:['MAGIC_ARROW','BLESS','STONESKIN','BLOODLUST','HASTE','DEFLECT_ARROWS','DISPEL','REGENERATION','HOLY_WORD','DIVINE_VENGEANCE','RESURRECT','CELESTIAL_SHIELD','BLIND'],
    DARK: ['PLAGUE','CURSE','WEAKNESS','SLOW','DISRUPTING_RAY','ANIMATE_DEAD','SORROW','TELEPORT','PHANTOM','UNHOLY_WORD','BERSERK','VAMPIRISM'],
    SUMMON : ['WASP_SWARM','LAND_MINE','ARCANE_CRYSTAL','EARTHQUAKE','MAGIC_FIST','ANTI_MAGIC','BLADE_BARRIER','SUMMON_HIVE','FIREWALL','HYPNOTIZE','CONJURE_PHOENIX'],
    CHAOS: ['STONE_SPIKES','ICE_BOLT','METEOR_SHOWER','LIGHTNING_BOLT','FIREBALL','FROST_RING','ARMAGEDDON','IMPLOSION','DEEP_FREEZE','CHAIN_LIGHTNING'],
    RUNELORE: ['RUNE_OF_REVIVE', 'RUNE_OF_MAGIC_CONTROL', 'RUNE_OF_EXORCISM', 'RUNE_OF_STUNNING', 'RUNE_OF_DRAGONFORM'],
    VOICE: ['WARCRY_RALLING_CRY','WARCRY_CALL_OF_BLOOD','WARCRY_WORD_OF_THE_CHIEF','WARCRY_FEAR_MY_ROAR','WARCRY_BATTLECRY','WARCRY_SHOUT_OF_MANY'],
}

# class SPECS:
    # ARTISAN
    # DISRUPTER
    # FEATHER_MAGE
    # INEXHAUSTIBLE
    # MACHINIST
    # MASTER_OF_ELEMENTS
    # MENTOR
    # RADIANT
    # TIME_SHIFTER
    # WEILDER_OF_FIRE
    #
    # DARK_ACOLYTE
    # EVASIVE
    # LIZARD_BREEDER
    # MATRON_SALVO
    # POISONER
    # POWER_BARGAIN
    # PRUDENT
    # SAVAGE
    # SEDUCER
    # SLAVEHODER
    #
    # AXE_MASTER
    # BORDER_GUARD
    # COURTIER
    # DEFENDER
    # ECONOMST
    # MAGISTER
    # MOUNTAIN_KING
    # RESEARCHER
    # RIDER
    # SACRED_HAMMER
    # STORM_CALLER
    #
    # ARCHER_COMMANDER
    # ARTILLERYMAN
    # CHESS
    # EXPEDITER
    # GRIFFON_COMMANDER
    # INFANTRY_COMMANDER
    # JOUSTER
    # SQUIRE
    # SUZERAIN
    # WANDERER
    #
    # BEATER
    # BOMBARDIER
    # BREEDER
    # FLAGBEARER_OF_DARKNESS
    # FURIOUS
    # GATE_KEEPER
    # HYPNOTIST
    # IMPREGNABLE
    # TEMPTRESS
    #
    # AVATAR_OF_DEATH
    # EMPIRIC
    # MALEDICTOR
    # MIND_CLEANER
    # REANIMATOR
    # SOULHUNTER
    # VAMPIRE_PRINCESS
    # ZOMBIE_LEADER
    #
    # BLADE_MASTER
    # CALL_OF_THE_WASP
    # ELVEN_FURY
    # FOREST_GUARDIAN
    # HUNTER
    # TALENTED_WARRIOR
    # UNICORN_TRAINER
    # WAYLAYER
    #
    # BLOODDRINKER
    # CENTAURMISTRESS
    # GOBLINKING
    # GRIMFIGHTER
    # OFFENDER
    # ORCELDER
    # RASH
    # WARLEADER
    # WYVERNTAMER