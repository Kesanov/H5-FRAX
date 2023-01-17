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
H55_Heretics = {"Jeddite","Markal","AlaricMP","RedHeavenHero04","OrlandoMP"										,"Orlando"};
H55_Rangers = {"Heam","Gillion","Linaas","Ossir","Melodia","Mephala"};
H55_Avengers = {"Kyrre","Nadaur","Arniel","Ildar","Jenova","Metlirn"};
H55_Druids = {"Vaniel","Elleshar","Vinrael","Itil","Diraya","Gem"                            					,"Tieru"};
H55_Demonlords = {"Marder","Malustar","Harkenraz","Grok","Calid","Jazaz"                      					,"Sheltem","Gamor","Guarg","Erasial","Kha-Beleth","Veyer","DMessiah"};
H55_Gatekeepers = {"Deleb","Ash","Nymus","Oddrema","Nelech","Calh"                                              ,"Agrael"};
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
H55_Chieftains = {"Hero1","Hero4","Hero5","Hero6","Hero8","Hero9","Gottai","GottaiMP","Crag","Azar","Kraal","Kunyak","Matewa","Quroq"};
H55_Shamans = {"KujinMP","Shiva","Hero7","Mokka","Kujin"};
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

H55_RenegadesPhonebook = {["Mardigo"]=1,["RedHeavenHero02"]=1,["RedHeavenHero05"]=1,["RedHeavenHero03"]=1,["RedHeavenHero06"]=1,["Alaric"]=1,["RedHeavenHero01"]=1,["Laszlo"]=1};
H55_KnightsPhonebook = {["Duncan"]=1,["Sarge"]=1,["Isabell"]=1,["Orrin"]=1,["Nicolai"]=1,["GodricMP"]=1,["Maeve"]=1,["Nathaniel"]=1,["Axel"]=1,["Christian"]=1,["Brem"]=1,["Ving"]=1,["Godric"]=1,["Freyda"]=1,["Ornella"]=1,["GhostFSLord"]=1,["Giar"]=1,["Glen"]=1,["Isabell_A1"]=1,["Saint Isabell"]=1};
H55_HereticsPhonebook = {["Jeddite"]=1,["Markal"]=1,["Orlando"]=1,["AlaricMP"]=1,["RedHeavenHero04"]=1,["OrlandoMP"]=1};
H55_RangersPhonebook = {["Heam"]=1,["Gillion"]=1,["Linaas"]=1,["Ossir"]=1,["Melodia"]=1,["Mephala"]=1};
H55_AvengersPhonebook = {["Kyrre"]=1,["Nadaur"]=1,["Arniel"]=1,["Ildar"]=1,["Jenova"]=1,["Metlirn"]=1};
H55_DruidsPhonebook = {["Vaniel"]=1,["Elleshar"]=1,["Vinrael"]=1,["Itil"]=1,["Diraya"]=1,["Gem"]=1,["Tieru"]=1};
H55_DemonlordsPhonebook = {["Marder"]=1,["Malustar"]=1,["Harkenraz"]=1,["Grok"]=1,["Calid"]=1,["Jazaz"]=1,["Sheltem"]=1,["Gamor"]=1,["Guarg"]=1,["Erasial"]=1,["Kha-Beleth"]=1,["Veyer"]=1,["DMessiah"]=1};
H55_GatekeepersPhonebook = {["Deleb"]=1,["Ash"]=1,["Nymus"]=1,["Oddrema"]=1,["Nelech"]=1,["Calh"]=1,["Agrael"]=1};
H55_SorcerersPhonebook = {["Sovereign"]=1,["Efion"]=1,["Calid2"]=1,["Zydar"]=1,["AgraelMP"]=1,["Biara"]=1};
H55_DeathKnightsPhonebook = {["Gles"]=1,["Pelt"]=1,["Tamika"]=1,["OrnellaNecro"]=1,["Straker"]=1,["Xerxon"]=1};
H55_NecromancersPhonebook = {["Archilus"]=1,["Nimbus"]=1,["Aislinn"]=1,["ArantirMP"]=1,["Aberrar"]=1,["Effig"]=1,["Arantir"]=1,["Berein"]=1,["Nikolay"]=1,["Giovanni"]=1};
H55_NethermagesPhonebook = {["Thant"]=1,["Vidomina"]=1,["Nemor"]=1,["Muscip"]=1,["GiovanniMP"]=1,["Sandro"]=1};                  
H55_EnchantersPhonebook = {["Isher"]=1,["Rissa"]=1,["Minasli"]=1,["Davius"]=1,["Josephine"]=1,["Havez"]=1};
H55_ConjurersPhonebook = {["Zehir"]=1,["Timerkhan"]=1,["Nur"]=1,["Cyrus"]=1,["Emilia"]=1,["Astral"]=1};
H55_WizardsPhonebook = {["Gurvilin"]=1,["Razzak"]=1,["Maahir"]=1,["Faiz"]=1,["Sufi"]=1,["Tan"]=1};
H55_OverlordsPhonebook = {["Agbeth"]=1,["Ranleth"]=1,["ThralsaiMP"]=1,["Urunir"]=1,["Menel"]=1,["Ferigl"]=1};
H55_TrickstersPhonebook = {["Sephinroth"]=1,["Eruina"]=1,["Ohtarig"]=1,["Sylsai"]=1,["Darkstorm"]=1,["AlmegirMP"]=1,["Thralsai"]=1,["Almegir"]=1};
H55_WarlocksPhonebook = {["Raelag"]=1,["Kastore"]=1,["Kelodin"]=1,["ShadwynMP"]=1,["Dalom"]=1,["Inagost"]=1,["Shadwyn"]=1,["Raelag_A1"]=1,["Segref"]=1,["Ohtar"]=1,["Eruina_A1"]=1};
H55_EngineersPhonebook = {["Wulfstan"]=1,["Rolf"]=1,["Maximus"]=1,["Tazar"]=1,["Ufretin"]=1,["Skeggy"]=1};
H55_RunemagesPhonebook = {["Hangvul"]=1,["KingTolghar"]=1,["Ingvar"]=1,["Bersy"]=1,["Ottar"]=1,["Una"]=1};
H55_FlamekeepersPhonebook = {["Vilma"]=1,["Bart"]=1,["Hangvul2"]=1,["Brand"]=1,["Egil"]=1,["Vegeyr"]=1};
H55_ChieftainsPhonebook = {["Hero1"]=1,["Hero4"]=1,["Hero5"]=1,["Hero6"]=1,["Hero8"]=1,["Hero9"]=1,["Gottai"]=1,["GottaiMP"]=1,["Crag"]=1,["Azar"]=1,["Kraal"]=1,["Kujin"]=1,["Kunyak"]=1,["Matewa"]=1,["Quroq"]=1};
H55_ShamansPhonebook = {["KujinMP"]=1,["Shiva"]=1,["Hero7"]=1,["Mokka"]=1,["Kujin"]=1};
H55_WitchesPhonebook = {["Hero2"]=1,["Hero3"]=1,["Zouleika"]=1,["Erika"]=1};

--Factions

