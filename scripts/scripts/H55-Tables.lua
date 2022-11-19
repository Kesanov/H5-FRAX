------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus

------------------------------------------------------------------------------------------------------------------------------------------------
--TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

--Classes

H55_Renegades = {"Mardigo","RedHeavenHero02","RedHeavenHero05","RedHeavenHero03","RedHeavenHero06"				,"Alaric","RedHeavenHero01","Laszlo"};
H55_Knights = {"Duncan","Sarge","Isabell","Orrin","Nicolai","GodricMP","Maeve","Nathaniel","Axel","Christian"   ,"Brem","Ving","Godric","Freyda","Ornella","GhostFSLord","Giar","Glen","Isabell_A1","Saint Isabell"};
H55_Heretics = {"Jeddite","Markal","Orlando","AlaricMP","RedHeavenHero04"};
H55_Rangers = {"Heam","Gillion","Linaas","Ossir","Melodia","Mephala"};
H55_Avengers = {"Kyrre","Nadaur","Arniel","Ildar","Jenova","Metlirn"};
H55_Druids = {"Vaniel","Elleshar","Vinrael","Itil","Diraya","Gem"                            					,"Tieru"};
H55_Demonlords = {"Marder","Malustar","Harkenraz","Calh","Calid","Jazaz"                      					,"Sheltem","Gamor","Guarg","Erasial","Kha-Beleth","Veyer","DMessiah"};
H55_Gatekeepers = {"Deleb","Ash","Nymus","Oddrema","Nelech","Grok"                                              ,"Agrael"};
H55_Sorcerers = {"Sovereign","Efion","Calid2","Zydar","AgraelMP","Biara"};
H55_DeathKnights = {"Gles","Pelt","Tamika","OrnellaNecro","Straker","Xerxon"};
H55_Necromancers = {"Archilus","Nimbus","Aislinn","ArantirMP","Aberrar","Effig" 								,"Arantir","Berein","Nikolay","Giovanni"};
H55_Nethermages = {"Thant","Vidomina","Nemor","Muscip","GiovanniMP","Sandro"};
H55_Enchanters = {"Isher","Rissa","Minasli","Davius","Josephine","Havez"};
H55_Conjurers = {"Zehir","Timerkhan","Nur","Cyrus","Emilia","Astral"};
H55_Wizards = {"Gurvilin","Razzak","Maahir","Faiz","Sufi","Tan"};
H55_Overlords = {"Agbeth","Ranleth","ThralsaiMP","Urunir","Menel","Ferigl"};
H55_Tricksters = {"Sephinroth","Eruina","Ohtarig","Sylsai","Darkstorm","AlmegirMP"								,"Thralsai","Almegir"};
H55_Warlocks = {"Raelag","Kastore","Kelodin","ShadwynMP","Dalom","Inagost"										,"Shadwyn","Raelag_A1","Segref","Ohtar","Eruina_A1"};
H55_Engineers = {"Wulfstan","Rolf","Maximus","Tazar","Ufretin","Skeggy"};
H55_Runemages = {"Hangvul","KingTolghar","Ingvar","Bersy","Ottar","Una"};
H55_Flamekeepers = {"Vilma","Bart","Hangvul2","Brand","Egil","Vegeyr"};
H55_Chieftains = {"Hero1","Hero4","Hero5","Hero6","Hero8","Hero9","Gottai","GottaiMP","Crag","Azar","Kraal","Kujin","Kunyak","Matewa","Quroq"};
H55_Shamans = {"KujinMP","Shiva","Hero7","Mokka"};
H55_Witches = {"Hero2","Hero3","Zouleika","Erika"};

H55_ClassesCount = 24

H55_ClassesList = { 
	H55_Renegades, H55_Knights, H55_Heretics,
	H55_Rangers, H55_Avengers, H55_Druids,
	H55_Demonlords, H55_Gatekeepers, H55_Sorcerers,
	H55_DeathKnights, H55_Necromancers, H55_Nethermages,
	H55_Enchanters, H55_Conjurers, H55_Wizards,
	H55_Overlords, H55_Tricksters, H55_Warlocks,
	H55_Engineers, H55_Runemages, H55_Flamekeepers,
	H55_Chieftains, H55_Shamans, H55_Witches
};

H55_ClassesNames = {
	"Renegade", "Knight", "Heretic",
	"Ranger", "Avenger", "Druid",
	"Demonlord", "Gatekeeper", "Sorcerer",
	"Deathknight","Necromancer", "Nethermage",
	"Enchanter", "Conjurer", "Wizard",
	"Overlord", "Trickster", "Warlock",
	"Engineer", "Runemage", "Flamekeeper",
	"Chieftain", "Shaman", "Witch"
};
-- 	{{1,2,106},{3,4,107},{5,6,108},{7,8,109},{9,10,110},{11,12,111},{13,14,112}}, --Haven
	-- {{43,44,145},{45,46,146},{47,48,147},{49,50,148},{51,52,149},{53,54,150},{55,56,151}}, --Sylvan
	-- {{15,16,131},{17,18,132},{19,20,133},{21,22,134},{23,24,135},{25,26,136},{27,28,137}}, --Inferno
	-- {{29,30,152},{31,32,153},{33,34,154},{35,36,155},{37,38,156},{39,40,157},{41,42,158}}, --Necropolis
	-- {{57,58,159},{59,60,160},{61,62,161},{63,64,162},{65,66,163},{67,68,164},{69,70,165}}, --Academy
	-- {{71,72,138},{73,74,139},{75,76,140},{77,78,141},{79,80,142},{81,82,143},{83,84,144}}, --Dungeon
	-- {{92,93,166},{94,95,167},{96,97,168},{98,99,169},{100,101,170},{102,103,171},{104,105,172}}, --Fortress
	-- {{117,118,173},{119,120,174},{121,122,175},{123,124,176},{125,126,177},{127,128,178},{129,130,179}}, --Stronghold
	-- {{}, {}, {}, {85,86,87,88}, {113,116}, {89,90,114,115}, {91}} --Neutral

H55_AlignedTowns = {
	{2, 5, 7, 9}, -- Haven
	{1, 5, 7, 9}, -- Sylvan
	{4, 6, 8, 9}, -- Inferno
	{3, 6, 8, 9}, -- Necro
	{1, 2, 7, 9}, -- Academy
	{3, 4, 8, 9}, -- Dungeon
	{1, 2, 5, 9}, -- Fortress
	{3, 4, 6, 9}, -- Stronghold
	{1, 2, 5, 7}, -- Neutral
}

--Factions

H55_HavenPhonebook = {["Nicolai"]=1,["GodricMP"]=1,["Maeve"]=1,["Nathaniel"]=1,["Axel"]=1,["Brem"]=1,["Jeddite"]=1,["Markal"]=1,["Orlando"]=1,["RedHeavenHero03"]=1,["RedHeavenHero06"]=1,["Alaric"]=1,["AlaricMP"]=1,["RedHeavenHero01"]=1,["Duncan"]=1,["Sarge"]=1,["Isabell"]=1,["Mardigo"]=1,["Ving"]=1,["Orrin"]=1,["Godric"]=1,["Freyda"]=1,["Ornella"]=1,["GhostFSLord"]=1,["Giar"]=1,["Glen"]=1,["Laszlo"]=1,["Isabell_A1"]=1,["Saint Isabell"]=1,["RedHeavenHero04"]=1,["RedHeavenHero02"]=1,["RedHeavenHero05"]=1,["Christian"]=1,["Malik"]=1};
H55_SylvanPhonebook = {["Heam"]=1,["Metlirn"]=1,["Nadaur"]=1,["Linaas"]=1,["Ossir"]=1,["Jenova"]=1,["Kyrre"]=1,["Mephala"]=1,["Arniel"]=1,["Ildar"]=1,["Melodia"]=1,["Gillion"]=1,["Vaniel"]=1,["Elleshar"]=1,["Vinrael"]=1,["Itil"]=1,["Diraya"]=1,["Gem"]=1,["Tieru"]=1};
H55_InfernoPhonebook = {["Marder"]=1,["Sheltem"]=1,["Harkenraz"]=1,["Calh"]=1,["Calid"]=1,["Jazaz"]=1,["Gamor"]=1,["Guarg"]=1,["Erasial"]=1,["Kha-Beleth"]=1,["Veyer"]=1,["DMessiah"]=1,["Efion"]=1,["Ash"]=1,["Nymus"]=1,["Oddrema"]=1,["Malustar"]=1,["Grok"]=1,["Sovereign"]=1,["Deleb"]=1,["Calid2"]=1,["Zydar"]=1,["Agrael"]=1,["AgraelMP"]=1,["Biara"]=1,["Nelech"]=1};
H55_DungeonPhonebook = {["Agbeth"]=1,["Ranleth"]=1,["Sylsai"]=1,["Urunir"]=1,["Menel"]=1,["Ferigl"]=1,["Dalom"]=1,["Eruina"]=1,["Darkstorm"]=1,["Ohtarig"]=1,["Thralsai"]=1,["Almegir"]=1,["Raelag"]=1,["Kastore"]=1,["Kelodin"]=1,["Shadwyn"]=1,["ShadwynMP"]=1,["Sephinroth"]=1,["Inagost"]=1,["Raelag_A1"]=1,["Segref"]=1,["Ohtar"]=1,["Eruina_A1"]=1,["ThralsaiMP"]=1,["AlmegirMP"]=1};
H55_NecropolisPhonebook = {["Gles"]=1,["Pelt"]=1,["Tamika"]=1,["OrnellaNecro"]=1,["Straker"]=1,["Xerxon"]=1,["Archilus"]=1,["Nimbus"]=1,["Aislinn"]=1,["Nemor"]=1,["Muscip"]=1,["Giovanni"]=1,["GiovanniMP"]=1,["Thant"]=1,["Vidomina"]=1,["Arantir"]=1,["ArantirMP"]=1,["Aberrar"]=1,["Effig"]=1,["Sandro"]=1,["Berein"]=1,["Nikolay"]=1};
H55_AcademyPhonebook = {["Isher"]=1,["Rissa"]=1,["Minasli"]=1,["Davius"]=1,["Josephine"]=1,["Havez"]=1,["Gurvilin"]=1,["Razzak"]=1,["Maahir"]=1,["Faiz"]=1,["Sufi"]=1,["Cyrus"]=1,["Zehir"]=1,["Timerkhan"]=1,["Nur"]=1,["Tan"]=1,["Emilia"]=1,["Astral"]=1};
H55_FortressPhonebook = {["Wulfstan"]=1,["Rolf"]=1,["Maximus"]=1,["Tazar"]=1,["Ingvar"]=1,["Skeggy"]=1,["Hangvul2"]=1,["KingTolghar"]=1,["Ufretin"]=1,["Bersy"]=1,["Ottar"]=1,["Una"]=1,["Bart"]=1,["Vilma"]=1,["Hangvul"]=1,["Brand"]=1,["Egil"]=1,["Vegeyr"]=1};
H55_StrongholdPhonebook = {["Hero1"]=1,["Hero2"]=1,["Hero3"]=1,["Hero4"]=1,["Hero5"]=1,["Hero6"]=1,["Hero7"]=1,["Hero8"]=1,["Hero9"]=1,["Gottai"]=1,["Crag"]=1,["Azar"]=1,["Kraal"]=1,["Kujin"]=1,["KujinMP"]=1,["Kunyak"]=1,["Matewa"]=1,["Shiva"]=1,["Zouleika"]=1,["Quroq"]=1,["Mokka"]=1,["Erika"]=1,["GottaiMP"]=1};

--Creatures
H55_Casters = {5, 4, 6, 5, 4, 6, 5, 4}

H55_StartArmyAmount = {};

H55_Creatures = {
	{{1,2,106},{3,4,107},{5,6,108},{7,8,109},{9,10,110},{11,12,111},{13,14,112}}, --Haven
	{{43,44,145},{45,46,146},{47,48,147},{49,50,148},{51,52,149},{53,54,150},{55,56,151}}, --Sylvan
	{{15,16,131},{17,18,132},{19,20,133},{21,22,134},{23,24,135},{25,26,136},{27,28,137}}, --Inferno
	{{29,30,152},{31,32,153},{33,34,154},{35,36,155},{37,38,156},{39,40,157},{41,42,158}}, --Necropolis
	{{57,58,159},{59,60,160},{61,62,161},{63,64,162},{65,66,163},{67,68,164},{69,70,165}}, --Academy
	{{71,72,138},{73,74,139},{75,76,140},{77,78,141},{79,80,142},{81,82,143},{83,84,144}}, --Dungeon
	{{92,93,166},{94,95,167},{96,97,168},{98,99,169},{100,101,170},{102,103,171},{104,105,172}}, --Fortress
	{{117,118,173},{119,120,174},{121,122,175},{123,124,176},{125,126,177},{127,128,178},{129,130,179}}, --Stronghold
	{{87,87,88}, {85,85,86}, {113,113,113}, {116,116,116}, {115,115,115}, {90,90,90}, {89,114,91}} --Neutral
};
H55_CreaturesInv = {}
for town = 1,9,1 do
	for tier = 1,7,1 do
		for upgrade = 1,3 do
			H55_CreaturesInv[H55_Creatures[town][tier][upgrade]] = {town, tier, upgrade}
		end
	end
end

