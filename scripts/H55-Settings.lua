------------------------------------------------------------------------------------------------------------------------------------------------
--	MIGHT & MAGIC: HEROES 5.5 - PLAYER SETTINGS
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus

------------------------------------------------------------------------------------------------------------------------------------------------
--	Note: All settings in this document are script variables always follow guidelines behind "--", otherwise the game can run in critical bugs. 
------------------------------------------------------------------------------------------------------------------------------------------------

H55_TownGateEnabled = 1; --Activates Town Gate, allows teleportation of heroes to any town (0 = deactivated).

H55_TownConvEnabled = 0; --Activates Town and Dwelling Conversion (0 = deactivated)
H55_AmountExtraTownsDwellings = 1; --Allows to increase amount of allowed conversions for dwellings and towns (1 = balanced like RC3, zero can also be used).

--Town Conversion, Governance and Mine Control are always disabled in the campaign and scenario maps, since those maps were not designed for this mechanism and would have bugs/balance issues.

H55_GovernanceEnabled = 0; --Allows the creation of governor heroes (0 = deactivated).
H55_GovernorExpCoef = 1; --Multiplier for experience gain of governors (do not set to zero) Example: 1.2 = 20% more, 0.8 = 20% less.

H55_MineControl = 0; --Allows players to easily guard mines with self-sustaining armies (0 = deactivated).

H55_DimensionDoors = 1; --enables dimension door objects to visit towns remotely on ARMG maps (0 = deactvivated)
H55_DimensionDoorsOnThisMap = 0; --DO NOT activate this here, copy/paste this variable on a personal map you want to have dimension doors instead of magi huts.

H55_IgnoreExpAdjustment = 0; --If this is set to 1, the game will not adjust the experience gain to the size of the neutral stacks (so higher difficulty will not be as hard).

H55_NoMentoring = 0; --If this is set to 1, Memory Mentoring is not allowed, all Memory Mentors on the adventure map will offer a choice between +2 Spellpower or Knowledge.
H55_NoHillFortsOnARMG = 0; --If this is set to 1, Hill Fort functionality is not allowed on ARMG maps, all Hill Forts on the adventure map will offer a choice between +1 Attack or Defense.

--	WARNING!!! Use the Build town functions only for playing ARMG maps and multiplayer maps, these functions will not build Shipyards, Tear of Asha and various special buildings.

H55_BuildNeutralTowns = 0; --Use this if you want neutral towns on the map to be of higher level than 1, Only accepts numbers 0,1,2,3,4,5; each number builds up the town ~20% more,
H55_BuildPlayerTowns = 0; --Use this if you want player towns on the map to be of higher level than 1, Only accepts numbers 0,1,2,3,4,5; each number builds up the town ~20% more.
H55_CompetitiveARMGTowns = 1; --Default ARMG maps have mage guild lvl 1 prebuilt to improve gameplay and balance, set to 0 to switch off. This setting only works as long as the other town build variables are set to 0.

H55_NoAutoTeamHumans = 0; --Set to 1 to prevent human players from teaming up automatically in Nightmare or Savage mode, AI players still team up.

H55_AICheatMode = 4; --Makes AI get more or less creatures to make up for quick-combat losses the human player isn't making, Only accepts numbers 0,1,2,3,4,5,6; 

--	GUIDELINES for AICheatMode setting:
--	0 = Cheating is ALWAYS off, lowers the default difficulties but casual game will still be easier because AI starting resources are lower.
--	1 = 40%, 2 = 60%, 3 = 80%.
--	4 = 100% Default, same difficulty as all previous releases.
--	5 = 120%, 6 = 140%.
--	WARNING!!! The AICheatMode setting does not affect 'casual game' mode, in this mode Cheating is always off!

H55_LowResGame = 0; --Set this to 1 to substract the following resource pattern: (10,10,5,5,5,5,10K) from every player at the start of the game. Don't use for Campaign or scenarios.

--If this is enabled hard and heroic will be played with Impossible starting resources and Impossible will start completely bankrupt.