H55_HavenPhonebook = {["Nicolai"]=1,["GodricMP"]=1,["Maeve"]=1,["Nathaniel"]=1,["Axel"]=1,["Brem"]=1,["Jeddite"]=1,["Markal"]=1,["Orlando"]=1,["RedHeavenHero03"]=1,["RedHeavenHero06"]=1,["Alaric"]=1,["AlaricMP"]=1,["RedHeavenHero01"]=1,["Duncan"]=1,["Sarge"]=1,["Isabell"]=1,["Mardigo"]=1,["Ving"]=1,["Orrin"]=1,["Godric"]=1,["Freyda"]=1,["Ornella"]=1,["GhostFSLord"]=1,["Giar"]=1,["Glen"]=1,["Laszlo"]=1,["Isabell_A1"]=1,["Saint Isabell"]=1,["RedHeavenHero04"]=1,["RedHeavenHero02"]=1,["RedHeavenHero05"]=1,["Christian"]=1,["Malik"]=1,["OrlandoMP"]=1};
H55_SylvanPhonebook = {["Heam"]=1,["Metlirn"]=1,["Nadaur"]=1,["Linaas"]=1,["Ossir"]=1,["Jenova"]=1,["Kyrre"]=1,["Mephala"]=1,["Arniel"]=1,["Ildar"]=1,["Melodia"]=1,["Gillion"]=1,["Vaniel"]=1,["Elleshar"]=1,["Vinrael"]=1,["Itil"]=1,["Diraya"]=1,["Gem"]=1,["Tieru"]=1};
H55_InfernoPhonebook = {["Marder"]=1,["Sheltem"]=1,["Harkenraz"]=1,["Calh"]=1,["Calid"]=1,["Jazaz"]=1,["Gamor"]=1,["Guarg"]=1,["Erasial"]=1,["Kha-Beleth"]=1,["Veyer"]=1,["DMessiah"]=1,["Efion"]=1,["Ash"]=1,["Nymus"]=1,["Oddrema"]=1,["Malustar"]=1,["Grok"]=1,["Sovereign"]=1,["Deleb"]=1,["Calid2"]=1,["Zydar"]=1,["Agrael"]=1,["AgraelMP"]=1,["Biara"]=1,["Nelech"]=1};
H55_DungeonPhonebook = {["Agbeth"]=1,["Ranleth"]=1,["Sylsai"]=1,["Urunir"]=1,["Menel"]=1,["Ferigl"]=1,["Dalom"]=1,["Eruina"]=1,["Darkstorm"]=1,["Ohtarig"]=1,["Thralsai"]=1,["Almegir"]=1,["Raelag"]=1,["Kastore"]=1,["Kelodin"]=1,["Shadwyn"]=1,["ShadwynMP"]=1,["Sephinroth"]=1,["Inagost"]=1,["Raelag_A1"]=1,["Segref"]=1,["Ohtar"]=1,["Eruina_A1"]=1,["ThralsaiMP"]=1,["AlmegirMP"]=1};
H55_NecropolisPhonebook = {["Gles"]=1,["Pelt"]=1,["Tamika"]=1,["OrnellaNecro"]=1,["Straker"]=1,["Xerxon"]=1,["Archilus"]=1,["Nimbus"]=1,["Aislinn"]=1,["Nemor"]=1,["Muscip"]=1,["Giovanni"]=1,["GiovanniMP"]=1,["Thant"]=1,["Vidomina"]=1,["Arantir"]=1,["ArantirMP"]=1,["Aberrar"]=1,["Effig"]=1,["Sandro"]=1,["Berein"]=1,["Nikolay"]=1};
H55_AcademyPhonebook = {["Isher"]=1,["Rissa"]=1,["Minasli"]=1,["Davius"]=1,["Josephine"]=1,["Havez"]=1,["Gurvilin"]=1,["Razzak"]=1,["Maahir"]=1,["Faiz"]=1,["Sufi"]=1,["Cyrus"]=1,["Zehir"]=1,["Timerkhan"]=1,["Nur"]=1,["Tan"]=1,["Emilia"]=1,["Astral"]=1};
H55_FortressPhonebook = {["Wulfstan"]=1,["Rolf"]=1,["Maximus"]=1,["Tazar"]=1,["Ingvar"]=1,["Skeggy"]=1,["Hangvul2"]=1,["KingTolghar"]=1,["Ufretin"]=1,["Bersy"]=1,["Ottar"]=1,["Una"]=1,["Bart"]=1,["Vilma"]=1,["Hangvul"]=1,["Brand"]=1,["Egil"]=1,["Vegeyr"]=1};
H55_StrongholdPhonebook = {["Hero1"]=1,["Hero2"]=1,["Hero3"]=1,["Hero4"]=1,["Hero5"]=1,["Hero6"]=1,["Hero7"]=1,["Hero8"]=1,["Hero9"]=1,["Gottai"]=1,["Crag"]=1,["Azar"]=1,["Kraal"]=1,["Kujin"]=1,["KujinMP"]=1,["Kunyak"]=1,["Matewa"]=1,["Shiva"]=1,["Zouleika"]=1,["Quroq"]=1,["Mokka"]=1,["Erika"]=1,["GottaiMP"]=1}; 

--Creatures

H55_Creatures = {
	{{1,2,106},{3,4,107},{5,6,108},{7,8,109},{9,10,110},{11,12,111},{13,14,112}}, --Haven
	{{43,44,145},{45,46,146},{47,48,147},{49,50,148},{51,52,149},{53,54,150},{55,56,151}}, --Sylvan
	{{15,16,131},{17,18,132},{19,20,133},{21,22,134},{23,24,135},{25,26,136},{27,28,137}}, --Inferno
	{{29,30,152},{31,32,153},{33,34,154},{35,36,155},{37,38,156},{39,40,157},{41,42,158}}, --Necropolis
	{{57,58,159},{59,60,160},{61,62,161},{63,64,162},{65,66,163},{67,68,164},{69,70,165}}, --Academy
	{{71,72,138},{73,74,139},{75,76,140},{77,78,141},{79,80,142},{81,82,143},{83,84,144}}, --Dungeon
	{{92,93,166},{94,95,167},{96,97,168},{98,99,169},{100,101,170},{102,103,171},{104,105,172}}, --Fortress
	{{117,118,173},{119,120,174},{121,122,175},{123,124,176},{125,126,177},{127,128,178},{129,130,179}}, --Stronghold
	{{87,87,88},{85,85,86},{113,113,113},{116,116,116},{115,115,114},{90,90,90},{91,91,91}} --Neutral
};

H55_CreaturesExp = {
	{{4,8,8},{12,22,22},{17,29,29},{40,60,60},{70,95,95},{115,160,160},{252,332,332}}, --Haven
	{{10,15,15},{15,28,28},{30,45,45},{55,70,70},{75,100,100},{100,136,136},{240,320,320}}, --Sylvan
	{{7,13,13},{10,16,16},{21,33,33},{40,60,60},{76,96,96},{129,160,160},{245,336,336}}, --Inferno
	{{5,10,10},{10,15,15},{20,31,31},{38,58,58},{74,105,105},{115,156,156},{166,220,220}}, --Necropolis
	{{6,12,12},{10,17,17},{21,34,34},{42,60,60},{55,76,76},{120,160,160},{242,330,330}}, --Academy
	{{14,26,26},{21,35,35},{25,36,36},{45,70,70},{54,82,82},{136,160,160},{260,342,342}}, --Dungeon
	{{7,12,12},{10,17,17},{27,41,41},{24,36,36},{65,95,95},{130,170,170},{220,310,310}}, --Fortress
	{{4,8,8},{12,20,20},{17,26,26},{32,50,50},{50,70,70},{120,165,165},{200,300,300}}, --Stronghold
	{{60,60,60},{60,60,60},{37,37,37},{72,72,72},{135,135,130},{158,158,158},{500,500,500}} --Neutral
};

H55_CreaturesHP = {
	{{6,10,9},{10,13,13},{20,32,28},{40,45,65},{70,100,100},{110,140,140},{240,290,275}}, --Haven
	{{8,9,10},{18,20,22},{14,17,20},{42,40,42},{80,100,90},{200,210,210},{250,265,285}}, --Sylvan
	{{7,8,9},{16,19,18},{22,26,22},{30,38,40},{76,86,96},{136,166,176},{226,266,296}}, --Inferno
	{{5,7,7},{20,22,25},{15,20,18},{34,40,48},{65,70,70},{120,125,140},{190,200,190}}, --Necropolis	
	{{7,8,8},{20,25,25},{25,30,25},{28,38,37},{50,60,70},{140,170,160},{220,260,240}}, --Academy
	{{14,18,19},{22,27,30},{40,42,50},{50,70,75},{100,150,145},{100,110,110},{265,300,290}}, --Dungeon
	{{12,15,18},{12,15,12},{32,38,44},{30,35,40},{65,75,70},{140,165,180},{290,350,320}}, --Fortress
	{{5,8,9},{12,13,14},{18,20,28},{40,45,45},{45,50,60},{125,140,150},{240,250,275}}, --Stronghold
	{{60,60,40},{50,50,40},{25,25,25},{60,60,60},{140,140,110},{140,140,140},{190,190,190}} --Neutral
};

H55_ElementalHP = {[85]=50,[86]=40,[87]=60,[88]=40,[114]=110};

H55_CreaturesGrowth = {
	{24.5, 12, 10, 5, 3, 2, 1}, --Haven
	{14, 9, 7, 4, 3, 2.5, 1}, --Sylvan
	{17, 16, 8, 5, 3.5, 2, 1}, --Inferno
	{22.5, 16, 9, 5, 3, 2, 1.5}, --Necropolis  
	{20, 14, 9, 5, 4, 2, 1}, --Academy
	{8.5, 7, 6.5, 4, 3, 2, 1}, --Dungeon
	{16, 14, 7, 8, 3.5, 2, 1}, --Fortress
	{28, 14, 11, 5, 5, 2, 1}, --Stronghold
	{4, 4, 6, 3, 2, 2, 1} -- Neutral
};