H55_CreaturesGrowth = {
	{24.5, 12, 10, 5, 3, 2, 1}, --Haven
	{14, 9, 7, 4, 3, 2.5, 1}, --Sylvan
	{17, 16, 8, 5, 3.5, 2, 1}, --Inferno
	{22.5, 16, 9, 5, 3, 2, 1.5}, --Necropolis
	{20, 14, 9, 5, 4, 2, 1}, --Academy
	{8.5, 7, 6.5, 4, 3, 2, 1}, --Dungeon
	{16, 14, 7, 8, 3.5, 2, 1}, --Fortress
	{28, 14, 11, 5, 5, 2, 1}, --Stronghold
	{20, 20, 6, 3, 2, 2, 0.5} -- Neutral
};

H55_CreaturesGrowthReal = {
	{22, 12, 10, 5, 3, 2, 1}, --Haven
	{12, 9, 7, 4, 3, 2, 1}, --Sylvan
	{17, 15, 8, 5, 3, 2, 1}, --Inferno
	{20, 15, 9, 5, 3, 2, 1}, --Necropolis
	{20, 14, 9, 5, 3, 2, 1}, --Academy
	{7, 5, 6, 4, 3, 2, 1}, --Dungeon
	{16, 14, 7, 6, 3, 2, 1}, --Fortress
	{25, 14, 11, 5, 5, 2, 1}, --Stronghold
	{20, 20, 6, 3, 2, 2, 1} -- Neutral
};

H55_CreaturesExp = {
	{{4,8,8},{12,22,22},{17,29,29},{40,60,60},{70,95,95},{115,160,160},{252,332,332}}, --Haven
	{{10,15,15},{15,28,28},{30,45,45},{55,70,70},{75,100,100},{100,136,136},{240,320,320}}, --Sylvan
	{{7,13,13},{10,16,16},{21,33,33},{40,60,60},{76,96,96},{129,160,160},{245,336,336}}, --Inferno
	{{5,10,10},{10,15,15},{20,31,31},{38,58,58},{74,105,105},{115,156,156},{166,220,220}}, --Necropolis
	{{6,12,12},{10,17,17},{21,34,34},{42,60,60},{55,76,76},{120,160,160},{242,330,330}}, --Academy
	{{14,26,26},{21,35,35},{25,36,36},{45,70,70},{54,82,82},{136,160,160},{260,342,342}}, --Dungeon
	{{7,12,12},{10,17,17},{27,41,41},{24,36,36},{65,95,95},{130,170,170},{220,310,310}}, --Fortress
	{{4,8,8},{12,20,20},{17,26,26},{32,50,50},{50,70,70},{120,165,165},{200,300,300}} --Stronghold
};

H55_NeutralCreatures = {85,86,87,88,91,113,114,115,116,90}; --Fire,Water,Earth,Air,Phoenix,Wolf,Eagle,Manticore,Mummy,BKnight
H55_NeutralCreaturesExp = {60,60,60,60,500,37,130,135,72,158};
H55_NeutralCreaturesGrowth = {4,4,4,4,1,8,2,2,3};
H55_NeutralSpecialists = {"Calid2","Melodia","Kunyak","KingTolghar","RedHeavenHero03","Emilia","Menel"};
H55_NeutralSpecialistsCr = {["Calid2"] = 85,["Melodia"] = 86,["Kunyak"] = 87,["KingTolghar"] = 88,["RedHeavenHero03"] = 113,["Emilia"] = 114,["Menel"] = 115};

H55_AICreaturesGrowth = {
	{11, 6, 5, 3, 2, 1, 1}, --Haven
	{6, 5, 3, 3, 2, 1, 1}, --Sylvan
	{8, 8, 5, 3, 2, 1, 1}, --Inferno
	{10, 8, 5, 3, 2, 1, 1}, --Necropolis
	{10, 8, 5, 3, 2, 1, 1}, --Academy
	{4, 3, 3, 3, 2, 1, 1}, --Dungeon
	{8, 7, 3, 4, 2, 1, 1}, --Fortress
	{14, 7, 6, 3, 3, 1, 1} --Stronghold
};

H55_AlignedTowns = {
	{2, 5, 7, 1}, -- Haven
	{1, 5, 7, 2}, -- Sylvan
	{4, 6, 8, 3}, -- Inferno
	{3, 6, 8, 4}, -- Necro
	{1, 2, 7, 5}, -- Academy
	{3, 4, 8, 6}, -- Dungeon
	{1, 2, 5, 7}, -- Fortress
	{3, 4, 6, 8}, -- Stronghold
	{9, 2, 5, 7} -- Neutral
};

H55_CreaturesInv = {};

for town = 1,9,1 do
	for tier = 1,7,1 do
		for upgrade = 1,3 do
			H55_CreaturesInv[H55_Creatures[town][tier][upgrade]] = {town, tier, upgrade};
		end;
	end;
end;

--Sounds

H55_SndStat = "/Sounds/_(Sound)/Interface/Ingame/Join-Flee.xdb#xpointer(/Sound)";
H55_SndLvlUp = "/Sounds/_(Sound)/Interface/Events/Level Up.xdb#xpointer(/Sound)";
H55_SndArtifact = "/Sounds/_(Sound)/Interface/Events/Get_artf_res02.xdb#xpointer(/Sound)";
H55_SndArmy = "/Sounds/_(Sound)/Interface/Events/Get_army.xdb#xpointer(/Sound)";
H55_SndTPStart = "/Sounds/_(Sound)/Spells/TownTeleportStart.xdb#xpointer(/Sound)";
H55_SndTPEnd = "/Sounds/_(Sound)/Spells/TownTeleportEnd.xdb#xpointer(/Sound)";
H55_SndNo = "/Sounds/_(Sound)/Interface/General/scroll_disabled_click.xdb#xpointer(/Sound)";
H55_SndNewObj = "/Sounds/_(Sound)/Interface/Ingame/Objective/new-obj.xdb#xpointer(/Sound)";
H55_SndObjComplete = "/Sounds/_(Sound)/Interface/Ingame/Objective/obj-complete.xdb#xpointer(/Sound)";
H55_SndObjFail = "/Sounds/_(Sound)/Interface/Ingame/Objective/obj-fail.xdb#xpointer(/Sound)";
H55_SndInteract = "/Sounds/_(Sound)/Interface/Ingame/Interact.xdb#xpointer(/Sound)";
H55_SndWitch = "/Sounds/_(Sound)/Buildings/WitchHut.xdb#xpointer(/Sound)";
H55_SndSpell = "/Sounds/_(Sound)/Buildings/ShrineOfMagic.xdb#xpointer(/Sound)";
H55_SndCrash = "/Maps/Scenario/A2C2M1/Siege_WallCrash02sound.xdb#xpointer(/Sound)"

--Effects

H55_TPfx = "/Effects/_(Effect)/Spells/townportal_start.xdb#xpointer(/Effect)";
H55_Firewallfx = "/Effects/_(Effect)/Spells/FireWall.(Effect).xdb#xpointer(/Effect)";
H55_Dustfx = "/Effects/_(Effect)/Buildings/Capture/Start_dust_S.xdb#xpointer(/Effect)";
H55_Fire01fx = "/Effects/_(Effect)/Towns/Inferno/MagicGuild.xdb#xpointer(/Effect)";
H55_Fire02fx = "/Effects/_(Effect)/Towns/Inferno/DemonGate.xdb#xpointer(/Effect)";
H55_Glowfx = "/Effects/_(Effect)/Environment/Inferno/Hellpikes/Hellpikes4x4_3.xdb#xpointer(/Effect)";

--Artifacts

H55_MinorArtifactsDuel = {
	ARTIFACT_SWORD_OF_RUINS,
	ARTIFACT_CROWN_OF_MANY_EYES,
	ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD,
	ARTIFACT_NECKLACE_OF_BRAVERY,
	ARTIFACT_RING_OF_LIGHTING_PROTECTION,
	ARTIFACT_PHOENIX_FEATHER_CAPE,
	ARTIFACT_VALORIOUS_ARMOR,
	ARTIFACT_BAND_OF_CONJURER,
	ARTIFACT_EARTHSLIDERS,
	ARTIFACT_RIGID_MANTLE,
	ARTIFACT_WISPERING_RING,
	ARTIFACT_BEGINNER_MAGIC_STICK,	
	ARTIFACT_BEARHIDE_WRAPS,
	ARTIFACT_RUNE_OF_FLAME,
	ARTIFACT_TAROT_DECK,
	ARTIFACT_EDGE_OF_BALANCE,
	ARTIFACT_GOLDEN_SEXTANT,	
	ARTIFACT_STEADFAST,	
	ARTIFACT_LEGION_T1,	
	ARTIFACT_LEGION_T2,	
	ARTIFACT_LEGION_T3,
	ARTIFACT_RING_OF_LIFE,
	ARTIFACT_DWARVEN_SMITHY_HUMMER,	
	ARTIFACT_RES_WOOD,
	ARTIFACT_RES_ORE,
	ARTIFACT_RES_SULPHUR,
	ARTIFACT_RES_CRYSTAL,
	ARTIFACT_RES_GEM,
	ARTIFACT_RES_MERCURY,	
	ARTIFACT_MONK_03,
	ARTIFACT_MONK_04,		
	-- ARTIFACT_LIFE_01,
	-- ARTIFACT_LIFE_02,	
	-- ARTIFACT_LIFE_03,
	ARTIFACT_BUCKLER,
	ARTIFACT_PIRATE02,
	ARTIFACT_PIRATE03,
	ARTIFACT_PIRATE04,
	-- ARTIFACT_PIRATE05,	
	ARTIFACT_PIRATE06,	
	-- ARTIFACT_MEDICAL03,	
	-- ARTIFACT_MEDICAL04,
	ARTIFACT_WAYFARER_BOOTS,
	ARTIFACT_JINXING_BAND,
	ARTIFACT_HELM_OF_CHAOS,
	ARTIFACT_UPG_SW1,
	ARTIFACT_TREEBORN_QUIVER,
	-- ARTIFACT_ENDLESS_BAG_OF_GOLD,
	ARTIFACT_UPG_AR3,
	ARTIFACT_UPG_SW3,
	ARTIFACT_UPG_ST3,
	ARTIFACT_GEAR_05,
	-- ARTIFACT_GEAR_03,
	ARTIFACT_WAND_OF_X,
	ARTIFACT_SCROLL_OF_SPELL_X
};

H55_MajorArtifactsDuel = {
	ARTIFACT_BONESTUDDED_LEATHER,
	ARTIFACT_SKULL_HELMET,
	ARTIFACT_UPG_ST1,
	ARTIFACT_OGRE_CLUB,
	ARTIFACT_OGRE_SHIELD,
	ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING,	
	ARTIFACT_BOOTS_OF_SWIFTNESS,
	ARTIFACT_DRAGON_SCALE_SHIELD,
	ARTIFACT_ICEBERG_SHIELD,
	ARTIFACT_RUNIC_WAR_HARNESS,
	ARTIFACT_NECKLACE_OF_POWER,	
	ARTIFACT_DRAGON_SCALE_ARMOR,
	ARTIFACT_NIGHTMARISH_RING,
	-- ARTIFACT_BOOTS_OF_SPEED,
	ARTIFACT_DRAGON_BONE_GRAVES,
	ARTIFACT_LION_HIDE_CAPE,
	ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT,
	ARTIFACT_DRAGON_WING_MANTLE,
	ARTIFACT_DRAGON_FLAME_TONGUE,
	ARTIFACT_MOONBLADE,
	ARTIFACT_RING_OF_CELERITY,
	ARTIFACT_DRAGON_TALON_CROWN,
	ARTIFACT_HELM_OF_ENLIGHTMENT,
	ARTIFACT_DRAGON_EYE_RING,
	-- ARTIFACT_SANDALS_OF_THE_SAINT,
	ARTIFACT_RUNIC_WAR_AXE,
	ARTIFACT_DRAGON_TEETH_NECKLACE,
	ARTIFACT_BOOK_OF_POWER,
	ARTIFACT_NECROMANCER_PENDANT,
	ARTIFACT_LEGION_T4,	
	ARTIFACT_LEGION_T5,	
	-- ARTIFACT_MONK_01,
	ARTIFACT_MONK_02,	
	ARTIFACT_RING_OF_THE_SHADOWBRAND,
	-- ARTIFACT_LIFE_04,
	ARTIFACT_UPG_AR1,	
	ARTIFACT_UPG_AR2,	
	ARTIFACT_UPG_ST2,	
	-- ARTIFACT_GEAR_02,	
	-- ARTIFACT_ELRATH_02,
	ARTIFACT_FOUR_LEAF_CLOVER,
	ARTIFACT_RING_OF_DEATH,
	ARTIFACT_BOOTS_OF_INTERFERENCE,
	ARTIFACT_WEREWOLF_CLAW_NECKLACE,
	-- ARTIFACT_ENDLESS_SACK_OF_GOLD,
	ARTIFACT_GOVERNOR_01,
	ARTIFACT_ELRATH_01,		
	ARTIFACT_ORB_01,
	ARTIFACT_ORB_02,
	ARTIFACT_ORB_03,	
	ARTIFACT_ORB_04
};

