Fx_UltimatesAI = {
	SKILL_DESTRUCTIVE_MAGIC,
	SKILL_SORCERY,
	SKILL_NECROMANCY,
	SKILL_OFFENCE,
	SKILL_SHATTER_DARK_MAGIC,
	SKILL_LUCK,
	SKILL_DEFENCE,
	SKILL_WAR_MACHINES,
	SKILL_TRAINING,
	SKILL_INVOCATION,
	SKILL_WARCRY_LEARNING,
	SKILL_LEADERSHIP,
	SKILL_DEMONIC_RAGE
}

Fx_Casters = {5, 4, 6, 5, 4, 6, 5, 4}


Fx_Creatures = {
	{{1,2,106},{3,4,107},{5,6,108},{7,8,109},{9,10,110},{11,12,111},{13,14,112}}, --Haven
	{{43,44,145},{45,46,146},{47,48,147},{49,50,148},{51,52,149},{53,54,150},{55,56,151}}, --Sylvan
	{{15,16,131},{17,18,132},{19,20,133},{21,22,134},{23,24,135},{25,26,136},{27,28,137}}, --Inferno
	{{29,30,152},{31,32,153},{33,34,154},{35,36,155},{37,38,156},{39,40,157},{41,42,158}}, --Necropolis
	{{57,58,159},{59,60,160},{61,62,161},{63,64,162},{65,66,163},{67,68,164},{69,70,165}}, --Academy
	{{71,72,138},{73,74,139},{75,76,140},{77,78,141},{79,80,142},{81,82,143},{83,84,144}}, --Dungeon
	{{92,93,166},{94,95,167},{96,97,168},{98,99,169},{100,101,170},{102,103,171},{104,105,172}}, --Fortress
	{{117,118,173},{119,120,174},{121,122,175},{123,124,176},{125,126,177},{127,128,178},{129,130,179}}, --Stronghold
	{{87,87,88}, {85,85,86}, {113,113,113}, {116,116,116}, {115,115,115}, {90,90,90}, {89,114,91}}, --Neutral
};

Fx_CreaturesInv = {}
for town = 1,9,1 do
	for tier = 1,7,1 do
		for upgrade = 1,3 do
			Fx_CreaturesInv[Fx_Creatures[town][tier][upgrade]] = {town, tier, upgrade}
		end
	end
end

Fx_Growth = {
	{22, 12, 10, 5, 3, 2, 1}, --Haven
	{12, 9, 7, 4, 3, 2, 1}, --Sylvan
	{17, 15, 8, 5, 3, 2, 1}, --Inferno
	{20, 15, 6, 5, 3, 2, 1}, --Necropolis
	{20, 14, 9, 5, 3, 2, 1}, --Academy
	{7, 5, 6, 4, 3, 2, 1}, --Dungeon
	{16, 14, 7, 6, 3, 2, 1}, --Fortress
	{25, 14, 11, 5, 5, 2, 1}, --Stronghold
	{20, 20, 6, 3, 2, 2, 1} -- Neutral
}