H55_CreaturesGrowthReal = {
	{22, 12, 10, 5, 3, 2, 1}, --Haven
	{12, 9, 7, 4, 3, 2, 1}, --Sylvan
	{17, 15, 8, 5, 3, 2, 1}, --Inferno
	{20, 16, 9, 5, 3, 2, 1}, --Necropolis  
	{20, 14, 9, 5, 3, 2, 1}, --Academy
	{7, 6, 6, 4, 3, 2, 1}, --Dungeon
	{16, 14, 7, 6, 3, 2, 1}, --Fortress
	{25, 14, 11, 5, 5, 2, 1}, --Stronghold
	{4, 4, 6, 3, 2, 2, 1} -- Neutral
};

H55_NeutralCreatures = {85,86,87,88,91,113,114,115,116,90}; --Fire,Water,Earth,Air,Phoenix,Wolf,Eagle,Manticore,Mummy,BKnight
H55_NeutralCreaturesExp = {60,60,60,60,500,37,130,135,72,158};
H55_NeutralCreaturesGrowth = {4,4,4,4,1,8,2,2,3,2};
H55_NeutralSpecialists = {"Calid2","Melodia","Kunyak","KingTolghar","RedHeavenHero03","Emilia","Menel"};
H55_NeutralSpecialistsCr = {["Calid2"] = 85,["Melodia"] = 86,["Kunyak"] = 87,["KingTolghar"] = 88,["RedHeavenHero03"] = 113,["Emilia"] = 114,["Menel"] = 115,["Thant"] = 116};

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