H55_RelicArtifactsDuel = {
	ARTIFACT_PIRATE01,
	ARTIFACT_RING_OF_UNSUMMONING,
	-- ARTIFACT_BOOTS_OF_LEVITATION,
	ARTIFACT_UPG_HM3,
	ARTIFACT_GEAR_01,
	ARTIFACT_STAFF_OF_MAGI,
	ARTIFACT_RING_OF_MACHINE_AFFINITY,
	ARTIFACT_DWARVEN_MITHRAL_CUIRASS,
	ARTIFACT_STAFF_OF_VEXINGS,
	-- ARTIFACT_SHACKLES_OF_WAR,
	ARTIFACT_PLATE_MAIL_OF_STABILITY,
	ARTIFACT_ROBE_OF_MAGI,
	ARTIFACT_PEDANT_OF_MASTERY,
	ARTIFACT_DWARVEN_MITHRAL_GREAVES,
	ARTIFACT_CLOAK_OF_MOURNING,
	ARTIFACT_CROWN_OF_MAGI,
	ARTIFACT_DWARVEN_MITHRAL_HELMET,
	ARTIFACT_RING_OF_MAGI,
	ARTIFACT_SHAWL_OF_GREAT_LICH,
	ARTIFACT_TOME_OF_DESTRUCTION,
	ARTIFACT_TOME_OF_LIGHT_MAGIC,
	ARTIFACT_TOME_OF_DARK_MAGIC,
	ARTIFACT_TOME_OF_SUMMONING_MAGIC,
	ARTIFACT_DWARVEN_MITHRAL_SHIELD,
	ARTIFACT_SKULL_OF_MARKAL,
	ARTIFACT_LEGION_T6,	
	ARTIFACT_LEGION_T7,	
	ARTIFACT_GUARDIAN_01,
	ARTIFACT_GUARDIAN_02,
	ARTIFACT_GUARDIAN_03,
	ARTIFACT_UNICORN_HORN_BOW,
	-- ARTIFACT_MASK_OF_DOPPELGANGER,
	ARTIFACT_CROWN_OF_LEADER,
	ARTIFACT_CROWN_OF_COURAGE,
	-- ARTIFACT_MEDICAL01,	
	-- ARTIFACT_MEDICAL02,
	ARTIFACT_UPG_HM1,		
	ARTIFACT_UPG_SW2,
	ARTIFACT_URGASH_01,	
	ARTIFACT_URGASH_02,
	ARTIFACT_GOLDEN_HORSESHOE,
	ARTIFACT_GEAR_04,
	ARTIFACT_TITANS_TRIDENT
	-- ARTIFACT_HORN_OF_PLENTY
};

H55_MinorArtifacts = {
	ARTIFACT_SWORD_OF_RUINS,
	ARTIFACT_CROWN_OF_MANY_EYES,
	ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD,
	ARTIFACT_NECKLACE_OF_BRAVERY,
	ARTIFACT_RING_OF_LIGHTING_PROTECTION,
	ARTIFACT_PHOENIX_FEATHER_CAPE,
	ARTIFACT_VALORIOUS_ARMOR,
	ARTIFACT_BAND_OF_CONJURER,
	ARTIFACT_EARTHSLIDERS,
	ARTIFACT_RIGID_MANTLE,
	ARTIFACT_WISPERING_RING,
	ARTIFACT_BEGINNER_MAGIC_STICK,	
	ARTIFACT_BEARHIDE_WRAPS,
	ARTIFACT_RUNE_OF_FLAME,
	ARTIFACT_TAROT_DECK,
	ARTIFACT_EDGE_OF_BALANCE,
	ARTIFACT_GOLDEN_SEXTANT,	
	ARTIFACT_STEADFAST,	
	ARTIFACT_LEGION_T1,	
	ARTIFACT_LEGION_T2,	
	ARTIFACT_LEGION_T3,
	ARTIFACT_RING_OF_LIFE,
	ARTIFACT_DWARVEN_SMITHY_HUMMER,	
	ARTIFACT_RES_WOOD,
	ARTIFACT_RES_ORE,
	ARTIFACT_RES_SULPHUR,
	ARTIFACT_RES_CRYSTAL,
	ARTIFACT_RES_GEM,
	ARTIFACT_RES_MERCURY,	
	ARTIFACT_MONK_03,
	ARTIFACT_MONK_04,	
	ARTIFACT_LIFE_01,
	ARTIFACT_LIFE_02,
	ARTIFACT_LIFE_03,	
	ARTIFACT_BUCKLER,
	ARTIFACT_PIRATE02,
	ARTIFACT_PIRATE03,
	ARTIFACT_PIRATE04,
	ARTIFACT_PIRATE05,	
	ARTIFACT_PIRATE06,	
	-- ARTIFACT_MEDICAL03,
	ARTIFACT_MEDICAL04,	
	ARTIFACT_WAYFARER_BOOTS,
	ARTIFACT_JINXING_BAND,
	ARTIFACT_HELM_OF_CHAOS,
	ARTIFACT_UPG_SW1,
	ARTIFACT_TREEBORN_QUIVER,
	ARTIFACT_ENDLESS_BAG_OF_GOLD,
	ARTIFACT_UPG_AR3,
	ARTIFACT_UPG_SW3,
	ARTIFACT_UPG_ST3,
	ARTIFACT_GEAR_03,
	ARTIFACT_GEAR_05
	-- ARTIFACT_WAND_OF_X,
	-- ARTIFACT_SCROLL_OF_SPELL_X,
}; -- amount is 55
	
H55_MajorArtifacts = {
	ARTIFACT_SKULL_HELMET,
	ARTIFACT_BONESTUDDED_LEATHER,
	ARTIFACT_UPG_ST1,
	ARTIFACT_OGRE_CLUB,
	ARTIFACT_OGRE_SHIELD,
	ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING,	
	ARTIFACT_BOOTS_OF_SWIFTNESS,
	ARTIFACT_DRAGON_SCALE_SHIELD,
	ARTIFACT_ICEBERG_SHIELD,
	ARTIFACT_RUNIC_WAR_HARNESS,
	ARTIFACT_NECKLACE_OF_POWER,	
	ARTIFACT_DRAGON_SCALE_ARMOR,
	ARTIFACT_NIGHTMARISH_RING,
	ARTIFACT_BOOTS_OF_SPEED,
	ARTIFACT_DRAGON_BONE_GRAVES,
	ARTIFACT_LION_HIDE_CAPE,
	ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT,
	ARTIFACT_DRAGON_WING_MANTLE,
	ARTIFACT_DRAGON_FLAME_TONGUE,
	ARTIFACT_MOONBLADE,
	ARTIFACT_RING_OF_CELERITY,
	ARTIFACT_DRAGON_TALON_CROWN,
	ARTIFACT_HELM_OF_ENLIGHTMENT,
	ARTIFACT_DRAGON_EYE_RING,
	ARTIFACT_SANDALS_OF_THE_SAINT,
	ARTIFACT_RUNIC_WAR_AXE,
	ARTIFACT_DRAGON_TEETH_NECKLACE,
	ARTIFACT_BOOK_OF_POWER,
	ARTIFACT_NECROMANCER_PENDANT,
	ARTIFACT_LEGION_T4,	
	ARTIFACT_LEGION_T5,	
	ARTIFACT_MONK_01,
	ARTIFACT_MONK_02,		
	ARTIFACT_RING_OF_THE_SHADOWBRAND,
	ARTIFACT_LIFE_04,
	ARTIFACT_UPG_AR1,	
	ARTIFACT_UPG_AR2,	
	ARTIFACT_UPG_ST2,
	ARTIFACT_GEAR_02,
	ARTIFACT_ELRATH_02,
	ARTIFACT_FOUR_LEAF_CLOVER,
	ARTIFACT_RING_OF_DEATH,
	ARTIFACT_BOOTS_OF_INTERFERENCE,
	ARTIFACT_WEREWOLF_CLAW_NECKLACE,
	ARTIFACT_ENDLESS_SACK_OF_GOLD,	
	ARTIFACT_GOVERNOR_01,
	ARTIFACT_ELRATH_01,		
	ARTIFACT_ORB_01,
	ARTIFACT_ORB_02,
	ARTIFACT_ORB_03,	
	ARTIFACT_ORB_04,
	ARTIFACT_GEAR_06
}; -- amount is 53

H55_RelicArtifacts = {
	ARTIFACT_PIRATE01,
	ARTIFACT_RING_OF_UNSUMMONING,
	ARTIFACT_BOOTS_OF_LEVITATION,
	ARTIFACT_STAFF_OF_MAGI,
	ARTIFACT_RING_OF_MACHINE_AFFINITY,
	ARTIFACT_DWARVEN_MITHRAL_CUIRASS,
	ARTIFACT_STAFF_OF_VEXINGS,
	ARTIFACT_SHACKLES_OF_WAR,
	ARTIFACT_PLATE_MAIL_OF_STABILITY,
	ARTIFACT_ROBE_OF_MAGI,
	ARTIFACT_PEDANT_OF_MASTERY,
	ARTIFACT_DWARVEN_MITHRAL_GREAVES,
	ARTIFACT_CLOAK_OF_MOURNING,
	ARTIFACT_CROWN_OF_MAGI,
	ARTIFACT_DWARVEN_MITHRAL_HELMET,
	ARTIFACT_RING_OF_MAGI,
	ARTIFACT_SHAWL_OF_GREAT_LICH,
	ARTIFACT_TOME_OF_DESTRUCTION,
	ARTIFACT_TOME_OF_LIGHT_MAGIC,
	ARTIFACT_TOME_OF_DARK_MAGIC,
	ARTIFACT_TOME_OF_SUMMONING_MAGIC,
	ARTIFACT_DWARVEN_MITHRAL_SHIELD,
	ARTIFACT_SKULL_OF_MARKAL,
	ARTIFACT_LEGION_T6,	
	ARTIFACT_LEGION_T7,	
	ARTIFACT_GUARDIAN_01,
	ARTIFACT_GUARDIAN_02,
	ARTIFACT_GUARDIAN_03,
	ARTIFACT_UNICORN_HORN_BOW,
	ARTIFACT_MASK_OF_DOPPELGANGER,	
	ARTIFACT_MEDICAL01,	
	ARTIFACT_MEDICAL02,
	ARTIFACT_UPG_HM1,		
	ARTIFACT_UPG_SW2,
	ARTIFACT_UPG_HM3,
	ARTIFACT_URGASH_01,	
	ARTIFACT_URGASH_02,
	ARTIFACT_GOLDEN_HORSESHOE,	
	ARTIFACT_CROWN_OF_LEADER,
	ARTIFACT_CROWN_OF_COURAGE,
	ARTIFACT_TITANS_TRIDENT,
	ARTIFACT_GEAR_01,
	ARTIFACT_GEAR_04,
	ARTIFACT_HORN_OF_PLENTY
}; --amount is 43

H55_UltimateArtifacts = {
	ARTIFACT_EIGHTFOLD,
	ARTIFACT_DRACONIC,
	ARTIFACT_SENTINEL,
	ARTIFACT_RING_OF_HASTE,
	ARTIFACT_UPG_HM2,
	ARTIFACT_ANGEL_WINGS,
	ARTIFACT_CODEX,
	ARTIFACT_GEAR_01,
	ARTIFACT_GRAAL
};

H55_MinorBookArtifacts = {
	ARTIFACT_BOOK_A1,	
	ARTIFACT_BOOK_A2,		
	ARTIFACT_BOOK_D1,	
	ARTIFACT_BOOK_D2,	
	ARTIFACT_BOOK_S1,	
	ARTIFACT_BOOK_S2,	
	ARTIFACT_BOOK_K1,	
	ARTIFACT_BOOK_K2,
	ARTIFACT_GEAR_07
};

H55_MajorBookArtifacts = {	
	ARTIFACT_BOOK_A3,	
	ARTIFACT_BOOK_A4,	
	ARTIFACT_BOOK_D3,	
	ARTIFACT_BOOK_D4,	
	ARTIFACT_BOOK_S3,	
	ARTIFACT_BOOK_S4,	
	ARTIFACT_BOOK_K3,	
	ARTIFACT_BOOK_K4	
};

H55_RelicBookArtifacts = {
	ARTIFACT_BOOK_R1,	
	ARTIFACT_BOOK_R2,	
	ARTIFACT_BOOK_R3	
};

H55_DiscPieces = {
	ARTIFACT_SHANTIRI_01,	
	ARTIFACT_SHANTIRI_02,	
	ARTIFACT_SHANTIRI_03,	
	ARTIFACT_SHANTIRI_04
};

H55_PrankArtifacts = {
	ARTIFACT_FIZBIN,
	ARTIFACT_FORGING
};

H55_CustomArtifacts = {
	ARTIFACT_GEAR_01,
	ARTIFACT_GEAR_02,
	ARTIFACT_GEAR_03,
	ARTIFACT_GEAR_04,
	ARTIFACT_GEAR_05,	
	ARTIFACT_GEAR_06
};

H55_MinorSeerArtifacts = {
	ARTIFACT_SWORD_OF_RUINS,
	ARTIFACT_RING_OF_LIGHTING_PROTECTION,
	ARTIFACT_NECKLACE_OF_BRAVERY,	
	ARTIFACT_BEARHIDE_WRAPS,
	ARTIFACT_VALORIOUS_ARMOR,	
	ARTIFACT_RUNE_OF_FLAME,
	ARTIFACT_GOLDEN_SEXTANT,	
	ARTIFACT_LEGION_T1,	
	ARTIFACT_LEGION_T2,	
	ARTIFACT_JINXING_BAND,	
	ARTIFACT_DWARVEN_SMITHY_HUMMER,	
	ARTIFACT_RES_MERCURY,	
	ARTIFACT_RES_GEM,	
	ARTIFACT_BUCKLER,	
	ARTIFACT_PIRATE05
};