H55_GenerateMixedStacks = 1;  --If this is set to 0, mixed neutral stacks will not be generated (by script) on any maps ever.
H55_MixStacksThreshold = 200; --If there are more monsters on the map than this customizable number, mixed stack generation will not happen to prevent heavy lag (use mapmixer instead)
H55_AskForMixedStacks = 0; --If this is set to one the first human player will be asked on every multiplayer map if mixed neutrals should be generated and threshold is ignored.
H55_ForceMixedStacks = 0; --copy/paste this variable to a mapscript to always have mixed neutrals generated on that map. If this is set to 1 here, generation will be forced on all multiplayer maps.

H55_BanksDifficulty = 1; --Multiplier for neutral stack size in Battle Sites (do not set to zero) Example: 1.2 = 20% more, 0.8 = 20% less.

--	WARNING!!! modifying the H55_NeutralStackSize parameter can cause the game to lag heavily when the game starts, 
--	time depends on the amount of stacks that need to be processed. The job is done when you can open your townscreen!

H55_NeutralStackSize = 1; --Multiplier for neutral stack size standing on the adventure map (do not set to zero) Example: 1.2 = 20% more, 0.8 = 20% less.

--	Since RC15b1 RMG monsters have been rebalanced and this feature is less important, Strong = between old strong and very strong (which used to be huge gap) also impossible monsters were made more balanced.

H55_PrisonersAdjustToHeroRace = 0; --Set to 1 to make prisoner rewards adjust to the race of the hero (as in RC15 beta 5 and earlier) instead of the race of the player.

H55_ManaObservatories = 1; --By default Redwood Observatories also replenish mana on ARMG maps, set to 0 to switch it off.

H55_NoArtifactMerchantsInTowns = 0; --Set this to 1 to make artifact merchants in towns completely forbidden.

H55_ForcedObelisk = 0; --Allows forcing the reward for Obelisk quests on ARMG maps, only accepts numbers 0,1,2,3,4,5,6,7,8,9
H55_ForcedShantiri = 0; --Allows forcing the reward for Shantiri quests on ARMG maps, only accepts numbers 0,1,2,3,4,5,6,7,8,9

--	You will only get the forced reward if there are enough objects to satisfy the ultimate item requirement.
--	Setting 0 = random, 1 = sword, 2 = armor, 3 = shield, 4 = staff, 5 = helmet, 6 = wings, 7 = book, 8 = ring, 9 = tear of asha.

H55_NegativeArtifacts = 1; --Set to 0 to disable secret negative artifacts from HOMM2 that troll the player.
H55_MoonDiscQuest = 0; --Set to 1 to activate moondisc combo-artifact quest on all maps, NOT RECOMMENDED, copy/paste this setting only to maps that are suitable.
H55_MoonDiscOnARMGMaps = 1; --Set to 0 to disable moondisc combo-artifact quests on ARMG maps.

H55_RPGPotions = 0; --Set to 1 to enable potions on multiplayer and rmg maps, by default potions can be bought from trading posts in Scenarios and Campaign maps.

--If set to 1 potions will also be for sale at trading posts on multiplayer+ARMG maps, costs for movement potions are significantly higher on multiplayer+ARMG maps, resurrection potions cannot be bought.

H55_Duel_WeeksGrowth = 8; --Settings for ARMG Duel Template, this one determines army size.
H55_Duel_HeroLevel = 25; --Levels given by witch hut, Max level = 50!
H55_Duel_Relics = 4; --can be set to zero, amount of random artifacts given 
H55_Duel_Majors = 8; --can be set to zero, artifacts that cannot be used in duel are removed from the pool
H55_Duel_Minors = 4; --can be set to zero, if very few artifacts are given and H55_Duel_BankDifficulty is low a run for the battle sites will happen.
H55_Duel_BankDifficulty = 6; --By default Battle sites on duel map are 3x stronger as H55_Duel_WeeksGrowth, making them much too dangerous.

---------------------------------------------------------------------------------------------------------------------------------------------