H55_EvilTowns = {
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

--Memory Mentor

H55_MemoryAbuser = {};

H55_AbuserSkills = {
	PERK_RECRUITMENT,
	PERK_DIPLOMACY,
	--PERK_PATHFINDING,
	PERK_NAVIGATION,
	--HERO_SKILL_SNATCH,
	--PERK_WISDOM,
	PERK_DARK_RITUAL,
	DEMON_FEAT_EXPLODING_CORPSES,
	--PERK_NO_REST_FOR_THE_WICKED,
	--NECROMANCER_FEAT_LORD_OF_UNDEAD,
	KNIGHT_FEAT_ROAD_HOME,
	PERK_FORTUNATE_ADVENTURER,
	--DEMON_FEAT_DEMONIC_FLAME,
	WIZARD_FEAT_SPOILS_OF_WAR,
	HERO_SKILL_PATH_OF_WAR,
	--RANGER_FEAT_FOREST_GUARD_EMBLEM,
	HERO_SKILL_GOBLIN_SUPPORT,
	--HERO_SKILL_DEFEND_US_ALL,
	--DEMON_FEAT_MASTER_OF_SECRETS,
	--PERK_SCHOLAR,
	--HERO_SKILL_WARCRY_LEARNING,
	HERO_SKILL_MENTORING,
	HERO_SKILL_BARBARIAN_MENTORING
	--PERK_LUCKY_STRIKE
};

for i,skill in H55_AbuserSkills do
	H55_MemoryAbuser[skill] = {};
end;

--Artifacts

H55_MinorArtifactsDuel = {
	ARTIFACT_SWORD_OF_RUINS,
	ARTIFACT_CROWN_OF_MANY_EYES,
	ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD,
	ARTIFACT_EVERCOLD_ICICLE,
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
	ARTIFACT_GOLDEN_SEXTANT,
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
	-- ARTIFACT_HELM_OF_CHAOS,
	ARTIFACT_UPG_SW1,
	ARTIFACT_TREEBORN_QUIVER,
	-- ARTIFACT_ENDLESS_BAG_OF_GOLD,
	ARTIFACT_UPG_AR3,
	ARTIFACT_UPG_SW3,
	ARTIFACT_GEAR_05,
	-- ARTIFACT_GEAR_03,
	ARTIFACT_WAND_OF_X,
	ARTIFACT_RING_OF_DEATH,
	ARTIFACT_ELRATH_01,
	ARTIFACT_SCROLL_OF_SPELL_X
};

H55_MajorArtifactsDuel = {
	ARTIFACT_BONESTUDDED_LEATHER,
	ARTIFACT_SKULL_HELMET,
	ARTIFACT_UPG_ST1,
	ARTIFACT_OGRE_CLUB,
	ARTIFACT_OGRE_SHIELD,
	ARTIFACT_CROWN_OF_LEADER,
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
	ARTIFACT_BOOTS_OF_INTERFERENCE,
	ARTIFACT_WEREWOLF_CLAW_NECKLACE,
	-- ARTIFACT_ENDLESS_SACK_OF_GOLD,
	ARTIFACT_GOVERNOR_01,
	ARTIFACT_EDGE_OF_BALANCE,	
	ARTIFACT_STEADFAST,	
	ARTIFACT_UPG_ST3,	
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
	ARTIFACT_RING_OF_CELERITY,
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
	ARTIFACT_EVERCOLD_ICICLE,
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
	ARTIFACT_GOLDEN_SEXTANT,	
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
	-- ARTIFACT_MEDICAL04,	
	ARTIFACT_WAYFARER_BOOTS,
	ARTIFACT_JINXING_BAND,
	ARTIFACT_HELM_OF_CHAOS,
	ARTIFACT_UPG_SW1,
	ARTIFACT_TREEBORN_QUIVER,
	ARTIFACT_ENDLESS_BAG_OF_GOLD,
	ARTIFACT_UPG_AR3,
	ARTIFACT_UPG_SW3,
	ARTIFACT_GEAR_03,
	ARTIFACT_ELRATH_01,	
	ARTIFACT_RING_OF_DEATH,
	ARTIFACT_GEAR_05
	-- ARTIFACT_WAND_OF_X,
	-- ARTIFACT_SCROLL_OF_SPELL_X,
}; -- amount is 56
	
H55_MajorArtifacts = {
	ARTIFACT_SKULL_HELMET,
	ARTIFACT_BONESTUDDED_LEATHER,
	ARTIFACT_UPG_ST1,
	ARTIFACT_OGRE_CLUB,
	ARTIFACT_OGRE_SHIELD,
	ARTIFACT_CROWN_OF_LEADER,
	ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING,	
	ARTIFACT_BOOTS_OF_SWIFTNESS,
	ARTIFACT_DRAGON_SCALE_SHIELD,
	ARTIFACT_ICEBERG_SHIELD,
	ARTIFACT_RUNIC_WAR_HARNESS,
	ARTIFACT_NECKLACE_OF_POWER,	
	ARTIFACT_DRAGON_SCALE_ARMOR,
	ARTIFACT_NIGHTMARISH_RING,
	ARTIFACT_BOOTS_OF_LEVITATION,
	ARTIFACT_DRAGON_BONE_GRAVES,
	ARTIFACT_LION_HIDE_CAPE,
	ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT,
	ARTIFACT_DRAGON_WING_MANTLE,
	ARTIFACT_DRAGON_FLAME_TONGUE,
	ARTIFACT_MOONBLADE,
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
	--ARTIFACT_GEAR_02,
	ARTIFACT_ELRATH_02,
	ARTIFACT_FOUR_LEAF_CLOVER,
	ARTIFACT_BOOTS_OF_INTERFERENCE,
	ARTIFACT_WEREWOLF_CLAW_NECKLACE,
	ARTIFACT_ENDLESS_SACK_OF_GOLD,	
	ARTIFACT_GOVERNOR_01,
	ARTIFACT_ORB_01,
	ARTIFACT_ORB_02,
	ARTIFACT_ORB_03,	
	ARTIFACT_ORB_04,
	ARTIFACT_EDGE_OF_BALANCE,
	ARTIFACT_STEADFAST,
	ARTIFACT_UPG_ST3,
	ARTIFACT_GEAR_06
}; -- amount is 53

H55_RelicArtifacts = {
	ARTIFACT_PIRATE01,
	ARTIFACT_RING_OF_UNSUMMONING,
	ARTIFACT_BOOTS_OF_SPEED,
	ARTIFACT_STAFF_OF_MAGI,
	ARTIFACT_RING_OF_MACHINE_AFFINITY,
	ARTIFACT_DWARVEN_MITHRAL_CUIRASS,
	ARTIFACT_STAFF_OF_VEXINGS,
	--ARTIFACT_SHACKLES_OF_WAR,
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
	ARTIFACT_RING_OF_CELERITY,
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
	ARTIFACT_CROWN_OF_COURAGE,
	ARTIFACT_TITANS_TRIDENT,
	ARTIFACT_GEAR_04,
	ARTIFACT_HORN_OF_PLENTY
}; --amount is 43

H55_UltimateArtifacts = {
	ARTIFACT_EIGHTFOLD,
	ARTIFACT_DRACONIC,
	ARTIFACT_SENTINEL,
	ARTIFACT_RING_OF_HASTE,
	ARTIFACT_UPG_HM2,
	-- ARTIFACT_ANGEL_WINGS,
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
	ARTIFACT_MEDICAL01,
	ARTIFACT_MEDICAL02
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
	"/Text/Game/Scripts/Seer/Artifacts/Medical_01/Name.txt",
	"/Text/Game/Scripts/Seer/Artifacts/Medical_02/Name.txt"
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
[8] = {SKILL_LIGHT_MAGIC,SKILL_SUMMONING_MAGIC},
[9] = {SKILL_DARK_MAGIC,SKILL_DESTRUCTIVE_MAGIC}
}

H55_UnusualSpells = {
	[SKILL_SUMMONING_MAGIC] = {
		[3] = {SPELL_ANTI_MAGIC,SPELL_BLADE_BARRIER},
		[4] = {SPELL_SUMMON_HIVE,SPELL_FIREWALL},
		[5] = {SPELL_HYPNOTIZE,SPELL_CONJURE_PHOENIX}
	},
	[SKILL_DESTRUCTIVE_MAGIC] = {
		[3] = {SPELL_FROST_RING,SPELL_CHAIN_LIGHTNING},
		[4] = {SPELL_METEOR_SHOWER,SPELL_DEEP_FREEZE},
		[5] = {SPELL_ARMAGEDDON,SPELL_IMPLOSION}
	},
	[SKILL_DARK_MAGIC] = {
		[3] = {SPELL_WEAKNESS,SPELL_SORROW},
		[4] = {SPELL_TELEPORT,SPELL_PHANTOM},
		[5] = {SPELL_BERSERK,SPELL_VAMPIRISM}
	},
	[SKILL_LIGHT_MAGIC] = {
		[3] = {SPELL_DEFLECT_ARROWS,SPELL_REGENERATION},
		[4] = {SPELL_BLIND,SPELL_DIVINE_VENGEANCE},
		[5] = {SPELL_CELESTIAL_SHIELD,SPELL_RESURRECT}
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
	SPELL_WARCRY_WORD_OF_THE_CHIEF,
	SPELL_WARCRY_CALL_OF_BLOOD,
	SPELL_WARCRY_FEAR_MY_ROAR,
	SPELL_WARCRY_BATTLECRY,
	SPELL_WARCRY_RALLING_CRY,
	SPELL_WARCRY_SHOUT_OF_MANY
};

-- H55_WarcriesText = {
	-- "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_WORD_OF_THE_CHIEF.txt",
	-- "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_CALL_OF_BLOOD.txt",
	-- "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_FEAR_MY_ROAR.txt",
	-- "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_BATTLECRY.txt",
	-- "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_RALLING_CRY.txt",
	-- "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_SHOUT_OF_MANY.txt"
-- };

H55_TransferableSpells = {
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
	SPELL_RESURRECT,
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
	SPELL_VAMPIRISM,
	SPELL_LIGHTNING_BOLT,	
	SPELL_STONE_SPIKES,
	SPELL_ICE_BOLT,
	SPELL_FROST_RING,
	SPELL_FIREBALL,
	SPELL_CHAIN_LIGHTNING,
	SPELL_METEOR_SHOWER,
	SPELL_ARMAGEDDON,
	SPELL_DEEP_FREEZE,
	SPELL_IMPLOSION,
	SPELL_MAGIC_FIST,
	SPELL_LAND_MINE,
	SPELL_WASP_SWARM,
	SPELL_ARCANE_CRYSTAL,
	SPELL_EARTHQUAKE,	
	SPELL_SUMMON_ELEMENTALS,
	SPELL_BLADE_BARRIER,
	SPELL_ANTI_MAGIC,	
	SPELL_SUMMON_HIVE,
	SPELL_FIREWALL,	
	SPELL_HYPNOTIZE,	
	SPELL_CONJURE_PHOENIX,
	
	SPELL_SUMMON_BOAT,
	SPELL_SUMMON_CREATURES,
	SPELL_TOWN_PORTAL,
	SPELL_DIMENSION_DOOR,
	
	SPELL_RUNE_OF_CHARGE,
	SPELL_RUNE_OF_BERSERKING,
	SPELL_RUNE_OF_MAGIC_CONTROL,				
	SPELL_RUNE_OF_EXORCISM,				
	SPELL_RUNE_OF_ELEMENTAL_IMMUNITY,			
	SPELL_RUNE_OF_STUNNING,
	SPELL_RUNE_OF_BATTLERAGE,
	SPELL_RUNE_OF_ETHEREALNESS,	
	SPELL_RUNE_OF_REVIVE,	
	SPELL_RUNE_OF_DRAGONFORM
};

H55_TransferableCries = {
	SPELL_SUMMON_BOAT,
	SPELL_SUMMON_CREATURES,
	SPELL_TOWN_PORTAL,
	SPELL_DIMENSION_DOOR,
	
    SPELL_WARCRY_RALLING_CRY,
    SPELL_WARCRY_CALL_OF_BLOOD,
    SPELL_WARCRY_WORD_OF_THE_CHIEF,
    SPELL_WARCRY_FEAR_MY_ROAR,
    SPELL_WARCRY_BATTLECRY,
    SPELL_WARCRY_SHOUT_OF_MANY
};

H55_TransferableTalismans = {
	SPELL_SUMMON_BOAT,
	SPELL_SUMMON_CREATURES,
	SPELL_TOWN_PORTAL,
	SPELL_DIMENSION_DOOR
};

H55_RequiredSkillMastery = {
	[SPELL_BLESS]=0,
	[SPELL_HASTE]=0,
	[SPELL_MAGIC_ARROW]=0,
	[SPELL_STONESKIN]=0,
	[SPELL_DISPEL]=0,
	[SPELL_BLOODLUST]=1,
	[SPELL_DEFLECT_ARROWS]=1,	
	[SPELL_REGENERATION]=1,
	[SPELL_BLIND]=2,
	[SPELL_HOLY_WORD]=2,
	[SPELL_DIVINE_VENGEANCE]=2,
	[SPELL_CELESTIAL_SHIELD]=3,	
	[SPELL_RESURRECT]=3,
	[SPELL_SLOW]=0,
	[SPELL_CURSE]=0,
	[SPELL_DISRUPTING_RAY]=0,
	[SPELL_PLAGUE]=0,	
	[SPELL_FORGETFULNESS]=0,	
	[SPELL_WEAKNESS]=0,
	[SPELL_ANIMATE_DEAD]=1,	
	[SPELL_SORROW]=1,
	[SPELL_TELEPORT]=1,	
	[SPELL_UNHOLY_WORD]=2,
	[SPELL_PHANTOM]=2,	
	[SPELL_BERSERK]=3,	
	[SPELL_VAMPIRISM]=3,
	[SPELL_LIGHTNING_BOLT]=0,	
	[SPELL_STONE_SPIKES]=0,
	[SPELL_ICE_BOLT]=0,
	[SPELL_FROST_RING]=1,
	[SPELL_FIREBALL]=0,
	[SPELL_CHAIN_LIGHTNING]=1,
	[SPELL_METEOR_SHOWER]=2,
	[SPELL_ARMAGEDDON]=3,
	[SPELL_DEEP_FREEZE]=2,
	[SPELL_IMPLOSION]=3,
	[SPELL_MAGIC_FIST]=0,
	[SPELL_LAND_MINE]=0,
	[SPELL_WASP_SWARM]=0,
	[SPELL_ARCANE_CRYSTAL]=0,
	[SPELL_EARTHQUAKE]=0,	
	[SPELL_SUMMON_ELEMENTALS]=1,
	[SPELL_BLADE_BARRIER]=1,
	[SPELL_ANTI_MAGIC]=1,	
	[SPELL_SUMMON_HIVE]=2,
	[SPELL_FIREWALL]=2,	
	[SPELL_HYPNOTIZE]=3,	
	[SPELL_CONJURE_PHOENIX]=3,
	
	[SPELL_SUMMON_BOAT]=0,
	[SPELL_SUMMON_CREATURES]=0,
	[SPELL_TOWN_PORTAL]=0,
	[SPELL_DIMENSION_DOOR]=0,
	
	[SPELL_RUNE_OF_CHARGE]=3,
	[SPELL_RUNE_OF_BERSERKING]=1,
	[SPELL_RUNE_OF_MAGIC_CONTROL]=1,				
	[SPELL_RUNE_OF_EXORCISM]=1,				
	[SPELL_RUNE_OF_ELEMENTAL_IMMUNITY]=1,			
	[SPELL_RUNE_OF_STUNNING]=2,
	[SPELL_RUNE_OF_BATTLERAGE]=3,
	[SPELL_RUNE_OF_ETHEREALNESS]=2,	
	[SPELL_RUNE_OF_REVIVE]=2,	
	[SPELL_RUNE_OF_DRAGONFORM]=2,

    [SPELL_WARCRY_RALLING_CRY]=1,
    [SPELL_WARCRY_CALL_OF_BLOOD]=1,
    [SPELL_WARCRY_WORD_OF_THE_CHIEF]=1,
    [SPELL_WARCRY_FEAR_MY_ROAR]=1,
    [SPELL_WARCRY_BATTLECRY]=1,
    [SPELL_WARCRY_SHOUT_OF_MANY]=1
};

H55_RequiredSkill = {
	[SPELL_BLESS]=SKILL_LIGHT_MAGIC,
	[SPELL_HASTE]=SKILL_LIGHT_MAGIC,
	[SPELL_MAGIC_ARROW]=SKILL_LIGHT_MAGIC,
	[SPELL_STONESKIN]=SKILL_LIGHT_MAGIC,
	[SPELL_DISPEL]=SKILL_LIGHT_MAGIC,
	[SPELL_BLOODLUST]=SKILL_LIGHT_MAGIC,
	[SPELL_DEFLECT_ARROWS]=SKILL_LIGHT_MAGIC,	
	[SPELL_REGENERATION]=SKILL_LIGHT_MAGIC,
	[SPELL_BLIND]=SKILL_LIGHT_MAGIC,
	[SPELL_HOLY_WORD]=SKILL_LIGHT_MAGIC,
	[SPELL_DIVINE_VENGEANCE]=SKILL_LIGHT_MAGIC,
	[SPELL_CELESTIAL_SHIELD]=SKILL_LIGHT_MAGIC,	
	[SPELL_RESURRECT]=SKILL_LIGHT_MAGIC,
	
	[SPELL_SLOW]=SKILL_DARK_MAGIC,
	[SPELL_CURSE]=SKILL_DARK_MAGIC,
	[SPELL_DISRUPTING_RAY]=SKILL_DARK_MAGIC,
	[SPELL_PLAGUE]=SKILL_DARK_MAGIC,	
	[SPELL_FORGETFULNESS]=SKILL_DARK_MAGIC,	
	[SPELL_WEAKNESS]=SKILL_DARK_MAGIC,
	[SPELL_ANIMATE_DEAD]=SKILL_DARK_MAGIC,	
	[SPELL_SORROW]=SKILL_DARK_MAGIC,
	[SPELL_TELEPORT]=SKILL_DARK_MAGIC,	
	[SPELL_UNHOLY_WORD]=SKILL_DARK_MAGIC,
	[SPELL_PHANTOM]=SKILL_DARK_MAGIC,	
	[SPELL_BERSERK]=SKILL_DARK_MAGIC,	
	[SPELL_VAMPIRISM]=SKILL_DARK_MAGIC,
	
	[SPELL_LIGHTNING_BOLT]=SKILL_DESTRUCTIVE_MAGIC,	
	[SPELL_STONE_SPIKES]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_ICE_BOLT]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_FROST_RING]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_FIREBALL]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_CHAIN_LIGHTNING]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_METEOR_SHOWER]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_ARMAGEDDON]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_DEEP_FREEZE]=SKILL_DESTRUCTIVE_MAGIC,
	[SPELL_IMPLOSION]=SKILL_DESTRUCTIVE_MAGIC,
	
	[SPELL_MAGIC_FIST]=SKILL_SUMMONING_MAGIC,
	[SPELL_LAND_MINE]=SKILL_SUMMONING_MAGIC,
	[SPELL_WASP_SWARM]=SKILL_SUMMONING_MAGIC,
	[SPELL_ARCANE_CRYSTAL]=SKILL_SUMMONING_MAGIC,
	[SPELL_EARTHQUAKE]=SKILL_SUMMONING_MAGIC,	
	[SPELL_SUMMON_ELEMENTALS]=SKILL_SUMMONING_MAGIC,
	[SPELL_BLADE_BARRIER]=SKILL_SUMMONING_MAGIC,
	[SPELL_ANTI_MAGIC]=SKILL_SUMMONING_MAGIC,	
	[SPELL_SUMMON_HIVE]=SKILL_SUMMONING_MAGIC,
	[SPELL_FIREWALL]=SKILL_SUMMONING_MAGIC,	
	[SPELL_HYPNOTIZE]=SKILL_SUMMONING_MAGIC,	
	[SPELL_CONJURE_PHOENIX]=SKILL_SUMMONING_MAGIC,
	
	[SPELL_SUMMON_BOAT]=SKILL_LOGISTICS,
	[SPELL_SUMMON_CREATURES]=SKILL_LOGISTICS,
	[SPELL_TOWN_PORTAL]=SKILL_LOGISTICS,
	[SPELL_DIMENSION_DOOR]=SKILL_LOGISTICS,
	
	[SPELL_RUNE_OF_CHARGE]=HERO_SKILL_RUNELORE,
	[SPELL_RUNE_OF_BERSERKING]=HERO_SKILL_RUNELORE,
	[SPELL_RUNE_OF_MAGIC_CONTROL]=HERO_SKILL_RUNELORE,				
	[SPELL_RUNE_OF_EXORCISM]=HERO_SKILL_RUNELORE,				
	[SPELL_RUNE_OF_ELEMENTAL_IMMUNITY]=HERO_SKILL_RUNELORE,			
	[SPELL_RUNE_OF_STUNNING]=HERO_SKILL_RUNELORE,
	[SPELL_RUNE_OF_BATTLERAGE]=HERO_SKILL_RUNELORE,
	[SPELL_RUNE_OF_ETHEREALNESS]=HERO_SKILL_RUNELORE,	
	[SPELL_RUNE_OF_REVIVE]=HERO_SKILL_RUNELORE,	
	[SPELL_RUNE_OF_DRAGONFORM]=HERO_SKILL_RUNELORE,

    [SPELL_WARCRY_RALLING_CRY]=HERO_SKILL_DEMONIC_RAGE,
    [SPELL_WARCRY_CALL_OF_BLOOD]=HERO_SKILL_DEMONIC_RAGE,
    [SPELL_WARCRY_WORD_OF_THE_CHIEF]=HERO_SKILL_DEMONIC_RAGE,
    [SPELL_WARCRY_FEAR_MY_ROAR]=HERO_SKILL_DEMONIC_RAGE,
    [SPELL_WARCRY_BATTLECRY]=HERO_SKILL_DEMONIC_RAGE,
    [SPELL_WARCRY_SHOUT_OF_MANY]=HERO_SKILL_DEMONIC_RAGE
};