H55_MajorSeerArtifacts = {
	ARTIFACT_NECROMANCER_PENDANT,
	ARTIFACT_NIGHTMARISH_RING,	
	ARTIFACT_FOUR_LEAF_CLOVER,
	ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING,	
	ARTIFACT_LION_HIDE_CAPE
};

H55_RelicSeerArtifacts = {
	ARTIFACT_SHACKLES_OF_WAR,
	ARTIFACT_SANDALS_OF_THE_SAINT
};

H55_MinorSeerArtifactsText = {
	"/Text/Game/Scripts/Seer/Artifacts/SwordOfRuin/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Ring_of_lightning_protection/Name.txt",	
	"/Text/Game/Scripts/Seer/Artifacts/Necklace_of_bravery/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Bearhide_Wraps/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Valorious_Armor/Name.txt",
	
	"/Text/Game/Scripts/Seer/Artifacts/Rune_of_Flame/Name.txt",	
	"/Text/Game/Scripts/Seer/Artifacts/Golden_sextant/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Legion_T1/Name.txt",	
	"/Text/Game/Scripts/Seer/Artifacts/Legion_T2/Name.txt",	
	"/Text/Game/Scripts/Seer/Artifacts/Jinxing_Band/Name.txt",

	"/Text/Game/Scripts/Seer/Artifacts/Dwarven_Smithy_Hammer/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Res_Mercury/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Res_Gem/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Buckler/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Pirate05/Name.txt"
};

H55_MajorSeerArtifactsText = {
	"/Text/Game/Scripts/Seer/Artifacts/Necromancer_Pendant/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Nightmarish_Ring/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Four_leaf_clover/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Great_Axe_of_giant_slaying/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Lion_hide_cape/Name.txt"
};

H55_RelicSeerArtifactsText = {
	"/Text/Game/Scripts/Seer/Artifacts/ShacklesOfWar/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Sandals_of_the_Saint/Name.txt"
};

H55_SeerRewardText1 = {
	"/Text/Game/Scripts/Seer/Levelup.txt",
	"/Text/Game/Scripts/Seer/Skill.txt"
};

H55_SeerRewardText2 = {
	"/Text/Game/Scripts/Seer/Artifact.txt",
	"/Text/Game/Scripts/Seer/Gold.txt"
};

--Spells

H55_BallistaSpells = {
	SPELL_MAGIC_ARROW,
	SPELL_STONE_SPIKES,
	SPELL_ICE_BOLT,
	SPELL_LIGHTNING_BOLT,
	SPELL_FIREBALL
};

H55_BallistaSpellsTxt = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_ARROW.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_STONE_SPIKES.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ICE_BOLT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_LIGHTNING_BOLT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FIREBALL.txt"
};

H55_ArrowSpells = {
	SPELL_SLOW,
	SPELL_CURSE,
	SPELL_PLAGUE,
	SPELL_DISRUPTING_RAY,
	SPELL_WEAKNESS,
	SPELL_FORGETFULNESS
};

H55_ArrowSpellsTxt = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SLOW.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CURSE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_PLAGUE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DISRUPTING_RAY.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_WEAKNESS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FORGETFULNESS.txt"
};

H55_AdventureSpells = {
	SPELL_SUMMON_BOAT,
	SPELL_SUMMON_CREATURES,
	SPELL_TOWN_PORTAL,
	SPELL_DIMENSION_DOOR
};

H55_AdventureSpellsText = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_BOAT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_CREATURES.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_TOWN_PORTAL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DIMENSION_DOOR.txt"
};

H55_ShamanRnd = {
{{1,2,3},{1,2,3},{1,2,3},{1,2,3}},
{{3,2,1},{3,2,1},{3,2,1},{3,2,1}},
{{1,3,2},{1,3,2},{1,3,2},{1,3,2}},
{{2,3,1},{2,3,1},{2,3,1},{2,3,1}},
{{2,1,3},{2,1,3},{2,1,3},{2,1,3}},
{{3,1,2},{3,1,2},{3,1,2},{3,1,2}},
};

H55_UnusualSchools = {
[1] = {SKILL_SUMMONING_MAGIC,SKILL_DESTRUCTIVE_MAGIC},
[2] = {SKILL_DARK_MAGIC,SKILL_DESTRUCTIVE_MAGIC},
[3] = {SKILL_LIGHT_MAGIC,SKILL_SUMMONING_MAGIC},
[4] = {SKILL_LIGHT_MAGIC,SKILL_DESTRUCTIVE_MAGIC},
[5] = {SKILL_LIGHT_MAGIC,SKILL_DARK_MAGIC},
[6] = {SKILL_LIGHT_MAGIC,SKILL_SUMMONING_MAGIC},
[7] = {SKILL_DARK_MAGIC,SKILL_SUMMONING_MAGIC},
[8] = {SKILL_LIGHT_MAGIC,SKILL_SUMMONING_MAGIC,SKILL_DARK_MAGIC,SKILL_DESTRUCTIVE_MAGIC},
[9] = {SKILL_DARK_MAGIC,SKILL_DESTRUCTIVE_MAGIC}
}

H55_Spells = {
	[SKILL_SUMMONING_MAGIC] = {
        [1] = {SPELL_WASP_SWARM,SPELL_LAND_MINE,SPELL_ARCANE_CRYSTAL},
        [2] = {SPELL_EARTHQUAKE,SPELL_MAGIC_FIST},
		[3] = {SPELL_ANTI_MAGIC,SPELL_BLADE_BARRIER},
		[4] = {SPELL_SUMMON_HIVE,SPELL_FIREWALL},
		[5] = {SPELL_HYPNOTIZE,SPELL_CONJURE_PHOENIX}
	},
	[SKILL_DESTRUCTIVE_MAGIC] = {
        [1] = {SPELL_STONE_SPIKES,SPELL_ICE_BOLT},
        [2] = {SPELL_METEOR_SHOWER,SPELL_LIGHTNING_BOLT},
		[3] = {SPELL_FIREBALL,SPELL_FROST_RING},
		[4] = {SPELL_ARMAGEDDON,SPELL_IMPLOSION},
		[5] = {SPELL_DEEP_FREEZE,SPELL_CHAIN_LIGHTNING}
	},
	[SKILL_DARK_MAGIC] = {
        [1] = {SPELL_PLAGUE,SPELL_CURSE,SPELL_WEAKNESS},
        [2] = {SPELL_SLOW,SPELL_DISRUPTING_RAY},
		[3] = {SPELL_ANIMATE_DEAD,SPELL_SORROW},
		[4] = {SPELL_TELEPORT,SPELL_PHANTOM,SPELL_UNHOLY_WORD},
		[5] = {SPELL_BERSERK,SPELL_VAMPIRISM}
	},
	[SKILL_LIGHT_MAGIC] = {
        [1] = {SPELL_MAGIC_ARROW,SPELL_BLESS,SPELL_STONESKIN},
        [2] = {SPELL_BLOODLUST,SPELL_HASTE,SPELL_DEFLECT_ARROWS},
		[3] = {SPELL_DISPEL,SPELL_REGENERATION,SPELL_HOLY_WORD},
		[4] = {SPELL_DIVINE_VENGEANCE,SPELL_RESURRECT},
		[5] = {SPELL_CELESTIAL_SHIELD,SPELL_BLIND}
	}
};

H55_UnusualSpellsText = {
	[SKILL_SUMMONING_MAGIC] = {
		[3] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_ANTI_MAGIC.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_BLADE_BARRIER.txt"},
		[4] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_HIVE.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_FIREWALL.txt"},
		[5] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_HYPNOTIZE.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_CONJURE_PHOENIX.txt"}
	},
	[SKILL_DESTRUCTIVE_MAGIC] = {
		[3] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_FROST_RING.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_CHAIN_LIGHTNING.txt"},
		[4] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_METEOR_SHOWER.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt"},
		[5] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_ARMAGEDDON.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_IMPLOSION.txt"}
	},
	[SKILL_DARK_MAGIC] = {
		[3] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_WEAKNESS.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_SORROW.txt"},
		[4] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_TELEPORT.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt"},
		[5] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_BERSERK.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_VAMPIRISM.txt"}
	},
	[SKILL_LIGHT_MAGIC] = {
		[3] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_DEFLECT_ARROWS.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_REGENERATION.txt"},
		[4] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_BLIND.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_DIVINE_VENGEANCE.txt"},
		[5] = {"/Text/Game/Scripts/Spells/spell_name_SPELL_CELESTIAL_SHIELD.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_RESURRECT.txt"}
	}
};

H55_LightSpells = {
	SPELL_BLESS,
	SPELL_HASTE,
	SPELL_MAGIC_ARROW,
	SPELL_STONESKIN,
	SPELL_DISPEL,
	SPELL_BLOODLUST,
	SPELL_DEFLECT_ARROWS,	
	SPELL_REGENERATION,
	SPELL_BLIND,
	SPELL_HOLY_WORD,
	SPELL_DIVINE_VENGEANCE,
	SPELL_CELESTIAL_SHIELD,	
	SPELL_RESURRECT
};

H55_UnusualLightSpellsL3 = {SPELL_DEFLECT_ARROWS,SPELL_REGENERATION};
H55_UnusualLightSpellsL4 = {SPELL_BLIND,SPELL_DIVINE_VENGEANCE};
H55_UnusualLightSpellsL5 = {SPELL_CELESTIAL_SHIELD,SPELL_RESURRECT};

H55_UnusualLightSpellsTextL3 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_DEFLECT_ARROWS.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_REGENERATION.txt"};
H55_UnusualLightSpellsTextL4 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_BLIND.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_DIVINE_VENGEANCE.txt"};
H55_UnusualLightSpellsTextL5 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_CELESTIAL_SHIELD.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_RESURRECT.txt"};

H55_ShamanLightSpells = {
	{SPELL_BLESS,
	SPELL_HASTE,
	SPELL_STONESKIN},
	{SPELL_DISPEL,
	SPELL_DEFLECT_ARROWS,
	SPELL_BLOODLUST},
	{SPELL_REGENERATION,
	SPELL_BLIND,
	SPELL_HOLY_WORD},
	{SPELL_CELESTIAL_SHIELD,
	SPELL_DIVINE_VENGEANCE,
	SPELL_RESURRECT}
};--Start with Magic arrow

H55_ShamanLightSpellsText = {
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_BLESS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_HASTE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_STONESKIN.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_DISPEL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DEFLECT_ARROWS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BLOODLUST.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_REGENERATION.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BLIND.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_HOLY_WORD.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_CELESTIAL_SHIELD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DIVINE_VENGEANCE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_RESURRECT.txt"}
};
	
H55_DarkSpells = {
	SPELL_SLOW,
	SPELL_CURSE,
	SPELL_DISRUPTING_RAY,
	SPELL_PLAGUE,	
	SPELL_FORGETFULNESS,	
	SPELL_WEAKNESS,
	SPELL_ANIMATE_DEAD,	
	SPELL_SORROW,
	SPELL_TELEPORT,	
	SPELL_UNHOLY_WORD,
	SPELL_PHANTOM,	
	SPELL_BERSERK,	
	SPELL_VAMPIRISM	
};

H55_UnusualDarkSpellsL3 = {SPELL_TELEPORT,SPELL_SORROW};	
H55_UnusualDarkSpellsL4 = {SPELL_PHANTOM,SPELL_PHANTOM};
H55_UnusualDarkSpellsL5 = {SPELL_BERSERK,SPELL_VAMPIRISM};

H55_UnusualDarkSpellsTextL3 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_TELEPORT.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_SORROW.txt"};	
H55_UnusualDarkSpellsTextL4 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt"};
H55_UnusualDarkSpellsTextL5 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_BERSERK.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_VAMPIRISM.txt"};

H55_ShamanDarkSpells = {
	{SPELL_SLOW,
	SPELL_DISRUPTING_RAY,
	SPELL_CURSE},
	{SPELL_FORGETFULNESS,
	SPELL_SORROW,
	SPELL_WEAKNESS},
	{SPELL_TELEPORT,
	SPELL_ANIMATE_DEAD,
	SPELL_PHANTOM},
	{SPELL_UNHOLY_WORD,	
	SPELL_BERSERK,
	SPELL_VAMPIRISM}
};--Start with Plague

H55_ShamanDarkSpellsText = {
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_SLOW.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DISRUPTING_RAY.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CURSE.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_FORGETFULNESS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SORROW.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_WEAKNESS.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_TELEPORT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ANIMATE_DEAD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_UNHOLY_WORD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BERSERK.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_VAMPIRISM.txt"}
};

H55_DestructiveSpells = {
	SPELL_LIGHTNING_BOLT,	
	SPELL_STONE_SPIKES,
	SPELL_ICE_BOLT,
	SPELL_FROST_RING,
	SPELL_FIREBALL,
	SPELL_CHAIN_LIGHTNING,
	SPELL_METEOR_SHOWER,
	SPELL_ARMAGEDDON,
	SPELL_DEEP_FREEZE,
	SPELL_IMPLOSION	
};