Fx_UnusualSchools = {
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
	
Fx_Schools = {
	SKILL_SUMMONING_MAGIC,
	SKILL_DESTRUCTIVE_MAGIC,
	SKILL_DARK_MAGIC,
	SKILL_LIGHT_MAGIC
}

Fx_MagicSkills = {
	SKILL_SUMMONING_MAGIC,
	SKILL_DESTRUCTIVE_MAGIC,
	SKILL_DARK_MAGIC,
	SKILL_LIGHT_MAGIC,
	SKILL_EAGLE_EYE, 
	SKILL_WISDOM
}

Fx_Spells = {
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
}

Fx_SpellManaCost = {
	[SPELL_BLESS]=5,
	[SPELL_HASTE]=5,
	[SPELL_MAGIC_ARROW]=4,
	[SPELL_STONESKIN]=5,
	[SPELL_DISPEL]=15,
	[SPELL_BLOODLUST]=5,
	[SPELL_DEFLECT_ARROWS]=5,	
	[SPELL_REGENERATION]=10,
	[SPELL_BLIND]=30,
	[SPELL_HOLY_WORD]=15,
	[SPELL_DIVINE_VENGEANCE]=15,
	[SPELL_CELESTIAL_SHIELD]=30,	
	[SPELL_RESURRECT]=20,
	[SPELL_SLOW]=5,
	[SPELL_CURSE]=5,
	[SPELL_DISRUPTING_RAY]=5,
	[SPELL_PLAGUE]=5,	
	[SPELL_FORGETFULNESS]=5,	
	[SPELL_WEAKNESS]=5,
	[SPELL_ANIMATE_DEAD]=15,	
	[SPELL_SORROW]=15,
	[SPELL_TELEPORT]=15,	
	[SPELL_UNHOLY_WORD]=25,
	[SPELL_PHANTOM]=15,	
	[SPELL_BERSERK]=30,	
	[SPELL_VAMPIRISM]=30,
	[SPELL_LIGHTNING_BOLT]=7,	
	[SPELL_STONE_SPIKES]=4,
	[SPELL_ICE_BOLT]=7,
	[SPELL_FROST_RING]=15,
	[SPELL_FIREBALL]=15,
	[SPELL_CHAIN_LIGHTNING]=30,
	[SPELL_METEOR_SHOWER]=15,
	[SPELL_ARMAGEDDON]=25,
	[SPELL_DEEP_FREEZE]=30,
	[SPELL_IMPLOSION]=20,
	[SPELL_MAGIC_FIST]=6,
	[SPELL_LAND_MINE]=7,
	[SPELL_WASP_SWARM]=4,
	[SPELL_ARCANE_CRYSTAL]=5,
	[SPELL_EARTHQUAKE]=10,	
	[SPELL_SUMMON_ELEMENTALS]=20,
	[SPELL_BLADE_BARRIER]=5,
	[SPELL_ANTI_MAGIC]=30,	
	[SPELL_SUMMON_HIVE]=10,
	[SPELL_FIREWALL]=10,	
	[SPELL_HYPNOTIZE]=30,	
	[SPELL_CONJURE_PHOENIX]=20,
	
	[SPELL_SUMMON_BOAT]=4,
	[SPELL_SUMMON_CREATURES]=0,
	[SPELL_TOWN_PORTAL]=20,
	[SPELL_DIMENSION_DOOR]=15,
	
    [SPELL_WARCRY_RALLING_CRY]=5,
    [SPELL_WARCRY_CALL_OF_BLOOD]=5,
    [SPELL_WARCRY_WORD_OF_THE_CHIEF]=4,
    [SPELL_WARCRY_FEAR_MY_ROAR]=8,
    [SPELL_WARCRY_BATTLECRY]=10,
    [SPELL_WARCRY_SHOUT_OF_MANY]=10
}


Fx_Renegades = {"Mardigo","RedHeavenHero02","RedHeavenHero05","RedHeavenHero03","RedHeavenHero06"				,"Alaric","RedHeavenHero01","Laszlo"};
Fx_Knights = {"Duncan","Sarge","Isabell","Orrin","Nicolai","GodricMP","Maeve","Nathaniel","Axel","Christian"   ,"Brem","Ving","Godric","Freyda","Ornella","GhostFSLord","Giar","Glen","Isabell_A1","Saint Isabell"};
Fx_Heretics = {"Jeddite","Markal","AlaricMP","RedHeavenHero04","OrlandoMP"										,"Orlando"};
Fx_Rangers = {"Heam","Gillion","Linaas","Ossir","Melodia","Mephala"};
Fx_Avengers = {"Kyrre","Nadaur","Arniel","Ildar","Jenova","Metlirn"};
Fx_Druids = {"Vaniel","Elleshar","Vinrael","Itil","Diraya","Gem"                            					,"Tieru"};
Fx_Demonlords = {"Marder","Malustar","Harkenraz","Grok","Calid","Jazaz"                      					,"Sheltem","Gamor","Guarg","Erasial","Kha-Beleth","Veyer","DMessiah"};
Fx_Gatekeepers = {"Deleb","Ash","Nymus","Oddrema","Nelech","Calh"                                              ,"Agrael"};
Fx_Sorcerers = {"Sovereign","Efion","Calid2","Zydar","AgraelMP","Biara"};
Fx_DeathKnights = {"Gles","Pelt","Tamika","OrnellaNecro","Straker","Xerxon"};
Fx_Necromancers = {"Archilus","Nimbus","Aislinn","ArantirMP","Aberrar","Effig" 								,"Arantir","Berein","Nikolay","Giovanni"};
Fx_Nethermages = {"Thant","Vidomina","Nemor","Muscip","GiovanniMP","Sandro"};
Fx_Enchanters = {"Isher","Rissa","Minasli","Davius","Josephine","Havez"};
Fx_Conjurers = {"Zehir","Timerkhan","Nur","Cyrus","Emilia","Astral"};
Fx_Wizards = {"Gurvilin","Razzak","Maahir","Faiz","Sufi","Tan"};
Fx_Overlords = {"Agbeth","Ranleth","ThralsaiMP","Urunir","Menel","Ferigl"};
Fx_Tricksters = {"Sephinroth","Eruina","Ohtarig","Sylsai","Darkstorm","AlmegirMP"								,"Thralsai","Almegir"};
Fx_Warlocks = {"Raelag","Kastore","Kelodin","ShadwynMP","Dalom","Inagost"										,"Shadwyn","Raelag_A1","Segref","Ohtar","Eruina_A1"};
Fx_Engineers = {"Wulfstan","Rolf","Maximus","Tazar","Ufretin","Skeggy"};
Fx_Runemages = {"Hangvul","KingTolghar","Ingvar","Bersy","Ottar","Una"};
Fx_Flamekeepers = {"Vilma","Bart","Hangvul2","Brand","Egil","Vegeyr"};
Fx_Chieftains = {"Hero1","Hero4","Hero5","Hero6","Hero8","Hero9","Gottai","GottaiMP","Crag","Azar","Kraal","Kunyak","Matewa","Quroq"};
Fx_Shamans = {"KujinMP","Shiva","Hero7","Mokka","Kujin"};
Fx_Witches = {"Hero2","Hero3","Zouleika","Erika"};

Fx_ClassesCount = 24

Fx_ClassesList = {
	Fx_Renegades, Fx_Knights, Fx_Heretics,
	Fx_Rangers, Fx_Avengers, Fx_Druids,
	Fx_Demonlords, Fx_Gatekeepers, Fx_Sorcerers,
	Fx_DeathKnights, Fx_Necromancers, Fx_Nethermages,
	Fx_Enchanters, Fx_Conjurers, Fx_Wizards,
	Fx_Overlords, Fx_Tricksters, Fx_Warlocks,
	Fx_Engineers, Fx_Runemages, Fx_Flamekeepers,
	Fx_Chieftains, Fx_Shamans, Fx_Witches
};

Fx_Heroes = {}
for _, class in Fx_ClassesList do
	for _, hero in class do
		Fx_Heroes[length(Fx_Heroes)] = hero
	end
end