--Witch Huts

------------------------Def,Elt,logt,lck,off,Drk,Dst,Lgt,Smg,Lp/Sc,Cb/Oc,WarM/Racial
H55_WitchRenegades = 	{  6,  8, 13, 14, 17,  5, 20, 21, 22,  10,   4, 26 };
H55_WitchKnights =      {  6,  8, 13, 14, 17, 19, 20, 12, 22,  10,   4, 26 };
H55_WitchHeretics = 	{  6,  8, 13, 14, 17,  5,  7, 21, 24,  23,  16, 26 };

H55_WitchRangers =      {  6,  8, 13, 14, 17, 19, 20, 12, 22,  10,   4, 26 }; 
H55_WitchAvengers =     {  6,  8, 13, 14, 17,  5,  7, 21, 24,  10,   4, 26 }; --Summoning instead of Avenger
H55_WitchDruids =       {  6,  8, 13, 14, 17, 19,  7, 12, 24,  23,  16, 26 };

H55_WitchDemonlords = 	{  6,  8, 13, 14, 17,  5, 20, 21, 22,  10,   4, 26 }; 
H55_WitchGatekeepers = 	{  6,  8, 13, 14, 17,  5,  7, 12, 22,  23,   9, 26 }; --No Combat/Occultism so included Gating
H55_WitchSorcerers = 	{  6,  8, 13, 14, 17,  5,  7, 21, 24,  23,  16, 15 };