H55_UnusualDestructiveSpellsL3 = {SPELL_FROST_RING,SPELL_CHAIN_LIGHTNING};
H55_UnusualDestructiveSpellsL4 = {SPELL_METEOR_SHOWER,SPELL_DEEP_FREEZE};	
H55_UnusualDestructiveSpellsL5 = {SPELL_ARMAGEDDON,SPELL_IMPLOSION};

H55_UnusualDestructiveSpellsTextL3 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_FROST_RING.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_CHAIN_LIGHTNING.txt"};
H55_UnusualDestructiveSpellsTextL4 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_METEOR_SHOWER.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt"};	
H55_UnusualDestructiveSpellsTextL5 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_ARMAGEDDON.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_IMPLOSION.txt"};

H55_ShamanDestructiveSpells = {
	{SPELL_LIGHTNING_BOLT,
	SPELL_STONE_SPIKES,
	SPELL_LIGHTNING_BOLT},
	{SPELL_ICE_BOLT,
	SPELL_CHAIN_LIGHTNING,
	SPELL_FIREBALL},
	{SPELL_FROST_RING,
	SPELL_IMPLOSION,
	SPELL_METEOR_SHOWER},
	{SPELL_ARMAGEDDON,
	SPELL_DEEP_FREEZE,
	SPELL_DEEP_FREEZE}
};

H55_ShamanDestructiveSpellsText = {
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_LIGHTNING_BOLT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_STONE_SPIKES.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_LIGHTNING_BOLT.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_ICE_BOLT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CHAIN_LIGHTNING.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FIREBALL.txt"},	
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_FROST_RING.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_IMPLOSION.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_METEOR_SHOWER.txt"},	
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_ARMAGEDDON.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt"}
};

H55_SummoningSpells = {
	SPELL_MAGIC_FIST,
	SPELL_LAND_MINE,
	SPELL_WASP_SWARM,
	SPELL_ARCANE_CRYSTAL,
	SPELL_ANIMATE_DEAD,
	SPELL_EARTHQUAKE,	
	SPELL_SUMMON_ELEMENTALS,
	SPELL_BLADE_BARRIER,
	SPELL_ANTI_MAGIC,	
	SPELL_SUMMON_HIVE,
	SPELL_FIREWALL,	
	SPELL_HYPNOTIZE,	
	SPELL_CONJURE_PHOENIX
};

H55_UnusualSummoningSpellsL3 = {SPELL_ANTI_MAGIC,SPELL_BLADE_BARRIER};
H55_UnusualSummoningSpellsL4 = {SPELL_SUMMON_HIVE,SPELL_FIREWALL};
H55_UnusualSummoningSpellsL5 = {SPELL_HYPNOTIZE,SPELL_CONJURE_PHOENIX};

H55_UnusualSummoningSpellsTextL3 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_ANTI_MAGIC.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_BLADE_BARRIER.txt"};
H55_UnusualSummoningSpellsTextL4 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_HIVE.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_FIREWALL.txt"};
H55_UnusualSummoningSpellsTextL5 = {"/Text/Game/Scripts/Spells/spell_name_SPELL_HYPNOTIZE.txt","/Text/Game/Scripts/Spells/spell_name_SPELL_CONJURE_PHOENIX.txt"};

H55_ShamanSummoningSpells = {
	{SPELL_MAGIC_FIST,
	SPELL_LAND_MINE,
	SPELL_WASP_SWARM},
	{SPELL_ARCANE_CRYSTAL,
	SPELL_SUMMON_ELEMENTALS,
	SPELL_EARTHQUAKE},
	{SPELL_BLADE_BARRIER,
	SPELL_SUMMON_HIVE,
	SPELL_ANTI_MAGIC},	
	{SPELL_FIREWALL,
	SPELL_HYPNOTIZE,
	SPELL_CONJURE_PHOENIX}
};

H55_ShamanSummoningSpellsText = {
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_FIST.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_LAND_MINE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_WASP_SWARM.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_ARCANE_CRYSTAL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_ELEMENTALS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_EARTHQUAKE.txt"},
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_BLADE_BARRIER.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_HIVE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ANTI_MAGIC.txt"},	
	{"/Text/Game/Scripts/Spells/spell_name_SPELL_FIREWALL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_HYPNOTIZE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CONJURE_PHOENIX.txt"}
};
	
H55_SpellsL1 = {
	SPELL_SLOW,
	SPELL_CURSE,
	SPELL_DISRUPTING_RAY,
	SPELL_LIGHTNING_BOLT,
	SPELL_STONE_SPIKES,
	SPELL_STONESKIN,	
	SPELL_BLESS,
	SPELL_HASTE,
	SPELL_WASP_SWARM,
	SPELL_LAND_MINE
}; --amount is 10

H55_SpellsTextL1 = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SLOW.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CURSE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DISRUPTING_RAY.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_LIGHTNING_BOLT.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_STONE_SPIKES.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_STONESKIN.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BLESS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_HASTE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_WASP_SWARM.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_LAND_MINE.txt"
};

H55_SpellsL2 = {
	SPELL_WEAKNESS,
	SPELL_PLAGUE,
	SPELL_FORGETFULNESS,
	SPELL_FIREBALL,
	SPELL_ICE_BOLT,
	SPELL_MAGIC_ARROW,	
	SPELL_DISPEL,
	SPELL_BLOODLUST,
	SPELL_ARCANE_CRYSTAL,
	SPELL_EARTHQUAKE,
	SPELL_MAGIC_FIST	
}; --amount is 11

H55_SpellsTextL2 = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_WEAKNESS.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_PLAGUE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FORGETFULNESS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FIREBALL.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ICE_BOLT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_ARROW.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DISPEL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BLOODLUST.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ARCANE_CRYSTAL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_EARTHQUAKE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_FIST.txt"	
};

H55_SpellsL3  = {
	SPELL_ANIMATE_DEAD,
	SPELL_TELEPORT,	
	SPELL_SORROW,	
	SPELL_CHAIN_LIGHTNING,
	SPELL_FROST_RING,	
	SPELL_DEFLECT_ARROWS,
	SPELL_REGENERATION,
	SPELL_BLADE_BARRIER,
	SPELL_ANTI_MAGIC,
	SPELL_SUMMON_ELEMENTALS	
}; --amount is 10

H55_SpellsTextL3 = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ANIMATE_DEAD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_TELEPORT.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SORROW.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CHAIN_LIGHTNING.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FROST_RING.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DEFLECT_ARROWS.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_REGENERATION.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BLADE_BARRIER.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ANTI_MAGIC.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_ELEMENTALS.txt"	
};

H55_SpellsL4  = {
	SPELL_UNHOLY_WORD,
	SPELL_PHANTOM,
	SPELL_METEOR_SHOWER,
	SPELL_DEEP_FREEZE,
	SPELL_BLIND,	
	SPELL_DIVINE_VENGEANCE,
	SPELL_HOLY_WORD,
	SPELL_FIREWALL,	
	SPELL_SUMMON_HIVE
}; --amount is 9

H55_SpellsTextL4 = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_UNHOLY_WORD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_METEOR_SHOWER.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BLIND.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_DIVINE_VENGEANCE.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_HOLY_WORD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_FIREWALL.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_HIVE.txt"
};

H55_SpellsL5  = {
	SPELL_BERSERK,	
	SPELL_VAMPIRISM,
	SPELL_ARMAGEDDON,
	SPELL_IMPLOSION,
	SPELL_RESURRECT,
	SPELL_CELESTIAL_SHIELD,
	SPELL_HYPNOTIZE,
	SPELL_CONJURE_PHOENIX
}; --amount is 8

H55_SpellsTextL5 = {
	"/Text/Game/Scripts/Spells/spell_name_SPELL_BERSERK.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_VAMPIRISM.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_ARMAGEDDON.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_IMPLOSION.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_RESURRECT.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CELESTIAL_SHIELD.txt",
	"/Text/Game/Scripts/Spells/spell_name_SPELL_HYPNOTIZE.txt",	
	"/Text/Game/Scripts/Spells/spell_name_SPELL_CONJURE_PHOENIX.txt"
};

H55_RuneSpells = {
	249, --SPELL_RUNE_OF_CHARGE, 
	250, --SPELL_RUNE_OF_BERSERKING, 
	251, --SPELL_RUNE_OF_MAGIC_CONTROL,
	252, --SPELL_RUNE_OF_EXORCISM, 
	253, --SPELL_RUNE_OF_ELEMENTAL_IMMUNITY, 
	254, --SPELL_RUNE_OF_STUNNING, 
	255, --SPELL_RUNE_OF_BATTLERAGE, 
	256, --SPELL_RUNE_OF_ETHEREALNESS, 
	257, --SPELL_RUNE_OF_REVIVE, 
	258  --SPELL_RUNE_OF_DRAGONFORM 
};

H55_Warcries = {
	SPELL_WARCRY_RALLING_CRY,
	SPELL_WARCRY_CALL_OF_BLOOD,
	SPELL_WARCRY_WORD_OF_THE_CHIEF,	
	SPELL_WARCRY_FEAR_MY_ROAR,
	SPELL_WARCRY_BATTLECRY,
	SPELL_WARCRY_SHOUT_OF_MANY
};

--Witch Huts

------------------------Def,Elt,logt,lck,off,Drk,Dst,Lgt,Smg,Lp/Sc,Cb/Oc,WarM/Racial
H55_WitchRenegades = 	{  6,  8, 13, 14, 17,  5,  6,  6,  6,  10,   4, 26 };
H55_WitchKnights =      {  6,  8, 13, 14, 17,  6,  6, 12,  6,  10,   4, 26 };
H55_WitchHeretics = 	{  6,  8, 13, 14, 17,  5,  7,  6, 24,  23,  16, 26 };

H55_WitchRangers =      {  6,  8, 13, 14, 17,  6,  6, 12,  6,  10,   4, 26 };
H55_WitchAvengers =     {  6,  8, 13, 14, 17,  5,  7,  6, 24,  10,   4, 26 }; --Summoning instead of Avenger
H55_WitchDruids =       {  6,  8, 13, 14, 17,  6,  7, 12, 24,  23,  16, 26 };

H55_WitchDemonlords = 	{  6,  8, 13, 14, 17,  5,  6,  6,  6,  10,   4, 26 };
H55_WitchGatekeepers = 	{  6,  8, 13, 14, 17,  5,  7, 12,  9,  23,   4, 26 }; --Combat
H55_WitchSorcerers = 	{  6,  8, 13, 14, 17,  5,  7,  6, 24,  23,  16,  9 };

H55_WitchDeathKnights = {  6,  8, 13, 14, 17,  5,  6,  6, 15,  10,   4, 26 }; --Necromancy
H55_WitchNecromancers = {  6,  8, 13, 14, 17,  5,  6, 12, 24,  23,  16, 15 };
H55_WitchNethermages =  {  6,  8, 13, 14, 17,  5,  7,  6, 24,  23,  16, 15 };

------------------------Def,Elt,logt,lck,off,Drk,Dst,Lgt,Smg,Lp/Sc,Cb/Oc,WarM/Racial
H55_WitchEnchanters =   {  6,  8, 13, 14, 17,  5,  6, 12, 16,  10,   1, 26 }; --Occultism
H55_WitchConjurers =	{  6,  8, 13, 14, 17,  5,  7,  6, 24,  23,  16,  1 };
H55_WitchWizards =      {  6,  8, 13, 14, 17,  5,  7, 12, 24,  23,  16,  1 }; 

H55_WitchOverlords = 	{  6,  8, 13, 14, 17,  5,  6,  6,  6,  10,   4, 26 };
H55_WitchTricksters = 	{  6,  8, 13, 14, 17,  5,  7, 12, 15,  23,  16, 26 }; --Necromancy
H55_WitchWarlocks = 	{  6,  8, 13, 14, 17,  5,  7,  6, 24,  23,  16, 15 };

H55_WitchEngineers = 	{  6,  8, 13, 14, 17,  6,  6, 12, 18,  10,   4, 26 }; --Runelore
H55_WitchRunemages = 	{  6,  8, 13, 14, 17,  5,  6, 12, 24,  23,  18, 26 };
H55_WitchFlamekeepers = {  6,  8, 13, 14, 17,  6,  7, 12, 24,  23,  16, 18 };

H55_WitchChieftains = 	{  6, 11, 13, 14, 17,  6,  6,  6,  6,  10,  25, 26 }; --Voice and Barb learning instead of enlightement
H55_WitchShamans =      {  6,  8, 13, 14, 17,  6,  6, 12, 24,  23,  16, 26 };
H55_WitchWitches =      {  6,  8, 13, 14, 17,  5,  7,  6, 24,  23,  16, 15 };

H55_WitchSelect = { 
	H55_WitchRenegades, H55_WitchKnights, H55_WitchHeretics,
	H55_WitchRangers, H55_WitchAvengers, H55_WitchDruids,
	H55_WitchDemonlords, H55_WitchGatekeepers, H55_WitchSorcerers,
	H55_WitchDeathKnights, H55_WitchNecromancers, H55_WitchNethermages,
	H55_WitchEnchanters, H55_WitchConjurers, H55_WitchWizards,
	H55_WitchOverlords, H55_WitchTricksters, H55_WitchWarlocks,
	H55_WitchEngineers, H55_WitchRunemages, H55_WitchFlamekeepers,
	H55_WitchChieftains, H55_WitchShamans, H55_WitchWitches
};