H55_WitchDeathKnights = {  6,  8, 13, 14, 17,  5, 20, 21, 22,  10,   4, 26 }; --Shatter Summoning instead of Necromancy
H55_WitchNecromancers = {  6,  8, 13, 14, 17,  5, 20, 12, 24,  23,  16, 15 };
H55_WitchNethermages =  {  6,  8, 13, 14, 17,  5,  7, 21, 24,  23,  16, 15 };

------------------------Def,Elt,logt,lck,off,Drk,Dst,Lgt,Smg,Lp/Sc,Cb/Oc,WarM/Racial
H55_WitchEnchanters =   {  6,  8, 13, 14, 17,  5, 20, 12, 22,  10,   1, 26 };
H55_WitchConjurers =	{  6,  8, 13, 14, 17,  5,  7, 21, 24,  23,  16,  1 }; 
H55_WitchWizards =      {  6,  8, 13, 14, 17,  5,  7, 12, 24,  23,  16,  1 }; 

H55_WitchOverlords = 	{  6,  8, 13, 14, 17,  5, 20, 21, 22,  10,   4, 26 };
H55_WitchTricksters = 	{  6,  8, 13, 14, 17,  5,  7, 12, 22,  23,  16, 26 };
H55_WitchWarlocks = 	{  6,  8, 13, 14, 17,  5,  7, 21, 24,  23,  16, 15 };

H55_WitchEngineers = 	{  6,  8, 13, 14, 17, 19, 20, 12, 22,  10,   4, 26 }; --Shatter Summoning instead of Runelore
H55_WitchRunemages = 	{  6,  8, 13, 14, 17,  5, 20, 12, 24,  10,  18, 26 };
H55_WitchFlamekeepers = {  6,  8, 13, 14, 17, 19,  7, 12, 24,  23,  16, 18 };

H55_WitchChieftains = 	{  6, 11, 13, 14, 17, 19, 20, 21, 22,  10,  25, 26 }; --Access to all shatters, Voice and Barb learning instead of enlightement
H55_WitchShamans =      {  6,  8, 13, 14, 17, 19, 20, 12, 24,  23,  16, 26 };
H55_WitchWitches =      {  6,  8, 13, 14, 17,  5,  7, 21, 24,  23,  16, 15 };

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
	HERO_SKILL_SHATTER_DESTRUCTIVE_MAGIC,   -- 20
	HERO_SKILL_SHATTER_LIGHT_MAGIC,         -- 21
	HERO_SKILL_SHATTER_SUMMONING_MAGIC,     -- 22
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

H55_DwellingT1ConvCosts = {1000,5};
H55_DwellingT2ConvCosts = {2000,5};
H55_DwellingT3ConvCosts = {3000,5};
H55_DwellingT4ConvCosts = {4000,5};

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

H55_ObjectTiles = { 
	["TOWN_ACADEMY"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -2, [1] = -1, [2] =  0, [3] =  1, [4] =  2, [5] = -3, [6] = -2, [7] = -1, [8] =  0, [9] =  1, [10] =  2, [11] =  3, [12] = -3, [13] = -2, [14] = -1, [15] =  0, [16] =  1, [17] =  2, [18] =  3, [19] = -4, [20] = -3, [21] = -2, [22] = -1, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] =  4, [28] = -4, [29] = -3, [30] = -2, [31] = -1, [32] =  0, [33] =  2, [34] =  3, [35] =  4, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] = -3, [46] = -2, [47] = -1, [48] =  0, [49] =  1, [50] =  2, [51] =  3, [52] = -3, [53] = -2, [54] = -1, [55] =  0, [56] =  1, [57] =  2, [58] = -1, [59] =  0, [60] =  1, [61] = -2, [62] =  0, [63] =  2, [64] =  3, [65] =  4, [66] =  1, [67] =  2, [68] =  3, [69] =  3, [70] =  4, [71] =  4, [72] =  5, [73] =  5, [74] =  5, [75] =  5, [76] =  4, [77] =  4, [78] =  0, [79] =  2, [80] =  4, [81] =  5, [82] =  5, [83] =  6, [84] =  6, [85] =  6, [86] =  5, [87] =  1 },
				["y"] = { [0] = -5, [1] = -5, [2] = -5, [3] = -5, [4] = -5, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -4, [10] = -4, [11] = -4, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -3, [18] = -3, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -2, [27] = -2, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  3, [59] =  3, [60] =  3, [61] =  3, [62] =  4, [63] =  3, [64] =  2, [65] =  1, [66] =  4, [67] =  4, [68] =  3, [69] = -5, [70] = -4, [71] = -3, [72] = -2, [73] = -1, [74] =  0, [75] =  1, [76] =  2, [77] =  3, [78] = -6, [79] = -6, [80] = -5, [81] = -4, [82] = -3, [83] = -2, [84] = -1, [85] =  0, [86] =  2, [87] = -1 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -6 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] =  0 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 },
	["TOWN_DUNGEON"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1, [1] = -1, [2] = -2, [3] = -2, [4] = -1, [5] =  0, [6] =  1, [7] =  2, [8] =  3, [9] = -3, [10] = -2, [11] = -1, [12] =  0, [13] =  1, [14] =  2, [15] =  3, [16] =  4, [17] = -4, [18] = -3, [19] = -2, [20] = -1, [21] =  0, [22] =  1, [23] =  2, [24] =  3, [25] =  4, [26] = -4, [27] = -3, [28] = -2, [29] = -1, [30] =  0, [31] =  1, [32] =  2, [33] =  3, [34] =  4, [35] =  5, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] =  5, [46] = -3, [47] = -2, [48] = -1, [49] =  0, [50] =  1, [51] =  2, [52] =  3, [53] =  4, [54] =  5, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] =  3, [61] =  4, [62] =  5, [63] = -2, [64] = -1, [65] =  0, [66] =  1, [67] =  2, [68] =  3, [69] =  4, [70] =  0, [71] =  1, [72] =  2, [73] =  0, [74] =  2, [75] =  2, [76] =  3, [77] =  0, [78] =  4, [79] =  4, [80] =  5, [81] =  5, [82] =  6, [83] =  6, [84] = -3, [85] = -3, [86] =  6 },
				["y"] = { [0] = -5, [1] = -5, [2] = -5, [3] = -4, [4] = -4, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -3, [10] = -3, [11] = -3, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -2, [18] = -2, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -1, [27] = -1, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  0, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  1, [53] =  1, [54] =  1, [55] =  2, [56] =  2, [57] =  2, [58] =  2, [59] =  2, [60] =  2, [61] =  2, [62] =  2, [63] =  3, [64] =  3, [65] =  3, [66] =  3, [67] =  3, [68] =  3, [69] =  3, [70] =  4, [71] =  4, [72] =  4, [73] = -6, [74] = -6, [75] = -5, [76] = -5, [77] = -5, [78] = -5, [79] = -4, [80] = -3, [81] = -2, [82] = -1, [83] =  0, [84] = -4, [85] =  2, [86] = -2 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -6 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -1 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 },
	["TOWN_FORTRESS"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -2, [1] = -1, [2] =  0, [3] =  1, [4] =  2, [5] = -3, [6] = -2, [7] = -1, [8] =  0, [9] =  1, [10] =  2, [11] =  3, [12] = -3, [13] = -2, [14] = -1, [15] =  0, [16] =  1, [17] =  2, [18] =  3, [19] = -4, [20] = -3, [21] = -2, [22] = -1, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] =  4, [28] = -4, [29] = -3, [30] = -2, [31] = -1, [32] =  0, [33] =  2, [34] =  3, [35] =  4, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] = -3, [46] = -2, [47] = -1, [48] =  0, [49] =  1, [50] =  2, [51] =  3, [52] = -3, [53] = -2, [54] = -1, [55] =  0, [56] =  1, [57] =  2, [58] = -1, [59] =  0, [60] =  1, [61] = -2, [62] =  0, [63] =  2, [64] =  3, [65] =  4, [66] =  1, [67] =  2, [68] =  3, [69] =  3, [70] =  4, [71] =  4, [72] =  5, [73] =  5, [74] =  5, [75] =  5, [76] =  4, [77] =  4, [78] =  0, [79] =  2, [80] =  4, [81] =  5, [82] =  5, [83] =  6, [84] =  6, [85] =  6, [86] =  5, [87] =  1 },
				["y"] = { [0] = -5, [1] = -5, [2] = -5, [3] = -5, [4] = -5, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -4, [10] = -4, [11] = -4, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -3, [18] = -3, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -2, [27] = -2, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  3, [59] =  3, [60] =  3, [61] =  3, [62] =  4, [63] =  3, [64] =  2, [65] =  1, [66] =  4, [67] =  4, [68] =  3, [69] = -5, [70] = -4, [71] = -3, [72] = -2, [73] = -1, [74] =  0, [75] =  1, [76] =  2, [77] =  3, [78] = -6, [79] = -6, [80] = -5, [81] = -4, [82] = -3, [83] = -2, [84] = -1, [85] =  0, [86] =  2, [87] = -1 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -6 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] =  0 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 },
	["TOWN_HEAVEN"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -1, [1] =  1, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] = -2, [13] = -1, [14] =  0, [15] =  1, [16] =  2, [17] = -1, [18] =  0, [19] =  1, [20] = -2, [21] = -1, [22] =  0, [23] =  1, [24] =  0, [25] =  1, [26] =  2, [27] =  3, [28] = -3, [29] = -2, [30] = -1, [31] =  0, [32] =  1, [33] =  2, [34] =  3, [35] =  4, [36] = -3, [37] = -2, [38] =  0, [39] =  2, [40] =  3, [41] =  4, [42] = -3, [43] =  3, [44] =  4, [45] = -3, [46] =  3, [47] =  4, [48] = -3, [49] =  3, [50] =  4, [51] = -3, [52] = -2, [53] =  2, [54] =  3, [55] =  4, [56] = -2, [57] = -1, [58] =  0, [59] =  1, [60] =  2, [61] =  3, [62] =  6, [63] =  6, [64] =  5, [65] =  5, [66] =  0, [67] =  1, [68] =  2, [69] = -4, [70] = -4, [71] =  5, [72] =  5, [73] = -4, [74] =  4, [75] =  5, [76] =  5, [77] = -1, [78] =  2, [79] =  3, [80] =  4, [81] =  6, [82] =  5, [83] =  4, [84] =  2, [85] = -3, [86] =  0, [87] = -2 },
				["y"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -1, [4] = -1, [5] = -1, [6] = -1, [7] =  0, [8] =  0, [9] =  0, [10] =  0, [11] =  0, [12] =  1, [13] =  1, [14] =  1, [15] =  1, [16] =  1, [17] =  2, [18] =  2, [19] =  2, [20] = -4, [21] = -4, [22] = -5, [23] = -5, [24] = -4, [25] = -4, [26] = -4, [27] = -4, [28] = -3, [29] = -3, [30] = -3, [31] = -3, [32] = -3, [33] = -3, [34] = -3, [35] = -3, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -2, [41] = -2, [42] = -1, [43] = -1, [44] = -1, [45] =  0, [46] =  0, [47] =  0, [48] =  1, [49] =  1, [50] =  1, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  3, [57] =  3, [58] =  3, [59] =  3, [60] =  3, [61] =  3, [62] = -1, [63] =  0, [64] =  2, [65] =  1, [66] =  4, [67] =  4, [68] =  4, [69] =  0, [70] = -1, [71] =  0, [72] = -1, [73] = -2, [74] = -4, [75] = -2, [76] = -3, [77] = -5, [78] = -5, [79] = -5, [80] =  3, [81] = -2, [82] = -4, [83] = -5, [84] = -6, [85] = -4, [86] = -6, [87] = -5 }
			 },
			["1"] = { 
				["x"] = {  },
				["y"] = {  }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -6 }
			 },
			["1"] = { 
				["x"] = { [0] = -4, [1] = -3, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] =  3, [8] =  4, [9] = -4, [10] = -3, [11] = -2, [12] = -1, [13] =  0, [14] =  1, [15] =  2, [16] =  3, [17] =  4, [18] = -4, [19] = -3, [20] = -2, [21] = -1, [22] =  0, [23] =  1, [24] =  2, [25] =  3, [26] =  4, [27] = -4, [28] = -3, [29] = -2, [30] = -1, [31] =  0, [32] =  1, [33] =  2, [34] =  3, [35] =  4, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] = -4, [46] = -3, [47] = -2, [48] = -1, [49] =  0, [50] =  1, [51] =  2, [52] =  3, [53] =  4, [54] = -4, [55] = -3, [56] = -2, [57] = -1, [58] =  0, [59] =  1, [60] =  2, [61] =  3, [62] =  4, [63] = -4, [64] = -3, [65] = -2, [66] = -1, [67] =  0, [68] =  1, [69] =  2, [70] =  3, [71] =  4, [72] = -4, [73] = -3, [74] = -2, [75] = -1, [76] =  0, [77] =  1, [78] =  2, [79] =  3, [80] =  4 },
				["y"] = { [0] = -4, [1] = -4, [2] = -4, [3] = -4, [4] = -4, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -3, [10] = -3, [11] = -3, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -3, [18] = -2, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -2, [27] = -1, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  1, [53] =  1, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  2, [59] =  2, [60] =  2, [61] =  2, [62] =  2, [63] =  3, [64] =  3, [65] =  3, [66] =  3, [67] =  3, [68] =  3, [69] =  3, [70] =  3, [71] =  3, [72] =  4, [73] =  4, [74] =  4, [75] =  4, [76] =  4, [77] =  4, [78] =  4, [79] =  4, [80] =  4 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -1 }
			 },
			["1"] = { 
				["x"] = { [0] =  0 },
				["y"] = { [0] =  0 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 1
	 },
	["TOWN_INFERNO"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -3, [4] = -3, [5] = -4, [6] = -4, [7] = -3, [8] = -3, [9] = -3, [10] = -2, [11] = -1, [12] =  0, [13] =  1, [14] =  2, [15] =  3, [16] = -1, [17] =  0, [18] =  1, [19] =  2, [20] =  3, [21] = -1, [22] =  0, [23] =  1, [24] =  2, [25] =  3, [26] = -1, [27] =  0, [28] =  1, [29] =  2, [30] =  3, [31] = -1, [32] =  0, [33] =  1, [34] =  2, [35] =  3, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -1, [41] =  0, [42] =  1, [43] =  2, [44] =  3, [45] =  2, [46] =  3, [47] =  4, [48] = -4, [49] = -3, [50] = -2, [51] = -1, [52] =  2, [53] =  3, [54] =  4, [55] =  4, [56] =  4, [57] =  4, [58] =  4, [59] =  4, [60] =  5, [61] =  5, [62] =  5, [63] =  5, [64] =  5, [65] =  5, [66] = -1, [67] =  0, [68] =  1, [69] =  2, [70] =  3, [71] =  4, [72] =  0, [73] =  6, [74] =  6, [75] =  6, [76] =  1, [77] =  1, [78] =  0, [79] =  0, [80] =  4, [81] =  5, [82] =  2, [83] = -3, [84] =  0, [85] =  1, [86] =  2, [87] = -2 },
				["y"] = { [0] = -3, [1] = -4, [2] = -4, [3] = -4, [4] = -3, [5] = -1, [6] =  0, [7] = -2, [8] = -1, [9] =  0, [10] = -2, [11] = -3, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -2, [17] = -2, [18] = -2, [19] = -2, [20] = -2, [21] = -1, [22] = -1, [23] = -1, [24] = -1, [25] = -1, [26] =  0, [27] =  0, [28] =  0, [29] =  0, [30] =  0, [31] =  1, [32] =  1, [33] =  1, [34] =  1, [35] =  1, [36] = -1, [37] =  0, [38] =  1, [39] =  2, [40] =  2, [41] =  2, [42] =  2, [43] =  2, [44] =  2, [45] = -4, [46] = -4, [47] = -4, [48] = -2, [49] =  1, [50] = -5, [51] = -5, [52] = -5, [53] = -5, [54] = -3, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] = -3, [61] = -2, [62] = -1, [63] =  0, [64] =  1, [65] =  2, [66] =  3, [67] =  3, [68] =  3, [69] =  3, [70] =  3, [71] =  3, [72] = -4, [73] = -2, [74] = -1, [75] =  0, [76] = -4, [77] = -5, [78] = -5, [79] = -6, [80] = -5, [81] = -4, [82] = -6, [83] =  2, [84] =  4, [85] =  4, [86] =  4, [87] =  3 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -6 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -1 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 },
	["TOWN_NECROMANCY"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -1, [1] =  1, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] = -2, [13] = -1, [14] =  0, [15] =  1, [16] =  2, [17] = -1, [18] =  0, [19] =  1, [20] = -2, [21] = -1, [22] =  0, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] = -3, [28] = -2, [29] = -1, [30] =  0, [31] =  1, [32] =  2, [33] =  3, [34] =  4, [35] = -3, [36] = -2, [37] =  0, [38] =  2, [39] =  3, [40] =  4, [41] = -3, [42] =  3, [43] =  4, [44] = -3, [45] =  3, [46] =  4, [47] = -3, [48] =  3, [49] =  4, [50] = -3, [51] = -2, [52] =  2, [53] =  3, [54] =  4, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] =  3, [61] =  6, [62] =  6, [63] =  1, [64] = -2, [65] = -1, [66] =  5, [67] =  5, [68] =  0, [69] =  1, [70] =  2, [71] =  3, [72] = -4, [73] = -4, [74] = -4, [75] =  5, [76] =  5, [77] =  4, [78] =  5, [79] =  5, [80] =  2, [81] =  4, [82] = -3, [83] =  6, [84] =  2, [85] =  4, [86] =  5, [87] =  0 },
				["y"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -1, [4] = -1, [5] = -1, [6] = -1, [7] =  0, [8] =  0, [9] =  0, [10] =  0, [11] =  0, [12] =  1, [13] =  1, [14] =  1, [15] =  1, [16] =  1, [17] =  2, [18] =  2, [19] =  2, [20] = -4, [21] = -4, [22] = -5, [23] = -4, [24] = -4, [25] = -4, [26] = -4, [27] = -3, [28] = -3, [29] = -3, [30] = -3, [31] = -3, [32] = -3, [33] = -3, [34] = -3, [35] = -2, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -2, [41] = -1, [42] = -1, [43] = -1, [44] =  0, [45] =  0, [46] =  0, [47] =  1, [48] =  1, [49] =  1, [50] =  2, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  3, [56] =  3, [57] =  3, [58] =  3, [59] =  3, [60] =  3, [61] = -1, [62] =  0, [63] =  5, [64] =  4, [65] =  4, [66] =  2, [67] =  1, [68] =  4, [69] =  4, [70] =  4, [71] =  4, [72] =  1, [73] =  0, [74] = -1, [75] =  0, [76] = -1, [77] = -4, [78] = -2, [79] = -3, [80] = -5, [81] =  3, [82] =  3, [83] =  1, [84] =  5, [85] =  4, [86] =  3, [87] =  5 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -5 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] =  0 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 },
	["TOWN_STRONGHOLD"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -2, [1] = -1, [2] =  0, [3] =  1, [4] =  2, [5] =  3, [6] = -3, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] =  3, [13] =  4, [14] = -3, [15] = -2, [16] = -1, [17] =  0, [18] =  1, [19] =  2, [20] =  3, [21] =  4, [22] = -4, [23] = -3, [24] = -2, [25] = -1, [26] =  0, [27] =  1, [28] =  2, [29] =  3, [30] =  4, [31] = -4, [32] = -3, [33] = -2, [34] = -1, [35] =  0, [36] =  1, [37] =  2, [38] =  3, [39] =  4, [40] =  5, [41] = -4, [42] = -3, [43] = -2, [44] = -1, [45] =  0, [46] =  1, [47] =  2, [48] =  3, [49] =  4, [50] =  5, [51] = -3, [52] = -2, [53] = -1, [54] =  0, [55] =  1, [56] =  2, [57] =  3, [58] =  4, [59] = -3, [60] = -2, [61] = -1, [62] =  0, [63] =  1, [64] =  2, [65] =  3, [66] =  4, [67] = -1, [68] =  0, [69] =  1, [70] =  2, [71] =  3, [72] =  0, [73] =  1, [74] =  5, [75] = -1, [76] = -2, [77] = -3, [78] = -4, [79] = -4, [80] = -5, [81] = -5, [82] = -5, [83] = -4, [84] = -4, [85] = -3, [86] = -1, [87] =  1 },
				["y"] = { [0] = -4, [1] = -4, [2] = -4, [3] = -4, [4] = -4, [5] = -4, [6] = -3, [7] = -3, [8] = -3, [9] = -3, [10] = -3, [11] = -3, [12] = -3, [13] = -3, [14] = -2, [15] = -2, [16] = -2, [17] = -2, [18] = -2, [19] = -2, [20] = -2, [21] = -2, [22] = -1, [23] = -1, [24] = -1, [25] = -1, [26] = -1, [27] = -1, [28] = -1, [29] = -1, [30] = -1, [31] =  0, [32] =  0, [33] =  0, [34] =  0, [35] =  0, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  1, [42] =  1, [43] =  1, [44] =  1, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  2, [59] =  3, [60] =  3, [61] =  3, [62] =  3, [63] =  3, [64] =  3, [65] =  3, [66] =  3, [67] =  4, [68] =  4, [69] =  4, [70] =  4, [71] =  4, [72] =  5, [73] =  5, [74] = -1, [75] =  5, [76] =  4, [77] =  4, [78] =  3, [79] =  2, [80] =  1, [81] =  0, [82] = -1, [83] = -2, [84] = -3, [85] = -4, [86] = -5, [87] = -5 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  0 },
				["y"] = { [0] = -5 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  0 },
				["y"] = { [0] =  0 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 },
	["TOWN_PRESERVE"] = { 
		["blockedTiles"] = { 
			["0"] = { 
				["x"] = { [0] = -1, [1] =  1, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] = -2, [13] = -1, [14] =  0, [15] =  1, [16] =  2, [17] = -1, [18] =  0, [19] =  1, [20] = -2, [21] = -1, [22] =  0, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] = -3, [28] = -2, [29] = -1, [30] =  0, [31] =  1, [32] =  2, [33] =  3, [34] =  4, [35] = -3, [36] = -2, [37] =  0, [38] =  2, [39] =  3, [40] =  4, [41] = -3, [42] =  3, [43] =  4, [44] = -3, [45] =  3, [46] =  4, [47] = -3, [48] =  3, [49] =  4, [50] = -3, [51] = -2, [52] =  2, [53] =  3, [54] =  4, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] =  3, [61] =  6, [62] =  6, [63] =  0, [64] =  1, [65] = -2, [66] = -1, [67] =  5, [68] =  5, [69] =  0, [70] =  1, [71] =  2, [72] =  3, [73] = -4, [74] = -4, [75] = -4, [76] =  5, [77] =  5, [78] =  4, [79] =  5, [80] =  5, [81] =  2, [82] =  4, [83] = -3, [84] =  6, [85] =  2, [86] =  4, [87] =  5 },
				["y"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -1, [4] = -1, [5] = -1, [6] = -1, [7] =  0, [8] =  0, [9] =  0, [10] =  0, [11] =  0, [12] =  1, [13] =  1, [14] =  1, [15] =  1, [16] =  1, [17] =  2, [18] =  2, [19] =  2, [20] = -4, [21] = -4, [22] = -5, [23] = -4, [24] = -4, [25] = -4, [26] = -4, [27] = -3, [28] = -3, [29] = -3, [30] = -3, [31] = -3, [32] = -3, [33] = -3, [34] = -3, [35] = -2, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -2, [41] = -1, [42] = -1, [43] = -1, [44] =  0, [45] =  0, [46] =  0, [47] =  1, [48] =  1, [49] =  1, [50] =  2, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  3, [56] =  3, [57] =  3, [58] =  3, [59] =  3, [60] =  3, [61] = -1, [62] =  0, [63] =  5, [64] =  5, [65] =  4, [66] =  4, [67] =  2, [68] =  1, [69] =  4, [70] =  4, [71] =  4, [72] =  4, [73] =  1, [74] =  0, [75] = -1, [76] =  0, [77] = -1, [78] = -4, [79] = -2, [80] = -3, [81] = -5, [82] =  3, [83] =  3, [84] =  1, [85] =  5, [86] =  4, [87] =  3 }
			 }
		 },
		["activeTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] = -5 }
			 }
		 },
		["possessionTiles"] = { 
			["0"] = { 
				["x"] = { [0] =  1 },
				["y"] = { [0] =  0 }
			 }
		 },
		["sharedType"] = "AdvMapTownShared",
		["entries"] = 0
	 }
 }

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

-- H55_MagicL5 = {};

-- for i = 1, table.length(H55_SpellsL5) do
	-- H55_MagicL5[H55_SpellsL5[i]] = H55_SpellsTextL5[i];
-- end;

------------------------------------------------------------------------------------------------------------------------------------------------------