H55_WitchSkills = {                         --SKILL ID
	SKILL_ARTIFICIER,                       -- 1
	SKILL_AVENGER,                          -- 2
	HERO_SKILL_DEMONIC_RAGE,                -- 3
	SKILL_TRAINING,                         -- 4
	SKILL_DARK_MAGIC,                       -- 5
	SKILL_DEFENCE,                          -- 6
	SKILL_DESTRUCTIVE_MAGIC,                -- 7
	SKILL_LEARNING,                         -- 8
	SKILL_GATING,                           -- 9
	SKILL_LEADERSHIP,                       -- 10
	HERO_SKILL_BARBARIAN_LEARNING,          -- 11
	SKILL_LIGHT_MAGIC,                      -- 12
	SKILL_LOGISTICS,                        -- 13
	SKILL_LUCK,                             -- 14
	SKILL_NECROMANCY,                       -- 15
	SKILL_INVOCATION,                       -- 16
	SKILL_OFFENCE,                          -- 17
	HERO_SKILL_RUNELORE,                    -- 18
	HERO_SKILL_SHATTER_DARK_MAGIC,          -- 19
	SKILL_BODYBUILDING,   -- 20
	SKILL_WARCRY_LEARNING,         -- 21
	SKILL_WARCRY_LEARNING,         -- 22
	SKILL_SORCERY,                          -- 23
	SKILL_SUMMONING_MAGIC,                  -- 24
	HERO_SKILL_VOICE,                       -- 25
	SKILL_WAR_MACHINES                      -- 26
};

H55_WitchSkillText = {
	"/Text/Game/Scripts/Witch/Artificier.txt",
	"/Text/Game/Scripts/Witch/Avenger.txt",
	"/Text/Game/Scripts/Witch/Bloodrage.txt",
	"/Text/Game/Scripts/Witch/Combat.txt",
	"/Text/Game/Scripts/Witch/Darkmagic.txt",
	"/Text/Game/Scripts/Witch/Defense.txt",
	"/Text/Game/Scripts/Witch/Destructivemagic.txt",
	"/Text/Game/Scripts/Witch/Enlightment.txt",
	"/Text/Game/Scripts/Witch/Gating.txt",
	"/Text/Game/Scripts/Witch/Leadership.txt",
	"/Text/Game/Scripts/Witch/Learning.txt",
	"/Text/Game/Scripts/Witch/Lightmagic.txt",
	"/Text/Game/Scripts/Witch/Logistics.txt",
	"/Text/Game/Scripts/Witch/Luck.txt",
	"/Text/Game/Scripts/Witch/Necromancy.txt",
	"/Text/Game/Scripts/Witch/Occultism.txt",
	"/Text/Game/Scripts/Witch/Offense.txt",
	"/Text/Game/Scripts/Witch/Runelore.txt",
	"/Text/Game/Scripts/Witch/Shatterdark.txt",
	"/Text/Game/Scripts/Witch/Shatterdestructive.txt",
	"/Text/Game/Scripts/Witch/Shatterlight.txt",
	"/Text/Game/Scripts/Witch/Shattersummoning.txt",
	"/Text/Game/Scripts/Witch/Sorcery.txt",
	"/Text/Game/Scripts/Witch/Summoningmagic.txt",
	"/Text/Game/Scripts/Witch/Voice.txt",
	"/Text/Game/Scripts/Witch/Warmachines.txt"
};

H55_WitchMasteryText = {
	[0] = "/Text/Game/Scripts/Witch/Basic.txt",
	[1] = "/Text/Game/Scripts/Witch/Advanced.txt",
	[2] = "/Text/Game/Scripts/Witch/Expert.txt",
	[3] = "/Text/Game/Scripts/Witch/Ultimate.txt"	
};

--Summoning Temple

H55_SummonResourceText = {
	[0] = "/Text/Game/Scripts/Summon/Wood.txt",
	[1] = "/Text/Game/Scripts/Summon/Ore.txt",
	[2] = "/Text/Game/Scripts/Summon/Mercury.txt",
	[3] = "/Text/Game/Scripts/Summon/Crystal.txt",
	[4] = "/Text/Game/Scripts/Summon/Sulphur.txt",	
	[5] = "/Text/Game/Scripts/Summon/Gem.txt"		
};

--Banks

H55_BankEnterText = {
	"/Text/Game/Scripts/Banks/Ambush.txt",
	"/Text/Game/Scripts/Banks/Alone.txt",
	"/Text/Game/Scripts/Banks/Idea.txt",
	"/Text/Game/Scripts/Banks/Feeling.txt",
	"/Text/Game/Scripts/Banks/Empty.txt",
	"/Text/Game/Scripts/Banks/Door.txt",
	"/Text/Game/Scripts/Banks/Stuck.txt",
	"/Text/Game/Scripts/Banks/Visitors.txt",
	"/Text/Game/Scripts/Banks/Trap.txt",
	"/Text/Game/Scripts/Banks/Moving.txt"
};

H55_GraveEnterText = {
	"/Text/Game/Scripts/Banks/Idea.txt",
	"/Text/Game/Scripts/Banks/Moving.txt",
	"/Text/Game/Scripts/Banks/Visitors.txt",
	"/Text/Game/Scripts/Banks/Feeling.txt",
	"/Text/Game/Scripts/Banks/Alone.txt"
};

H55_WagonEnterText = {
	"/Text/Game/Scripts/Banks/Ambush.txt",
	"/Text/Game/Scripts/Banks/Trap.txt",
	"/Text/Game/Scripts/Banks/Ours.txt",
	"/Text/Game/Scripts/Banks/Thief.txt",
	"/Text/Game/Scripts/Banks/Better.txt"
};

H55_StatAwards = {STAT_ATTACK,STAT_DEFENCE,STAT_SPELL_POWER,STAT_KNOWLEDGE};

H55_BankStatText = {
	"/Text/Game/Scripts/Banks/Attack.txt",
	"/Text/Game/Scripts/Banks/Defense.txt",
	"/Text/Game/Scripts/Banks/Spellpower.txt",
	"/Text/Game/Scripts/Banks/Knowledge.txt"
};

H55_BankDocumentsL1 = {
	"/Text/Game/Scripts/Banks/Journal.txt",
	"/Text/Game/Scripts/Banks/Memoirs.txt",
	"/Text/Game/Scripts/Banks/Diary.txt",
	"/Text/Game/Scripts/Banks/Tome.txt"
};

H55_BankDocumentsL2 = {
	"/Text/Game/Scripts/Banks/Report.txt",
	"/Text/Game/Scripts/Banks/Testament.txt",
	"/Text/Game/Scripts/Banks/Recipe.txt",
	"/Text/Game/Scripts/Banks/Bestiary.txt"
};

H55_T1DwellingTypes = {"BUILDING_PEASANT_HUT","BUILDING_FAIRIE_TREE","BUILDING_IMP_CRUCIBLE","BUILDING_GRAVEYARD","BUILDING_WORKSHOP","BUILDING_BATTLE_ACADEMY","BUILDING_FORTRESS_DEFENDERS","BUILDING_STRONGHOLD_GOBLINS"};
H55_T2DwellingTypes = {"BUILDING_ARCHERS_HOUSE","BUILDING_WOOD_GUARD_QUARTERS","BUILDING_DEMON_GATE","BUILDING_FORGOTTEN_CRYPT","BUILDING_STONE_PARAPET","BUILDING_SHADOW_STONE","BUILDING_FORTRESS_AXEMEN","BUILDING_STRONGHOLD_CENTAURS"};
H55_T3DwellingTypes = {"BUILDING_BARRACKS","BUILDING_HIGH_CABINS","BUILDING_KENNELS","BUILDING_RUINED_TOWER","BUILDING_GOLEM_FORGE","BUILDING_MAZE","BUILDING_FORTRESS_BEAR_RIDERS","BUILDING_STRONGHOLD_WARRIORS"};
H55_T4DwellingTypes = {"BUILDING_HEAVEN_MILITARY_POST","BUILDING_PRESERVE_MILITARY_POST","BUILDING_INFERNO_MILITARY_POST","BUILDING_NECROPOLIS_MILITARY_POST","BUILDING_ACADEMY_MILITARY_POST","BUILDING_DUNGEON_MILITARY_POST","BUILDING_FORTRESS_MILITARY_POST","BUILDING_STRONGHOLD_MILITARY_POST"};

H55_DwellingT1ConvCosts = {2000,5};
H55_DwellingT2ConvCosts = {4000,5};
H55_DwellingT3ConvCosts = {6000,5};
H55_DwellingT4ConvCosts = {8000,10};

H55_TM_Txt_NA = "/Text/Game/Scripts/TownPortal/TM_NA.txt";
H55_TM_Txt_Conquest = "/Text/Game/Scripts/TownPortal/TM_Conquest.txt";
H55_TM_Txt_Governor = "/Text/Game/Scripts/TownPortal/TM_Governor.txt";
H55_TM_Txt_Enabled = "/Text/Game/Scripts/TownPortal/TM_Enabled.txt";
H55_TM_Txt_Disabled = "/Text/Game/Scripts/TownPortal/TM_Disabled.txt";

H55_Supply_Txt = {
	"/Text/Game/Scripts/Supply/P1Name.txt",
	"/Text/Game/Scripts/Supply/P2Name.txt",
	"/Text/Game/Scripts/Supply/P3Name.txt",
	"/Text/Game/Scripts/Supply/P4Name.txt",
	"/Text/Game/Scripts/Supply/P5Name.txt",
	"/Text/Game/Scripts/Supply/P6Name.txt",
	"/Text/Game/Scripts/Supply/P7Name.txt",
	"/Text/Game/Scripts/Supply/P8Name.txt"
};

H55_Supply_Txt_Warren = "/Text/Game/Scripts/Supply/WarrenDesc.txt";
H55_Supply_Txt_Mill = "/Text/Game/Scripts/Supply/MillDesc.txt";
H55_Supply_Txt_Garden = "/Text/Game/Scripts/Supply/GardenDesc.txt";
H55_Supply_Txt_Workshop = "/Text/Game/Scripts/Supply/WorkshopDesc.txt";

H55_Observatory_Name = "/Text/Game/Scripts/Supply/ObservatoryName.txt";
H55_Observatory_Txt = "/Text/Game/Scripts/Supply/ObservatoryTxt.txt";
H55_PotionShop_Name = "/Text/Game/Scripts/Supply/PotionShopName.txt";
H55_PotionShop_Txt = "/Text/Game/Scripts/Supply/PotionShopTxt.txt";

--Duel

H55_ExpTable = {
	0,
	1000,
	2000,
	3200,
	4600,

	6200,
	8000,
	10000,
	12200,
	14700,

	17500,
	20600,
	24320,
	28784,
	34140,

	40567,
	48279,
	57533,
	68637,
	81961,

	97600,
	116000,
	139000,
	167000,
	200000,

	239000,
	286000,
	343000,
	411000,
	492000,

	590000,
	706000,
	846000,
	1010000,
	1210000,

	1450000,
	1740000,
	2080000,
	2500000,
	3000000,

	3600000,
	4330000,
	5230000,
	6310000,
	7640000,

	9240000,
	11200000,
	13500000,
	16400000,
	20000000,
}; --50 is not the max level

--Campaigns

H55_CampaignsM5 = {
	"Maps/Scenario/C1M5/",
	"Maps/Scenario/C2M5/",
	"Maps/Scenario/C3M5/",
	"Maps/Scenario/C4M5/",
	"Maps/Scenario/C5M5/",
	"Maps/Scenario/C6M5/",
	"Maps/Scenario/A1C1M5/",
	"Maps/Scenario/A1C2M5/",
	"Maps/Scenario/A1C3M5/",
	"Maps/Scenario/A2C1M5/",
	"Maps/Scenario/A2C2M5/",
	"Maps/Scenario/A2C3M5/"
};

H55_CampaignsM4 = {
	"Maps/Scenario/C1M4/",
	"Maps/Scenario/C2M4/",
	"Maps/Scenario/C3M4/",
	"Maps/Scenario/C4M4/",
	"Maps/Scenario/C5M4/",
	"Maps/Scenario/C6M4/",
	"Maps/Scenario/A1C1M4/",
	"Maps/Scenario/A1C2M4/",
	"Maps/Scenario/A1C3M4/",
	"Maps/Scenario/A2C1M4/",
	"Maps/Scenario/A2C2M4/",
	"Maps/Scenario/A2C3M4/"
};

H55_CampaignsM3 = {
	"Maps/Scenario/C1M3/",
	"Maps/Scenario/C2M3/",
	"Maps/Scenario/C3M3/",
	"Maps/Scenario/C4M3/",
	"Maps/Scenario/C5M3/",
	"Maps/Scenario/C6M3/",
	"Maps/Scenario/A1C1M3/",
	"Maps/Scenario/A1C2M3/",
	"Maps/Scenario/A1C3M3/",
	"Maps/Scenario/A2C1M3/",
	"Maps/Scenario/A2C2M3/",
	"Maps/Scenario/A2C3M3/"
};

H55_CampaignsM2 = {
	"Maps/Scenario/C1M2/",
	"Maps/Scenario/C2M2/",
	"Maps/Scenario/C3M2/",
	"Maps/Scenario/C4M2/",
	"Maps/Scenario/C5M2/",
	"Maps/Scenario/C6M2/",
	"Maps/Scenario/A1C1M2/",
	"Maps/Scenario/A1C2M2/",
	"Maps/Scenario/A1C3M2/",
	"Maps/Scenario/A2C1M2/",
	"Maps/Scenario/A2C2M2/",
	"Maps/Scenario/A2C3M2/"
};

---------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
---------------------------------------------------------------------------------------------------------------------------------------------

-- H55_MultiplayerMaps = {
	-- "Maps/Multiplayer/A1L1/",
	-- "Maps/Multiplayer/A1L10/",
	-- "Maps/Multiplayer/A1M2/",
	-- "Maps/Multiplayer/A1M3/",
	-- "Maps/Multiplayer/A1M4/",
	-- "Maps/Multiplayer/A1M5/",
	-- "Maps/Multiplayer/A1M6/",
	-- "Maps/Multiplayer/A1M7/",
	-- "Maps/Multiplayer/A1M9/",
	-- "Maps/Multiplayer/A1S1/",
	-- "Maps/Multiplayer/A2M1/",
	-- "Maps/Multiplayer/A2M2/",
	-- "Maps/Multiplayer/A2M4/",
	-- "Maps/Multiplayer/A2M5/",
	-- "Maps/Multiplayer/A2M7/",
	-- "Maps/Multiplayer/A2M8/",
	-- "Maps/Multiplayer/A2M10/",
	-- "Maps/Multiplayer/A2M11/",
	-- "Maps/Multiplayer/A2M12/",
	-- "Maps/Multiplayer/A2M13/",
	-- "Maps/Multiplayer/L1/",
	-- "Maps/Multiplayer/L2/",
	-- "Maps/Multiplayer/L3/",
	-- "Maps/Multiplayer/L4/", --Rise to Power
	-- "Maps/Multiplayer/M1/",
	-- "Maps/Multiplayer/M2/",
	-- "Maps/Multiplayer/M3/",
	-- "Maps/Multiplayer/M4/",
	-- "Maps/Multiplayer/M5/",
	-- "Maps/Multiplayer/M6/",
	-- "Maps/Multiplayer/M7/",
	-- "Maps/Multiplayer/M8/",
	-- "Maps/Multiplayer/M9/",
	-- "Maps/Multiplayer/M10/",
	-- "Maps/Multiplayer/S1/",
	-- "Maps/Multiplayer/S2/",
	-- "Maps/Multiplayer/S3/",
	-- "Maps/Multiplayer/S4/",
	-- "Maps/Multiplayer/XL1/",
	-- "Maps/Multiplayer/XL2/"
-- };

-- H55_ClassesTexts = {
	-- "/Text/Game/Scripts/Classes/H55_Knights.txt",
	-- "/Text/Game/Scripts/Classes/H55_Renegades.txt",
	-- "/Text/Game/Scripts/Classes/H55_Paladins.txt",
	-- "/Text/Game/Scripts/Classes/H55_Heretics.txt",
	-- "/Text/Game/Scripts/Classes/H55_Rangers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Wardens.txt",
	-- "/Text/Game/Scripts/Classes/H55_Druids.txt",
	-- "/Text/Game/Scripts/Classes/H55_Demonlords.txt",
	-- "/Text/Game/Scripts/Classes/H55_Gatekeepers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Sorcerers.txt",
	-- "/Text/Game/Scripts/Classes/H55_DeathKnights.txt",
	-- "/Text/Game/Scripts/Classes/H55_Reavers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Necromancers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Seers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Wizards.txt",
	-- "/Text/Game/Scripts/Classes/H55_Elementalists.txt",
	-- "/Text/Game/Scripts/Classes/H55_Overlords.txt",
	-- "/Text/Game/Scripts/Classes/H55_Assassins.txt",
	-- "/Text/Game/Scripts/Classes/H55_Warlocks.txt",
	-- "/Text/Game/Scripts/Classes/H55_Engineers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Runemages.txt",
	-- "/Text/Game/Scripts/Classes/H55_Flamekeepers.txt",
	-- "/Text/Game/Scripts/Classes/H55_Barbarians.txt",
	-- "/Text/Game/Scripts/Classes/H55_Shamans.txt",
	-- "/Text/Game/Scripts/Classes/H55_Witches.txt"
-- };

-- H55_HeroNames = {
 -- ["Astral"]="/Text/Game/Heroes/Persons/Academy/Astral/Name.txt",
 -- ["Cyrus"]="/Text/Game/Heroes/Persons/Academy/Cyrus/Name.txt",
 -- ["Davius"]="/Text/Game/Heroes/Persons/Academy/Davius/Name.txt",
 -- ["Emilia"]="/Text/Game/Heroes/Persons/Academy/Emilia/Name.txt",
 -- ["Faiz"]="/Text/Game/Heroes/Persons/Academy/Faiz/Name.txt",
 -- ["Gurvilin"]="/Text/Game/Heroes/Persons/Academy/Gurvilin/Name.txt",
 -- ["Havez"]="/Text/Game/Heroes/Persons/Academy/Havez/Name.txt",
 -- ["Isher"]="/Text/Game/Heroes/Persons/Academy/Isher/Name.txt",
 -- ["Josephine"]="/Text/Game/Heroes/Persons/Academy/Josephine/Name.txt",
 -- ["Maahir"]="/Text/Game/Heroes/Persons/Academy/Maahir/Name.txt",
 -- ["Minasli"]="/Text/Game/Heroes/Persons/Academy/Minasli/Name.txt",
 -- ["Nur"]="/Text/Game/Heroes/Persons/Academy/Nur/Name.txt",
 -- ["Razzak"]="/Text/Game/Heroes/Persons/Academy/Razzak/Name.txt",
 -- ["Rissa"]="/Text/Game/Heroes/Persons/Academy/Rissa/Name.txt",
 -- ["Sufi"]="/Text/Game/Heroes/Persons/Academy/Sufi/Name.txt",
 -- ["Tan"]="/Text/Game/Heroes/Persons/Academy/Tan/Name.txt",
 -- ["Timerkhan"]="/Text/Game/Heroes/Persons/Academy/Theodorus/Name.txt",
 -- ["Zehir"]="/Text/Game/Heroes/Persons/Academy/Zehir/Name.txt",
 -- ["Agbeth"]="/Maps/SingleMissions/A2S3/name.1.txt",
 -- ["Almegir"]="/Text/Game/Heroes/Persons/Dungeon/Almegir/Name.txt",
 -- ["Dalom"]="/Text/Game/Heroes/Persons/Dungeon/Dalom/Name.txt",
 -- ["Eruina"]="/Text/Game/Heroes/Persons/Dungeon/Eruina/Name.txt",
 -- ["Ferigl"]="/Text/Game/Heroes/Persons/Dungeon/Ferigl/Name.txt",
 -- ["Inagost"]="/Text/Game/Heroes/Persons/Dungeon/Inagost/Name.txt",
 -- ["Kastore"]="/Text/Game/Heroes/Persons/Dungeon/Kastore/Name.txt",
 -- ["Kelodin"]="/Text/Game/Heroes/Persons/Dungeon/Kelodin/Name.txt",
 -- ["Menel"]="/Text/Game/Heroes/Persons/Dungeon/Menel/Name.txt",
 -- ["Ohtarig"]="/Text/Game/Heroes/Persons/Dungeon/Ohtarig/Name.txt",
 -- ["Raelag"]="/Text/Game/Heroes/Persons/Dungeon/Raelag/Name.txt",
 -- ["Ranleth"]="/Maps/Scenario/A2C3M4/name.2.txt",
 -- ["Sephinroth"]="/Text/Game/Heroes/Persons/Dungeon/Sephinroth/Name.txt",
 -- ["Shadwyn"]="/Text/Game/Heroes/Persons/Dungeon/Shadwyn/Name.txt",
 -- ["Sylsai"]="/Text/Game/Heroes/Persons/Dungeon/Sylsai/Name.txt",
 -- ["Thralsai"]="/Text/Game/Heroes/Persons/Dungeon/Thralsai/Name.txt",
 -- ["Urunir"]="/Text/Game/Heroes/Persons/Dungeon/Urunir/Name.txt",
 -- ["Darkstorm"]="/Text/Game/Heroes/Persons/Dungeon/Darkstorm/Name.txt",
 -- ["Bart"]="/Text/Game/Heroes/Persons/Dwarves/Bart/Name.txt",
 -- ["Bersy"]="/Text/Game/Heroes/Persons/Dwarves/Bersy/Name.txt",
 -- ["Brand"]="/Text/Game/Heroes/Persons/Dwarves/Brand/Name.txt",
 -- ["Egil"]="/Text/Game/Heroes/Persons/Dwarves/Egil/Name.txt",
 -- ["Hangvul"]="/Text/Game/Heroes/Persons/Fortress/Hangvul/Name.txt",
 -- ["Hangvul2"]="/Text/Game/Heroes/Persons/Dwarves/Uland/Name.txt",
 -- ["Ingvar"]="/Text/Game/Heroes/Persons/Dwarves/Ingvar/Name.txt",
 -- ["KingTolghar"]="/Text/Game/Heroes/Persons/Dwarves/King_Tolghar/Name.txt",
 -- ["Maximus"]="/Text/Game/Heroes/Persons/Dwarves/Maximus/Name.txt",
 -- ["Ottar"]="/Text/Game/Heroes/Persons/Dwarves/Ottar/Name.txt",
 -- ["Rolf"]="/Text/Game/Heroes/Persons/Dwarves/Rolf/Name.txt",
 -- ["Skeggy"]="/Text/Game/Heroes/Persons/Dwarves/Skeggy/Name.txt",
 -- ["Tazar"]="/Text/Game/Heroes/Persons/Dwarves/Tazar/Name.txt",
 -- ["Ufretin"]="/Text/Game/Heroes/Persons/Dwarves/Ufretin/Name.txt",
 -- ["Una"]="/Text/Game/Heroes/Persons/Dwarves/Una/Name.txt",
 -- ["Vegeyr"]="/Text/Game/Heroes/Persons/Dwarves/Vegeyr/Name.txt",
 -- ["Vilma"]="/Text/Game/Heroes/Persons/Dwarves/Vilma/Name.txt",
 -- ["Wulfstan"]="/Text/Game/Heroes/Persons/Dwarves/Wulfstan/Name.txt",
 -- ["Alaric"]="/Text/Game/Heroes/Persons/Haven/Alaric/Name.txt",
 -- ["Axel"]="/Text/Game/Heroes/Persons/Haven/Axel/Name.txt",
 -- ["Brem"]="/Text/Game/Heroes/Persons/Haven/Brem/Name.txt",
 -- ["Duncan"]="/Text/Game/Heroes/Persons/Haven/Duncan/Name.txt",
 -- ["GodricMP"]="/Text/Game/Heroes/Persons/Haven/Godric/Name.txt",
 -- ["Isabell"]="/Text/Game/Heroes/Persons/Haven/Isabell/Name.txt",
 -- ["Jeddite"]="/Text/Game/Heroes/Persons/Haven/Jeddite/Name.txt",
 -- ["Maeve"]="/Text/Game/Heroes/Persons/Haven/Maeve/Name.txt",
 -- ["Mardigo"]="/Text/Game/Heroes/Persons/Haven/Mardigo/Name.txt",
 -- ["Markal"]="/Text/Game/Heroes/Persons/Necropolis/Berein/Name.txt",
 -- ["Nathaniel"]="/Text/Game/Heroes/Persons/Haven/Nathaniel/Name.txt",
 -- ["Nicolai"]="/Text/Game/Heroes/Persons/Haven/Nicolai/Name.txt",
 -- ["Orrin"]="/Text/Game/Heroes/Persons/Haven/Orrin/Name.txt",
 -- ["Orlando"]="RedHeavenHero07_Orlando.txt",
 -- ["RedHeavenHero01"]="/Text/Game/Heroes/Persons/Haven/RedHeavenHero01/Name.txt",
 -- ["RedHeavenHero03"]="/Text/Game/Heroes/Persons/Haven/RedHeavenHero03/Name.txt",
 -- ["RedHeavenHero05"]="/Text/Game/Heroes/Persons/Haven/RedHeavenHero05/Name.txt",
 -- ["RedHeavenHero06"]="/Text/Game/Heroes/Persons/Haven/RedHeavenHero06/Name.txt",
 -- ["Sarge"]="/Text/Game/Heroes/Persons/Haven/Sarge/Name.txt",
 -- ["Ving"]="/Text/Game/Heroes/Persons/Haven/Ving/Name.txt",
 -- ["Agrael"]="/Text/Game/Heroes/Persons/Inferno/Agrael/Name.txt",
 -- ["Ash"]="/Text/Game/Heroes/Persons/Inferno/Ash/Name.txt",
 -- ["Biara"]="/Text/Game/Heroes/Persons/Inferno/Biara/Name.txt",
 -- ["Calh"]="/Text/Game/Heroes/Persons/Inferno/Calh/Name.txt",
 -- ["Calid"]="/Text/Game/Heroes/Persons/Inferno/Calid/Name.txt",
 -- ["Calid2"]="/Text/Game/Heroes/Persons/Inferno/Calid2/Name.txt",
 -- ["Deleb"]="/Text/Game/Heroes/Persons/Inferno/Deleb/Name.txt",
 -- ["Efion"]="/Text/Game/Heroes/Persons/Inferno/Efion/Name.txt",
 -- ["Grok"]="/Text/Game/Heroes/Persons/Inferno/Grok/Name.txt",
 -- ["Harkenraz"]="/Text/Game/Heroes/Persons/Inferno/Harkenraz/Name.txt",
 -- ["Jazaz"]="/Text/Game/Heroes/Persons/Inferno/Jazaz/Name.txt",
 -- ["Malustar"]="/Text/Game/Heroes/Persons/Inferno/Malustar/Name.txt",
 -- ["Marder"]="/Text/Game/Heroes/Persons/Inferno/Marder/Name.txt",
 -- ["Nymus"]="/Text/Game/Heroes/Persons/Inferno/Nymus/Name.txt",
 -- ["Oddrema"]="/Text/Game/Heroes/Persons/Inferno/Oddrema/Name.txt",
 -- ["Sheltem"]="/Text/Game/Heroes/Persons/Inferno/Sheltem/Name.txt",
 -- ["Sovereign"]="/Text/Game/Heroes/Persons/DMessiah/Sovereign/Name.txt",
 -- ["Zydar"]="/Text/Game/Heroes/Persons/Inferno/Zydar/Name.txt",
 -- ["Arantir"]="/Text/Game/Heroes/Persons/Necropolis/Arantir/Name.txt",
 -- ["Aberrar"]="/Text/Game/Heroes/Persons/Necropolis/Aberrar/Name.txt",
 -- ["Aislinn"]="/Text/Game/Heroes/Persons/Necropolis/Aislinn/Name.txt",
 -- ["Archilus"]="/Text/Game/Heroes/Persons/Necropolis/Archilus/Name.txt",
 -- ["Effig"]="/Text/Game/Heroes/Persons/Necropolis/Effig/Name.txt",
 -- ["Giovanni"]="/Text/Game/Heroes/Persons/Necropolis/Giovanni/name.txt",
 -- ["Gles"]="/Text/Game/Heroes/Persons/Necropolis/Gles/Name.txt",
 -- ["Muscip"]="/Text/Game/Heroes/Persons/Necropolis/Muscip/Name.txt",
 -- ["Nemor"]="/Text/Game/Heroes/Persons/Necropolis/Nemor/Name.txt",
 -- ["Nimbus"]="/Text/Game/Heroes/Persons/Necropolis/Nimbus/Name.txt",
 -- ["OrnellaNecro"]="/Text/Game/Heroes/Persons/Necropolis/OrnellaNecro/name.txt",
 -- ["Pelt"]="/Text/Game/Heroes/Persons/Necropolis/Pelt/Name.txt",
 -- ["Sandro"]="/Text/Game/Heroes/Persons/Necropolis/Sandro/Name.txt",
 -- ["Straker"]="/Text/Game/Heroes/Persons/Necropolis/Straker/Name.txt",
 -- ["Tamika"]="/Text/Game/Heroes/Persons/Necropolis/Tamika/Name.txt",
 -- ["Thant"]="/Text/Game/Heroes/Persons/Necropolis/Thant/Name.txt",
 -- ["Vidomina"]="/Text/Game/Heroes/Persons/Necropolis/Vidomina/Name.txt",
 -- ["Xerxon"]="/Text/Game/Heroes/Persons/Necropolis/Xerxon/Name.txt",
 -- ["Arniel"]="/Text/Game/Heroes/Persons/Preserve/Arniel/Name.txt",
 -- ["Diraya"]="/Text/Game/Heroes/Persons/Preserve/Diraya/Name.txt",
 -- ["Elleshar"]="/Text/Game/Heroes/Persons/Preserve/Elleshar/Name.txt",
 -- ["Gem"]="/Text/Game/Heroes/Persons/Preserve/Gem/Name.txt",
 -- ["Gillion"]="/Text/Game/Heroes/Persons/Preserve/Gillion/Name.txt",
 -- ["Heam"]="/Text/Game/Heroes/Persons/Preserve/Heam/Name.txt",
 -- ["Ildar"]="/Text/Game/Heroes/Persons/Preserve/Ildar/Name.txt",
 -- ["Itil"]="/Text/Game/Heroes/Persons/Preserve/Itil/Name.txt",
 -- ["Jenova"]="/Text/Game/Heroes/Persons/Preserve/Jenova/Name.txt",
 -- ["Kyrre"]="/Text/Game/Heroes/Persons/Preserve/Kyrre/Name.txt",
 -- ["Linaas"]="/Text/Game/Heroes/Persons/Preserve/Linaas/Name.txt",
 -- ["Melodia"]="/Text/Game/Heroes/Persons/Preserve/Melodia/Name.txt",
 -- ["Mephala"]="/Text/Game/Heroes/Persons/Preserve/Mephala/Name.txt",
 -- ["Metlirn"]="/Text/Game/Heroes/Persons/Preserve/Metlirn/Name.txt",
 -- ["Nadaur"]="/Text/Game/Heroes/Persons/Preserve/Nadaur/Name.txt",
 -- ["Ossir"]="/Text/Game/Heroes/Persons/Preserve/Ossir/Name.txt",
 -- ["Vaniel"]="/Maps/SingleMissions/A2S2/name.2.txt",
 -- ["Vinrael"]="/Text/Game/Heroes/Persons/Preserve/Vinrael/Name.txt",
 -- ["Azar"]="/Text/Game/Heroes/Persons/Stronghold/Azar/Name.txt",
 -- ["Crag"]="/Text/Game/Heroes/Persons/Stronghold/Crag/Name.txt",
 -- ["Erika"]="/Text/Game/Heroes/Persons/Stronghold/Erika/Name.txt",
 -- ["Gottai"]="/Text/Game/Heroes/Persons/Stronghold/Gottai/Name.txt",
 -- ["Hero1"]="/Text/Game/Heroes/Persons/Stronghold/Hero1/Name.txt",
 -- ["Hero2"]="/Text/Game/Heroes/Persons/Stronghold/Hero2/Name.txt",
 -- ["Hero3"]="/Text/Game/Heroes/Persons/Stronghold/Hero3/Name.txt",
 -- ["Hero4"]="/Text/Game/Heroes/Persons/Stronghold/Hero4/Name.txt",
 -- ["Quroq"]="/Text/Game/Heroes/Persons/Stronghold/Quroq/Name.txt",
 -- ["Hero6"]="/Text/Game/Heroes/Persons/Stronghold/Hero6/Name.txt",
 -- ["Hero7"]="/Text/Game/Heroes/Persons/Stronghold/Hero7/Name.txt",
 -- ["Hero8"]="/Text/Game/Heroes/Persons/Stronghold/Hero8/Name.txt",
 -- ["Hero9"]="/Text/Game/Heroes/Persons/Stronghold/Hero9/Name.txt",
 -- ["Kraal"]="/Text/Game/Heroes/Persons/Stronghold/Kraal/Name.txt",
 -- ["KujinMP"]="/Text/Game/Heroes/Persons/Stronghold/Kujin/Name.txt",
 -- ["Kunyak"]="/Maps/SingleMissions/A2S1/name.1.txt",
 -- ["Matewa"]="/Text/Game/Heroes/Persons/Stronghold/Matewa/Name.txt",
 -- ["Mokka"]="/Text/Game/Heroes/Persons/Stronghold/Mokka/Name.txt",
 -- ["Shiva"]="/Text/Game/Heroes/Persons/Stronghold/Shiva/Name.txt",
 -- ["Zouleika"]="/Text/Game/Heroes/Persons/Stronghold/Zouleika/Name.txt"
-- };

-- H55_HavenHeroes = {"Nicolai","GodricMP","Maeve","Nathaniel","Axel","Brem","Jeddite","Markal","Orlando","RedHeavenHero03","RedHeavenHero06","Alaric","AlaricMP","RedHeavenHero01","Duncan","Sarge","Isabell","Mardigo","Ving","Orrin","Godric","Freyda","Ornella","GhostFSLord","Giar","Glen","Laszlo","Isabell_A1","Saint Isabell","RedHeavenHero04","RedHeavenHero02","RedHeavenHero05","Christian","Malik"};
-- H55_SylvanHeroes = {"Heam","Metlirn","Nadaur","Linaas","Ossir","Jenova","Kyrre","Mephala","Arniel","Ildar","Melodia","Gillion","Vaniel","Elleshar","Vinrael","Itil","Diraya","Gem","Tieru"};
-- H55_InfernoHeroes = {"Marder","Sheltem","Harkenraz","Calh","Calid","Jazaz","Gamor","Guarg","Erasial","Kha-Beleth","Veyer","DMessiah","Efion","Ash","Nymus","Oddrema","Malustar","Grok","Sovereign","Deleb","Calid2","Zydar","Agrael","AgraelMP","Biara","Nelech"};
-- H55_DungeonHeroes = {"Agbeth","Ranleth","Sylsai","Urunir","Menel","Ferigl","Dalom","Eruina","Darkstorm","Ohtarig","Thralsai","Almegir","Raelag","Kastore","Kelodin","Shadwyn","ShadwynMP","Sephinroth","Inagost","Raelag_A1","Segref","Ohtar","Eruina_A1","ThralsaiMP","AlmegirMP"};
-- H55_NecropolisHeroes = {"Gles","Pelt","Tamika","OrnellaNecro","Straker","Xerxon","Archilus","Nimbus","Aislinn","Nemor","Muscip","Giovanni","GiovanniMP","Thant","Vidomina","Arantir","ArantirMP","Aberrar","Effig","Sandro","Berein","Nikolay"};
-- H55_AcademyHeroes = {"Isher","Rissa","Minasli","Davius","Josephine","Havez","Gurvilin","Razzak","Maahir","Faiz","Sufi","Cyrus","Zehir","Timerkhan","Nur","Tan","Emilia","Astral"};
-- H55_FortressHeroes = {"Wulfstan","Rolf","Maximus","Tazar","Ingvar","Skeggy","Hangvul2","KingTolghar","Ufretin","Bersy","Ottar","Una","Bart","Vilma","Hangvul","Brand","Egil","Vegeyr"};
-- H55_StrongholdHeroes = {"Hero1","Hero2","Hero3","Hero4","Hero5","Hero6","Hero7","Hero8","Hero9","Gottai","Crag","Azar","Kraal","Kujin","KujinMP","Kunyak","Matewa","Shiva","Zouleika","Quroq","Mokka","Erika","GottaiMP"};

-- local tonum = {
	-- ["0"] = 0,
	-- ["1"] = 1,   ["2"] = 2,   ["3"] = 3,   ["4"] = 4,   ["5"] = 5,   ["6"] = 6,   ["7"] = 7,   ["8"] = 8,   ["9"] = 9,   ["10"] = 10,
	-- ["11"] = 11, ["12"] = 12, ["13"] = 13, ["14"] = 14, ["15"] = 15, ["16"] = 16, ["17"] = 17, ["18"] = 18, ["19"] = 19, ["20"] = 20,
	-- ["21"] = 21, ["22"] = 22, ["23"] = 23, ["24"] = 24, ["25"] = 25, ["26"] = 26, ["27"] = 27, ["28"] = 28, ["29"] = 29, ["30"] = 30,
	-- ["31"] = 31, ["32"] = 32, ["33"] = 33, ["34"] = 34, ["35"] = 35, ["36"] = 36, ["37"] = 37, ["38"] = 38, ["39"] = 39, ["40"] = 40,
	-- ["41"] = 41, ["42"] = 42, ["43"] = 43, ["44"] = 44, ["45"] = 45, ["46"] = 46, ["47"] = 47, ["48"] = 48, ["49"] = 49, ["50"] = 50,
	-- ["51"] = 51, ["52"] = 52, ["53"] = 53, ["54"] = 54, ["55"] = 55, ["56"] = 56, ["57"] = 57, ["58"] = 58, ["59"] = 59, ["60"] = 60,
	-- ["61"] = 61, ["62"] = 62, ["63"] = 63, ["64"] = 64, ["65"] = 65, ["66"] = 66, ["67"] = 67, ["68"] = 68, ["69"] = 69, ["70"] = 70,
	-- ["71"] = 71, ["72"] = 72, ["73"] = 73, ["74"] = 74, ["75"] = 75, ["76"] = 76, ["77"] = 77, ["78"] = 78, ["79"] = 79, ["80"] = 80,
	-- ["81"] = 81, ["82"] = 82, ["83"] = 83, ["84"] = 84, ["85"] = 85, ["86"] = 86, ["87"] = 87, ["88"] = 88, ["89"] = 89, ["90"] = 90,
	-- ["91"] = 91, ["92"] = 92, ["93"] = 93, ["94"] = 94, ["95"] = 95, ["96"] = 96, ["97"] = 99, ["98"] = 98, ["99"] = 99, ["100"] = 100
-- };

-- H55_Alphabet = {
-- ["a"]=1,["b"]=2,["c"]=3,["d"]=4,["e"]=5,["f"]=6,["g"]=7,
-- ["h"]=8,["i"]=9,["j"]=10,["k"]=11,["l"]=12,["m"]=13,
-- ["n"]=14,["o"]=15,["p"]=16,["q"]=17,["r"]=18,["s"]=19,
-- ["t"]=20,["u"]=21,["v"]=22,["w"]=23,["x"]=24,["y"]=25,["z"]=26
-- };

------------------------------------------------------------------------------------------------------------------------------------------------------