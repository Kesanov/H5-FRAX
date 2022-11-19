----------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - CORE
----------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus

----------------------------------------------------------------------------------------------------------------------------------------------------
--VARIABLES
----------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO starting item helm of chaos?

--Settings
H55_Switch = 1;
H55_Difficulty = GetDifficulty();
H55_EnableModes = 1;
H55_GameMode = 0;
H55_MapType = "";
H55_AmountCrashes = 0;
H55_CycleSpeed = 2;
H55_PuzzleQuest = 0;
H55_DEBUG = {0,"",0,""};
H55_DbgTxt = {0,"",0,""};
H55_Sign_Queue = {0,0,0,0,0,0,0,0};
H55_MsgSleep = 7; H55_MsgTime = 7; H55_MsgDelay = 8;
H55_Day = 1; H55_Week = 1; H55_Month = 1; H55_Workday = 1;
H55_DailyEventsCounter = {1,1,1,1,1,1,1,1};
H55_BankDay = 0;
H55_StaticBanks = 0;
H55_NewDayTrigger = 0; H55_SecNewDayTrigger = 0; H55_ThrNewDayTrigger = 0; H55_FrtNewDayTrigger = 0; H55_FifNewDayTrigger = 0;
H55_DelayedVariables = 0;
H55_AdvMapProcessed = 0;
H55_GenerateMixedStacks = 1; H55_ForceMixedStacks = 0; H55_AskForMixedStacks = 0; H55_SkipModifyStackSize = 0; H55_MixedByMapmixer = 0; H55_MixingStacksComplete = 0;
H55_MixStacksThreshold = 200;
H55_NeutralStackSize = 1;
H55_BanksDifficulty = 1;
H55_LowResGame = 0;
H55_AICheatMode = 4;
H55_ForceAIFix = 0;
H55_NoAutoTeamHumans = 0;
-- H55_AIHandicap = 0;
H55_TownGateEnabled = 0;
H55_TownConvEnabled = 0;
H55_AmountExtraTownsDwellings = 1;
H55_GovernanceEnabled = 0;
H55_GovernorExpCoef = 1;
H55_MineControl = 0;
H55_IgnoreExpAdjustment = 0;
--H55_CompetitiveRunelore = 0;
H55_NoMentoring = 0;
H55_BuildNeutralTowns = 0; H55_BuildPlayerTowns = 0;
H55_RPGPotions = 0;
H55_NegativeArtifacts = 1;
H55_MoonDiscQuest = 0; H55_MoonDiscOnARMGMaps = 1;
H55_MoonDiscDiscoveryPattern = random(3)+1;
H55_MoonDiscsFound = 0;
H55_ManaObservatories = 1;
H55_NoArtifactMerchantsInTowns = 0;
H55_ForcedObelisk = 0; H55_ForcedShantiri = 0;
H55_ARMG_Duel = 0;
H55_Duel_HeroLevel = 25;
H55_Duel_WeeksGrowth = 8;
H55_Duel_Relics = 4; H55_Duel_Majors = 8; H55_Duel_Minors = 4;
H55_Duel_BankDifficulty = 3;
H55_DuelExperienceReceived = {}; H55_DuelArtifactsReceived = {};
H55_Duel_MessageFirst = 0; H55_Duel_MessageShown = {0,0,0,0,0,0,0,0};
consoleCmd("setvar dev_console_password = schwinge-des-todes");

--Campaigns and Scenarios

H55_ArtifactsIndexed = 0;
H55_MinorArtifactsUsed = {}; H55_MajorArtifactsUsed = {}; H55_RelicArtifactsUsed = {}; H55_UltimateArtifactsUsed = {};
H55_RemoveTheseArtifactsFromBanks = {};

--Events

H55_SPMapWeeklyEvent = 0;
H55_SPMapDailyEvent = 0;
H55_SPMapContinuesEvent = 0; --add this one to the end of mapscript, otherwise it may not have read the function before it is invoked

--Following functions can be inserted on map level:

--function H55_SPMap_WeeklyEvent()
--end;

--function H55_SPMap_DailyEvent()
--end;

--function H55_SPMap_ContinuesEvent()
--end;

doFile("/scripts/H55-Settings.lua");

--AI

H55_PlayerTeams = {};
H55_PlayerStatus = {0,0,0,0,0,0,0,0};
H55_PlayerFactions = {0,0,0,0,0,0,0,0};
H55_AIStartResources = {10001,10501,10601,10701,10801,10901,11001,20001,20501,20601,20701,20801,20901,21001,30001,30501,30601,30701,30801,30901,31001,50001,50501,50601,50701,50801,50901,51001};
H55_AIStartResourcesNormal = {10000,10500,10600,10700,10800,10900,11000,20000,20500,20600,20700,20800,20900,21000,30000,30500,30600,30700,30800,30900,31000,50000,50500,50600,50700,50800,50900,51000};
H55_AmountAIBankVisits = 0;
H55_AmountCyclesAI = 0;
H55_AIGoesNuclear = 0;

H55_StartBonusGold = {
10500,10600,10700,10800,10900,11000,
20500,20600,20700,20800,20900,21000,
30500,30600,30700,30800,30900,31000,
50500,50600,50700,50800,50900,51000,
10501,10601,10701,10801,10901,11001, 
20501,20601,20701,20801,20901,21001,
30501,30601,30701,30801,30901,31001,
50501,50601,50701,50801,50901,51001
};
					  
H55_StartBonusNormal = {18,19,20,21};
H55_StartBonusHard = {13,14,15,16};
H55_StartBonusImpossible = {8,9,10,11};

H55_StartBonusNormalWO = {33,34,35,36};
H55_StartBonusHardWO = {23,24,25,26};
H55_StartBonusImpossibleWO = {13,14,15,16};

--Neutrals

H55_TownQtyDivisor = 1;
H55_TownQtyBankDifficulty = 0.01;

--Town Gate

H55_TeleportStatus = {};
H55_TownGateOwners = {};
H55_SpinSwitch = 1;

--Town Conversion

H55_TownManageOwners = {};
H55_TownConvOwners = {};
H55_MaxTownsPerFaction = 1;
H55_AmountAIConversions = 0; H55_AmountAIDwellingConversions = 0;
H55_MaxDwellingsT1 = 2; H55_MaxDwellingsT2 = 2; H55_MaxDwellingsT3 = 2; H55_MaxDwellingsT4 = 4;
H55_UniqueDwellings = {};

--Governance

H55_Governors = {};
H55_GovernorsWithTown = {};
H55_TownsWithGovernor = {};
H55_GovernorInaugurationDay = {};
H55_CastleDefenseOwners = {};
H55_MageGuildBonusOwners = {};
H55_SpecialAttackOwners = {}; H55_SpecialKnowledgeOwners = {}; H55_SpecialSpellPowerOwners = {};
H55_RunicShrineBonusOwners = {};
H55_GovernanceTier1 = {}; H55_GovernanceTier2 = {}; H55_GovernanceTier3 = {}; H55_GovernanceTier4 = {}; H55_GovernanceTier5 = {}; H55_GovernanceTier6 = {}; H55_GovernanceTier7 = {};

--Economy

H55_GlobalWeeklyWoodPayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailyWoodPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyOrePayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailyOrePayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyMercuryPayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailyMercuryPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyCrystalPayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailyCrystalPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklySulphurPayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailySulphurPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyGemPayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailyGemPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyGoldPayout = {0,0,0,0,0,0,0,0}; H55_GlobalDailyGoldPayout = {0,0,0,0,0,0,0,0};
--H55_TaxRate = 5;
			
--Supply

H55_SupplierCost = 1000;
H55_MysticalGardens = GetObjectNamesByType("BUILDING_MYSTICAL_GARDEN"); H55_MysticalGardenClaims = {};
H55_Windmills = GetObjectNamesByType("BUILDING_WINDMILL"); H55_WindmillClaims = {};
H55_Waterwheels = GetObjectNamesByType("BUILDING_WATER_WHEEL"); H55_WaterwheelClaims = {};
H55_SiegeWorkshops = GetObjectNamesByType("BUILDING_WARMACHINE_FACTORY"); H55_SiegeWorkshopClaims = {};

H55_MysticalGardensOwned = {}; H55_WeeklyMysticalGardenRes = {};
H55_WindmillsOwned = {}; H55_WeeklyWindmillRes = {}; H55_WeeklyWindmillResQty = {};
H55_WaterwheelsOwned = {};
H55_SiegeWorkshopsOwned = {}; H55_WeeklySiegeWorkshopResQty = {};

H55_DwarvenNetworkOwners = {};
H55_NetworkSkillAmount = {0,0,0,0,0,0,0,0};


--Skills

H55_MentoringOwners = {};


H55_Schools = {
    SKILL_SUMMONING_MAGIC,
    SKILL_DESTRUCTIVE_MAGIC,
    SKILL_DARK_MAGIC,
    SKILL_LIGHT_MAGIC
};

H55_MagicOwners = {
	[SKILL_SUMMONING_MAGIC]   = {{},{},{}},
	[SKILL_DESTRUCTIVE_MAGIC] = {{},{},{}},
	[SKILL_DARK_MAGIC]        = {{},{},{}},
	[SKILL_LIGHT_MAGIC]       = {{},{},{}},
}
H55_ScholarOwners = {
	[SKILL_SUMMONING_MAGIC]   = {{},{},{}},
	[SKILL_DESTRUCTIVE_MAGIC] = {{},{},{}},
	[SKILL_DARK_MAGIC]        = {{},{},{}},
	[SKILL_LIGHT_MAGIC]       = {{},{},{}},
}
H55_WisdomOwners = {}
H55_InsightsOwners = {}
H55_BrillianceOwners = {}


--Town Buildings

H55_HallIntrigueStudent = {};
H55_FountainStudent = {};
H55_PrimalAltarStudent = {};
H55_BrotherhoodStudent = {};
H55_PileSkullsStudent = {};
H55_NecroAmplifyStudent = {};
H55_SacrificialPitStudent = {};

for i, town in GetObjectNamesByType("TOWN") do
	H55_HallIntrigueStudent[town] = {};
	H55_FountainStudent[town] = {};
	H55_PrimalAltarStudent[town] = {};
	H55_BrotherhoodStudent[town] = {};
	H55_PileSkullsStudent[town] = {};
	H55_NecroAmplifyStudent[town] = {};
	H55_SacrificialPitStudent[town] = {};
end;

H55_HallTrialStudent = {}; H55_HallCourageStudent = {}; H55_HallMightStudent = {};
H55_WalkerHutStudent = {};
H55_ElementalAltarStudent = {};
H55_RunicChapelStudent = {};
H55_HorrorHallStudent = {};

--Artifacts

H55_ArtWoodReceived = {}; H55_ArtOreReceived = {}; H55_ArtSulphurReceived = {}; H55_ArtCrystalReceived = {}; H55_ArtGemReceived = {}; H55_ArtMercuryReceived = {};
--H55_EightfoldStaffOwners = {}; H55_TridentStaffOwners = {}; H55_AngelicStaffOwners = {}; H55_VizierStaffOwners = {}; H55_IssusStaffOwners = {};
H55_PathfinderExpReceived = {};
H55_ValorExpReceived = {};
H55_MovePaybackReceived = {ARTIFACT_HELM_OF_CHAOS};
H55_PeltMoveReceived = {}; H55_BootsMoveReceived = {}; H55_GuardianMoveReceived = {};
H55_HatMoveReceived = {}; H55_NecklaceMoveReceived = {};
H55_WarPathMoveReceived = {};
H55_PirateResourcesReceived = {}; H55_PirateGoldReceived = {};
H55_CalhGoldReceived = {};
H55_FlameManaReceived = {};
H55_SwordManaReceived = {};
H55_StickManaReceived = {};
H55_FoldManaReceived = {};
H55_AngelicManaReceived = {};
H55_AxeManaReceived = {};
H55_VizierManaLost = {};
H55_Monk01Wearers = {}; H55_Monk01Interrupters = {};
H55_Monk02Wearers = {}; H55_Monk02Interrupters = {};
H55_CrownWearers = {}; H55_CrownInterrupters = {};
H55_EldritchWearers = {}; H55_EldritchInterrupters = {};
H55_RobeWearers = {}; H55_RobeInterrupters = {};
H55_RunicWearers = {}; H55_RunicInterrupters = {};
H55_AlchemistWearers = {}; H55_AlchemistInterrupters = {};
H55_DailyManaPayout = {};

H55_CIResurrectAir = {}; H55_CIResurrectEarth = {}; H55_CIResurrectFire = {}; H55_CIResurrectWater = {};
H55_RefuseCIResurrectAir = {}; H55_RefuseCIResurrectEarth = {}; H55_RefuseCIResurrectFire = {}; H55_RefuseCIResurrectWater = {};
H55_LegionT1Received = {}; H55_LegionT2Received = {}; H55_LegionT3Received = {}; H55_LegionT4Received = {}; H55_LegionT5Received = {}; H55_LegionT6Received = {}; H55_LegionT7Received = {};

H55_DragonishSetOwners = {}; H55_DragonishHalfSetOwners = {};
H55_NecroSetOwners = {}; H55_NecroHalfSetOwners = {};
H55_LionSetOwners = {};
H55_VestmentSetOwners = {};
H55_DwarvenSetOwners = {}; H55_DwarvenHalfSetOwners = {};
H55_SarIssusSetOwners = {}; H55_SarIssusPlusSetOwners = {};
H55_MonkSetOwners = {}; H55_MonkHalfSetOwners = {};
H55_GuardianSetOwners = {}; H55_GuardianHalfSetOwners = {};
H55_SaintSetOwners = {};
H55_ManaPotionOwners = {}; H55_MovePotionDrinkers = {}; H55_MovePotionOwners = {}; H55_ResurrectPotionOwners = {};
--H55_SentinelOwners = {};
H55_BootsPenaltyOwners = {};
H55_PirateSetOwners = {}; H55_PirateHalfSetOwners = {};
H55_FizbinOwners = {}; H55_ForgingOwners = {};
H55_HeavenlyOwners = {};
H55_UnlootableOwners = {}; H55_UnlootableAIOwners = {};
H55_StartPotionOwners = {}; H55_StartPotionGlobalOwners = {};

--Specs

H55_BKnightSwitch = {0,0,0,0,0,0,0,0};
H55_FireSwitch = {0,0,0,0,0,0,0,0};
H55_WolfSwitch = {0,0,0,0,0,0,0,0};
H55_ShamanPattern = {};
H55_StatSpecNumbersB = {8,16,24,32,40,48,56,62};
H55_StatSpecNumbersA = {7,14,21,28,35,42,49,56};
H55_StatSpecNumbersC = {6,12,18,24,32,38,44,50};
H55_StatSpecReceived = {};
--H55_DivineSpecialists = {"Nicolai","Rissa","Jenova","Hangvul2","Agbeth","Archilus","Harkenraz","GottaiMP"};
H55_StartMoraleSpecialists = {"Nicolai","Jenova","Harkenraz","Rissa"};
H55_StartMoraleReceived = {};
H55_CrystalMoraleReceived = {};

H55_WeeklyRecruitsTable = {};
H55_WeeklyReinforceTable = {};
H55_InfernalLoomTable = {};
H55_DefendUsTable = {};
H55_SpoilsReceived = {};
H55_ElementalsReceived = {};
H55_SpellcastersReceived = {};
H55_MoonDiscReceived = {};

H55_WeeklyEventsDone = {};

print("H55 Lua Library and Tables initialized");



function H55_GetMapType()
	local answer = "";
	local map = GetMapDataPath();
	local campaign,bg01,nd01 = string.match(map,"Scenario");
	local scenario,bg02,nd02 = string.match(map,"SingleMissions");
	local multiplayer,bg03,nd03 = string.match(map,"Multiplayer");
	local rmg,bg04,nd04 = string.match(map,"RMG");
	if campaign ~= nil then
		answer = "Campaign";
	elseif scenario ~= nil then
		answer = "Scenario";
	elseif multiplayer ~= nil then
		answer = "Multiplayer";
	elseif rmg ~= nil then
		answer = "RMG";
	else
		answer = "Scenario";
		print("H55 Map type could not be determined, map type is set to scenario.");
	end;
	return answer;
end;

function H55_UpdateMapType()
	H55_MapType = H55_GetMapType();
end;

function H55_GetDistance(object1,object2)
	local x1,y1,z1 = GetObjectPosition(object1)
	local x2,y2,z2 = GetObjectPosition(object2)
	return sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)) + ((z1 == z2) and 0 or 1000)
end

function H55_GetDistanceUG(object1,object2)
	local x1,y1,z1 = GetObjectPosition(object1);
	local x2,y2,z2 = GetObjectPosition(object2);
	local a = 0;
	local b = 0;
	local distance = 0;
	if x1 > x2 then a = x1-x2 elseif x2 > x1 then a = x2-x1 end;
	if y1 > y2 then b = y1-y2 elseif y2 > y1 then b = y2-y1 end;
	if a == 0 then 
		distance = b; 
	elseif b == 0 then 
		distance = a;
	else
		local pythagoras1 = a*a;
		local pythagoras2 = b*b;
		distance = math.round(math.sqrt(pythagoras1+pythagoras2));
	end;
	if z1 == z2 then 
		distance = distance + 10;
	end;
	return distance;
end;

function H55_TakeResources(PlayerID,ResourceID,chosenamount,AffectedHero)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount - chosenamount;
	if newamount < 0 then
		SetPlayerResource (PlayerID,ResourceID,0,AffectedHero);
	else
		SetPlayerResource (PlayerID,ResourceID,newamount,AffectedHero);
	end;
end;

function H55_GiveResources(PlayerID,ResourceID,chosenamount,AffectedHero)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount + chosenamount;
	if newamount > 0 then
		SetPlayerResource (PlayerID,ResourceID,newamount,AffectedHero);
	end;
end;

function H55_TakeResourcesSilent(PlayerID,ResourceID,chosenamount)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount - chosenamount;
	if newamount < 0 then
		SetPlayerResource (PlayerID,ResourceID,0);
	else
		SetPlayerResource (PlayerID,ResourceID,newamount);
	end;
end;

function H55_GiveResourcesSilent(PlayerID,ResourceID,chosenamount)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount + chosenamount;
	if newamount > 0 then
		SetPlayerResource (PlayerID,ResourceID,newamount);
	end;
end;

function H55_ArmyInfo(hero)
	local units = {};
	local count = {};
	units[0], units[1], units[2], units[3], units[4], units[5], units[6] = GetHeroCreaturesTypes(hero);
		for i = 0,6 do
			if(units[i] ~= 0) then
				count[i] = GetHeroCreatures(hero,units[i]);
			else
				count[i] = 0;
			end;
		end;
	return units,count;
end;

function H55_ArmyInfoSimple(hero)
	local units = {};
	units[0], units[1], units[2], units[3], units[4], units[5], units[6] = GetHeroCreaturesTypes(hero);
	return units;
end;

-- function H55_GetHeroTaxRate(hero)
	-- local units,count = H55_ArmyInfo(hero)
	-- local army = 0;
	-- local level = GetHeroLevel(hero);
	-- for i = 0,6 do
		-- if units[i] ~= 0 then
			-- army = army + count[i];
		-- end;
	-- end;
	-- local tax = math.round( (level+math.sqrt(army)) * H55_TaxRate);
	-- return tax;
-- end;

function H55_MonsterInfo(creature)
	local units = {};
	local creatures = {};
	units[0], units[1], units[2], units[3], units[4], units[5], units[6] = GetObjectCreaturesTypes(creature)
	for i, unit in units do
		if unit and unit ~= 0 then
			creatures[unit] = GetObjectCreatures(creature,unit);
		end;
	end;
	return creatures;
end;

function H55_MonsterInfo(creature)
	local units, creatures = {}, {}
	-- BLACK MAGIC, GetObjectCreaturesTypes returns Int
	units[0], units[1], units[2], units[3], units[4], units[5], units[6] = GetObjectCreaturesTypes(creature)
	for _, typ in units do
		if typ and typ ~= 0 then
			creatures[typ] = GetObjectCreatures(creature,typ)
		end
	end
	return creatures
end

function H55_IncStackSize(multiplier)
	print("H55 Increasing Neutral stack sizes...WARNING: The game might lag for several minutes, the job is done when you can open your townscreen.");
	BlockGame();
	for _, object in GetObjectNamesByType("CREATURE") do
		for typ, count in H55_MonsterInfo(object) do
			local amount = H55_Round((count*H55_NeutralStackSize)-count);
			if amount > 0 then
				AddObjectCreatures(object,typ,amount)
			else
				RemoveObjectCreatures(object,typ,-amount)
			end
		end;
	end;
	UnblockGame();
	print("H55 Game Unblocked...");
end

function H55_GetMineGuardAmount(faction,day)
	local today = H55_Day;
	local dif = today-day;
	if dif == 0 or dif < 0 then dif = 1 end;
	if dif >= 14 then dif = 14 end;
	local multiplier = dif * (1/14);
	local t1 = random(3)+ (math.ceil (multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][1])));
	local t2 = random(3)+ (math.ceil (multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][2])));
	local t3 = random(3)+ (math.ceil (multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][3])));
	local t4 = random(3)+ (math.floor(multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][4])));
	local t5 = random(3)+ (math.floor(multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][5])));
	local t6 = random(2)+ (math.floor(multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][6])));
	local t7 = random(2)+ (math.floor(multiplier * ((H55_Day/7) * H55_CreaturesGrowth[faction][7])));
	if H55_Day < 28 then
		t4 = 0; t5 = 0; t6 = 0; t7 = 0;
	elseif H55_Day >= 28 and H55_Day < 84 then
		t5 = 0; t6 = 0; t7 = 0;
	elseif H55_Day >= 84 and H55_Day < 140 then
		t6 = 0; t7 = 0;
	elseif H55_Day >= 140 and H55_Day < 224 then
		t7 = 0;
	end;
	return t1,t2,t3,t4,t5,t6,t7;
end;

function H55_TriggerToObjectType(object_type,trigger_type,handler,prevent_disabling)
    local names = GetObjectNamesByType(object_type);
    for i,name in names do
        SetTrigger(trigger_type,name,handler);
        if(prevent_disabling==nil) then
            SetObjectEnabled(name,nil);
        end;
    end;
end;

function H55_GetAmountActivePlayers()
	local active = 0;
	for i=1,8 do
		if (GetPlayerState(i) == 1) then
			active = active+1;
		end;
	end;
	return active;
end;

function H55_ConstructNeutralTowns(level)
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == 0 then
			if level == 1 then		
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);			
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);				
			elseif level == 2 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			elseif level == 3 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			elseif level == 4 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);				
			elseif level >= 5 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);	
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);
			end;
		end;
	end;
end;

function H55_ConstructPlayerTowns(level)
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) ~= 0 then
			if level == 1 then		
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);			
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);				
			elseif level == 2 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			elseif level == 3 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			elseif level == 4 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);				
			elseif level >= 5 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);	
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);				
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);
			end;
		end;
	end;
end;

function H55_BuildMyTowns(player)
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == player then
			UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);				
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);				
			UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);	
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);	
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);			
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);			
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);
		end;
	end;
end;

function H55_ProtectedSign(message,object,player,sleeptime,messagetime)
	while 1 do
		if H55_Sign_Queue[player] == 0 then
			H55_Sign_Queue[player] = 1;
			ShowFlyingSign({message},object,player,messagetime);
			sleep(sleeptime);
			H55_Sign_Queue[player] = 0;
			break;
		end;
		sleep(H55_MsgDelay);
	end;
end;

function H55_ProtectedSignAdd(message,amount,object,player,sleeptime,messagetime)
	while 1 do
		if H55_Sign_Queue[player] == 0 then
			H55_Sign_Queue[player] = 1;
			ShowFlyingSign({message; num=amount},object,player,messagetime);
			sleep(sleeptime);
			H55_Sign_Queue[player] = 0;
			break;
		end;
		sleep(H55_MsgDelay);
	end;
end;

function H55_ProtectedSignPrisoners(message,amount,tier,object,player,sleeptime,messagetime)
	while 1 do
		if H55_Sign_Queue[player] == 0 then
			H55_Sign_Queue[player] = 1;
			ShowFlyingSign({message; num=amount, level=tier},object,player,messagetime);
			sleep(sleeptime);
			H55_Sign_Queue[player] = 0;
			break;
		end;
		sleep(H55_MsgDelay);
	end;
end;

function H55_ProtectedSignSpell(message,spellid,object,player,sleeptime,messagetime)
	while 1 do
		if H55_Sign_Queue[player] == 0 then
			H55_Sign_Queue[player] = 1;
			ShowFlyingSign({message; name=spellid},object,player,messagetime);
			sleep(sleeptime);
			H55_Sign_Queue[player] = 0;
			break;
		end;
		sleep(H55_MsgDelay);
	end;
end;

function H55_CancelMixing()
	H55_MixingStacksComplete = 1;
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--DUEL FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_PrepareDuel()
	local towns = GetObjectNamesByType("TOWN");
	local actualgrowth = (H55_Duel_WeeksGrowth-1)
	local attackbonus = math.round(1+(H55_Duel_HeroLevel/7));
	H55_TownConvEnabled = 0;
	H55_GovernanceEnabled = 0;
	H55_StaticBanks = 1;
	H55_BankDay = math.round(H55_Duel_BankDifficulty*(H55_Duel_WeeksGrowth*7));
	for i,town in towns do
		if GetObjectOwner(town) ~= 0 then
			local townrace = H55_GetTownRace(town);	
			local growth_t1 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][1]);
			local growth_t2 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][2]);
			local growth_t3 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][3]);
			local growth_t4 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][4]);
			local growth_t5 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][5]);
			local growth_t6 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][6]);
			local growth_t7 = math.round((1+(2*actualgrowth))*H55_CreaturesGrowth[townrace][7]);
			--UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
			--UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);				
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);				
			--UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
			--UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
			--UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);	
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);	
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);			
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);			
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);
			DestroyTownBuildingToLevel(town,TOWN_BUILDING_TAVERN,0,0);
			DestroyTownBuildingToLevel(town,TOWN_BUILDING_MARKETPLACE,0,0);
			DestroyTownBuildingToLevel(town,TOWN_BUILDING_TOWN_HALL,0,0);	
			if townrace == 1 then
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_1,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_5,0,0);
			end;	
			if townrace == 2 then			
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_0,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_5,0,0);
			end;			
			if townrace == 3 then
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_1,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_2,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_5,0,0);				
			end;
			if townrace == 4 then
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_1,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_2,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_3,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);				
			end;			
			if townrace == 5 then
				--UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_2,1);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_1,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_2,0,0);				
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);				
			end;			
			if townrace == 6 then
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_1,1,0);				
				--DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_5,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_3,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_6,0,0);				
			end;
			if townrace == 7 then
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);		
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_2,0,0);				
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_3,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_5,0,0);				
			end;
			if townrace == 8 then
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);		
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1);
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0);	
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_2,0,0);				
				DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_5,0,0);				
			end;
			sleep(1);
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) + growth_t1);	
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) + growth_t2);
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) + growth_t3);
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) + growth_t4);
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) + growth_t5);
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) + growth_t6);
			SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) + growth_t7);
		end;
	end;
	local qty_wood = 50+(actualgrowth*8);
	local qty_special = 50+(actualgrowth*6);
	local qty_gold = actualgrowth*36000;			
	for i=1,8 do
		if (GetPlayerState(i) == 1) then
			local heroes = GetPlayerHeroes(i);
			H55_GiveResourcesSilent(i,0,qty_wood)
			H55_GiveResourcesSilent(i,1,qty_wood)				
			H55_GiveResourcesSilent(i,2,qty_special)	
			H55_GiveResourcesSilent(i,3,qty_special)
			H55_GiveResourcesSilent(i,4,qty_special)
			H55_GiveResourcesSilent(i,5,qty_special)
			H55_GiveResourcesSilent(i,6,qty_gold)		
			local dancers = math.round((H55_Duel_WeeksGrowth/2)*9);
			local skeletons = math.round((H55_Duel_WeeksGrowth/2)*25);
			local ghosts = math.round((H55_Duel_WeeksGrowth/2)*9);
			local wights = math.round((H55_Duel_WeeksGrowth/2)*2);
			for i,hero in heroes do
				if H55_GetHeroClass(hero) == "Ranger" then
					AddHeroCreatures(hero,45,dancers);
				end;	
				if H55_GetHeroClass(hero) == "Deathknight" then
					AddHeroCreatures(hero,29,skeletons);
				end;	
				if H55_GetHeroClass(hero) == "Necromancer" then
					AddHeroCreatures(hero,33,ghosts);
				end;
				if H55_GetHeroClass(hero) == "Nethermage" then
					AddHeroCreatures(hero,39,wights);
				end;
				if H55_GetHeroClass(hero) == "Wizard" then
					ChangeHeroStat(hero,1,4);
					ChangeHeroStat(hero,2,4);						
				end;					
			end;
			
			local tier1 = math.round((H55_Duel_WeeksGrowth/2)*25)
			local tier2a = math.round((H55_Duel_WeeksGrowth/2)*15)
			local tier2b = math.round((H55_Duel_WeeksGrowth/2)*9)
			local tier3 = math.round((H55_Duel_WeeksGrowth/2)*7)
			local tier4 = math.round((H55_Duel_WeeksGrowth/2)*5)
			local tier4a = math.round((H55_Duel_WeeksGrowth/2)*4)
			local tier5 = math.round((H55_Duel_WeeksGrowth/2)*3)
			local tier6 = math.round((H55_Duel_WeeksGrowth/2)*2)
			local tier7 = math.round((H55_Duel_WeeksGrowth/2)*1)

			local tier_w = math.round(0.9*(H55_Duel_WeeksGrowth*12))
			local tier_e = math.round(1*(H55_Duel_WeeksGrowth*8))
			local tier_m = math.round(1*(H55_Duel_WeeksGrowth*6))
			local tier_d = math.round(0.75*(H55_Duel_WeeksGrowth*4))
			local tier_a = math.round(0.85*(H55_Duel_WeeksGrowth*4))
			
			if table.contains(heroes,"Xerxon") then
				AddHeroCreatures("Xerxon",90,tier_d);
			end;
			if table.contains(heroes,"Thant") then
				AddHeroCreatures("Thant",116,tier_m);
			end;			
			if table.contains(heroes,"Menel") then
				AddHeroCreatures("Menel",115,tier_a);
			end;
			-- if table.contains(heroes,"Emilia") then
			-- 	AddHeroCreatures("Emilia",114,tier_a);
			-- end;
			if table.contains(heroes,"Melodia") then
				AddHeroCreatures("Melodia",86,tier_e);
			end;
			if table.contains(heroes,"KingTolghar") then
				AddHeroCreatures("KingTolghar",88,tier_e);
			end;
			if table.contains(heroes,"Calid2") then
				AddHeroCreatures("Calid2",85,tier_e);
			end;
			if table.contains(heroes,"Kunyak") then
				AddHeroCreatures("Kunyak",87,tier_e);
			end;
			if table.contains(heroes,"RedHeavenHero03") then
				AddHeroCreatures("RedHeavenHero03",113,tier_w);
			end;
			if table.contains(heroes,"Cyrus") then
				AddHeroCreatures("Cyrus",65,tier5);
			end;	
			if table.contains(heroes,"Gurvilin") then
				AddHeroCreatures("Gurvilin",59,tier2a);
			end;
			if table.contains(heroes,"Grok") then
				AddHeroCreatures("Grok",17,tier2a);
			end;
			if table.contains(heroes,"Nemor") then
				AddHeroCreatures("Nemor",33,tier2b);
			end;
			if table.contains(heroes,"Vidomina") then
				AddHeroCreatures("Vidomina",37,tier5);
			end;
			if table.contains(heroes,"Nimbus") then
				AddHeroCreatures("Nimbus",29,tier1);
			end;	
			if table.contains(heroes,"Straker") then
				AddHeroCreatures("Straker",30,tier2b);
			end;		
			if table.contains(heroes,"Pelt") then
				AddHeroCreatures("Pelt",39,tier6);
			end;
			if table.contains(heroes,"GodricMP") then
				AddHeroCreatures("GodricMP",9,tier5);
			end;	
			if table.contains(heroes,"Mephala") then
				AddHeroCreatures("Mephala",53,tier6);
			end;
			if table.contains(heroes,"Ildar") then
				AddHeroCreatures("Ildar",49,tier4a);
			end;
			if table.contains(heroes,"Gem") then
				AddHeroCreatures("Gem",43,tier2a);
			end;
			if table.contains(heroes,"Calh") then
				AddHeroCreatures("Calh",15,tier2a);
			end;
			if table.contains(heroes,"Malustar") then
				AddHeroCreatures("Malustar",25,tier6);
			end;		
			if table.contains(heroes,"Tamika") then
				AddHeroCreatures("Tamika",35,tier4);
			end;
			if table.contains(heroes,"Maximus") then
				AddHeroCreatures("Maximus",98,tier3);
			end;	
			if table.contains(heroes,"Shadwyn") then
				AddHeroCreatures("Shadwyn",81,tier6);
			end;	
			if table.contains(heroes,"Ferigl") then
				AddHeroCreatures("Ferigl",77,tier6);
			end;	
			if table.contains(heroes,"Archilus") then
				AddHeroCreatures("Archilus",H55_Creatures[4][7][1],tier7);
			end;		
			if table.contains(heroes,"Nicolai") then
				AddHeroCreatures("Nicolai",H55_Creatures[1][7][1],tier7);
			end;
			if table.contains(heroes,"Isabell") then
				AddHeroCreatures("Isabell",H55_Creatures[1][7][1],tier7);
			end;
			if table.contains(heroes,"Hangvul2") then
				AddHeroCreatures("Hangvul2",H55_Creatures[7][7][1],tier7);
			end;
			if table.contains(heroes,"Rissa") then
				AddHeroCreatures("Rissa",H55_Creatures[5][7][1],tier7);
			end;
			if table.contains(heroes,"Agbeth") then
				AddHeroCreatures("Agbeth",H55_Creatures[6][7][1],tier7);
			end;
			if table.contains(heroes,"Harkenraz") then
				AddHeroCreatures("Harkenraz",H55_Creatures[3][7][1],tier7);
			end;
			if table.contains(heroes,"Jenova") then
				AddHeroCreatures("Jenova",H55_Creatures[2][7][1],tier7);
			end;
			if table.contains(heroes,"GottaiMP") then
				AddHeroCreatures("GottaiMP",H55_Creatures[8][7][1],tier7);
			end;			
			if table.contains(heroes,"Josephine") then
				AddHeroCreatures("Josephine",88,tier_e);
			end;	
			if table.contains(heroes,"Vilma") then
				AddHeroCreatures("Vilma",88,tier_e);
			end;
			if table.contains(heroes,"Thralsai") then
				AddHeroCreatures("Thralsai",87,tier_e);
			end;
			if table.contains(heroes,"Duncan") then
				AddHeroCreatures("Duncan",86,tier_e);
			end;
			if table.contains(heroes,"Azar") then
				AddHeroCreatures("Azar",87,tier_e);
			end;
			if table.contains(heroes,"Kyrre") then
				AddHeroCreatures("Kyrre",86,tier_e);
			end;			
		end;
	end;	
	if H55_IsThisAIPlayer(2) then
		local heroes = GetPlayerHeroes(2)
		for i, hero in heroes do
			GiveExp(hero,H55_ExpTable[H55_Duel_HeroLevel]);
		end;
	end;
end;

function H55_DetectDuel()
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	--local cartographers = table.length(GetObjectNamesByType("BUILDING_CARTOGRAPHER")); --doesn't work
	local mines = table.length(GetObjectNamesByType("BUILDING_ABANDONED_MINE"));
	local mills = table.length(GetObjectNamesByType("BUILDING_SAWMILL"));
	local pits = table.length(GetObjectNamesByType("BUILDING_ORE_PIT"));
	local huts = table.length(GetObjectNamesByType("BUILDING_WITCH_HUT"));
	if floorsize == 0 and mapsize == 72 and mills == 0 and pits == 0 and mines >= 5 and huts >= 5 then
		H55_ARMG_Duel = 1;
	end;
end;

function H55_DuelStart()
	if H55_Duel_MessageFirst == 0 then
		H55_PrepareDuel();
		H55_Duel_MessageFirst = 1;
	end;
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--AI FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_DetectPAI(player)
	if (GetPlayerState(player) == 1) then
		local heroes = GetPlayerHeroes(player);
		if heroes ~= nil then
			for i, hero in heroes do
				EnableHeroAI(hero,not nil);
				H55_PlayerStatus[player] = 1;
			end;
		elseif H55_MapType == "Campaign" and player ~= 1 and H55_PlayerStatus[1] == 0 then
			H55_PlayerStatus[player] = 1;
		else
			local modetoken = GetPlayerResource(player,6);
			if table.contains(H55_AIStartResources,modetoken) then
				H55_PlayerStatus[player] = 1;
			else
				H55_PlayerStatus[player] = 0;
			end;
		end;
	else
		H55_PlayerStatus[player] = 2;
	end;
end;

function H55_DetectP1AI()
	H55_DetectPAI(PLAYER_1)
end

function H55_DetectP2AI()
	H55_DetectPAI(PLAYER_2)
end

function H55_DetectP3AI()
	H55_DetectPAI(PLAYER_3)
end

function H55_DetectP4AI()
	H55_DetectPAI(PLAYER_4)
end

function H55_DetectP5AI()
	H55_DetectPAI(PLAYER_5)
end

function H55_DetectP6AI()
	H55_DetectPAI(PLAYER_6)
end

function H55_DetectP7AI()
	H55_DetectPAI(PLAYER_7)
end

function H55_DetectP8AI()
	H55_DetectPAI(PLAYER_8)
end

function H55_DetectPlayerFactions()
	local towns = GetObjectNamesByType("TOWN");
	for i=1,8 do
		for j, town in towns do
			if GetObjectOwner(town) == i then
				H55_PlayerFactions[i] = H55_GetTownRace(town);
			end;
		end;
	end;
	for i=1,8 do
		if H55_PlayerFactions[i] == 0 and GetPlayerState(i) == 1 then
			local heroes = GetPlayerHeroes(i);
			if heroes ~= nil then
				H55_PlayerFactions[i] = (H55_GetHeroRaceNum(heroes[0]));
			end;
		end;
	end;
end;

function H55_GetPlayerRace(player)
	local answer = H55_PlayerFactions[player];
	return answer;
end;

function H55_UpdateGameMode()
	local gamemode = 1;
	for i=1,8 do	
		local modetoken = GetPlayerResource(i,6);
		if table.contains(H55_AIStartResources,modetoken) == nil and H55_PlayerStatus[i] == 1 then
			gamemode = 0;
		end;
	end;
	H55_GameMode = gamemode;
	--print(H55_GameMode);
end;

function H55_UpdateTownQtyDifficulty()
	local towns = GetObjectNamesByType("TOWN");
	local addedamount = 0;
	H55_TownQtyDivisor = (table.length(towns))/(H55_GetAmountActivePlayers());
	H55_MaxTownsPerFaction = math.round(H55_AmountExtraTownsDwellings+H55_TownQtyDivisor);
	H55_MaxDwellingsT1 = math.round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	H55_MaxDwellingsT2 = math.round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	H55_MaxDwellingsT3 = math.round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	H55_MaxDwellingsT4 = 2 + math.round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	if H55_TownQtyDivisor >= 2 and H55_TownQtyDivisor < 3 then H55_TownQtyBankDifficulty = 0.02 end;
	if H55_TownQtyDivisor >= 3 and H55_TownQtyDivisor < 4 then H55_TownQtyBankDifficulty = 0.03 end;
	if H55_TownQtyDivisor >= 4 and H55_TownQtyDivisor < 5 then H55_TownQtyBankDifficulty = 0.04 end;
	if H55_TownQtyDivisor >= 5 then H55_TownQtyBankDifficulty = 0.05 end;
	if table.containsamount(H55_PlayerFactions,1) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,2) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,3) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,4) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,5) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,6) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,7) >= 2 then addedamount = addedamount+1 end;
	if table.containsamount(H55_PlayerFactions,8) >= 2 then addedamount = addedamount+1 end;
	if addedamount == 1 then H55_AmountExtraTownsDwellings = H55_AmountExtraTownsDwellings+1 end;
	if addedamount >= 2 then H55_AmountExtraTownsDwellings = H55_AmountExtraTownsDwellings+2 end;
end;

function H55_IsThisAIPlayer(player)
	local answer = 0;
	if H55_PlayerStatus[player] == 1 then
		answer = 1;
	end;
	return answer;
end;

-- function H55_DetectTeamConfig()
	-- local teamsituation = 0;

	-- consoleCmd("bindsection combat_screen");
	-- consoleCmd("unbind show_console '`'");
	-- local amounthuman = H55_ContainsAmount(H55_PlayerStatus,0);
	-- local amountai = H55_ContainsAmount(H55_PlayerStatus,1);
	-- --if amounthuman == amountai then teamsituation = 1 end;
	-- if amounthuman == 2 and amountai >= 2 then teamsituation = 1 end;
	-- if amounthuman == 3 and amountai >= 3 then teamsituation = 1 end;
	-- if amounthuman == 4 and amountai == 4 then teamsituation = 1 end;
	-- if amounthuman == 1 and amountai >= 2 then teamsituation = 2 end;
	-- return teamsituation;
-- end;

function H55_GetAllHeroes()
	local all = {};
	for i=1,8 do
		if (GetPlayerState(i) == 1) then
			local heroes = GetPlayerHeroes(i)
			local n = table.length(heroes);
			if n == 1 then
				table.inject(all,heroes[0]);
			elseif n >= 2 then
				local qty = n-1;
				for j = 0,qty do
					table.inject(all,heroes[j]);
				end;
			end;
		end;
	end;
	return all;
end;

function H55_GetPlayerTeam(player)
	--if  H55_Day >= 2 or H55_GameMode >= 2 then
		local team = H55_PlayerTeams[player];
		return team;
	-- else
		-- print("H55_GetPlayerTeam workaround can only be invoked on Day 2 or later!")
		-- return nil;
	-- end;
end;

function H55_GetObjectOwningTeam(object)
	local owner = GetObjectOwner(object);
	local team = H55_GetPlayerTeam(owner);
	return team;
end;

function H55_TeamAI()
	local count = 1;
	for i=1,8 do
		if H55_PlayerStatus[i] == 0 then
			count = count + 1
		end;
	end;
	for i=1,8 do
		if H55_PlayerStatus[i] == 1 then
			SetPlayerTeam(i,count)
			H55_PlayerTeams[i] = count;
		end;
	end;
	print("H55 All AI Players have allied");
end;

function H55_PrintArtefacts(hero)
	for i=0,1000 do
		if HasArtefact(hero, i) then print(i) end
	end
end

function H55_TeamHumansvsAI()
	for i=1,8 do
		if H55_PlayerStatus[i] == 0 then SetPlayerTeam(i,1) H55_PlayerTeams[i] = 1 end;
		if H55_PlayerStatus[i] == 1 then SetPlayerTeam(i,2) H55_PlayerTeams[i] = 2 end;
	end;
	print("H55 All AI Players have allied against the human players");
end;

function H55_AIMapSizeCoef()
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	local coef = 1;
	if floorsize == 0 then
		if mapsize == 320 then coef = 1.2 end;
		if mapsize == 256 then coef = 1.1 end;
		if mapsize == 216 then coef = 1.1 end;
	end;
	if floorsize == 1 then
		if mapsize == 320 then coef = 1.3 end;
		if mapsize == 256 then coef = 1.2 end;
		if mapsize == 216 then coef = 1.2 end;
		if mapsize == 176 then coef = 1.1 end;
	end;
	return coef;
end;

function H55_AIDifficultyCoef()
	local coef = 0.3;
	if H55_Difficulty == 3 then coef = 0.6 end;
	if H55_Difficulty == 2 then coef = 0.5 end;
	if H55_Difficulty == 1 then coef = 0.4 end;
	if H55_GovernanceEnabled == 0 then coef = coef - 0.05 end;
	return coef;
end;

function H55_SetEasyExperience()
	local coef = 1;
	if H55_Difficulty == 3 then coef = 1.27 end;
	if H55_Difficulty == 2 then coef = 1.18 end;
	if H55_Difficulty == 1 then coef = 1.09 end;
	SetHeroesExpCoef(coef);
	print("H55 Experience settings ignored");
end;

function H55_AITimerCoef()
	local coef = 1;	
	if H55_Day >= 56 and H55_Day < 112 then coef = 1.1 end;
	if H55_Day >= 112 and H55_Day < 168 then coef = 1.2 end;
	if H55_Day >= 168 and H55_Day < 224 then coef = 1.3 end;
	if H55_Day >= 224 then coef = 1.4 end;
	return coef;
end;

function H55_AICheatSetting()
	local coef = 0.2;
	if H55_AICheatMode == 1 then
		coef = coef + 0.2;
	elseif H55_AICheatMode == 2 then
		coef = coef + 0.4;
	elseif H55_AICheatMode == 3 then
		coef = coef + 0.6;
	elseif H55_AICheatMode == 4 then
		coef = coef + 0.8;
	elseif H55_AICheatMode == 5 then
		coef = coef + 1.0;
	elseif H55_AICheatMode == 6 then
		coef = coef + 1.2;
	else
		coef = coef + 0.2; --if user sets to 0 this function is never invoked
	end;

	return coef;
end;

function H55_FindTownToAttack(hero)
	local myteam = H55_GetObjectOwningTeam(hero);
	local towns = GetObjectNamesByType("TOWN");
	local distance = 1000000;
	local cities_open = {};
	local cities_hero = {};
	local cities_far = {};
	local chosen = nil;
	for i,town in towns do
		if H55_GetObjectOwningTeam(town) ~= myteam then
			local x,y,z = GetObjectPosition(town);
			if CanMoveHero(hero,x,y,z) == not nil then
				table.inject(cities_open,town);
			elseif H55_IsAnyHeroInGate(town) == 1 then
				local enemy = H55_IDHeroInGate(town);
				local x,y,z = GetObjectPosition(enemy);
				if CanMoveHero(hero,x,y,z) == not nil then
					table.inject(cities_hero,enemy);
				end;
			else
				table.inject(cities_far,town);
			end;
		end;
	end;
	if table.length(cities_open) ~= 0 then
		for i, city in cities_open do
			local a,b,c = GetObjectPosition(city);
			local amount = CalcHeroMoveCost(hero,a,b,c) --H55_GetDistanceUG(hero,city);
			if amount < distance then
				distance = amount;
				chosen = city;
			end;
		end;
	elseif table.length(cities_hero) ~= 0 then
		for i, city in cities_hero do
			local a,b,c = GetObjectPosition(city);
			local amount = CalcHeroMoveCost(hero,a,b,c) 
			if amount < distance then
				distance = amount;
				chosen = city;
			end;
		end;
	end;	
	return chosen;
end;

function H55_FindHeroToAttack(hero)
	local myteam = H55_GetObjectOwningTeam(hero);
	local distance = 1000000;
	local targets = H55_GetAllHeroes();
	local enemies = {};
	local chosen = nil;
	for i,target in targets do
		if IsObjectExists(target) and H55_GetObjectOwningTeam(target) ~= myteam then
			local x,y,z = GetObjectPosition(target);
			if CanMoveHero(hero,x,y,z) == not nil then
				table.inject(enemies,target);
			end;
		end;
	end;
	if table.length(enemies) ~= 0 then
		for i, enemy in enemies do
			local a,b,c = GetObjectPosition(enemy);
			local amount = CalcHeroMoveCost(hero,a,b,c);
			if amount < distance then
				distance = amount;
				chosen = enemy;
			end;
		end;
	end;
	return chosen;
end;

function H55_InvokeNuclearOption(player)
	local heroes = GetPlayerHeroes(player);
	for i,hero in heroes do
		if H55_FindTownToAttack(hero) then
			local town = H55_FindTownToAttack(hero);
			local x,y,z = GetObjectPosition(town);
			EnableHeroAI(hero,not nil);
			MoveHero(hero,x,y,z);
		elseif H55_FindHeroToAttack(hero) then
			local enemy = H55_FindHeroToAttack(hero);
			local x,y,z = GetObjectPosition(enemy);
			EnableHeroAI(hero,not nil);
			MoveHero(hero,x,y,z);
		else
			print("H55 AI cannot find any target and is about to die!");
		end;
	end;
	H55_AIGoesNuclear = H55_AIGoesNuclear + 1;
end;

function H55_MixStacks()
	--BlockGame();
	local creatures = GetObjectNamesByType("CREATURE");
	local stacksqty = table.length(creatures);
	print("H55 Mixing "..stacksqty.." neutral stacks!");
	for i = 1,8 do
		local heroes = GetPlayerHeroes(i);
		if GetPlayerState(i) == 1 and H55_IsThisAIPlayer(i) then
			if H55_AskForMixedStacks == 1 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Mixingmany.txt",heroes[0],i,H55_MsgSleep,30);
			else
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Mixingsome.txt",heroes[0],i,H55_MsgSleep,20);
			end;
		end;
	end;
	for i, object in creatures do
		local creatures = H55_MonsterInfo(object);
		local power,unit,typ = 0, 1, {0,0,0};
		local i = 0;
		local stacks = 1+random(3);
		local mix = 1+random(2);
		local skip = 0;
		for unit_, count in creatures do
			i = i + 1;
			local typ_ = H55_CreaturesInv[unit_];
			power = power + count / H55_CreaturesGrowth[typ_[1]][typ_[2]];
			if typ_[2] > typ[2] then
				unit = unit_;
				typ  = typ_;
			end;
			if i > 1 then
				RemoveObjectCreatures(object, unit_, count);
			end;
		end;
		if creatures[unit] >= 7 then
			local removal = math.floor(creatures[unit]*(1-(1/(1+stacks))));
			if H55_NeutralStackSize > 1 then
				removal = math.floor(removal/H55_NeutralStackSize)
				if removal == 0 then removal = 1 end;
			end;
			local result = creatures[unit] - removal;
			if result < 6 then
				removal = creatures[unit]-5-random(2);
			end;
			RemoveObjectCreatures(object,unit,removal);
		elseif creatures[unit] == 1 then
			skip = 1;
		elseif creatures[unit] <= 4 then
			local add = 2+random(2);
			AddObjectCreatures(object,unit,add);
		end;
		local town2 = H55_AlignedTowns[typ[1]][1+random(4)];
		if skip == 0 then
			local strength = H55_NeutralStackSize * power;
			for j = 1,stacks do
				local town = typ[1];
				if j == 2 and mix ~= 1 then town = town2 end;
				local tier = H55_CreaturesInv[unit][2];
				if tier >= 3 then tier = (1+random(3))+(tier-3) else tier = 1+random(tier) end;
				local up = 1+random(3);
				local amount = math.ceil(strength / stacks * H55_CreaturesGrowth[town][tier]);
				if amount <= 4 then amount = 5+random(2) end;
				AddObjectCreatures(object,H55_Creatures[town][tier][up],amount);
			end;
		end;
		--if mod(i, 10) == 0 then print(i); sleep(10) end;
	end;
	H55_MixingStacksComplete = 1;
	--UnblockGame();
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--CONSOLE COMMANDS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_Path()
	local map = GetMapDataPath();
	print(map);
end;

function H55_Log()
	consoleCmd('game_writelog 1');
	print("Game starts logging next turn, info will be saved in console.txt in bin folder after game is closed")
end;

function H55_BackLog()
	consoleCmd("console_size 999");
end;

function H55_FixAI()
	H55_ForceAIFix = 1;
	print("H55 Tomorrow AI will try to find target.")
end;

function H55_FixAICTD()
	for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
		DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
	end;
	for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
		DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
	end;
	print("Done!, all artifact merchants in towns are destroyed, hopefully this fixes your issue")
end;

function H55_NoFog(player)
	OpenCircleFog(0,0,0,9999,player);
	OpenCircleFog(0,0,1,9999,player);
end;

function H55_Speedrun(player)
	local heroes = GetPlayerHeroes(player);
	for i,hero in heroes do
		AddHeroCreatures(hero,84,999);
	end;
end;

function H55_EndlessRun(player)
	local heroes = GetPlayerHeroes(player);
	local hero = heroes[0];
	while 1 do
		if GetHeroStat(hero,STAT_MOVE_POINTS) <= 2499 then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,5000);
		 end;
		sleep(5);
	end;
end;

function H55_IDNearbyTown(hero)
	local towns = GetObjectNamesByType("TOWN");
	local distance = 0;
	local townid = "No Town Nearby";
	for i,town in towns do
		if H55_GetDistance(hero,town) <= 12 then
		 distance = H55_GetDistance(hero,town);
		 townid = town
		end;
	end;
	print(distance);
	print(townid);
end;

function H55_IDHeroes(player)
	local heroes = GetPlayerHeroes(player)
	for i,hero in heroes do
		print(hero);
	end;
end;

function H55_Dbg()
	print("Index: "..H55_DbgTxt[1].." Chapter: "..H55_DbgTxt[2].." Player: "..H55_DbgTxt[3].." Hero: "..H55_DbgTxt[4]);
end;	

function H55_DbgNow()
	H55_DbgTxt = H55_DEBUG;
	print("Index: "..H55_DbgTxt[1].." Chapter: "..H55_DbgTxt[2].." Player: "..H55_DbgTxt[3].." Hero: "..H55_DbgTxt[4]);
end;

function H55_UseNewDayTrigger()
	H55_NewDayTrigger = 1;
end;

function H55_SetSleepTime(num)
	if num >= 0 and num <= 100 then
		H55_CycleSpeed = num;
	else
		print("Value must be between 1 and 100!");
	end;
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--GAMEPLAY FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_IndexArtifacts()
	for i,minorartifact in H55_MinorArtifacts do
		if table.contains(H55_RemoveTheseArtifactsFromBanks,minorartifact) == nil then
			table.inject(H55_MinorArtifactsUsed,minorartifact);
		end;
	end;
	for i,majorartifact in H55_MajorArtifacts do
		if table.contains(H55_RemoveTheseArtifactsFromBanks,majorartifact) == nil then
			table.inject(H55_MajorArtifactsUsed,majorartifact);
		end;
	end;	
	for i,relicartifact in H55_RelicArtifacts do
		if table.contains(H55_RemoveTheseArtifactsFromBanks,relicartifact) == nil then
			table.inject(H55_RelicArtifactsUsed,relicartifact);
		end;
	end;
	for i,ultimateartifact in H55_UltimateArtifacts do
		if table.contains(H55_RemoveTheseArtifactsFromBanks,ultimateartifact) == nil then
			table.inject(H55_UltimateArtifactsUsed,ultimateartifact);
		end;
	end;
	if H55_RPGPotions == 1 then
		table.inject(H55_MinorArtifactsUsed,ARTIFACT_POTION01);
		table.inject(H55_MajorArtifactsUsed,ARTIFACT_POTION02);
		table.inject(H55_RelicArtifactsUsed,ARTIFACT_POTION03);
	end;
	if H55_MapType == "Campaign" then
		table.inject(H55_MinorArtifactsUsed,ARTIFACT_POTION01);
		table.inject(H55_MajorArtifactsUsed,ARTIFACT_POTION02);
	end;
	H55_ArtifactsIndexed = 1;
	print("H55 Day 2 Artifacts indexation complete!")
end;

function H55_GetHeroClass(hero)
	local typ = "Renegade"
	for i=1,H55_ClassesCount do
		if table.contains(H55_ClassesList[i],hero) then
			typ = H55_ClassesNames[i];
			break;
		end;
	end;
	return typ;
end;

function H55_GetHeroClassType(hero)
	local typ = "Mind"
	if table.contains(H55_Renegades,hero)
		or table.contains(H55_Demonlords,hero)
		or table.contains(H55_DeathKnights,hero)
		or table.contains(H55_Rangers,hero)
		or table.contains(H55_Overlords,hero)
		or table.contains(H55_Engineers,hero)
		or table.contains(H55_Enchanters,hero) then typ = "Might"
	elseif table.contains(H55_Heretics,hero)
		or table.contains(H55_Sorcerers,hero)
		or table.contains(H55_Nethermages,hero)
		or table.contains(H55_Flamekeepers,hero)
		or table.contains(H55_Warlocks,hero)
		or table.contains(H55_Druids,hero)
		or table.contains(H55_Shamans,hero)
		or table.contains(H55_Witches,hero)
		or table.contains(H55_Wizards,hero) then typ = "Magic"
	elseif table.contains(H55_Chieftains,hero) then typ = "Chieftain"
	else typ = "Mind"
	end;
	return typ;
end;

function H55_GetTownRace(town)
	local towntype = 0;
	if table.contains(GetObjectNamesByType("TOWN_HEAVEN"),town) then towntype = 1
	elseif table.contains(GetObjectNamesByType("TOWN_PRESERVE"),town) then towntype = 2
	elseif table.contains(GetObjectNamesByType("TOWN_INFERNO"),town) then towntype = 3
	elseif table.contains(GetObjectNamesByType("TOWN_NECROMANCY"),town) then towntype = 4
	elseif table.contains(GetObjectNamesByType("TOWN_ACADEMY"),town) then towntype = 5
	elseif table.contains(GetObjectNamesByType("TOWN_DUNGEON"),town) then towntype = 6
	elseif table.contains(GetObjectNamesByType("TOWN_FORTRESS"),town) then towntype = 7
	elseif table.contains(GetObjectNamesByType("TOWN_STRONGHOLD"),town) then towntype = 8 end;
	return towntype;
end;

function H55_GetTownRaceID(num)
	local townid = TOWN_HEAVEN;
	if num == 1 then townid = TOWN_HEAVEN
	elseif num == 2 then townid = TOWN_PRESERVE
	elseif num == 3 then townid = TOWN_INFERNO
	elseif num == 4 then townid = TOWN_NECROMANCY
	elseif num == 5 then townid = TOWN_ACADEMY
	elseif num == 6 then townid = TOWN_DUNGEON
	elseif num == 7 then townid = TOWN_FORTRESS 
	elseif num == 8 then townid = TOWN_STRONGHOLD end;
	return townid;
end;

function H55_GetTownRaceString(num)
	local townid = "TOWN_HEAVEN";
	if num == 1 then townid = "TOWN_HEAVEN"
	elseif num == 2 then townid = "TOWN_PRESERVE"
	elseif num == 3 then townid = "TOWN_INFERNO" 
	elseif num == 4 then townid = "TOWN_NECROMANCY" 
	elseif num == 5 then townid = "TOWN_ACADEMY" 
	elseif num == 6 then townid = "TOWN_DUNGEON" 
	elseif num == 7 then townid = "TOWN_FORTRESS" 
	elseif num == 8 then townid = "TOWN_STRONGHOLD" end;
	return townid;
end;

function H55_GetHeroRaceNum(hero)
	local race = 0;
	if H55_HavenPhonebook[hero] == 1 then race = 1
	elseif H55_SylvanPhonebook[hero] == 1 then race = 2
	elseif H55_InfernoPhonebook[hero] == 1 then race = 3
	elseif H55_NecropolisPhonebook[hero] == 1 then race = 4
	elseif H55_AcademyPhonebook[hero] == 1 then race = 5
	elseif H55_DungeonPhonebook[hero] == 1 then race = 6
	elseif H55_FortressPhonebook[hero] == 1 then race = 7
	elseif H55_StrongholdPhonebook[hero] == 1 then race = 8 end;
	return race;
end;

function H55_GetHeroRace(hero)
	local race = "Undetermined";
	if H55_HavenPhonebook[hero] == 1 then race = "Haven"
	elseif H55_SylvanPhonebook[hero] == 1 then race = "Sylvan"
	elseif H55_InfernoPhonebook[hero] == 1 then race = "Inferno"
	elseif H55_NecropolisPhonebook[hero] == 1 then race = "Necropolis"
	elseif H55_AcademyPhonebook[hero] == 1 then race = "Academy"
	elseif H55_DungeonPhonebook[hero] == 1 then race = "Dungeon"
	elseif H55_FortressPhonebook[hero] == 1 then race = "Fortress"
	elseif H55_StrongholdPhonebook[hero] == 1 then race = "Stronghold" end;
	return race;
end; 

function H55_GetRaceElementalTypeID(player,cityrace)
	local elemtype = 87;
	if cityrace == 1 and H55_FireSwitch[player] == 1 then elemtype = 85 
	elseif cityrace == 1 then elemtype = 113 
	elseif cityrace == 5 then elemtype = 85
	elseif cityrace == 8 and H55_WolfSwitch[player] == 1 then elemtype = 113	
	elseif cityrace == 8 then elemtype = 87 
	elseif cityrace == 6 then elemtype = 115
	elseif cityrace == 2 and H55_WolfSwitch[player] == 1 then elemtype = 113
	elseif cityrace == 2 then elemtype = 86
	elseif cityrace == 7 and H55_FireSwitch[player] == 1 then elemtype = 85
	elseif cityrace == 7 then elemtype = 88 
	elseif cityrace == 3 then elemtype = 85 
	elseif cityrace == 4 and H55_BKnightSwitch[player] == 1 then elemtype = 90
	elseif cityrace == 4 then elemtype = 116 end;	
	return elemtype;
end;



function H55_GetLegionCap(hero)
	local cap = 0;
	if HasArtefact(hero,ARTIFACT_LEGION_T7,0) then cap = 7
	elseif HasArtefact(hero,ARTIFACT_LEGION_T6,0) then cap = 6
	elseif HasArtefact(hero,ARTIFACT_LEGION_T5,0) then cap = 5
	elseif HasArtefact(hero,ARTIFACT_LEGION_T4,0) then cap = 4
	elseif HasArtefact(hero,ARTIFACT_LEGION_T3,0) then cap = 3
	elseif HasArtefact(hero,ARTIFACT_LEGION_T2,0) then cap = 2
	elseif HasArtefact(hero,ARTIFACT_LEGION_T1,0) then cap = 1 end;
	return cap;
end;

function H55_GetAmountAlignedTowns(racenum)
	local amountcities = 0;
	if racenum == 1 then amountcities = table.length(GetObjectNamesByType("TOWN_HEAVEN"))
	elseif racenum == 5 then amountcities = table.length(GetObjectNamesByType("TOWN_ACADEMY"))
	elseif racenum == 8 then amountcities = table.length(GetObjectNamesByType("TOWN_STRONGHOLD"))
	elseif racenum == 4 then amountcities = table.length(GetObjectNamesByType("TOWN_NECROMANCY"))
	elseif racenum == 6 then amountcities = table.length(GetObjectNamesByType("TOWN_DUNGEON"))
	elseif racenum == 2 then amountcities = table.length(GetObjectNamesByType("TOWN_PRESERVE"))
	elseif racenum == 7 then amountcities = table.length(GetObjectNamesByType("TOWN_FORTRESS"))
	elseif racenum == 3 then amountcities = table.length(GetObjectNamesByType("TOWN_INFERNO")) end;
	return amountcities;
end;

function H55_GetHallTrialLevel(hero,player)
	local level = 0;
	local towns = H55_GetAlignedTownsOwned(hero,player);
	if towns ~= nil then
		for i,town in towns do
			local hall = GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1);
			if hall > level then
				level = hall;
			end;
		end;
	end;
	return level;
end;

function H55_GetWalkerHutLevel(hero,player)
	local level = 0;
	local towns = H55_GetAlignedTownsOwned(hero,player);
	if towns ~= nil then
		for i,town in towns do
			local hall = GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_3);
			if hall > level then
				level = hall;
			end;
		end;
	end;
	return level;
end;
	
function H55_GetPlayerTowns(player)
	local cities = {};
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == player then
			table.inject(cities,town);
		end;
	end;
	return cities;
end;

function H55_CheckPlayerHasTowns(player)
	local status = 1;
	local cities = {};
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == player then
			table.inject(cities,town);
		end;
	end;
	if table.length(cities) == 0 then
		status = 0;
	end;
	return status
end;

function H55_GetAlignedTownsOwned(hero,player)
	local cities = {};	
	local cityrace = H55_GetHeroRace(hero);
	if cityrace == "Haven" then
		local haventowns = GetObjectNamesByType("TOWN_HEAVEN");
		if table.length(haventowns) ~= 0 then
			for i, town in haventowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Academy" then
		local academytowns = GetObjectNamesByType("TOWN_ACADEMY");
		if table.length(academytowns) ~= 0 then
			for i, town in academytowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Stronghold" then
		local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");
		if table.length(strongholdtowns) ~= 0 then
			for i, town in strongholdtowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Dungeon" then
		local dungeontowns = GetObjectNamesByType("TOWN_DUNGEON");
		if table.length(dungeontowns) ~= 0 then
			for i, town in dungeontowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Sylvan" then
		local sylvantowns = GetObjectNamesByType("TOWN_PRESERVE");
		if table.length(sylvantowns) ~= 0 then
			for i, town in sylvantowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Necropolis" then
		local necropolistowns = GetObjectNamesByType("TOWN_NECROMANCY");
		if table.length(necropolistowns) ~= 0 then
			for i, town in necropolistowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Inferno" then
		local infernotowns = GetObjectNamesByType("TOWN_INFERNO");
		if table.length(infernotowns) ~= 0 then
			for i, town in infernotowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Fortress" then
		local fortresstowns = GetObjectNamesByType("TOWN_FORTRESS");
		if table.length(fortresstowns) ~= 0 then
			for i, town in fortresstowns do
				if GetObjectOwner(town) == player then
					table.inject(cities,town);
				end;
			end;
		end;
	else
		cities = {};
	end;
	return cities;
end;

function H55_IsNativeTownNearby(hero,player)
	local answer = 0;
	local towns = H55_GetAlignedTownsOwned(hero,player);
	for i,town in towns do
		if H55_GetDistance(hero,town) <= 50 then
			answer = 1;
		end;
	end;
	return answer;
end;

function H55_GetJoinSpecMultiplier(hero,player)
	local towns = table.length(H55_GetAlignedTownsOwned(hero,player))
	return 1 + 0.3 * (towns - 1)
end;

function H55_GetPlayerDragonblood(player)
	local dragonblood = 0;
	for i,hero in GetPlayerHeroes(player) do
		dragonblood = dragonblood + H55_GetHeroDragonblood(hero);
	end;
	if dragonblood > 600 then dragonblood = 600 end;
	return dragonblood;		
end;	

function H55_GetHeroDragonblood(hero)
	local amount = 0;

	if hero == "Menel" then amount = amount + 10 end;
	if hero == "Thant" then amount = amount + 10 end;
	if hero == "Melodia" then amount = amount + 10 end;
	if hero == "Emilia" then amount = amount + 10 end;
	if hero == "Xerxon" then amount = amount + 5 end;
	if hero == "Kunyak" then amount = amount + 10 end;
	if hero == "KingTolghar" then amount = amount + 10 end;
	if hero == "Calid2" then amount = amount + 10 end;
	if hero == "RedHeavenHero03" then amount = amount + 10 end;

	if H55_Governors[hero] then 
		if GetHeroSkillMastery(hero, SKILL_DARK_MAGIC) then amount = amount + 2 end
		if GetHeroSkillMastery(hero, SKILL_LIGHT_MAGIC) then amount = amount + 2 end
		if GetHeroSkillMastery(hero, SKILL_SUMMONING_MAGIC) then amount = amount + 2 end
		if GetHeroSkillMastery(hero, SKILL_DESTRUCTIVE_MAGIC) then amount = amount + 2 end
	end
	

	if HasArtefact(hero, ARTIFACT_ELRATH_02, 0) then
		local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
		knowledge = knowledge + 10 * (HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) or 0);
		knowledge = knowledge +  5 * (HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) or 0);
		amount = amount + H55_Round(knowledge/2);
	end;
	if HasArtefact(hero,ARTIFACT_BAND_OF_CONJURER,0) then
		local factor = GetHeroStat(hero,STAT_KNOWLEDGE);
		local coef = ((100+(factor*2))/100);
		amount = H55_Round(coef*amount);
	end;
	amount = GetHeroLevel(hero)*amount
	return amount
end;	

function H55_GetHeroEnlightenmentStrength(hero)
	local strength = 1;
	if HasHeroSkill(hero,SKILL_LEARNING) then
		strength = strength + ((GetHeroSkillMastery(hero,SKILL_LEARNING) * 0.05));
	elseif HasHeroSkill(hero,SKILL_BARBARIAN_LEARNING) then
		strength = strength + ((GetHeroSkillMastery(hero,SKILL_BARBARIAN_LEARNING) * 0.05));
	end;
	if HasArtefact(hero,34,1) then
		strength = strength+0.1;
	end;
	if HasArtefact(hero,35,1) then
		strength = strength+0.2;
	end;
	-- if HasArtefact(hero,ARTIFACT_GOVERNOR_01,1) then
		-- strength = strength+0.1;
	-- end;
	return strength;
end;

function H55_GetMoonDiscOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if HasArtefact(hero,159,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,160,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,161,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,162,0) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength;
end;

function H55_MoonDiscCoef()
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	local surface = mapsize * mapsize
	if floorsize == 1 then
		surface = surface * 2
	end;
	local coef = 1+math.round(100/((((surface/500)*0.6))/4))
	return coef;
end;

function H55_ExchangeMoonDisc(hero)
	RemoveArtefact(hero,159);
	RemoveArtefact(hero,160);
	RemoveArtefact(hero,161);
	RemoveArtefact(hero,162);
	GiveArtefact(hero,163);
end;

function H55_GetMonkSetCount(hero)
	local gainedartifacts = {0,0,0,0,0};
	if HasArtefact(hero,116,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,117,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,118,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,119,1) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,172,1) then gainedartifacts[5] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]);
	return setstrength;
end;

function H55_GetDwarvenSetCount(hero)
	return 0 + H55_ArtefactCount(hero, 1, {48, 49, 50, 51})
end

function H55_GetDwarvenOwnCount(hero)
	return 0 + H55_ArtefactCount(hero, 0, {48, 49, 50, 51})
end

-- function H55_ExchangeDwarvenSet(hero)
	-- RemoveArtefact(hero,48);
	-- RemoveArtefact(hero,49);
	-- RemoveArtefact(hero,50);
	-- RemoveArtefact(hero,51);
	-- GiveArtefact(hero,124);
-- end;

function H55_GetLionSetCount(hero)
	return 0 + H55_ArtefactCount(hero, 1, {11, 16, 31})
end


function H55_GetLionOwnCount(hero)
	return 0 + H55_ArtefactCount(hero, 0, {11, 16, 31})
end

function H55_GetVestmentSetCount(hero)
	return 0 + H55_ArtefactCount(hero, 1, {34, 35})
end

function H55_GetNecroSetCount(hero)
	local gainedartifacts = {0,0,0,0,0,0};
	if HasArtefact(hero,6,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,70,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,71,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,33,1) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,55,1) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,83,1) then gainedartifacts[6] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]);
	return setstrength;
end;


function H55_GetNecroOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0};
	if (HasArtefact(hero,6,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,70,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,71,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,33,0) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,55,0) ~= nil) then gainedartifacts[5] = 1 end;
	if (HasArtefact(hero,83,0) ~= nil) then gainedartifacts[6] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]);
	return setstrength
end;

function H55_GetPirateSetCount(hero)
	local gainedartifacts = {0,0,0,0,0,0};
	if HasArtefact(hero,127,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,128,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,129,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,130,1) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,131,1) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,132,1) then gainedartifacts[6] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]);
	return setstrength;
end;

function H55_GetSarIssusSetCount(hero)
	local gainedartifacts = {0,0,0,0};
	if HasArtefact(hero,44,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,45,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,46,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,47,1) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength;
end;

function H55_GetSarIssusOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if HasArtefact(hero,44,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,45,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,46,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,47,0) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength;
end;

function H55_ExchangeSarIssusSet(hero)
	RemoveArtefact(hero,44);
	RemoveArtefact(hero,45);
	RemoveArtefact(hero,46);
	RemoveArtefact(hero,47);
	GiveArtefact(hero,22);
end;

function H55_ExchangeSarIssusSetB(hero)
	RemoveArtefact(hero,44);
	RemoveArtefact(hero,45);
	RemoveArtefact(hero,46);
	RemoveArtefact(hero,47);
	GiveArtefact(hero,168);
end;

function H55_GetEndGoldSetCount(hero)
	local gainedartifacts = {0,0,0};
	if HasArtefact(hero,28,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,29,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,92,1) then gainedartifacts[3] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]);
	return setstrength;
end;

function H55_GetEndGoldOwnCount(hero)
	local gainedartifacts = {0,0,0};
	if HasArtefact(hero,28,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,29,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,92,0) then gainedartifacts[3] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]);
	return setstrength;
end;

function H55_ExchangeEndGoldSet(hero)
	RemoveArtefact(hero,28);
	RemoveArtefact(hero,29);
	RemoveArtefact(hero,92);
	GiveArtefact(hero,191);
end;

function H55_GetLegionOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0};
	if HasArtefact(hero,103,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,104,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,105,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,106,0) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,107,0) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,108,0) then gainedartifacts[6] = 1 end;
	if HasArtefact(hero,109,0) then gainedartifacts[7] = 1 end;
	--if HasArtefact(hero,29,0) then gainedartifacts[8] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]);
	return setstrength;
end;

function H55_ExchangeLegionSet(hero)
	RemoveArtefact(hero,103);
	RemoveArtefact(hero,104);
	RemoveArtefact(hero,105);
	RemoveArtefact(hero,106);
	RemoveArtefact(hero,107);
	RemoveArtefact(hero,108);
	RemoveArtefact(hero,109);
	GiveArtefact(hero,53);
end;

function H55_GetDragonishSetCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0,0};
	if HasArtefact(hero,36,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,37,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,38,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,39,1) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,40,1) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,41,1) then gainedartifacts[6] = 1 end;
	if HasArtefact(hero,42,1) then gainedartifacts[7] = 1 end;
	if HasArtefact(hero,43,1) then gainedartifacts[8] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]+gainedartifacts[8]);
	return setstrength;
end;

function H55_GetDragonishOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0,0};
	if HasArtefact(hero,36,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,37,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,38,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,39,0) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,40,0) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,41,0) then gainedartifacts[6] = 1 end;
	if HasArtefact(hero,42,0) then gainedartifacts[7] = 1 end;
	if HasArtefact(hero,43,0) then gainedartifacts[8] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]+gainedartifacts[8]);
	return setstrength;
end;

function H55_ExchangeDragonishSet(hero)
	RemoveArtefact(hero,36);
	RemoveArtefact(hero,37);
	RemoveArtefact(hero,38);
	RemoveArtefact(hero,39);
	RemoveArtefact(hero,40);
	RemoveArtefact(hero,41);
	RemoveArtefact(hero,42);
	RemoveArtefact(hero,43);
	GiveArtefact(hero,123);
end;

function H55_GetSaintSetCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0};
	if HasArtefact(hero,112,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,113,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,114,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,115,1) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,68,1) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,133,1) then gainedartifacts[6] = 1 end;
	if HasArtefact(hero,134,1) then gainedartifacts[7] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]);
	return setstrength;
end;	

function H55_GetSaintOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0};
	if HasArtefact(hero,112,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,113,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,114,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,115,0) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,68,0) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,133,0) then gainedartifacts[6] = 1 end;
	if HasArtefact(hero,134,0) then gainedartifacts[7] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]);
	return setstrength;
end;

-- function H55_ExchangeSaintSet(hero)
	-- RemoveArtefact(hero,112);
	-- RemoveArtefact(hero,113);
	-- RemoveArtefact(hero,114);
	-- RemoveArtefact(hero,115);
	-- RemoveArtefact(hero,68);
	-- RemoveArtefact(hero,133);
	-- RemoveArtefact(hero,134);
	-- GiveArtefact(hero,53);
-- end;

function H55_GetTomesOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if HasArtefact(hero,76,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,77,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,78,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,79,0) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength;
end;

function H55_ExchangeTomesSet(hero)
	RemoveArtefact(hero,76);
	RemoveArtefact(hero,77);
	RemoveArtefact(hero,78);
	RemoveArtefact(hero,79);	
	GiveArtefact(hero,126);
end;

function H55_GetGuardianSetCount(hero)
	local gainedartifacts = {0,0,0,0};
	if HasArtefact(hero,13,1) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,120,1) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,121,1) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,122,1) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength;
end;

function H55_ExchangeGuardianSet(hero)
	RemoveArtefact(hero,13);
	RemoveArtefact(hero,120);
	RemoveArtefact(hero,121);
	RemoveArtefact(hero,122);
	GiveArtefact(hero,125);
end;

function H55_ExchangeGuardianSetB(hero)
	RemoveArtefact(hero,13);
	RemoveArtefact(hero,120);
	RemoveArtefact(hero,121);
	RemoveArtefact(hero,122);
	GiveArtefact(hero,ARTIFACT_SENTINEL);
end;

function H55_GetGuardianOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if HasArtefact(hero,13,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,120,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,121,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,122,0) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength;
end;

function H55_GetCornucopiaOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0};
	if HasArtefact(hero,97,0) then gainedartifacts[1] = 1 end;
	if HasArtefact(hero,98,0) then gainedartifacts[2] = 1 end;
	if HasArtefact(hero,99,0) then gainedartifacts[3] = 1 end;
	if HasArtefact(hero,100,0) then gainedartifacts[4] = 1 end;
	if HasArtefact(hero,101,0) then gainedartifacts[5] = 1 end;
	if HasArtefact(hero,102,0) then gainedartifacts[6] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]);
	return setstrength;
end;

function H55_ExchangeCornucopia(hero)
	RemoveArtefact(hero,97);
	RemoveArtefact(hero,98);
	RemoveArtefact(hero,99);
	RemoveArtefact(hero,100);
	RemoveArtefact(hero,101);
	RemoveArtefact(hero,102);
	GiveArtefact(hero,183);
end;

function H55_HasHeroCultMaster(hero)
	local multiplier = 1;
	if HasHeroSkill(hero,SKILL_EXPLODING_CORPSES) then
		multiplier = 2;
	end;
	return multiplier;
end;

function H55_HasHeroDefendUs(hero)
	local multiplier = 1;
	if HasHeroSkill(hero,SKILL_DEFEND_US_ALL) then
		multiplier = 2;
	end;
	return multiplier;
end;


function H55_GetHeroResurrectionCoef(hero,baseperc)
	local coef = baseperc+(GetHeroStat(hero,STAT_KNOWLEDGE))*0.0035;
	if HasHeroSkill(hero,SKILL_LAST_AID) and HasHeroWarMachine(hero,3) then
		coef = coef+0.1;
	end;
	return coef;
end;

function H55_MakeStartArmy(hero,fc,add_tier,add_qty,spec_tier,spec_swap)
	if spec_tier ~= 0 then
		local experience = 145
		if fc == 2 and spec_tier == 3 then experience = 120 end;
		local delete = GetHeroCreatures(hero,H55_Creatures[fc][spec_swap][1]);
		local add_spec = (math.round(experience / H55_CreaturesExp[fc][spec_tier][1]));
		RemoveHeroCreatures(hero,H55_Creatures[fc][spec_swap][1],delete);
		AddHeroCreatures(hero,H55_Creatures[fc][spec_tier][1],add_spec);
		AddHeroCreatures(hero,H55_Creatures[fc][add_tier][1],add_qty);
	elseif add_tier > 4 then
		AddHeroCreatures(hero,H55_Creatures[fc][add_tier][1],add_qty);
	else
		local experience = 100;
		local rnd = 0;
		if add_tier ~= 4 then rnd = random(2) end;
		if add_tier == 3 and fc == 2 then rnd = 0 end;
		if add_qty >= 20 then experience = experience + add_qty end;
		local qty = rnd + (math.round( experience / H55_CreaturesExp[fc][add_tier][1] ));
		AddHeroCreatures(hero,H55_Creatures[fc][add_tier][1],qty);
	end;
end;

function H55_MakeStartArmyNeutral(hero,fc,add_neut,add_qty,spec_tier,spec_swap)
	if spec_tier ~= 0 then
		local delete = GetHeroCreatures(hero,H55_Creatures[fc][spec_swap][1]);
		local add_spec = (math.round(145 / H55_CreaturesExp[fc][spec_tier][1]));
		RemoveHeroCreatures(hero,H55_Creatures[fc][spec_swap][1],delete);
		AddHeroCreatures(hero,H55_Creatures[fc][spec_tier][1],add_spec);
		AddHeroCreatures(hero,H55_NeutralCreatures[add_neut],add_qty);
	else
		AddHeroCreatures(hero,H55_NeutralCreatures[add_neut],add_qty);
	end;
end;

-- function H55_MakeStartArmyElementalist(hero,fc)
	-- local delete1 = GetHeroCreatures(hero,H55_Creatures[fc][1][1]);
	-- local delete2 = GetHeroCreatures(hero,H55_Creatures[fc][2][1]);
	-- local melee = random(2)+87;
	-- local ranged = random(2)+85;
	-- RemoveHeroCreatures(hero,H55_Creatures[fc][1][1],delete1);
	-- RemoveHeroCreatures(hero,H55_Creatures[fc][2][1],delete2);
	-- AddHeroCreatures(hero,melee,1);
	-- AddHeroCreatures(hero,ranged,1);
-- end;

function H55_WeeklyReinforce(hero, player, town, tier, coef)
	local level = GetHeroLevel(hero);
	local multiplier = H55_GetJoinSpecMultiplier(hero,player);
	local growth = H55_RoundDown(multiplier*coef*level*H55_CreaturesGrowthReal[town][tier]);
	if growth >= 1 then
		for _, cr in H55_ArmyInfoSimple(hero) do
			if contains(H55_Creatures[town][tier], cr) then
				AddHeroCreatures(hero,cr,growth);
				H55_Display({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player);
				return
			end;
		end;
	end;
end;

function H55_WeeklyRecruits(hero,player,unupgraded_id,coef,tier)
	local level = GetHeroLevel(hero);	
	local raceid = H55_GetHeroRaceNum(hero);
	local townid = H55_GetTownRaceString(raceid);
	local towns = GetObjectNamesByType(townid);
	local towns_qty = table.length(towns);
	local dwelling = TOWN_BUILDING_DWELLING_5;
	local growth = math.round(coef*level);
	if tier == 6 then
		dwelling = TOWN_BUILDING_DWELLING_6;
	end;	
	if tier == 7 then
		dwelling = TOWN_BUILDING_DWELLING_7;
	end;
	if (towns_qty > 0) and (growth >= 1) and (H55_WeeklyRecruitsTable[hero] ~= 1) then
		for i,town in towns do
			if (GetObjectOwner(town) == player) then
				if GetTownBuildingLevel(town,dwelling) ~= 0 then
					SetObjectDwellingCreatures(town,unupgraded_id, GetObjectDwellingCreatures(town,unupgraded_id) + growth);
					if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then 
						startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
					end;
				end;
			end;
		end;
		H55_WeeklyRecruitsTable[hero] = 1;
	end;
end;

function H55_CheckCrystalMorale(hero,neutral)
	local answer = 0;
	local units = H55_ArmyInfoSimple(hero);
	for i = 0,6 do
		if (units[i] == neutral) then
			answer = 1;
		end;
	end;
	return answer;
end;

function H55_DefendUs(hero,player,town,tier,growth)
	if growth < 1 then return end
	for _, cr in H55_ArmyInfoSimple(hero) do
		if contains(H55_Creatures[town][tier], cr) then
			AddHeroCreatures(hero,cr,growth)
			-- H55_Display({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player);
			return
		end
	end
end

function H55_AdjustStatSpec(player,hero,stat,multiplier)
	local level = GetHeroLevel(hero);
	if multiplier == 6 then
		for i=1,8 do
			if (H55_StatSpecNumbersC[i] == level) and (H55_StatSpecReceived[hero] ~= i) then
				ChangeHeroStat(hero,stat,1);
				H55_StatSpecReceived[hero] = i;
				if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
					if stat == 1 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Attack.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 2 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 3 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 4 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Knowledge.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				end;
			end;
		end;
	elseif multiplier == 7 then	
		for i=1,8 do
			if (H55_StatSpecNumbersA[i] == level) and (H55_StatSpecReceived[hero] ~= i) then
				ChangeHeroStat(hero,stat,1);
				H55_StatSpecReceived[hero] = i;
				if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
					if stat == 1 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Attack.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 2 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 3 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 4 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Knowledge.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				end;
			end;
		end;
	elseif multiplier == 8 then	
		for i=1,8 do
			if (H55_StatSpecNumbersB[i] == level) and (H55_StatSpecReceived[hero] ~= i) then
				ChangeHeroStat(hero,stat,1);
				H55_StatSpecReceived[hero] = i;
				if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
					if stat == 1 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Attack.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 2 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 3 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
					if stat == 4 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Knowledge.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				end;
			end;
		end;		
	elseif multiplier == 20 then	
		if (level == 20) and (H55_StatSpecReceived[hero] ~= 1) then
			ChangeHeroStat(hero,stat,1);
			H55_StatSpecReceived[hero] = 1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				if stat == 5 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Luck.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				if stat == 6 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Morale.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			end;
		end;	
	elseif multiplier == 99 then	
		if (H55_StatSpecReceived[hero] ~= 1) then
			ChangeHeroStat(hero,stat,1);
			H55_StatSpecReceived[hero] = 1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				if stat == 5 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Luck.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				if stat == 6 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Morale.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			end;
		end;	
	end;
end;

function H55_ModifyMana(hero,amount)
	local mana = GetHeroStat(hero,STAT_MANA_POINTS);
	local manatotal = 10 * GetHeroStat(hero,STAT_KNOWLEDGE);
	if HasHeroSkill(hero,PERK_INTELLIGENCE) then
		manatotal = (math.round(1.4*manatotal))-1;
	end;
	if mana <= manatotal then
		ChangeHeroStat(hero,STAT_MANA_POINTS,amount);
	end;
end;

function H55_SetGlobalWeeklyPayouts(player,num)
	H55_GlobalWeeklyWoodPayout[player] = num;
	H55_GlobalWeeklyOrePayout[player] = num;
	H55_GlobalWeeklyMercuryPayout[player] = num;
	H55_GlobalWeeklyCrystalPayout[player] = num;
	H55_GlobalWeeklySulphurPayout[player] = num;
	H55_GlobalWeeklyGemPayout[player] = num;		
	H55_GlobalWeeklyGoldPayout[player] = num;			
end;

function H55_SetGlobalDailyPayouts(player,num)
	H55_GlobalDailyWoodPayout[player] = num;
	H55_GlobalDailyOrePayout[player] = num;
	H55_GlobalDailyMercuryPayout[player] = num;
	H55_GlobalDailyCrystalPayout[player] = num;
	H55_GlobalDailySulphurPayout[player] = num;
	H55_GlobalDailyGemPayout[player] = num;		
	H55_GlobalDailyGoldPayout[player] = num;			
end;

function H55_PayoutThisPlayer(player)
	if (H55_GlobalDailyGoldPayout[player] + H55_GlobalWeeklyGoldPayout[player]) > 0 then
		H55_GiveResourcesSilent(player,6,(H55_GlobalDailyGoldPayout[player]+H55_GlobalWeeklyGoldPayout[player]));
	end;
	if (H55_GlobalDailyWoodPayout[player] + H55_GlobalWeeklyWoodPayout[player]) > 0 then
		H55_GiveResourcesSilent(player,0,(H55_GlobalDailyWoodPayout[player]+H55_GlobalWeeklyWoodPayout[player]));
	end;		
	if (H55_GlobalDailyOrePayout[player] + H55_GlobalWeeklyOrePayout[player]) > 0 then
		H55_GiveResourcesSilent(player,1,(H55_GlobalDailyOrePayout[player]+H55_GlobalWeeklyOrePayout[player]));
	end;
	if (H55_GlobalDailyMercuryPayout[player] + H55_GlobalWeeklyMercuryPayout[player]) > 0 then
		H55_GiveResourcesSilent(player,2,(H55_GlobalDailyMercuryPayout[player]+H55_GlobalWeeklyMercuryPayout[player]));
	end;
	if (H55_GlobalDailyCrystalPayout[player] + H55_GlobalWeeklyCrystalPayout[player]) > 0 then
		H55_GiveResourcesSilent(player,3,(H55_GlobalDailyCrystalPayout[player]+H55_GlobalWeeklyCrystalPayout[player]));
	end;
	if (H55_GlobalDailySulphurPayout[player] + H55_GlobalWeeklySulphurPayout[player]) > 0 then
		H55_GiveResourcesSilent(player,4,(H55_GlobalDailySulphurPayout[player]+H55_GlobalWeeklySulphurPayout[player]));
	end;
	if (H55_GlobalDailyGemPayout[player] + H55_GlobalWeeklyGemPayout[player]) > 0 then
		H55_GiveResourcesSilent(player,5,(H55_GlobalDailyGemPayout[player]+H55_GlobalWeeklyGemPayout[player]));
	end;
end;

function H55_ResurrectElemental(player,hero,ci,elemental,manacost,baseperc)
	local stackscount = GetSavedCombatArmyCreaturesCount(ci,1);
	local reduction = 0;
	local coef = H55_GetHeroResurrectionCoef(hero,baseperc);
	if H55_GetSaintSetCount(hero) >= 3 then reduction = reduction + 2 end;
	if HasArtefact(hero,ARTIFACT_UPG_AR2,1) then reduction = reduction + 2 end;
	--if HasArtefact(hero,ARTIFACT_UPG_ST3,1) then reduction = reduction + 2 end;
	if HasArtefact(hero,ARTIFACT_MONK_03,1) then reduction = reduction + 2 end;
	--if HasArtefact(hero,ARTIFACT_SHANTIRI_05,1) then reduction = reduction + 4 end;
	local manapay = manacost - reduction;
	if manapay < 0 then manapay = 0 end;
	if manapay > 0 then
		for i = 0,stackscount-1,1 do
			cr,cnt,died = GetSavedCombatArmyCreatureInfo(ci,1,i);
			if died > 0 then
				local resurrect = math.floor(coef*died);
				if resurrect == 0 and died >= 1 then resurrect = 1 end;
				if resurrect >= 1 then
					if cr == elemental then
						if (GetHeroStat(hero,STAT_MANA_POINTS)<manapay) then
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSign,"/Text/Game/Scripts/NoManaResurrect.txt",hero,player,H55_MsgSleep,H55_MsgTime);
							end;
						else
							AddHeroCreatures(hero,elemental,resurrect);
							H55_ModifyMana(hero,-manapay);
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Resurrection.txt",resurrect,hero,player,H55_MsgSleep,H55_MsgTime);
							end;
						end;
					end;
				end;
			end;
		end;
	else
		for i = 0,stackscount-1,1 do
			cr,cnt,died = GetSavedCombatArmyCreatureInfo(ci,1,i);
			if died > 0 then
				local resurrect = math.floor(coef*died);
				if resurrect == 0 and died >= 1 then resurrect = 1 end;
				if resurrect >= 1 then
					if cr == elemental then
						AddHeroCreatures(hero,elemental,resurrect);
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Resurrection.txt",resurrect,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
	end;
end;


-----------------------------------------------------------------------------------------------------------------------------------------------------
--TOWN MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_Spinlock()
	H55_SpinSwitch = 1;
	while H55_SpinSwitch == 1 do
		sleep(5);
		print("H55 Spinlocking...");
	end;
end;

function H55_EndSpinlock()
	H55_SpinSwitch = 0;
end;

function H55_EnableATP()
	H55_TownGateEnabled = 1;
end;

function H55_EnableGovernance()
	H55_GovernanceEnabled = 1;
end;

function H55_IsAnyHeroInTown(town,player)
	local answer = 0;
	local heroes = GetPlayerHeroes(player);
	for i,hero in heroes do
		if (H55_GetDistance(hero,town) == 0) then
			answer = answer+1;
		end;
	end;
	return answer;
end;

function H55_IsAnyHeroInGate(town)
	local answer = 0;
	if GetObjectOwner(town) ~= 0 then
		local player = GetObjectOwner(town);
		local heroes = GetPlayerHeroes(player);
		if table.length(heroes) ~= 0 then
			for i,hero in heroes do
				if (H55_GetDistance(hero,town) == 6) then
					answer = answer+1;
				end;
				-- Bugged function
				-- if (IsHeroInTown(hero,town,1,0) == not nil) then
					-- answer = 1;
				-- end;
			end;
		end;
	end;
	return answer;
end;

function H55_IDHeroInGate(town)
	local answer = "";
	local player = GetObjectOwner(town);
	local heroes = GetPlayerHeroes(player);
	if table.length(heroes) ~= 0 then
		for i,hero in heroes do
			if (H55_GetDistance(hero,town) == 6) then
				answer = hero;
			end;
			-- Bugged function
			-- if (IsHeroInTown(hero,town,1,0) == not nil) then
				-- answer = hero;
			-- end;
		end;
	end;
	return answer;
end;

function H55_IsHeroInAnyTown(hero)
	local answer = 0;
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if (H55_GetDistance(hero,town) == 0) then
			answer = answer+1;
		end;
	end;
	return answer;
end;

-- function H55_IsHeroInAnyGate(hero)
	-- local answer = 0;
	-- local towns = GetObjectNamesByType("TOWN");
	-- for i,town in towns do
		-- if (H55_GetDistance(hero,town) == 6) then
			-- answer = answer+1;
		-- end;
	-- end;
	-- return answer;
-- end;

function H55_GetHeroMovement(hero)
	local movement = 2500;
	if HasHeroSkill(hero,SKILL_LOGISTICS) then
		if (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 1) then
			movement = 2749;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 2) then
			movement = 2999;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 3) then
			movement = 3249;
		end;
	end;
	if HasArtefact(hero,ARTIFACT_BOOTS_OF_SPEED,1) then movement=math.round(movement*1.25) end;
	return movement;
end;

function H55_InfoHeroMovement(hero)
	local movement = 2500;
	if HasHeroSkill(hero,SKILL_LOGISTICS) then
		if (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 1) then
			movement = 2749;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 2) then
			movement = 2999;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 3) then
			movement = 3249;
		end;
	end;
	if HasArtefact(hero,ARTIFACT_BOOTS_OF_SPEED,1) then movement=math.round(movement*1.25) end;
	if H55_Governors[hero] == 1 then movement=math.round(movement*0.6) end;
	return movement;
end;

function H55_InfoHeroManaRegen(hero)
	local mana = GetHeroStat(hero,STAT_KNOWLEDGE);
	if (HasHeroSkill(hero,SKILL_MYSTICISM) ~= nil) then mana=mana*2 end;
	--if (HasHeroSkill(hero,SKILL_PAYBACK) ~= nil) then mana=mana+4 end;
	if (HasArtefact(hero,ARTIFACT_MONK_01,1) ~= nil) then mana=mana+12 end;
	if (HasArtefact(hero,ARTIFACT_MONK_02,1) ~= nil) then mana=mana+4 end;
	if (HasArtefact(hero,ARTIFACT_GEAR_03,1) ~= nil) then mana=mana+8 end;
	--if (HasArtefact(hero,ARTIFACT_EIGHTFOLD,1) ~= nil) then	mana=mana+10 end;
	if (HasArtefact(hero,ARTIFACT_ROBE_OF_MAGI,1) ~= nil) then mana=mana+6 end;
	if (HasArtefact(hero,ARTIFACT_CROWN_OF_MAGI,1) ~= nil) then mana=mana+6 end;
	if (HasArtefact(hero,ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD,1) ~= nil) then	mana=mana+2 end;
	--if (HasArtefact(hero,ARTIFACT_UPG_ST2,1) ~= nil) then mana=mana+4 end;
	if (HasArtefact(hero,ARTIFACT_RUNIC_WAR_HARNESS,1) ~= nil) then	mana=mana+5 end;
	--if (HasArtefact(hero,ARTIFACT_BEGINNER_MAGIC_STICK,1) ~= nil) then mana=mana+2 end;
	if hero == "Astral" then
		mana = mana + (3 + math.round(GetHeroLevel("Astral")/3))
	end;
	if hero == "Vegeyr" then
		mana = mana + (3 + math.round(GetHeroLevel("Vegeyr")/3))
	end;
	if hero == "Almegir" then
		mana = mana + (3 + math.round(GetHeroLevel("Almegir")/3))
	end;
	if hero == "Shadwyn" then
		mana = mana + (3 + math.round(GetHeroLevel("Shadwyn")/3))
	end;
	return mana;
end;

function H55_InfoElementals(player)
	local elementals = 0
	local blood = H55_GetPlayerDragonblood(player)
	for _,town in H55_GetPlayerTowns(player) do
		elementals = elementals + H55_TownInfoElementals(player, town, blood)
	end
	return elementals
end


function H55_TownInfoElementals(player, town, blood)
	local townrace = H55_GetTownRace(town)
	local bloodcoef = 3
	local bloodroot = sqrt(blood)
	local elemtype = H55_GetRaceElementalTypeID(player,townrace)
	if townrace == 1 then bloodcoef = 8 end
	if townrace == 4 then bloodcoef = 18 end
	if townrace == 6 then bloodcoef = 30 end

	local growth = 0
	if townrace == Stronghold then
		growth = 3 + GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1) + GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_3)
	else
		growth = 3 + GetTownBuildingLevel(town, TOWN_BUILDING_MAGIC_GUILD)
	end

	local totalgrowth = H55_Round((bloodroot/bloodcoef)*growth)
	return totalgrowth
end;

function H55_InfoLegion(hero)
	local cap = H55_GetLegionCap(hero)
	local growth = 0;
	local bonus = 0;
	if HasHeroSkill(hero,SKILL_RECRUITMENT) ~= nil then bonus = bonus+5 end;
	-- if HasHeroSkill(hero,SKILL_RECRUITMENT) ~= nil and HasArtefact(hero,ARTIFACT_CROWN_OF_LEADER,1) ~= nil then bonus = bonus+10 end;
	if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) ~= nil then bonus = bonus+10 end;
	if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) ~= nil then bonus = bonus+5 end;
	--if H55_Governors[hero] == 1 then bonus = bonus+5 end;
	if cap == 1 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1)
	elseif cap == 2 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1.5)
	elseif cap == 3 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/2)
	elseif cap == 4 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/3)
	elseif cap == 5 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/4)
	elseif cap == 6 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/6)
	elseif cap == 7 then growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/12)
	else growth = 0
	end;
	if cap ~= 0 then 
		if growth < 1 then growth = 1 end;
	end;
	if H55_Governors[hero] == 1 then growth = 0 end;
	return growth;
end;

function H55_InfoSkeletonTaxes(hero)
	local units,count = H55_ArmyInfo(hero);
	local amount = 0;
	local taxes = 0;
	for i = 0,6 do
		if (units[i] == 30) then
			amount = amount + count[i]
		elseif (units[i] ==152) then
			amount = amount + count[i]
		elseif (units[i] ==29) then
			amount = amount + count[i]
		end;
	end;
	if amount > 0 then
		taxes = math.round(amount/2);
	end;
	return taxes;
end;

function H55_InfoGoblinTaxes(hero)
	local units,count = H55_ArmyInfo(hero);
	local amount = 0;
	local taxes = 0;
	for i = 0,6 do
		if (units[i] == 118) then
			amount = amount + count[i]
		elseif (units[i] ==173) then
			amount = amount + count[i]
		elseif (units[i] ==117) then
			amount = amount + count[i]
		end;
	end;
	if amount > 0 then
		taxes = math.round(amount/2);
	end;
	return taxes;
end;
	
function H55_InfoGoldIncome(hero)
	local gold = 0;
	local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
	if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
	if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
	if HasHeroSkill(hero,SKILL_ESTATES) then gold = gold+(math.round(GetHeroStat(hero,knowledge)*25)) end;
	if HasHeroSkill(hero,SKILL_LORD_OF_UNDEAD) then gold = gold+H55_InfoSkeletonTaxes(hero) end;
	if HasHeroSkill(hero,SKILL_GOBLIN_SUPPORT) then gold = gold+H55_InfoGoblinTaxes(hero) end;
	if HasArtefact(hero,ARTIFACT_ENDLESS_SACK_OF_GOLD,0) then gold = gold+(math.round(knowledge*50)) end;
	if HasArtefact(hero,ARTIFACT_ENDLESS_BAG_OF_GOLD,0) then gold = gold+(math.round(knowledge*25)) end;
	if HasArtefact(hero,ARTIFACT_HORN_OF_PLENTY,0) then gold = gold+(math.round(knowledge*75)) end;
	if HasArtefact(hero,ARTIFACT_GEAR_08,0) then gold = gold+(math.round(knowledge*200)) end;
	return gold;
end;

function H55_InfoGovEnabled()
	if H55_GovernanceEnabled == 1 then
		return H55_TM_Txt_Enabled;
	else
		return H55_TM_Txt_Disabled;
	end;
end;

function H55_InfoTCEnabled()
	if H55_TownConvEnabled == 1 then
		return H55_TM_Txt_Enabled;
	else
		return H55_TM_Txt_Disabled;
	end;
end;

function H55_InfoOccupation(hero)
	if H55_Governors[hero] == 1 then
		return H55_TM_Txt_Governor;
	else
		return H55_TM_Txt_Conquest;
	end;
end;

-- function H55_InfoWages(player)
	-- local heroes = GetPlayerHeroes(player);
	-- local totaltax = 0;
	-- for i,hero in heroes do
		-- totaltax = totaltax+math.round(H55_GetHeroTaxRate(hero));
	-- end;
	-- return totaltax;
-- end;

function H55_AbortTC(hero)
	print("H55 Player Takes No Action");
	-- if HasArtefact(hero,47,1) and HasHeroSkill(hero,42) then
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,8);
	-- elseif HasArtefact(hero,47,1) then
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,10);
	-- elseif HasHeroSkill(hero,42) then
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,16);
	-- else
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,20);
	-- end;
end;

function H55_TownManagement(hero,CUSTOM_ABILITY_4)
	print(1)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);	
	local herorace = H55_GetHeroRaceNum(hero);
	local gates = GetObjectNamesByType("TOWN");
	local town = nil;
	local townrace = 0;
	for i,gate in gates do
		if (GetObjectOwner(gate) == player) and (IsHeroInTown(hero,gate,1,0) == not nil) then
			town = gate;
			townrace = H55_GetTownRace(gate);
		end;
	end;
	print(2)
	if H55_TownManageOwners[hero] == 1 then
		if H55_TownGateEnabled == 0 then
			if town ~= nil and townrace ~= playerrace then --hero is in strange town
				if H55_TownConvEnabled == 1 and herorace == playerrace then
					H55_TM_Conv_or_Close(hero,town);
				else
					H55_TM_InfoOnly(hero,town);
				end;
			elseif town ~= nil and townrace == playerrace then --hero is in native town
				if H55_GovernanceEnabled == 1 and H55_Governors[hero] == nil and townrace == herorace then
					H55_TM_Gov_or_Close(hero,town);
				elseif H55_GovernanceEnabled == 1 and H55_Governors[hero] ~= nil and H55_GovernorsWithTown[hero] == town then
					H55_TM_End_or_Close(hero,town);
				else
					H55_TM_InfoOnly(hero,town);
				end;
			else
					H55_TM_InfoOnly(hero,town);
			end;
		else
			print(3)
			if town ~= nil and townrace ~= playerrace then --hero is in strange town
				if H55_TownConvEnabled == 1 and herorace == playerrace then
					H55_TM_Conv_or_Tele(hero,town);
				else
					H55_TM_Tele_or_Close(hero,town);
				end;
			elseif town ~= nil and townrace == playerrace then --hero is in native town
				if H55_GovernanceEnabled == 1 and H55_Governors[hero] == nil and townrace == herorace then
					H55_TM_Gov_or_Tele(hero,town);
				elseif H55_GovernanceEnabled == 1 and H55_Governors[hero] ~= nil and H55_GovernorsWithTown[hero] == town then
					H55_TM_End_or_Close(hero,town);
				else
					H55_TM_Tele_or_Close(hero,town);
				end;
			else
					H55_TM_Tele_or_Close(hero,town);
			end;
		end;
	end;
end;

function H55_TM(hero,town,prompt)
	local player = GetObjectOwner(hero)
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS)
	local v_mana = H55_InfoHeroManaRegen(hero)
	local v_occupation = H55_InfoOccupation(hero)
	local v_estates = H55_InfoGoldIncome(hero)
	local v_dragonblood = H55_GetHeroDragonblood(hero)
	local v_summons = H55_InfoElementals(GetObjectOwner(hero))
	local v_artifactsummons_tier = H55_GetLegionCap(hero)
	local v_artifactsummons = H55_InfoLegion(hero)
	local v_tier1 = H55_GovernanceTier1[hero] or 0
	local v_tier2 = H55_GovernanceTier2[hero] or 0
	local v_tier3 = H55_GovernanceTier3[hero] or 0
	local v_tier4 = H55_GovernanceTier4[hero] or 0
	local v_tier5 = H55_GovernanceTier5[hero] or 0
	local v_tier6 = H55_GovernanceTier6[hero] or 0
	local v_tier7 = H55_GovernanceTier7[hero] or 0
	local v_governance = H55_InfoGovEnabled()
	local v_conversion = H55_InfoTCEnabled()
	local v_maxtowns = H55_MaxTownsPerFaction
	local v_t1d = H55_MaxDwellingsT1
	local v_t2d = H55_MaxDwellingsT2
	local v_t3d = H55_MaxDwellingsT3
	local v_t4d = H55_MaxDwellingsT4
	return {prompt;
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,dragonblood=v_dragonblood,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d}
end

function H55_TM_InfoOnly(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Info_Only.txt")
	MessageBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text, "H55_AbortTC('"..hero.."')")
end

	
function H55_TM_Conv_or_Tele(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Conv_or_Tele.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_TCQuestionBox('"..hero.."','"..town.."')",
		"H55_ATPQuestionBox('"..hero.."')"
	)
end

function H55_TM_Conv_or_Close(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Conv_or_Close.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_TCQuestionBox('"..hero.."','"..town.."')",
		"H55_AbortTC('"..hero.."')"
	)
end

function H55_TM_Gov_or_Tele(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Gov_or_Tele.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_TGStartQuestionBox('"..hero.."','"..town.."')",
		"H55_ATPQuestionBox('"..hero.."')"
	)
end

function H55_TM_Tele_or_Close(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Tele_or_Close.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_ATPQuestionBox('"..hero.."')",
		"H55_OfferUltimatesQuestionBox('"..hero.."')"
	)
end

function H55_TM_Wtp_or_Close(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Wtp_or_Close.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_WTPQuestionBox('"..hero.."')",
		"H55_AbortTC('"..hero.."')"
	)
end

function H55_TM_Gov_or_Close(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_Gov_or_Close.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_TGStartQuestionBox('"..hero.."','"..town.."')",
		"H55_AbortTC('"..hero.."')"
	)
end

function H55_TM_End_or_Close(hero,town)
	local text = H55_TM(hero, town, "/Text/Game/Scripts/TownPortal/TM_End_or_Close.txt")
	QuestionBoxForPlayers(GetPlayerFilter(GetObjectOwner(hero)), text,
		"H55_TGEndQuestionBox('"..hero.."','"..town.."')",
		"H55_AbortTC('"..hero.."')"
	)
end

function H55_TGStartQuestionBox(hero,town)
	local player = GetObjectOwner(hero);
	if H55_TownsWithGovernor[town] ~= nil then
		if IsObjectExists(H55_TownsWithGovernor[town]) == 1 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TM_TownAlready.txt", hero, player, 5);
		else
			H55_ResetConquestHero(H55_TownsWithGovernor[town],town);
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TG_StartQuestion.txt"},
			"H55_StartGovernor('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
		end;
	else
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TG_StartQuestion.txt"},
		"H55_StartGovernor('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
	end;
end;

function H55_TGEndQuestionBox(hero,town)
	local player = GetObjectOwner(hero);
	local term = (H55_Day-H55_GovernorInaugurationDay[hero])
	local v_fine = 0;
	if term <= 27 then v_fine = (28-term)*(GetHeroLevel(hero)*100) end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TG_EndQuestion.txt";fine=v_fine},
	"H55_EndGovernor('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");	
end;

function H55_StartGovernor(hero,town)
	local player = GetObjectOwner(hero);
	H55_Governors[hero] = 1;
	H55_GovernorsWithTown[hero] = town;
	H55_TownsWithGovernor[town] = hero;
	H55_GovernorInaugurationDay[hero] = H55_Day;
	H55_CastleDefenseOwners[hero] = 0;
	H55_MageGuildBonusOwners[hero] = 0;
	H55_SpecialAttackOwners[hero] = 0;
	H55_SpecialKnowledgeOwners[hero] = 0;
	H55_SpecialSpellPowerOwners[hero] = 0;
	H55_RunicShrineBonusOwners[hero] = 0;
	ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Inaugurated.txt", hero, player, 5);	
end;

function H55_EndGovernor(hero,town)
	local player = GetObjectOwner(hero);
	local term = (H55_Day-H55_GovernorInaugurationDay[hero])
	local fine = 0;
	if term <= 27 then fine = (28-term)*(GetHeroLevel(hero)*100) end;
	if fine > 0 then
		if GetPlayerResource(player,6) >= fine then
			H55_TakeResourcesSilent(player,6,fine);
			H55_ResetConquestHero(hero,town);
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Resigned.txt", hero, player, 5);
		else
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_ResignRefuse.txt", hero, player, 5);			
		end;
	else
		H55_ResetConquestHero(hero,town);
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Resigned.txt", hero, player, 5);	
	end;
end;	

function H55_ResetConquestHero(hero,town)
	H55_Governors[hero] = nil;
	H55_GovernorsWithTown[hero] = nil;
	H55_TownsWithGovernor[town] = nil;
	H55_GovernorInaugurationDay[hero] = nil;
	if IsObjectExists(hero) == 1 then
		H55_AdjustGovernorDefense(hero,nil);
	end;
	H55_CastleDefenseOwners[hero] = 0;
	H55_MageGuildBonusOwners[hero] = 0;
	H55_SpecialAttackOwners[hero] = 0;
	H55_SpecialKnowledgeOwners[hero] = 0;
	H55_SpecialSpellPowerOwners[hero] = 0;
	H55_RunicShrineBonusOwners[hero] = 0;
end;

function H55_ATPQuestionBox(hero)
	H55_TeleportStatus[hero] = 1;
	local player = GetObjectOwner(hero);
	local towns = GetObjectNamesByType("TOWN");
	local targets = 0;
	if H55_Governors[hero] == 1 then
		if GetHeroStat(hero,STAT_MOVE_POINTS) < 2000 and HasArtefact(hero,ARTIFACT_GEAR_01,1) == nil then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMovement.txt", hero, player, 5);
		elseif GetHeroStat(hero,STAT_MANA_POINTS) < 25 and HasArtefact(hero,ARTIFACT_GEAR_01,1) == nil then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMana.txt", hero, player, 5);
		else
			local hometown = H55_GovernorsWithTown[hero];
			if (player == GetObjectOwner(hometown)) and H55_GetTownRace(hometown) ~= 8 and (GetTownBuildingLevel(hometown,TOWN_BUILDING_MAGIC_GUILD) == 5) then
				local x,y,z=GetObjectPosition(hometown);
				MoveCameraForPlayers(GetPlayerFilter(player),x,y,z,50,math.pi/2,1,1,1,1);
				--MoveCamera(x,y,z,50,math.pi/2,1,1,1,1);
				sleep(4);
				QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
				"H55_TeleportNow('"..hero.."','"..hometown.."')","H55_EndSpinlock");
				H55_Spinlock();
			elseif (player == GetObjectOwner(hometown)) and H55_GetTownRace(hometown) == 8 and (GetTownBuildingLevel(hometown,TOWN_BUILDING_SPECIAL_1) == 3) and (GetTownBuildingLevel(hometown,TOWN_BUILDING_SPECIAL_3) == 1) then
				local x,y,z=GetObjectPosition(hometown);
				MoveCameraForPlayers(GetPlayerFilter(player),x,y,z,50,math.pi/2,1,1,1,1);
				--MoveCamera(x,y,z,50,math.pi/2,1,1,1,1);
				sleep(4);
				QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
				"H55_TeleportNow('"..hero.."','"..hometown.."')","H55_EndSpinlock");
				H55_Spinlock();
			else
				ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets.txt", hero, player, 5);			
			end;
		end;
	else
		if GetHeroStat(hero,STAT_MOVE_POINTS) < 2000 and HasArtefact(hero,ARTIFACT_GEAR_01,1) == nil then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMovement.txt", hero, player, 5);
		elseif GetHeroStat(hero,STAT_MANA_POINTS) < 25 and HasArtefact(hero,ARTIFACT_GEAR_01,1) == nil then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMana.txt", hero, player, 5);
		else
			for i,town in towns do
				if (player == GetObjectOwner(town)) and H55_GetTownRace(town) ~= 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD) == 5) then
					targets = targets+1
				end;
				if (player == GetObjectOwner(town)) and H55_GetTownRace(town) == 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 3) and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3) == 1) then
					targets = targets+1
				end;
			end;
			if targets > 0 then
				for i,town in towns do
					if H55_TeleportStatus[hero] == 1 then
						if (player == GetObjectOwner(town)) then
							if H55_GetTownRace(town) ~= 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD) == 5) then
								local x,y,z=GetObjectPosition(town);
								MoveCameraForPlayers(GetPlayerFilter(player),x,y,z,50,math.pi/2,1,1,1,1);
								--MoveCamera(x,y,z,50,math.pi/2,1,1,1,1);
								sleep(4);
								QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
								"H55_TeleportNow('"..hero.."','"..town.."')","H55_EndSpinlock");
								H55_Spinlock();	
							elseif H55_GetTownRace(town) == 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 3) and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3) == 1) then
								local x,y,z=GetObjectPosition(town);
								MoveCameraForPlayers(GetPlayerFilter(player),x,y,z,50,math.pi/2,1,1,1,1);
								--MoveCamera(x,y,z,50,math.pi/2,1,1,1,1);
								sleep(4);
								QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
								"H55_TeleportNow('"..hero.."','"..town.."')","H55_EndSpinlock");
								H55_Spinlock();
							end;
						end;			
					end;
				end;
			else
				ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets.txt", hero, player, 5);
			end;
		end;
	end;
end;

function H55_WTPQuestionBox(hero)
	local player = GetObjectOwner(hero);
	local towns = H55_GetPlayerTowns(player);
	local distances = {};
	local distancesbytown = {};
	for i=1,table.length(towns)-1 do
		distances[i] = H55_GetDistanceUG(hero,towns[i]);
	end;
	for i,town in towns do
		distancesbytown[town] = H55_GetDistanceUG(hero,town);
	end;
	if distances ~= nil then
		local target = H55_LowestSample(distances);
		for i, town in towns do
			if (distancesbytown[town] == target) then
				targettown = town;
			end;
		end;
		print(targettown);
		if GetHeroStat(hero,STAT_MANA_POINTS) < 10 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMana.txt", hero, player, 5);
		else
			H55_TeleportNow(hero,targettown);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets.txt", hero, player, 5);
	end;
end;

function H55_TeleportNow(hero,town)
	local player = GetObjectOwner(hero);	
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);
	local x,y,z=GetObjectPosition(town);
	H55_TeleportStatus[hero] = 2;
	if HasArtefact(hero,ARTIFACT_GEAR_01,1) == nil then
		ChangeHeroStat(hero,STAT_MOVE_POINTS,(-1*movepoints));
		ChangeHeroStat(hero,STAT_MANA_POINTS,-25);
	end;
	print("H55 Performing Teleport..");
	Play2DSoundForPlayers(GetPlayerFilter(player), H55_SndTPStart);
	PlayVisualEffect("/Effects/_(Effect)/Spells/townportal_start.xdb#xpointer(/Effect)",town,"",0,0,0,0,z);	
	SetObjectPosition(hero,x,y,z);	
	H55_EndSpinlock();
	sleep(8);
	Play2DSoundForPlayers(GetPlayerFilter(player), H55_SndTPEnd);
end;
		
function H55_TCQuestionBox(hero,town)
	local player = GetObjectOwner(hero);
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);
	local x,y,z=GetObjectPosition(town);
	local playerrace = H55_GetPlayerRace(player);
	local townrace = H55_GetTownRace(town);
	if H55_GetAmountAlignedTowns(playerrace) < H55_MaxTownsPerFaction then
		if (GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL) ~= 4) then	
			local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
			local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
			local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);				
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
			local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
			local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
			local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
			local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
			local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
			local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
			local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
			local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
			local guild = 0;
			if townrace ~= 8 then
				guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			end;
			local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
			local special1 = 0;
			local special2 = 0;
			local special3 = 0;
			local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
			local special5 = 0;
			if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
				special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
			end;				
			if townrace == 2 then
				special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
			else
				special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			end;
			if townrace == 6 then
				special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
			else
				special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
			end;
			if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
				special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
			else
				special5 = 0;
			end;
			
			local townvalue = tavern+marketplace+blacksmith+fort+townhall+dwelling1+dwelling2+dwelling3+dwelling4+dwelling5+dwelling6+dwelling7+shipyard+guild+grail+special1+special2+special3+special4+special5;
			
			local gold_qty = 3000+(townvalue*3000);
			local wood_qty = 3+(townvalue*3);
			local ore_qty = 3+(townvalue*3);
			local mercury_qty = 1+(townvalue*1);
			local crystal_qty = 1+(townvalue*1);
			local sulphur_qty = 1+(townvalue*1);
			local gem_qty = 1+(townvalue*1);

			MoveCameraForPlayers(GetPlayerFilter(player),x,y,z,50,math.pi/2,1,1,1,1);
			--MoveCamera(x,y,z,50,math.pi/2,1,1,1,1);
			sleep(4);
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TC_Question.txt";gold=gold_qty,wood=wood_qty,ore=ore_qty,mercury=mercury_qty,crystal=crystal_qty,sulphur=sulphur_qty,gem=gem_qty},
			"H55_ConvertNow('"..hero.."','"..town.."','"..townvalue.."')","H55_AbortTC('"..hero.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoTarget.txt", hero, player, 5);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_Limit.txt", hero, player, 5);
	end;
end;
			
function H55_ConvertNow(hero,town,townvalue)
	local herorace = H55_GetHeroRaceNum(hero);
	local towntype = H55_GetTownRaceID(herorace);
	local townrace = H55_GetTownRace(town);
	local player = GetObjectOwner(hero);	
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);
	
	local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
	local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
	local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);				
	local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
	local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
	local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
	local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
	local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
	local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
	local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
	local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
	local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
	local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
	local guild = 0;
	if townrace ~= 8 then
		guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
	end;
	local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
	local special1 = 0;
	local special2 = 0;
	local special3 = 0;
	local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
	local special5 = 0;
	if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
		special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
	end;				
	if townrace == 2 then
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
	else
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
	end;
	if townrace == 6 then
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
	else
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
	end;
	if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
		special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
	else
		special5 = 0;
	end;
	local guildconversionpoints = special1+special3+1;

	local x,y,z=GetObjectPosition(town);
	
	local gold_qty = 3000+(townvalue*3000);
	local wood_qty = 3+(townvalue*3);
	local ore_qty = 3+(townvalue*3);
	local mercury_qty = 1+(townvalue*1);
	local crystal_qty = 1+(townvalue*1);
	local sulphur_qty = 1+(townvalue*1);
	local gem_qty = 1+(townvalue*1);
	
	if GetPlayerResource(player,0) < wood_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,1) < ore_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,2) < mercury_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,3) < crystal_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,4) < sulphur_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,5) < gem_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,6) < gold_qty then 
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	else
		ChangeHeroStat(hero,STAT_MOVE_POINTS,(-1*movepoints));
		
		print("H55 Performing Town Conversion..");

		H55_TakeResourcesSilent(player,0,wood_qty);
		H55_TakeResourcesSilent(player,1,ore_qty);
		H55_TakeResourcesSilent(player,2,mercury_qty);
		H55_TakeResourcesSilent(player,3,crystal_qty);
		H55_TakeResourcesSilent(player,4,sulphur_qty);
		H55_TakeResourcesSilent(player,5,gem_qty);
		H55_TakeResourcesSilent(player,6,gold_qty);
		
		Play2DSoundForPlayers(GetPlayerFilter(player),"/Maps/Scenario/A2C2M1/Siege_WallCrash02sound.xdb#xpointer(/Sound)");	
		TransformTown(town,towntype);
		
		sleep(1);
		
			if tavern == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1) end;
			if marketplace == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) 
		elseif marketplace == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) end;
			if blacksmith == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1) end;
			if fort == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1)
		elseif fort == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) 
		elseif fort == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) end;
			if townhall == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1)
		elseif townhall == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) end;
			if dwelling1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1)
		elseif dwelling1 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) end;
			if dwelling2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1)
		elseif dwelling2 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) end;
			if dwelling3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1)
		elseif dwelling3 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) end;
			if dwelling4 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1)
		elseif dwelling4 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) end;
			if dwelling5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1)
		elseif dwelling5 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) end;
			if dwelling6 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1)
		elseif dwelling6 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) end;
			if dwelling7 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1)
		elseif dwelling7 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) end;
			if shipyard == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SHIPYARD,1) end;
			if grail == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_GRAIL,1) end;
			
			if herorace ~= 8 and townrace ~= 8 then
					if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
			end;

			if herorace ~= 8 and townrace == 8 then
					if guildconversionpoints == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
			end;
			
			if herorace == 8 then
					if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
				elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
				elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1)
				elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
				elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
			end;
			
			--Special buildings
			if herorace ~= 1 and herorace ~= 2 and herorace ~= 3 and herorace ~= 5 and herorace ~= 8 then
				if special3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) end;
			end;				
			if herorace == 2 then
				if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_0,1) end;
			elseif herorace ~= 8 then
				if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
			end;
			if herorace == 6 then
				if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_6,1) end;
			else
				if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_2,1) end;
			end;
			if herorace ~= 4 and herorace ~= 5 and herorace ~= 6 then
				if special5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_5,1) end;
			end;
			
			--Crash Protection
			if herorace == 5 then DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_3,0,0) end;
			if herorace == 6 then DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0) end;
			
		H55_EndSpinlock();
		sleep(3);
	end;
end;

function H55_ConvertNowAI(town,player,playerrace)
	local towntype = H55_GetTownRaceID(playerrace);
	local townrace = H55_GetTownRace(town);

	local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
	local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
	local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);				
	local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
	local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
	local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
	local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
	local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
	local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
	local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
	local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
	local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
	local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
	local guild = 0;
	if townrace ~= 8 then
		guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
	end;
	local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
	local special1 = 0;
	local special2 = 0;
	local special3 = 0;
	local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
	local special5 = 0;
	if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
		special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
	end;				
	if townrace == 2 then
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
	else
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
	end;
	if townrace == 6 then
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
	else
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
	end;
	if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
		special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
	else
		special5 = 0;
	end;
	local guildconversionpoints = special1+special3+1;

	TransformTown(town,towntype);
	
	H55_AmountAIConversions = H55_AmountAIConversions+1;
	
	sleep(1);
		
		if tavern == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1) end;
		if marketplace == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) 
	elseif marketplace == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) end;
		if blacksmith == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1) end;
		if fort == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1)
	elseif fort == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) 
	elseif fort == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) end;
		if townhall == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1)
	elseif townhall == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) end;
		if dwelling1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1)
	elseif dwelling1 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) end;
		if dwelling2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1)
	elseif dwelling2 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) end;
		if dwelling3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1)
	elseif dwelling3 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) end;
		if dwelling4 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1)
	elseif dwelling4 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) end;
		if dwelling5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1)
	elseif dwelling5 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) end;
		if dwelling6 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1)
	elseif dwelling6 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) end;
		if dwelling7 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1)
	elseif dwelling7 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) end;
		if shipyard == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SHIPYARD,1) end;
		if grail == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_GRAIL,1) end;
		
		if playerrace ~= 8 and townrace ~= 8 then
				if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
		end;

		if playerrace ~= 8 and townrace == 8 then
				if guildconversionpoints == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
		end;
		
		if playerrace == 8 then
				if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
			elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
			elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1)
			elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
			elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
		end;
		
		--Special buildings
		if playerrace ~= 1 and playerrace ~= 2 and playerrace ~= 3 and playerrace ~= 5 and playerrace ~= 8 then
			if special3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) end;
		end;				
		if playerrace == 2 then
			if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_0,1) end;
		elseif playerrace ~= 8 then
			if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
		end;
		if playerrace == 6 then
			if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_6,1) end;
		else
			if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_2,1) end;
		end;
		if playerrace ~= 4 and playerrace ~= 5 and playerrace ~= 6 then
			if special5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_5,1) end;
		end;
		
		--Crash Protection
		if playerrace == 5 then DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_3,0,0) end;
		if playerrace == 6 then DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0) end;	
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--WEEKLY EVENT
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_WeeklyEvents(player)	
	
	H55_WeeklyEventsDone[player] = 1;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {1,"AI Cheating",player,""};--------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	local alltowns = GetObjectNamesByType("TOWN");
	local haventowns = GetObjectNamesByType("TOWN_HEAVEN");
	local sylvantowns = GetObjectNamesByType("TOWN_PRESERVE");
	local academytowns = GetObjectNamesByType("TOWN_ACADEMY");
	local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");	
	local dungeontowns = GetObjectNamesByType("TOWN_DUNGEON");	
	local necropolistowns = GetObjectNamesByType("TOWN_NECROMANCY");
	local infernotowns = GetObjectNamesByType("TOWN_INFERNO");
	local fortresstowns = GetObjectNamesByType("TOWN_FORTRESS");
	local blood = H55_GetPlayerDragonblood(player);
	
	if H55_MineControl == 1 then
		for i, mine in H55_AllMines do
			local owner = GetObjectOwner(mine);
			if owner ~= 0 then
				if H55_IsThisAIPlayer(player) and owner == player and H55_GuardedMines[mine][1] ~= player then
					H55_GuardedMines[mine] = {player,H55_Day};
				end;
				if owner == player and H55_GuardedMines[mine][1] == player then
					local faction = H55_GetPlayerRace(player);
					local t1,t2,t3,t4,t5,t6,t7 = H55_GetMineGuardAmount(faction,H55_GuardedMines[mine][2]);
					--local units,count = H55_StackInfo(mine);
					for i = 1,7 do
						RemoveObjectCreatures(mine,H55_Creatures[faction][i][1],99999);
					end;
					if t1 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][1][1],t1);
					end;
					if t2 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][2][1],t2);
					end;
					if t3 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][3][1],t3);
					end;
					if t4 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][4][1],t4);
					end;
					if t5 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][5][1],t5);
					end;
					if t6 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][6][1],t6);
					end;
					if t7 > 0 then
						AddObjectCreatures(mine,H55_Creatures[faction][7][1],t7);
					end;
				elseif owner == player and H55_GuardedMines[mine][1] ~= player then
					if H55_GuardedMines[mine][1] ~= 0 then
						local faction = H55_GetPlayerRace(H55_GuardedMines[mine][1])
						for i = 1,7 do
							RemoveObjectCreatures(mine,H55_Creatures[faction][i][1],99999);
						end;
					end;
					H55_GuardedMines[mine][1] = 0;
				end;
			end;
		end;
	end;

	if H55_IsThisAIPlayer(player) and H55_MapType ~= "Campaign" and H55_MapType ~= "Scenario" and H55_GameMode ~= 0 and H55_AICheatMode >= 1 then
		local currentamount = GetPlayerResource(player,6);
		local difficulty = GetDifficulty();
		local difficultycoef = H55_AIDifficultyCoef(); --most important, adjusts to governance
		local mapsizecoef = H55_AIMapSizeCoef(); -- 1 unless large map
		local timercoef = H55_AITimerCoef(); -- 1 unless late game
		local usercoef = H55_AICheatSetting(); -- 1 unless changed by player
		local growthcoef = difficultycoef*(mapsizecoef*timercoef*usercoef);
		local towncoef = 0.5 + (0.5 * (table.length(H55_GetPlayerTowns(player))));
		local addedgold = math.round(growthcoef*(towncoef*20000));
		--local addedres = math.round(growthcoef*(towncoef*8));
		H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+addedgold;
		-- H55_GlobalWeeklyWoodPayoutPayout[player] = H55_GlobalWeeklyWoodPayout[player]+(2*addedres);
		-- H55_GlobalWeeklyOrePayoutPayout[player] = H55_GlobalWeeklyOrePayout[player]+(2*addedres);
		-- H55_GlobalWeeklyGemPayoutPayout[player] = H55_GlobalWeeklyGemPayout[player]+addedres;
		-- H55_GlobalWeeklyCrystalPayoutPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+addedres;
		-- H55_GlobalWeeklySulphurPayoutPayout[player] = H55_GlobalWeeklySulphurPayout[player]+addedres;
		-- H55_GlobalWeeklyMercuryPayoutPayout[player] = H55_GlobalWeeklyMercuryPayout[player]+addedres;
		for i,town in alltowns do
			if (GetObjectOwner(town) == player) then
				local townrace = H55_GetTownRace(town);
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][1]))));
				end;	
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][2]))));
				end;	
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][3]))));
				end;	
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][4]))));
				end;	
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][5]))));
				end;	
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and (difficulty >=1) then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][6]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and (difficulty >=2) then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) + (math.round(growthcoef*(H55_CreaturesGrowth[townrace][7]))));
				end;	
			end;
		end;		
	end;
	

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {2,"Suppliers",player,""};----------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if H55_MysticalGardens ~= nil then
		local gardengold = 0;
		local gardengems = 0;
		local gardenbonus = H55_NetworkSkillAmount[player];
		for i,garden in H55_MysticalGardens do
			if H55_MysticalGardensOwned[garden] == player then
				if H55_WeeklyMysticalGardenRes[garden] == 0 then
					gardengold = gardengold + 500;
					if gardenbonus >= 1 then
						gardengold = gardengold + (gardenbonus*250);
					end;
				elseif H55_WeeklyMysticalGardenRes[garden] == 1 then
					gardengems = gardengems + 5 + gardenbonus;
				end;
			end;
		end;
		if gardengold > 0 then
			H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+gardengold;					
		end;
		if gardengems > 0 then
			H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+gardengems;
		end;
	end;
	
	if H55_SiegeWorkshops ~= nil then
		local workshopwood = 0;
		local workshopbonus = H55_NetworkSkillAmount[player];		
		for i,workshop in H55_SiegeWorkshops do
			if H55_SiegeWorkshopsOwned[workshop] == player then
				workshopwood = workshopwood + H55_WeeklySiegeWorkshopResQty[workshop] + workshopbonus;
			end;
		end;
		if workshopwood > 0 then
			H55_GlobalWeeklyWoodPayout[player] = H55_GlobalWeeklyWoodPayout[player]+workshopwood;				
		end;
	end;

	if H55_Windmills ~= nil then
		local millore = 0;
		local millmercury = 0;
		local millcrystal = 0;
		local millsulphur = 0;
		local millgems = 0;
		local millbonus = H55_NetworkSkillAmount[player];		
		for i,mill in H55_Windmills do
			if H55_WindmillsOwned[mill] == player then
				if H55_WeeklyWindmillRes[mill] == 1 then
					millore = millore + H55_WeeklyWindmillResQty[mill] + millbonus;
				elseif H55_WeeklyWindmillRes[mill] == 2 then
					millmercury = millmercury + H55_WeeklyWindmillResQty[mill] + millbonus;
				elseif H55_WeeklyWindmillRes[mill] == 3 then
					millcrystal = millcrystal + H55_WeeklyWindmillResQty[mill] + millbonus;
				elseif H55_WeeklyWindmillRes[mill] == 4 then
					millsulphur = millsulphur + H55_WeeklyWindmillResQty[mill] + millbonus;
				else
					millgems = millgems + H55_WeeklyWindmillResQty[mill] + millbonus;					
				end;
			end;
		end;
		if millore > 0 then
			H55_GlobalWeeklyOrePayout[player] = H55_GlobalWeeklyOrePayout[player]+millore;			
		end;
		if millmercury > 0 then
			H55_GlobalWeeklyMercuryPayout[player] = H55_GlobalWeeklyMercuryPayout[player]+millmercury;			
		end;
		if millcrystal > 0 then	
			H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+millcrystal;			
		end;
		if millsulphur > 0 then	
			H55_GlobalWeeklySulphurPayout[player] = H55_GlobalWeeklySulphurPayout[player]+millsulphur;			
		end;
		if millgems > 0 then
			H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+millgems;			
		end;		
	end;
	
	if H55_Waterwheels ~= nil then
		local wheelgold = 0;
		local wheelbonus = H55_NetworkSkillAmount[player];
		for i,wheel in H55_Waterwheels do
			if H55_WaterwheelsOwned[wheel] == player then
				wheelgold = wheelgold + 1000;
				if wheelbonus >= 1 then
					wheelgold = wheelgold + (wheelbonus*500);
				end;
			end;
		end;
		if wheelgold > 0 then
			H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+wheelgold;			
		end;
	end;
	
	local blood = H55_GetPlayerDragonblood(player)
	for _,town in H55_GetPlayerTowns(player) do
		local growth = H55_TownInfoElementals(player, town, blood)
		local elemtype = H55_GetRaceElementalTypeID(player, H55_GetTownRace(town))
		print(growth)
		if growth > 0 then
			AddObjectCreatures(town,elemtype,growth) -- growth = 0 leads to error
			H55_Display({"/Text/Game/Scripts/Garrison.txt"; num=growth},town,player)
		end
	end
			
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {3,"Reinforcements",player,""};----------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	local heroes = GetPlayerHeroes(player);

	if heroes~=nil then

		--Economic specs

		-- if contains(heroes,"Jenova") ~= nil then
			-- local rndchoice = random(6)+1;
			-- local level = GetHeroLevel("Jenova");
			-- local rndamount = H55_RndGold[rndchoice];
			-- local lvlamount = (H55_GldLevelFactor[level]*500)
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_JenovaReceived == 0)) then
				-- H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+addedamount;
				-- H55_JenovaReceived = 1;
			-- end;
		-- end;
		-- if contains(heroes,"RedHeavenHero06") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("RedHeavenHero06");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_RedHeavenHero06Received == 0)) then
				-- H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+addedamount;
				-- H55_RedHeavenHero06Received = 1;
			-- end;
		-- end;
		-- if contains(heroes,"Vidomina") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("Vidomina");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_VidominaReceived == 0)) then
				-- H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+addedamount;
				-- H55_VidominaReceived = 1;
			-- end;
		-- end;
		-- if contains(heroes,"Vaniel") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("Vaniel");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_VanielReceived == 0)) then
				-- H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+addedamount;
				-- H55_VanielReceived = 1;
			-- end;
		-- end;
		-- if contains(heroes,"Rissa") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("Rissa");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_RissaReceived == 0)) then
				-- H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+addedamount;
				-- H55_RissaReceived = 1;
			-- end;
		-- end;
		-- if contains(heroes,"Calid2") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("Calid2");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_Calid2Received == 0)) then
				-- H55_GlobalWeeklyMercuryPayout[player] = H55_GlobalWeeklyMercuryPayout[player]+addedamount;
				-- H55_Calid2Received = 1;
			-- end;
		-- end;
		-- if contains(heroes,"Sephinroth") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("Sephinroth");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_SephinrothReceived == 0)) then
				-- H55_GlobalWeeklySulphurPayout[player] = H55_GlobalWeeklySulphurPayout[player]+addedamount;
				-- H55_SephinrothReceived = 1;
			-- end;
		-- end;
		-- if contains(heroes,"Ufretin") ~= nil then
			-- local rndchoice = random(5)+1;
			-- local level = GetHeroLevel("Ufretin");
			-- local rndamount = H55_RndResources[rndchoice];
			-- local lvlamount = H55_ResLevelFactor[level]
			-- local addedamount = lvlamount+rndamount
			-- if ((level >= 5) and (H55_UfretinReceived == 0)) then
				-- H55_GlobalWeeklyWoodPayout[player] = H55_GlobalWeeklyWoodPayout[player]+addedamount;
				-- H55_GlobalWeeklyOrePayout[player] = H55_GlobalWeeklyOrePayout[player]+addedamount;
				-- H55_UfretinReceived = 1;
			-- end;
		-- end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {4,"Reinforcements",player,""};-----------------------------------------------------------------------------------------------------

				
		for i,hero in heroes do

			local race = H55_GetHeroRaceNum(hero)

			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {4,"Summons",player,hero};----------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------
		
			if H55_GetHeroClass(hero) == "Demonlord" or H55_GetHeroClass(hero) == "Sorcerer" then
				if HasHeroSkill(hero,SKILL_GATING) == nil then
					local cities = H55_GetAlignedTownsOwned(hero,player)
					local multiplier = 0;
					if cities ~= nil then
						for i,city in cities do
							if GetTownBuildingLevel(city,TOWN_BUILDING_SPECIAL_1) == 1 then
								multiplier = multiplier+1;
							end;
						end;
					end;
					H55_DefendUs(hero,player,Inferno,3,multiplier)
				end;
			end;
			if H55_GetHeroClass(hero) == "Nethermage" or H55_GetHeroClass(hero) == "Deathknight" then
				if HasHeroSkill(hero,SKILL_NECROMANCY) == nil then
					local cities = H55_GetAlignedTownsOwned(hero,player)
					local multiplier = 0;
					if cities ~= nil then
						for i,city in cities do
							if GetTownBuildingLevel(city,TOWN_BUILDING_SPECIAL_1) == 1 then
								multiplier = multiplier+1;
							end;
						end;
					end;
					H55_DefendUs(hero,player,Necropolis,1,multiplier)
				end;
			end;

			if HasHeroSkill(hero,SKILL_LORD_OF_UNDEAD) then
				H55_DefendUs(hero,player,race,1,GetHeroStat(hero,STAT_KNOWLEDGE))
			end	

			if HasHeroSkill(hero,SKILL_EXPLODING_CORPSES) then
				local tier = H55_Casters[race]
				H55_DefendUs(hero,player,race,tier, 0.07 * H55_CreaturesGrowthReal[race][tier] * GetHeroStat(hero,STAT_KNOWLEDGE))
			end
				
			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {5,"Artifacts",player,hero};--------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------

			if HasArtefact(hero,ARTIFACT_SHANTIRI_05,0) and (H55_MoonDiscReceived[hero] ~= 1) then
				local cityrace = H55_GetHeroRace(hero);
				local cities = H55_GetAlignedTownsOwned(hero,player);
				local amount = table.length(cities);
				if amount > 0 then
					for i,city in cities do
						AddObjectCreatures(city,91,1);
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/PhoenixGarrison.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
						H55_MoonDiscReceived[hero] = 1;
					end;
				end;
			end;			
			if HasArtefact(hero,ARTIFACT_RES_WOOD,0) and (H55_ArtWoodReceived[hero] ~= 1) then
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
				local amount = math.round(knowledge/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyWoodPayout[player] = H55_GlobalWeeklyWoodPayout[player]+amount;	
				--H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+1000;
				H55_ArtWoodReceived[hero] = 1;
			end;	
			if HasArtefact(hero,ARTIFACT_RES_ORE,0) and (H55_ArtOreReceived[hero] ~= 1) then
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
				local amount = math.round(knowledge/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyOrePayout[player] = H55_GlobalWeeklyOrePayout[player]+amount;
				--H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+1000;
				H55_ArtOreReceived[hero] = 1;
			end;
			if HasArtefact(hero,ARTIFACT_RES_SULPHUR,0) and (H55_ArtSulphurReceived[hero] ~= 1) then
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
				local amount = math.round(knowledge/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklySulphurPayout[player] = H55_GlobalWeeklySulphurPayout[player]+amount;
				--H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+1000;
				H55_ArtSulphurReceived[hero] = 1;
			end;
			if HasArtefact(hero,ARTIFACT_RES_CRYSTAL,0) and (H55_ArtCrystalReceived[hero] ~= 1) then
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
				local amount = math.round(knowledge/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+amount;
				--H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+1000;
				H55_ArtCrystalReceived[hero] = 1;
			end;
			if HasArtefact(hero,ARTIFACT_RES_GEM,0) and (H55_ArtGemReceived[hero] ~= 1) then
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
				local amount = math.round(knowledge/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+amount;
				--H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+1000;
				H55_ArtGemReceived[hero] = 1;
			end;	
			if HasArtefact(hero,ARTIFACT_RES_MERCURY,0) and (H55_ArtMercuryReceived[hero] ~= 1) then
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
				local amount = math.round(knowledge/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyMercuryPayout[player] = H55_GlobalWeeklyMercuryPayout[player]+amount;
				--H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+1000;
				H55_ArtMercuryReceived[hero] = 1;
			end;

			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {6,"Regalia",player,hero};--------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------
		
			if H55_Governors[hero] ~= 1 then
				local bonus = 0;
				if HasHeroSkill(hero,PERK_RECRUITMENT) then bonus = bonus+5 end;
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then bonus = bonus+10 end;
				if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then bonus = bonus+5 end;
				if HasArtefact(hero,ARTIFACT_LEGION_T1,0) and (H55_GetLegionCap(hero) == 1) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1);
					if growth < 1 then growth = 1 end;				
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][1][2]) and (H55_LegionT1Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][1][2],growth);
							H55_LegionT1Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;	
						elseif (units[i] == H55_Creatures[race][1][3]) and (H55_LegionT1Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][1][3],growth);
							H55_LegionT1Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][1][1]) and (H55_LegionT1Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][1][1],growth);
							H55_LegionT1Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;					
						end;
					end;	
				end;
				if HasArtefact(hero,ARTIFACT_LEGION_T2,0) and (H55_GetLegionCap(hero) == 2) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1.5);
					if growth < 1 then growth = 1 end;				
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][2][2]) and (H55_LegionT2Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][2][2],growth);
							H55_LegionT2Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][2][3]) and (H55_LegionT2Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][2][3],growth);
							H55_LegionT2Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][2][1]) and (H55_LegionT2Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][2][1],growth);
							H55_LegionT2Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;					
						end;
					end;	
				end;
				if HasArtefact(hero,ARTIFACT_LEGION_T3,0) and (H55_GetLegionCap(hero) == 3) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/2);
					if growth < 1 then growth = 1 end;					
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][3][2]) and (H55_LegionT3Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][3][2],growth);
							H55_LegionT3Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][3][3]) and (H55_LegionT3Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][3][3],growth);
							H55_LegionT3Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;	
						elseif (units[i] == H55_Creatures[race][3][1]) and (H55_LegionT3Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][3][1],growth);
							H55_LegionT3Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;							
						end;
					end;	
				end;
				if HasArtefact(hero,ARTIFACT_LEGION_T4,0) and (H55_GetLegionCap(hero) == 4) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/3);
					if growth < 1 then growth = 1 end;				
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][4][2]) and (H55_LegionT4Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][4][2],growth);
							H55_LegionT4Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][4][3]) and (H55_LegionT4Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][4][3],growth);
							H55_LegionT4Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;
						elseif (units[i] == H55_Creatures[race][4][1]) and (H55_LegionT4Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][4][1],growth);
							H55_LegionT4Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						end;
					end;	
				end;			
				if HasArtefact(hero,ARTIFACT_LEGION_T5,0) and (H55_GetLegionCap(hero) == 5) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/4);
					if growth < 1 then growth = 1 end;			
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][5][2]) and (H55_LegionT5Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][5][2],growth);
							H55_LegionT5Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][5][3]) and (H55_LegionT5Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][5][3],growth);
							H55_LegionT5Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;
						elseif (units[i] == H55_Creatures[race][5][1]) and (H55_LegionT5Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][5][1],growth);
							H55_LegionT5Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						end;
					end;	
				end;			
				if HasArtefact(hero,ARTIFACT_LEGION_T6,0) and (H55_GetLegionCap(hero) == 6) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/6);
					if growth < 1 then growth = 1 end;
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][6][2]) and (H55_LegionT6Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][6][2],growth);
							H55_LegionT6Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][6][3]) and (H55_LegionT6Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][6][3],growth);
							H55_LegionT6Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;	
						elseif (units[i] == H55_Creatures[race][6][1]) and (H55_LegionT6Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][6][1],growth);
							H55_LegionT6Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;							
						end;
					end;	
				end;		
				if HasArtefact(hero,ARTIFACT_LEGION_T7,0) then
					local units = H55_ArmyInfoSimple(hero);
					local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/12);
					if growth < 1 then growth = 1 end;				
					local race = H55_GetHeroRaceNum(hero);
					for i = 0,6 do
						if (units[i] == H55_Creatures[race][7][2]) and (H55_LegionT7Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][7][2],growth);
							H55_LegionT7Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;						
						elseif (units[i] == H55_Creatures[race][7][3]) and (H55_LegionT7Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][7][3],growth);
							H55_LegionT7Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;	
						elseif (units[i] == H55_Creatures[race][7][1]) and (H55_LegionT7Received[hero] ~= 1) then
							AddHeroCreatures(hero,H55_Creatures[race][7][1],growth);
							H55_LegionT7Received[hero] = 1;
							if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
								startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Reinforcements.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
							end;							
						end;
					end;	
				end;
			end;
			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {8,"Skillbooks",player,hero};--------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------
			local booksread = 0

			if HasArtefact(hero,ARTIFACT_BOOK_A1,0) then
				ChangeHeroStat(hero,STAT_ATTACK,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,750);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_A1);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_A2,0) then
				ChangeHeroStat(hero,STAT_ATTACK,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1250);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_A2);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_A3,0) then
				ChangeHeroStat(hero,STAT_ATTACK,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,2000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_A3);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_A4,0) then
				ChangeHeroStat(hero,STAT_ATTACK,1);
				ChangeHeroStat(hero,STAT_DEFENCE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1500);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_A4);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_D1,0) then
				ChangeHeroStat(hero,STAT_DEFENCE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,750);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_D1);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_D2,0) then
				ChangeHeroStat(hero,STAT_DEFENCE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1250);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_D2);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_D3,0) then
				ChangeHeroStat(hero,STAT_DEFENCE,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,2000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_D3);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_D4,0) then
				ChangeHeroStat(hero,STAT_ATTACK,1);
				ChangeHeroStat(hero,STAT_DEFENCE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1500);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_D4);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_S1,0) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,750);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_S1);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_S2,0) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1250);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_S2);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_S3,0) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,2000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_S3);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_S4,0) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,1);
				ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1500);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_S4);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_K1,0) then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,750);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_K1);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_K2,0) then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1250);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_K2);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_K3,0) then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,2000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_K3);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_K4,0) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,1);
				ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,1500);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_K4);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_R1,0) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,2);
				ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,4000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_R1);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_R2,0) then
				ChangeHeroStat(hero,STAT_ATTACK,2);
				ChangeHeroStat(hero,STAT_DEFENCE,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,4000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_R2);
			end;
			if HasArtefact(hero,ARTIFACT_BOOK_R3,0) then
				ChangeHeroStat(hero,STAT_ATTACK,1);
				ChangeHeroStat(hero,STAT_DEFENCE,1);
				ChangeHeroStat(hero,STAT_SPELL_POWER,1);
				ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
				ChangeHeroStat(hero,STAT_EXPERIENCE,5000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_BOOK_R3);
			end;
			if HasArtefact(hero,ARTIFACT_GEAR_07,0) then
				TeachHeroSpell(hero,SPELL_EMPOWERED_MAGIC_ARROW);
				ChangeHeroStat(hero,STAT_SPELL_POWER,1);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_GEAR_07);
			end;
			if HasArtefact(hero,ARTIFACT_CODEX,0) then
				local count1 = table.length(H55_LightSpells)
				local count2 = table.length(H55_DarkSpells)
				local count3 = table.length(H55_SummoningSpells)
				local count4 = table.length(H55_DestructiveSpells)
				for i=1,count1 do
					TeachHeroSpell(hero,H55_LightSpells[i]);
				end;
				for i=1,count2 do
					TeachHeroSpell(hero,H55_DarkSpells[i]);
				end;
				for i=1,count3 do
					TeachHeroSpell(hero,H55_SummoningSpells[i]);
				end;
				for i=1,count4 do
					TeachHeroSpell(hero,H55_DestructiveSpells[i]);
				end;
				ChangeHeroStat(hero,STAT_ATTACK,2);
				ChangeHeroStat(hero,STAT_DEFENCE,2);
				ChangeHeroStat(hero,STAT_SPELL_POWER,2);
				ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
				ChangeHeroStat(hero,STAT_EXPERIENCE,500000);
				booksread = booksread+1;
				RemoveArtefact(hero,ARTIFACT_CODEX);
			end;
			if booksread == 1 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Skillbook.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			elseif booksread >= 2 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Skillbooks.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;

			H55_Booksread[hero] = (H55_Booksread[hero] or 0) + booksread

			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {8,"Governance",player,hero};-------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------

			if not H55_IsThisAIPlayer(player) and H55_GovernanceEnabled == 1 and H55_Governors[hero] == 1 then
				local town = H55_GovernorsWithTown[hero];
				local townrace = H55_GetTownRace(town);
				local herorace = H55_GetHeroRaceNum(hero);
				local extralegiont01 = 0;
				local extralegiont02 = 0;
				local extralegiont03 = 0;
				local extralegiont04 = 0;
				local extralegiont05 = 0;
				local extralegiont06 = 0;
				local extralegiont07 = 0;
				local growthcoef = 1+(GetHeroLevel(hero)*0.01);
				if HasArtefact(hero,ARTIFACT_GOVERNOR_01,1) then growthcoef = growthcoef + 0.05 end;
				local bonus = 5;
				if HasHeroSkill(hero,PERK_RECRUITMENT) then bonus = bonus+5 end;
				if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then bonus = bonus+10 end;
				if IsObjectExists(hero) ~= 1 then 	
					H55_ResetConquestHero(hero);
				elseif GetObjectOwner(town) ~= player then 
					H55_ResetConquestHero(hero);
				else
					if HasArtefact(hero,ARTIFACT_LEGION_T1,0) and (H55_GetLegionCap(hero) == 1) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 and growth >= 1 then
							extralegiont01 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T2,0) and (H55_GetLegionCap(hero) == 2) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1.5);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 and growth >= 1 then
							extralegiont02 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T3,0) and (H55_GetLegionCap(hero) == 3) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/2);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 and growth >= 1 then
							extralegiont03 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T4,0) and (H55_GetLegionCap(hero) == 4) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/3);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 and growth >= 1 then
							extralegiont04 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T5,0) and (H55_GetLegionCap(hero) == 5) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/4);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 and growth >= 1 then
							extralegiont05 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T6,0) and (H55_GetLegionCap(hero) == 6) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/6);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and growth >= 1 then
							extralegiont06 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T7,0) and (H55_GetLegionCap(hero) == 7) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/12);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and growth >= 1 then
							extralegiont07 = growth;
						end;
						if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
							startThread(H55_ProtectedSignAdd,"/Text/Game/Scripts/Recruits.txt",growth,hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;

					H55_GovernanceTier1[hero] = extralegiont01 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][1]))-(2*H55_CreaturesGrowth[townrace][1]));
					H55_GovernanceTier2[hero] = extralegiont02 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][2]))-(2*H55_CreaturesGrowth[townrace][2]));
					H55_GovernanceTier3[hero] = extralegiont03 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][3]))-(2*H55_CreaturesGrowth[townrace][3]));
					H55_GovernanceTier4[hero] = extralegiont04 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][4]))-(2*H55_CreaturesGrowth[townrace][4]));
					H55_GovernanceTier5[hero] = extralegiont05 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][5]))-(2*H55_CreaturesGrowth[townrace][5]));
					H55_GovernanceTier6[hero] = extralegiont06 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][6]))-(2*H55_CreaturesGrowth[townrace][6]));
					H55_GovernanceTier7[hero] = extralegiont07 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][7]))-(2*H55_CreaturesGrowth[townrace][7]));
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 and H55_GovernanceTier1[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) + H55_GovernanceTier1[hero]);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 and H55_GovernanceTier2[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) + H55_GovernanceTier2[hero]);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 and H55_GovernanceTier3[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) + H55_GovernanceTier3[hero]);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 and H55_GovernanceTier4[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) + H55_GovernanceTier4[hero]);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 and H55_GovernanceTier5[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) + H55_GovernanceTier5[hero]);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and H55_GovernanceTier6[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) + H55_GovernanceTier6[hero]);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and H55_GovernanceTier7[hero] >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) + H55_GovernanceTier7[hero])
					end;
				end;
			end;			
		end;
	end;
end;

function H55_ResetWeeklyEvents()

	------------------------------------------------------------------------------------------------------------------------------------------------
	--H55_DEBUG = {8a,"Reset",0,""};------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	H55_WeeklyRecruitsTable = {};
	H55_WeeklyReinforceTable = {};
	H55_InfernalLoomTable = {};
	
	H55_ArtWoodReceived = {};
	H55_ArtOreReceived = {};
	H55_ArtCrystalReceived = {};
	H55_ArtSulphurReceived = {};
	H55_ArtMercuryReceived = {};	
	H55_ArtGemReceived = {};

	H55_LegionT1Received = {};
	H55_LegionT2Received = {};
	H55_LegionT3Received = {};
	H55_LegionT4Received = {};
	H55_LegionT5Received = {};
	H55_LegionT6Received = {};
	H55_LegionT7Received = {};
	
	H55_SpellcastersReceived = {};
	H55_ElementalsReceived = {};
	H55_MoonDiscReceived = {};
	H55_DivineGuardiansReceived = {0,0,0,0,0,0,0,0};	

	for i,garden in H55_MysticalGardens do
		H55_WeeklyMysticalGardenRes[garden] = random(2);
	end;
	for i,mill in H55_Windmills do
		H55_WeeklyWindmillRes[mill] = 1+random(5);
		H55_WeeklyWindmillResQty[mill] = 3+random(5);
	end;
	for i,workshop in H55_SiegeWorkshops do
		H55_WeeklySiegeWorkshopResQty[workshop] = 3+random(5);
	end;

	--Map level weekly event
	
	if H55_SPMapWeeklyEvent == 1 then
		H55_SPMap_WeeklyEvent();
	end;	

	H55_WeeklyEventsDone = {};
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--DAILY EVENT
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_AdjustGovernorDefense(hero,town)

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {9,"GovDefense",0,hero};-----------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if town == nil then
		ChangeHeroStat(hero,STAT_DEFENCE,-H55_CastleDefenseOwners[hero]);
		ChangeHeroStat(hero,STAT_SPELL_POWER,-H55_MageGuildBonusOwners[hero]);
		ChangeHeroStat(hero,STAT_ATTACK,-H55_SpecialAttackOwners[hero]);
		ChangeHeroStat(hero,STAT_KNOWLEDGE,-H55_SpecialKnowledgeOwners[hero]);
		ChangeHeroStat(hero,STAT_SPELL_POWER,-H55_SpecialSpellPowerOwners[hero]);
		ChangeHeroStat(hero,STAT_KNOWLEDGE,-H55_RunicShrineBonusOwners[hero]);
		H55_CastleDefenseOwners[hero] = 0;
		H55_MageGuildBonusOwners[hero] = 0;
		H55_SpecialAttackOwners[hero] = 0;
		H55_SpecialKnowledgeOwners[hero] = 0;
		H55_SpecialSpellPowerOwners[hero] = 0;
		H55_RunicShrineBonusOwners[hero] = 0;
	else
		local townrace = H55_GetTownRace(town)
		if townrace == 8 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local shrine = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local hut = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
			local pile = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
			if pile == 1 then pile = 2 end;
			if hut == 1 then hut = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if shrine > H55_RunicShrineBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(shrine-H55_RunicShrineBonusOwners[hero]));
				H55_RunicShrineBonusOwners[hero] = shrine;
			end;	
			if pile > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(pile-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = pile;
			end;	
			if hut > H55_SpecialSpellPowerOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(hut-H55_SpecialSpellPowerOwners[hero]));
				H55_SpecialSpellPowerOwners[hero] = hut;
			end;	
		elseif townrace == 7 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local shrine = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if shrine > H55_RunicShrineBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(shrine-H55_RunicShrineBonusOwners[hero]));
				H55_RunicShrineBonusOwners[hero] = shrine;
			end;	
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 6 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;	
		elseif townrace == 5 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialKnowledgeOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(altar-H55_SpecialKnowledgeOwners[hero]));
				H55_SpecialKnowledgeOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;		
		elseif townrace == 4 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialKnowledgeOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(altar-H55_SpecialKnowledgeOwners[hero]));
				H55_SpecialKnowledgeOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 3 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 2 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		else
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		end;
	end;
end;

function H55_DailyEvents(player)

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {10,"Dwellings",player,""};---------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	

	local playerrace = H55_PlayerFactions[player];
	local dwellingrace = H55_GetTownRaceID(playerrace);	
	local alltowns = GetObjectNamesByType("TOWN");
	local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");
	local townsofrace = H55_GetAmountAlignedTowns(playerrace);
	
	if H55_IsThisAIPlayer(player) and H55_TownConvEnabled == 1 then
		H55_DEBUG = {101,"Dwellings",player,""}
		local amountT1dwellings = table.length(GetObjectNamesByType(H55_T1DwellingTypes[playerrace]));
		local amountT2dwellings = table.length(GetObjectNamesByType(H55_T2DwellingTypes[playerrace]));
		local amountT3dwellings = table.length(GetObjectNamesByType(H55_T3DwellingTypes[playerrace]));
		local amountT4dwellings = table.length(GetObjectNamesByType(H55_T4DwellingTypes[playerrace]));

		local allT1dwellings = {};	
		local allT2dwellings = {};
		local allT3dwellings = {};
		local allT4dwellings = {};	
		H55_DEBUG = {102,"Dwellings",player,""}

		for i=1,8 do
			allT1dwellings[i] = GetObjectNamesByType(H55_T1DwellingTypes[i])
			allT2dwellings[i] = GetObjectNamesByType(H55_T2DwellingTypes[i])
			allT3dwellings[i] = GetObjectNamesByType(H55_T3DwellingTypes[i])
			allT4dwellings[i] = GetObjectNamesByType(H55_T4DwellingTypes[i])
		end;	
		H55_DEBUG = {103,"Dwellings",player,""}	
		if amountT1dwellings < H55_MaxDwellingsT1 then
			for i=1,8 do
				for j,dwelling in allT1dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT1DwellingRace(dwelling) ~= playerrace)  then
						ReplaceDwelling(dwelling,dwellingrace);
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;
					end;
				end;
			end;
		end;
		H55_DEBUG = {104,"Dwellings",player,""}
		if amountT2dwellings < H55_MaxDwellingsT2 then
			for i=1,8 do
				for j,dwelling in allT2dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT2DwellingRace(dwelling) ~= playerrace)  then
						ReplaceDwelling(dwelling,dwellingrace);
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;						
					end;
				end;
			end;
		end;
		H55_DEBUG = {105,"Dwellings",player,""}
		if amountT3dwellings < H55_MaxDwellingsT3 then
			for i=1,8 do
				for j,dwelling in allT3dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT3DwellingRace(dwelling) ~= playerrace) and table.contains(H55_UniqueDwellings,dwelling) == nil then
						if H55_GetT3DwellingRace(dwelling) == 2 then
							ReplaceDwelling(dwelling,dwellingrace);
							if H55_GetT3DwellingRace(dwelling) == 2 and playerrace ~= 2 then table.inject(H55_UniqueDwellings,dwelling) end;
						else
							ReplaceDwelling(dwelling,dwellingrace);
						end;
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;						
					end;
				end;
			end;
		end;
		H55_DEBUG = {106,"Dwellings",player,""}
		if amountT4dwellings < H55_MaxDwellingsT4 then
			for i=1,8 do
				for j,dwelling in allT4dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT4DwellingRace(dwelling) ~= playerrace) and table.contains(H55_UniqueDwellings,dwelling) == nil then
						if H55_GetT4DwellingRace(dwelling) == 2 then
							ReplaceDwelling(dwelling,dwellingrace);
							if H55_GetT4DwellingRace(dwelling) == 2 and playerrace ~= 2 then table.inject(H55_UniqueDwellings,dwelling) end;
						elseif H55_GetT4DwellingRace(dwelling) == 4 then
							ReplaceDwelling(dwelling,dwellingrace);
							if H55_GetT4DwellingRace(dwelling) == 4 and playerrace ~= 4 then table.inject(H55_UniqueDwellings,dwelling) end;
						else
							ReplaceDwelling(dwelling,dwellingrace);
						end;
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;						
					end;
				end;
			end;
		end;
		H55_DEBUG = {107,"Dwellings",player,""}
	end;
	
	if H55_IsThisAIPlayer(player) then
		for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
			if GetObjectOwner(academy) == player then
				DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
			end;
		end;
		for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
			if GetObjectOwner(dungeon) == player then
				DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
			end;
		end;
	end;	
	H55_DEBUG = {108,"Dwellings",player,""}
	
	local heroes = GetPlayerHeroes(player);


		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {12,"GovExp",player,hero};----------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		
		if H55_IsThisAIPlayer(player) and H55_GovernanceEnabled == 1 and H55_Day >= 21 then
			local level = GetHeroLevel(hero);
			local amount = math.round(300+((1+(level/10))*(level*level)));
			GiveExp(hero,amount);
		end;		
		if not H55_IsThisAIPlayer(player) and H55_Governors[hero] == 1 then
			local town = H55_GovernorsWithTown[hero];
			local herorace = H55_GetHeroRaceNum(hero)
			local townrace = H55_GetTownRace(town)
			local herolevel = GetHeroLevel(hero);
			if IsObjectExists(hero) ~= 1 then 
				H55_ResetConquestHero(hero,town);
			elseif GetObjectOwner(town) ~= player then 
				H55_ResetConquestHero(hero,town);	
			elseif townrace ~= herorace then
				H55_ResetConquestHero(hero,town);			
			else
				local movement = GetHeroStat(hero,STAT_MOVE_POINTS);
				local movereduction1 = math.round(movement*0.25);
				local movereduction2 = math.round(movement*0.50);
				local movereduction3 = math.round(movement*0.75);
				local distance = H55_GetDistance(hero,town);
				local expgain = H55_GetHeroEnlightenmentStrength(hero);
				local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
				local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
				local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);				
				local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
				local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
				local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
				local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
				local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
				local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
				local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
				local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
				local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
				local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
				local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
				local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
				local special1 = 0;
				local special2 = 0;
				local special3 = 0;
				local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
				local special5 = 0;
				if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
					special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
				end;				
				if townrace == 2 then
					special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
				else
					special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
				end;
				if townrace == 6 then
					special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
				else
					special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
				end;
				if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
					special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
				else
					special5 = 0;
				end;
				local townvalue = tavern+marketplace+blacksmith+fort+townhall+guild+shipyard+dwelling1+dwelling2+dwelling3+dwelling4+dwelling5+dwelling6+dwelling7+grail+special1+special2+special3+special4+special5;			
				
				local experience = math.round(H55_GovernorExpCoef*(expgain* ( (townvalue*10)+((1+(herolevel/10))*(herolevel*herolevel)) ) ) );
				if townhall == 4 then experience = experience+90 end;
				if distance >= 50 and distance < 75 then
					H55_AdjustGovernorDefense(hero,nil);
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction1);
					if herolevel < 98 then
						GiveExp(hero,(math.round(0.5*experience)));
					end;
					if H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_LittleFar.txt",hero,player,5) end;
				elseif distance >= 75 and distance < 100 then
					H55_AdjustGovernorDefense(hero,nil);
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction2);
					if H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Far.txt",hero,player,5) end;
				elseif distance >= 100 then
					H55_AdjustGovernorDefense(hero,nil);
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction3);
					if H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Lost.txt",hero,player,5) end;
				elseif distance < 50 and herolevel < 5 then
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction1);
					H55_AdjustGovernorDefense(hero,town);
					GiveExp(hero,experience);
				else
					H55_AdjustGovernorDefense(hero,town);
					if herolevel < 98 then
						GiveExp(hero,experience);
					end;
				end;

				-- Update Info Window

				if H55_Workday ~= 1 then
					local extralegiont01 = 0;
					local extralegiont02 = 0;
					local extralegiont03 = 0;
					local extralegiont04 = 0;
					local extralegiont05 = 0;
					local extralegiont06 = 0;
					local extralegiont07 = 0;
					local growthcoef = 1+(GetHeroLevel(hero)*0.01);
					if HasArtefact(hero,ARTIFACT_GOVERNOR_01,1) then growthcoef = growthcoef + 0.05 end;
					local bonus = 5;
					if HasHeroSkill(hero,PERK_RECRUITMENT) then bonus = bonus+5 end;
					if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then bonus = bonus+10 end;
					if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then bonus = bonus+5 end;
					if HasArtefact(hero,ARTIFACT_LEGION_T1,0) and (H55_GetLegionCap(hero) == 1) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 and growth >= 1 then
							extralegiont01 = growth;
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T2,0) and (H55_GetLegionCap(hero) == 2) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1.5);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 and growth >= 1 then
							extralegiont02 = growth;
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T3,0) and (H55_GetLegionCap(hero) == 3) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/2);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 and growth >= 1 then
							extralegiont03 = growth;
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T4,0) and (H55_GetLegionCap(hero) == 4) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/3);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 and growth >= 1 then
							extralegiont04 = growth;
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T5,0) and (H55_GetLegionCap(hero) == 5) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/4);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 and growth >= 1 then
							extralegiont05 = growth;
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T6,0) and (H55_GetLegionCap(hero) == 6) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/6);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and growth >= 1 then
							extralegiont06 = growth;
						end;
					end;
					if HasArtefact(hero,ARTIFACT_LEGION_T7,0) and (H55_GetLegionCap(hero) == 7) then
						local growth = math.round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/12);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and growth >= 1 then
							extralegiont07 = growth;
						end;
					end;
					H55_GovernanceTier1[hero] = extralegiont01 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][1]))-(2*H55_CreaturesGrowth[townrace][1]));
					H55_GovernanceTier2[hero] = extralegiont02 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][2]))-(2*H55_CreaturesGrowth[townrace][2]));
					H55_GovernanceTier3[hero] = extralegiont03 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][3]))-(2*H55_CreaturesGrowth[townrace][3]));
					H55_GovernanceTier4[hero] = extralegiont04 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][4]))-(2*H55_CreaturesGrowth[townrace][4]));
					H55_GovernanceTier5[hero] = extralegiont05 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][5]))-(2*H55_CreaturesGrowth[townrace][5]));
					H55_GovernanceTier6[hero] = extralegiont06 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][6]))-(2*H55_CreaturesGrowth[townrace][6]));
					H55_GovernanceTier7[hero] = extralegiont07 + (math.round(growthcoef*(2*H55_CreaturesGrowth[townrace][7]))-(2*H55_CreaturesGrowth[townrace][7]));
				end;
			end;
		end;
		
		if strongholdtowns ~= nil then
			local deficit = 0;
			local mana = GetHeroStat(hero,STAT_MANA_POINTS);
			local manatotal = 10 * GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasHeroSkill(hero,SKILL_INTELLIGENCE) then
				manatotal = (math.round(1.4*manatotal))-1;
			end;
			if mana < manatotal then
				deficit = manatotal-mana;
				for i, town in strongholdtowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) >= 1) and (H55_GetDistance(hero,town) <= 6) then
						H55_ModifyMana(hero,deficit);
					end;
				end;				
			end;
		end;		
		
		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {13,"ArtDaily",player,hero};--------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		H55_DailyManaPayout[hero] = 0;
		if H55_DailyManaPayout[hero] >= 1 then
			H55_ModifyMana(hero,H55_DailyManaPayout[hero]);
		end;	
		if HasArtefact(hero,34,1) and HasArtefact(hero,35,1) then
			GiveExp(hero,(H55_Day*10));
		end;
		if HasArtefact(hero,ARTIFACT_ENDLESS_BAG_OF_GOLD,0) then
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
			if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
			local amount = math.round(knowledge*25);
			H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;
		end;
		if HasArtefact(hero,ARTIFACT_ENDLESS_SACK_OF_GOLD,0) then
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
			if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
			local amount = math.round(knowledge*50);
			H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;
		end;
		if HasArtefact(hero,ARTIFACT_HORN_OF_PLENTY,0) then
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
			if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
			local amount = math.round(knowledge*75);
			H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;
		end;
		if HasArtefact(hero,ARTIFACT_GEAR_08,0) then
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
			if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
			local amount = math.round(knowledge*200);
			H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;
		end;
		if HasArtefact(hero,ARTIFACT_GOVERNOR_02,0) then
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) then knowledge = knowledge+10 end;
			if HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) then knowledge = knowledge+5 end;
			local amount = math.round(knowledge/2);
			local goldamount = math.round((knowledge/2)*1000);
			if amount < 1 then amount = 1 end;
			if H55_Workday == 1 then
				H55_GlobalDailyWoodPayout[player] = H55_GlobalDailyWoodPayout[player]+amount;				
			elseif H55_Workday == 2 then
				H55_GlobalDailyOrePayout[player] = H55_GlobalDailyOrePayout[player]+amount;
			elseif H55_Workday == 3 then
				H55_GlobalDailySulphurPayout[player] = H55_GlobalDailySulphurPayout[player]+amount;
			elseif H55_Workday == 4 then
				H55_GlobalDailyGemPayout[player] = H55_GlobalDailyGemPayout[player]+amount;
			elseif H55_Workday == 5 then
				H55_GlobalDailyMercuryPayout[player] = H55_GlobalDailyMercuryPayout[player]+amount;
			elseif H55_Workday == 6 then
				H55_GlobalDailyCrystalPayout[player] = H55_GlobalDailyCrystalPayout[player]+amount;
			else 
				H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+goldamount;			
			end;
		end;	
		

		if (HasHeroSkill(hero,SKILL_GRAIL_VISION) ~= nil) then
			local rndchoice = random(7);
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			local amount = 1;
			if knowledge >= 20 then amount = 2 end;
			if rndchoice == 0 then
				H55_GlobalDailyWoodPayout[player] = H55_GlobalDailyWoodPayout[player]+amount;	
			elseif rndchoice == 1 then
				H55_GlobalDailyOrePayout[player] = H55_GlobalDailyOrePayout[player]+amount;
			elseif rndchoice == 2 then
				H55_GlobalDailyMercuryPayout[player] = H55_GlobalDailyMercuryPayout[player]+amount;
			elseif rndchoice == 3 then
				H55_GlobalDailyCrystalPayout[player] = H55_GlobalDailyCrystalPayout[player]+amount;		
			elseif rndchoice == 4 then
				H55_GlobalDailySulphurPayout[player] = H55_GlobalDailySulphurPayout[player]+amount;
			elseif rndchoice == 5 then	
				H55_GlobalDailyGemPayout[player] = H55_GlobalDailyGemPayout[player]+amount;			
			else
				H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;			
			end;
		end;			
	end;

	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {15,"AI Fixes",player,""};-----------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if H55_IsThisAIPlayer(player) and H55_TownConvEnabled == 1 and H55_GameMode == 3 then
		if townsofrace < H55_MaxTownsPerFaction then
			for i,town in alltowns do
				if GetObjectOwner(town) == player and (H55_GetTownRace(town) ~= playerrace) and (H55_IsAnyHeroInTown(town,player) == 0) then
					H55_ConvertNowAI(town,player,playerrace);
				end;
			end;
		end;
	end;
	
	if H55_IsThisAIPlayer(player) and H55_ForceAIFix == 1 and H55_CheckPlayerHasTowns(player) == 0 then
		H55_InvokeNuclearOption(player);
	end;	
	
	--Duel map
	
	if H55_ARMG_Duel == 1 and H55_Day == 8 then
		for i, town in alltowns do
			RazeTown(town);
		end;
	end;
	
	--Map level daily event
	
	if H55_SPMapDailyEvent == 1 then
		H55_SPMap_DailyEvent();
	end;
	
	print("H55 Daily Event "..H55_DailyEventsCounter[player].." Finished");
end;	

-----------------------------------------------------------------------------------------------------------------------------------------------------
--CONTINUES EVENT
-----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_ContinuesEvent(player)
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {16,"Header",player,""};-------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	local heroes = GetPlayerHeroes(player);
	
	local alltowns = GetObjectNamesByType("TOWN");
	local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");	
	local dungeontowns = GetObjectNamesByType("TOWN_DUNGEON");
	local sylvantowns = GetObjectNamesByType("TOWN_PRESERVE");
	local fortresstowns = GetObjectNamesByType("TOWN_FORTRESS");
	local infernotowns = GetObjectNamesByType("TOWN_INFERNO");
	
	ci = GetLastSavedCombatIndex();
	
	if H55_IsThisAIPlayer(player) then
		H55_AmountCyclesAI = H55_AmountCyclesAI+1;
	end;
	
	--delayed prepare adv map for map level settings
	
	if H55_DelayedVariables == 0 and H55_ARMG_Duel == 0 then
		sleep(1);
		if table.containsamount(H55_PlayerStatus,0) >= 2 then
			consoleCmd("setvar dev_console_password = disabled");
		end;
		if H55_MapType == "Campaign" or H55_MapType == "Scenario" then
			H55_GovernanceEnabled = 0;
			H55_TownConvEnabled = 0;
			H55_MineControl = 0;
		end;
		if H55_MapType == "Multiplayer" or H55_MapType == "RMG" then
			H55_ForceAIFix = 1;
		end;
		if H55_BuildNeutralTowns ~= 0 then
			H55_ConstructNeutralTowns(H55_BuildNeutralTowns);
		end;
		if H55_BuildPlayerTowns ~= 0 then
			H55_ConstructPlayerTowns(H55_BuildPlayerTowns);
		end;
		-- if H55_AIHandicap == 1 then
			-- for i=1,8 do
				-- if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i)) then
					-- SetPlayerResource(i,0,0);
					-- SetPlayerResource(i,1,0);
					-- SetPlayerResource(i,2,0);
					-- SetPlayerResource(i,3,0);
					-- SetPlayerResource(i,4,0);
					-- SetPlayerResource(i,5,0);
					-- SetPlayerResource(i,6,0);
				-- end;
			-- end;
			-- print("H55 AI starts completely bankrupt.");
		-- end;
		if H55_LowResGame == 1 then
			for i=1,8 do
				if (GetPlayerState(i) == 1) and (not H55_IsThisAIPlayer(i)) then
					H55_TakeResourcesSilent(i,0,10);
					H55_TakeResourcesSilent(i,1,10);
					H55_TakeResourcesSilent(i,2,5);
					H55_TakeResourcesSilent(i,3,5);
					H55_TakeResourcesSilent(i,4,5);
					H55_TakeResourcesSilent(i,5,5);
					H55_TakeResourcesSilent(i,6,10000);			
				end;
			end;
			print("H55 Low resource game is activated");
		end;
		if H55_IgnoreExpAdjustment == 1 then
			H55_SetEasyExperience();
		end;
		if H55_NeutralStackSize ~= 1 then
			-- H55_IncStackSize(H55_NeutralStackSize)
		end
		H55_DelayedVariables = 1;
	end;
	
	--duel mode
	
	if H55_ARMG_Duel == 1 then
		if not H55_IsThisAIPlayer(player) and H55_Duel_MessageShown[player] == 0 then
			MessageBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/Duel/DuelIntro.txt","H55_DuelStart");
			H55_Duel_MessageShown[player] = 1;
		end;
		if player == 1 and table.length(GetPlayerHeroes(2)) == 0 then
			Win(player);
		end;
		if player == 2 and table.length(GetPlayerHeroes(1)) == 0 then
			Win(player);
		end;
	end;

	if H55_PlayerTeams[player] == nil then
		for i=1,8 do
			if IsTeamCurrent(i) then
				H55_PlayerTeams[player] = i;
			end;
		end;
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {17,"Primaries",player,""};-------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	for i,hero in heroes do

		--local level = GetHeroLevel(hero);

		if hero == "Crag" then H55_AdjustStatSpec(player,"Crag",1,7) end;
		if hero == "Nadaur" then H55_AdjustStatSpec(player,"Nadaur",1,7) end;
		if hero == "Tazar" then H55_AdjustStatSpec(player,"Tazar",2,7) end;
		if hero == "Sandro" then H55_AdjustStatSpec(player,"Sandro",3,6) end;
		if hero == "Timerkhan" then H55_AdjustStatSpec(player,"Timerkhan",3,6) end;
		if hero == "Maahir" then H55_AdjustStatSpec(player,"Maahir",4,7) end;
		if hero == "Tan" then H55_AdjustStatSpec(player,"Tan",3,8) end;
		if hero == "Elleshar" then H55_AdjustStatSpec(player,"Elleshar",4,7) end;
		if hero == "Vinrael" then H55_AdjustStatSpec(player,"Vinrael",3,6) end;
		if hero == "Efion" then H55_AdjustStatSpec(player,"Efion",3,7) end;
		if hero == "Nemor" then H55_AdjustStatSpec(player,"Nemor",4,7) end;
		if hero == "Aberrar" then H55_AdjustStatSpec(player,"Aberrar",3,7) end;
		if hero == "Maeve" then H55_AdjustStatSpec(player,"Maeve",3,7) end;
		if hero == "Nelech" then H55_AdjustStatSpec(player,"Nelech",3,7) end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {180,"Avatars",player,hero};----------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		local t6 = H55_Creatures[H55_GetHeroRaceNum(hero)][6]
		local army = H55_ArmyInfoSimple(hero)
		for _, creature in army  do
			if (not creature or creature == 0) then break end
			local amount = GetHeroCreatures(hero, creature)
			if creature == CREATURE_PHOENIX and not HasHeroSkill(hero, SKILL_MASTER_OF_CREATURES) and H55_Ultimates[SKILL_SUMMONING_MAGIC]["player"][player] then
				ChangeHeroStat(hero, STAT_MANA_POINTS, -999)
			end
			if creature == CREATURE_SNOW_APE and not HasHeroSkill(hero, SKILL_RUNIC_ARMOR) and H55_Ultimates[SKILL_DARK_MAGIC]["player"][player] then
				ChangeHeroStat(hero, STAT_MANA_POINTS, -999)
			end
			if creature == CREATURE_BLACK_KNIGHT and not HasHeroSkill(hero, SKILL_SHATTER_LIGHT_MAGIC) and H55_Ultimates[SKILL_LIGHT_MAGIC]["player"][player] then
				ChangeHeroStat(hero, STAT_MANA_POINTS, -999)
			end
			if HasHeroSkill(hero, SKILL_MASTER_OF_CREATURES) and contains(t6, creature) then
				RemoveHeroCreatures(hero, creature, amount)
				AddHeroCreatures(hero, CREATURE_PHOENIX, amount)
			end
			if HasHeroSkill(hero, SKILL_RUNIC_ARMOR) and contains(t6, creature) then
				RemoveHeroCreatures(hero, creature, amount)
				AddHeroCreatures(hero, CREATURE_SNOW_APE, amount)
			end
			if HasHeroSkill(hero, SKILL_SHATTER_LIGHT_MAGIC) and contains(t6, creature) then
				RemoveHeroCreatures(hero, creature, amount)
				AddHeroCreatures(hero, CREATURE_BLACK_KNIGHT, amount)
			end
		end

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {181,"Curses",player,hero};----------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		local mana = 0.65 * GetHeroStat(hero, STAT_KNOWLEDGE) * (HasHeroSkill(hero, SKILL_INTELLIGENCE) and 1.0 or 1.2)
		
		if not HasHeroSkill(hero, SKILL_DARK_RITUAL) then
			if H55_Day <= H55_DarkRitualDay and GetHeroStat(hero, STAT_MANA_POINTS) > mana then
				ChangeHeroStat(hero, STAT_MANA_POINTS, mana)
			end
		end

		local curses = H55_Curses - GetHeroSkillMastery(hero, SKILL_SHATTER_DARK_MAGIC)

		if curses < 1 or H55_IsThisAIPlayer(player) then
			if HasArtefact(hero, ARTIFACT_HELM_OF_CHAOS) then
				RemoveArtefact(hero, ARTIFACT_HELM_OF_CHAOS)
			end
		elseif not HasArtefact(hero, ARTIFACT_HELM_OF_CHAOS) then
			GiveArtefact(hero, ARTIFACT_HELM_OF_CHAOS)
		end

		local badboy = curses > 0 and not HasArtefact(hero, ARTIFACT_HELM_OF_CHAOS,1)

		H55_ChangeHeroStatOn(hero, 300, STAT_MORALE, badboy and -2 or 0)
		H55_ChangeHeroStatOn(hero, 301, STAT_LUCK, badboy and -2 or 0)


		if H55_RPGPotions == 1 then
			if HasArtefact(hero,ARTIFACT_POTION02,1) and GetHeroStat(hero, STAT_MOVE_POINTS) <= 100 then
				RemoveArtefact(hero,ARTIFACT_POTION02)
				ChangeHeroStat(hero,STAT_MOVE_POINTS,3000);
				H55_Display("/Text/Game/Scripts/Movepotion.txt",hero,player)
			end
		end

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {182,"BattleBonus",player,hero};------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		-- H55_ChangeHeroStatOnSkill(hero, SKILL_SHATTER_SUMMONING_MAGIC, STAT_HEALTH, 5)
		-- H55_ChangeHeroStatOnSkill(hero, SKILL_SHATTER_DESTRUCTIVE_MAGIC, STAT_INITIATIVE, 0.7)


		if not H55_IsThisAIPlayer(player) then
			if H55_TownConvEnabled == 1 or H55_TownGateEnabled == 1 or H55_GovernanceEnabled == 1 then
				if H55_TownManageOwners[hero] ~= 1 then
					ControlHeroCustomAbility(hero,CUSTOM_ABILITY_4,CUSTOM_ABILITY_ENABLED);
					H55_TownManageOwners[hero] = 1;
				end;
			end;
		end;
		if H55_GetHeroClass(hero) == "Witch" then
			if strongholdtowns ~= nil then
				for i, town in strongholdtowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) >= 1) and H55_HallTrialStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_DEFENCE,2);
						H55_HallTrialStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) >= 2) and H55_HallCourageStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_DEFENCE,2);
						H55_HallCourageStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 3) and H55_HallMightStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_DEFENCE,2);
						H55_HallMightStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3) == 1) and H55_WalkerHutStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_DEFENCE,2);
						H55_WalkerHutStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4) == 1) and H55_PileSkullsStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						if GetHeroLevel(hero) >= 10 then TeachHeroSpell(hero, SPELL_SUMMON_BOAT) end
						if GetHeroLevel(hero) >= 15 then TeachHeroSpell(hero, SPELL_SUMMON_CREATURES) end
						if GetHeroLevel(hero) >= 20 then TeachHeroSpell(hero, SPELL_TOWN_PORTAL) end
						ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
						H55_PileSkullsStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Knowledge.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Overlords,hero) then
			if dungeontowns ~= nil then
				for i, town in dungeontowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6) == 1) and H55_HallIntrigueStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_DEFENCE,1);
						H55_HallIntrigueStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Tricksters,hero) then
			if dungeontowns ~= nil then
				for i, town in dungeontowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6) == 1) and H55_HallIntrigueStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
						H55_HallIntrigueStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Knowledge.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 1) and H55_ElementalAltarStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_MORALE,1);
						H55_ElementalAltarStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Morale.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Tricksters,hero) or table.contains(H55_Overlords,hero) then
			if dungeontowns ~= nil then
				for i, town in dungeontowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 2) and H55_PrimalAltarStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_ATTACK,1);
						H55_PrimalAltarStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Attack.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Druids,hero) then
			if sylvantowns ~= nil then
				for i, town in sylvantowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2) == 2) and H55_FountainStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_SPELL_POWER,1);
						H55_FountainStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Rangers,hero) then
			if sylvantowns ~= nil then
				for i, town in sylvantowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0) == 2) and H55_BrotherhoodStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_DEFENCE,1);
						H55_BrotherhoodStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Defense.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Runemages,hero) then
			if fortresstowns ~= nil then
				for i, town in fortresstowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5) == 1) and H55_RunicChapelStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_MORALE,1);
						H55_RunicChapelStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Morale.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if table.contains(H55_Gatekeepers,hero) then
			if infernotowns ~= nil then
				for i, town in infernotowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4) == 1) and H55_HorrorHallStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_MORALE,1);
						H55_HorrorHallStudent[hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/Morale.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;
		if H55_GetHeroRaceNum(hero) == 3 then
			if infernotowns ~= nil then
				for i, town in infernotowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5) == 1) and H55_SacrificialPitStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_EXPERIENCE,2500);
						H55_SacrificialPitStudent[town][hero]=1;
						if not H55_IsThisAIPlayer(player) and H55_GetDistance(hero,town) ~= 0 then
							startThread(H55_ProtectedSign,"/Text/Game/Scripts/SacrificePit.txt",hero,player,H55_MsgSleep,H55_MsgTime);
						end;
					end;
				end;
			end;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {19,"ArtSets",player,hero};-------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		if (H55_GetDragonishSetCount(hero) == 8) and (H55_DragonishSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,2);
			ChangeHeroStat(hero,STAT_DEFENCE,2);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
			ChangeHeroStat(hero,STAT_ATTACK,2);
			H55_DragonishSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDragonishSetCount(hero) <= 7) and (H55_DragonishSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
			ChangeHeroStat(hero,STAT_ATTACK,-2);
			H55_DragonishSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDragonishSetCount(hero) >= 4) and (H55_DragonishHalfSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,2);
			ChangeHeroStat(hero,STAT_DEFENCE,2);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
			ChangeHeroStat(hero,STAT_ATTACK,2);
			H55_DragonishHalfSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDragonishSetCount(hero) <= 3) and (H55_DragonishHalfSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
			ChangeHeroStat(hero,STAT_ATTACK,-2);
			H55_DragonishHalfSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetSarIssusSetCount(hero) >= 2) and (H55_SarIssusSetOwners[hero] ~= 1) then
			H55_SarIssusSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetSarIssusSetCount(hero) <= 1) and (H55_SarIssusSetOwners[hero] == 1) then
			H55_SarIssusSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetSarIssusSetCount(hero) == 4) and (H55_SarIssusPlusSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,4);
			H55_SarIssusPlusSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetSarIssusSetCount(hero) <= 3) and (H55_SarIssusPlusSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
			H55_SarIssusPlusSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetNecroSetCount(hero) == 6) and (H55_NecroSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,6);
			H55_NecroSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetNecroSetCount(hero) <= 5) and (H55_NecroSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-6);
			H55_NecroSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetNecroSetCount(hero) >= 3) and (H55_NecroHalfSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,6);
			H55_NecroHalfSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetNecroSetCount(hero) <= 2) and (H55_NecroHalfSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-6);
			H55_NecroHalfSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;if (H55_GetPirateSetCount(hero) == 6) and (H55_PirateSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_ATTACK,6);
			H55_PirateSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetPirateSetCount(hero) <= 5) and (H55_PirateSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_ATTACK,-6);
			H55_PirateSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetPirateSetCount(hero) >= 3) and (H55_PirateHalfSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_ATTACK,6);
			H55_PirateHalfSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetPirateSetCount(hero) <= 2) and (H55_PirateHalfSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_ATTACK,-6);
			H55_PirateHalfSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDwarvenSetCount(hero) == 4) and (H55_DwarvenSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_DEFENCE,4);
			H55_DwarvenSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDwarvenSetCount(hero) <= 3) and (H55_DwarvenSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_DEFENCE,-4);
			H55_DwarvenSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDwarvenSetCount(hero) >= 2) and (H55_DwarvenHalfSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_DEFENCE,4);
			H55_DwarvenHalfSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetDwarvenSetCount(hero) <= 1) and (H55_DwarvenHalfSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_DEFENCE,-4);
			H55_DwarvenHalfSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetMonkSetCount(hero) == 5) and (H55_MonkSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,4);
			H55_MonkSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetMonkSetCount(hero) <= 4) and (H55_MonkSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
			H55_MonkSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetMonkSetCount(hero) == 3) and (H55_MonkHalfSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,4);
			H55_MonkHalfSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetMonkSetCount(hero) <= 2) and (H55_MonkHalfSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
			H55_MonkHalfSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetGuardianSetCount(hero) == 4) and (H55_GuardianSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,1);
			ChangeHeroStat(hero,STAT_DEFENCE,1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
			ChangeHeroStat(hero,STAT_ATTACK,1);
			H55_GuardianSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetGuardianSetCount(hero) <= 3) and (H55_GuardianSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-1);
			ChangeHeroStat(hero,STAT_DEFENCE,-1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
			ChangeHeroStat(hero,STAT_ATTACK,-1);
			H55_GuardianSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetGuardianSetCount(hero) == 2) and (H55_GuardianHalfSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,1);
			ChangeHeroStat(hero,STAT_DEFENCE,1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
			ChangeHeroStat(hero,STAT_ATTACK,1);
			H55_GuardianHalfSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if (H55_GetGuardianSetCount(hero) <= 1) and (H55_GuardianHalfSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-1);
			ChangeHeroStat(hero,STAT_DEFENCE,-1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
			ChangeHeroStat(hero,STAT_ATTACK,-1);
			H55_GuardianHalfSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if H55_GetSaintSetCount(hero) >= 3 	and (H55_SaintSetOwners[hero] ~= 1) then
			H55_SaintSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if H55_GetSaintSetCount(hero) <= 2 	and (H55_SaintSetOwners[hero] == 1) then
			H55_SaintSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if H55_GetLionSetCount(hero) == 3 	and (H55_LionSetOwners[hero] ~= 1) then
			ChangeHeroStat(hero,STAT_ATTACK,6);
			H55_LionSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if H55_GetLionSetCount(hero) <= 2 	and (H55_LionSetOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_ATTACK,-6);
			H55_LionSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if H55_GetVestmentSetCount(hero) == 2 	and (H55_VestmentSetOwners[hero] ~= 1) then
			H55_VestmentSetOwners[hero]=1;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetBonus.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;
		if H55_GetVestmentSetCount(hero) <= 1 	and (H55_VestmentSetOwners[hero] == 1) then
			H55_VestmentSetOwners[hero]=0;
			if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/SetLost.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
		end;	--Staffs

		-- 	if HasArtefact(hero,ARTIFACT_EIGHTFOLD,1) and GetHeroLevel(hero) >= 40 then H55_EightfoldStaffOwners[hero] ~= 1 then
			-- ChangeHeroStat(hero,STAT_SPELL_POWER,12);
			-- H55_EightfoldStaffOwners[hero] = 1;
			-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		-- end;
		-- if HasArtefact(hero,ARTIFACT_EIGHTFOLD,1) == nil and H55_EightfoldStaffOwners[hero] == 1 then
			-- ChangeHeroStat(hero,STAT_SPELL_POWER,-12);
			-- H55_EightfoldStaffOwners[hero] = 0;
		-- end;
		-- if HasArtefact(hero,ARTIFACT_STAFF_OF_MAGI,1) and GetHeroLevel(hero) >= 40 then H55_IssusStaffOwners[hero] ~= 1 then
		-- 		ChangeHeroStat(hero,STAT_SPELL_POWER,4);
			-- H55_IssusStaffOwners[hero] = 1;
		-- 		if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
		-- 	end;
		-- 	if HasArtefact(hero,ARTIFACT_STAFF_OF_MAGI,1) == nil and H55_IssusStaffOwners[hero] == 1 then
		-- 		ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
			-- H55_IssusStaffOwners[hero] = 0;
		-- 	end;
		-- 	if HasArtefact(hero,ARTIFACT_UPG_ST1,1) and GetHeroLevel(hero) >= 40 then H55_VizierStaffOwners[hero] ~= 1 then
		-- 		ChangeHeroStat(hero,STAT_SPELL_POWER,7);
			-- H55_VizierStaffOwners[hero] = 1;
		-- 		if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
		-- 		end;
		-- 	if HasArtefact(hero,ARTIFACT_UPG_ST1,1) == nil and H55_VizierStaffOwners[hero] == 1 then
			-- ChangeHeroStat(hero,STAT_SPELL_POWER,-7);
			-- H55_VizierStaffOwners[hero] = 0;
		--end;
		-- 	if HasArtefact(hero,ARTIFACT_TITANS_TRIDENT,1) and GetHeroLevel(hero) >= 40 then H55_TridentStaffOwners[hero] ~= 1 then
		-- 		ChangeHeroStat(hero,STAT_SPELL_POWER,6);
			-- H55_TridentStaffOwners[hero] = 1;
			-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		-- end;
-- if HasArtefact(hero,ARTIFACT_TITANS_TRIDENT,1) == nil and H55_TridentStaffOwners[hero] == 1 then
			-- ChangeHeroStat(hero,STAT_SPELL_POWER,-6);
			-- H55_TridentStaffOwners[hero] = 0;
		-- end;
		-- if HasArtefact(hero,ARTIFACT_UPG_ST2,1) and GetHeroLevel(hero) >= 40 then H55_AngelicStaffOwners[hero] ~= 1 then
			-- ChangeHeroStat(hero,STAT_SPELL_POWER,5);
			-- H55_AngelicStaffOwners[hero] = 1;
			-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Spellpower.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		-- end;
		-- if HasArtefact(hero,ARTIFACT_UPG_ST2,1) == nil and H55_AngelicStaffOwners[hero] == 1 then
			-- ChangeHeroStat(hero,STAT_SPELL_POWER,-5);
			-- H55_AngelicStaffOwners[hero] = 0;
		-- end;

		-- Cloak of Malassa

		if HasArtefact(hero,ARTIFACT_UPG_AR1,1) and H55_UnlootableOwners[hero] ~= 1 then
			SetHeroLootable(hero,nil);
			H55_UnlootableOwners[hero] = 1;
		end;
		if HasArtefact(hero,ARTIFACT_UPG_AR1,1) == nil and H55_UnlootableOwners[hero] == 1 then
			SetHeroLootable(hero,not nil);
			H55_UnlootableOwners[hero] = 0;
		end;

		-- Boots Penalty

		if HasArtefact(hero,24,1) then
			H55_BootsPenaltyOwners[hero] = 1;
		end;
		if HasArtefact(hero,24,1) == nil and (H55_BootsPenaltyOwners[hero] == 1) then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,-750);
			H55_BootsPenaltyOwners[hero] = 0;
		end;

		--Mana interruption checks

		if HasArtefact(hero,ARTIFACT_MONK_01,1) == nil and H55_Monk01Wearers[hero] == H55_Day then
			H55_Monk01Interrupters[hero] = H55_Day+1;
		end;
		if HasArtefact(hero,ARTIFACT_MONK_02,1) == nil and H55_Monk02Wearers[hero] == H55_Day then
			H55_Monk02Interrupters[hero] = H55_Day+1;
		end;
		if HasArtefact(hero,ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD,1) == nil and H55_EldritchWearers[hero] == H55_Day then
			H55_EldritchInterrupters[hero] = H55_Day+1;
		end;
		if HasArtefact(hero,ARTIFACT_ROBE_OF_MAGI,1) == nil and H55_RobeWearers[hero] == H55_Day then
			H55_RobeInterrupters[hero] = H55_Day+1;
		end;
		if HasArtefact(hero,ARTIFACT_CROWN_OF_MAGI,1) == nil and H55_CrownWearers[hero] == H55_Day then
			H55_CrownInterrupters[hero] = H55_Day+1;
		end;
		if HasArtefact(hero,ARTIFACT_GEAR_03,1) == nil and H55_AlchemistWearers[hero] == H55_Day then
			H55_AlchemistInterrupters[hero] = H55_Day+1;
		end;
		if HasArtefact(hero,ARTIFACT_RUNIC_WAR_HARNESS,1) == nil and H55_RunicWearers[hero] == H55_Day then
			H55_RunicInterrupters[hero] = H55_Day+1;
		end;

		--Potions equip text

		if H55_RPGPotions == 1 then
			if HasArtefact(hero,ARTIFACT_POTION01,1) and (H55_ManaPotionOwners[hero] ~= 1) then
				H55_ManaPotionOwners[hero] = 1;
				if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
					startThread(H55_ProtectedSign,"/Text/Game/Scripts/ManapotionEq.txt",hero,player,H55_MsgSleep,H55_MsgTime);
				end;
			end;
			if HasArtefact(hero,ARTIFACT_POTION01,1) == nil and (H55_ManaPotionOwners[hero] == 1) then
				H55_ManaPotionOwners[hero] = 0;
			end;

			if HasArtefact(hero,ARTIFACT_POTION02,1) and (H55_MovePotionOwners[hero] ~= 1) then
				H55_MovePotionOwners[hero] = 1;
				if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then
					startThread(H55_ProtectedSign,"/Text/Game/Scripts/MovepotionEq.txt",hero,player,H55_MsgSleep,H55_MsgTime);
				end;
			end;
			if HasArtefact(hero,ARTIFACT_POTION02,1) == nil and (H55_MovePotionOwners[hero] == 1) then
				H55_MovePotionOwners[hero] = 0;
			end;
		end;

		--Movepotion


		if table.contains(H55_NeutralSpecialists,hero) then
			if H55_CheckCrystalMorale(hero,H55_NeutralSpecialistsCr[hero]) == 1 and H55_CrystalMoraleReceived[hero] ~= 1 then
				ChangeHeroStat(hero,STAT_MORALE,1);
				H55_CrystalMoraleReceived[hero] = 1;
			end;
			if H55_CheckCrystalMorale(hero,H55_NeutralSpecialistsCr[hero]) == 0 and H55_CrystalMoraleReceived[hero] == 1 then
				ChangeHeroStat(hero,STAT_MORALE,-1);
				H55_CrystalMoraleReceived[hero] = 0;
			end;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20,"Spells",player,hero};--------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		-- GiveExp(hero, 10000)
		-- sleep(1000000)

			-- if (HasHeroSkill(hero,SKILL_IMBUE_ARROW) ~= nil) and H55_HeroHasImbuedHisArrows[hero] ~= 1 then
				-- local rnd1 = random(6)+1;
				-- local rnd2 = random(6)+1;
				-- if KnowHeroSpell(hero,H55_ArrowSpells[rnd1]) == nil then
					-- TeachHeroSpell(hero,H55_ArrowSpells[rnd1]);
					-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=H55_ArrowSpellsTxt[rnd1]},hero,player,7) sleep(4) end;
				-- else
					-- if KnowHeroSpell(hero,H55_ArrowSpells[rnd2]) == nil then
						-- TeachHeroSpell(hero,H55_ArrowSpells[rnd2]);
						-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=H55_ArrowSpellsTxt[rnd2]},hero,player,7) sleep(4) end;
					-- end;
				-- end;
				-- H55_HeroHasImbuedHisArrows[hero] = 1;
			-- end;
			-- if (HasHeroSkill(hero,SKILL_IMBUE_BALLISTA) ~= nil) and H55_HeroHasImbuedHisBallista[hero] ~= 1 then
				-- local rnd1 = random(5)+1;
				-- local rnd2 = random(5)+1;
				-- if KnowHeroSpell(hero,H55_BallistaSpells[rnd1]) == nil then
					-- TeachHeroSpell(hero,H55_BallistaSpells[rnd1]);
					-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=H55_BallistaSpellsTxt[rnd1]},hero,player,7) sleep(4) end;
				-- else
					-- if KnowHeroSpell(hero,H55_BallistaSpells[rnd2]) == nil then
						-- TeachHeroSpell(hero,H55_BallistaSpells[rnd2]);
						-- if not H55_IsThisAIPlayer(player) and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=H55_BallistaSpellsTxt[rnd2]},hero,player,7) sleep(4) end;
					-- end;
				-- end;
				-- H55_HeroHasImbuedHisBallista[hero] = 1;
			-- end;
		end

		------------------------------------------------------------------------------------------------------------------------------------------------
		--H55_DEBUG = {20a,"UnusualSpells",player,hero};------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {21,"Statboost",player,hero};-----------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		if table.contains(H55_StartMoraleSpecialists,hero) and H55_StartMoraleReceived[hero] ~= 1 then
			ChangeHeroStat(hero,STAT_MORALE,1);
			H55_StartMoraleReceived[hero] = 1;
		end;
		if hero == "Archilus" and H55_StartMoraleReceived[hero] ~= 1 then
			ChangeHeroStat(hero,STAT_ATTACK,2);
			H55_StartMoraleReceived[hero] = 1;
		end;
		if hero == "Mephala" and H55_StartMoraleReceived[hero] ~= 1 then
			ChangeHeroStat(hero,STAT_DEFENCE,2);
			H55_StartMoraleReceived[hero] = 1;
		end;

		if HasArtefact(hero,ARTIFACT_FIZBIN,0) and H55_FizbinOwners[hero] ~= 1 then
			ChangeHeroStat(hero,STAT_LUCK,-2);
			H55_FizbinOwners[hero] = 1;
		end;
		if HasArtefact(hero,ARTIFACT_FIZBIN,0) == nil and H55_FizbinOwners[hero] == 1 then
			ChangeHeroStat(hero,STAT_LUCK,2);
			H55_FizbinOwners[hero] = 0;
		end;
		if HasArtefact(hero,ARTIFACT_FORGING,0) and H55_ForgingOwners[hero] ~= 1 then
			ChangeHeroStat(hero,STAT_MORALE,-2);
			H55_ForgingOwners[hero] = 1;
		end;
		if HasArtefact(hero,ARTIFACT_FORGING,0) == nil and H55_ForgingOwners[hero] == 1 then
			ChangeHeroStat(hero,STAT_MORALE,2);
			H55_ForgingOwners[hero] = 0;
		end;

		-- Gifts

		-- if HasHeroSkill(hero,PERK_FIRST_AID) and H55_LastAidOwners[hero] ~= 1 and HasArtefact(hero,ARTIFACT_MEDICAL03,0) == nil then
		-- 	GiveArtefact(hero,ARTIFACT_MEDICAL03);
		-- 	H55_LastAidOwners[hero] = 1;
		-- end;
		if HasArtefact(hero,ARTIFACT_UPG_HM2,1) and H55_HeavenlyOwners[hero] ~= 1 then
			local experience  = GetHeroLevel(hero);
			local amount = experience*experience*experience*experience;
			ChangeHeroStat(hero,STAT_EXPERIENCE,amount);
			H55_HeavenlyOwners[hero] = 1;
		end;
		if H55_RPGPotions == 1 and H55_MapType ~= "Campaign" and not H55_IsThisAIPlayer(player) and H55_StartPotionOwners[hero] ~= 1 and H55_StartPotionGlobalOwners[player] ~= 1 then
			GiveArtefact(hero,ARTIFACT_POTION01);
			GiveArtefact(hero,ARTIFACT_POTION02);
			GiveArtefact(hero,ARTIFACT_POTION03);
			H55_StartPotionOwners[hero] = 1;
			H55_StartPotionGlobalOwners[player] = 1;
		end;


		if H55_GameMode == 3 and H55_IsThisAIPlayer(player) and H55_UnlootableAIOwners[hero] ~= 1 then
			SetHeroLootable(hero,nil);
			H55_UnlootableAIOwners[hero] = 1;
			print(hero," cannot be looted and will fight to the death!");
		end;

		if HasHeroSkill(hero,SKILL_MENTORING) ~= nil and H55_MentoringOwners[hero] ~= 1 then
			H55_MentoringOwners[hero] = 1;
		end;
		if HasHeroSkill(hero,SKILL_MENTORING) == nil and H55_MentoringOwners[hero] == 1 then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
			ChangeHeroStat(hero,STAT_ATTACK,-2);
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
			H55_MentoringOwners[hero] = 0;
		end;


		------------------------------------------------------------------------------------------------------------------------------------------------
		--H55_DEBUG = {21a,"Network Skills",player,hero};-----------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		if HasHeroSkill(hero,SKILL_FORTUNATE_ADVENTURER) and (H55_DwarvenNetworkOwners[hero] ~= 1) then
			H55_DwarvenNetworkOwners[hero] = 1;
			H55_NetworkSkillAmount[player] = H55_NetworkSkillAmount[player]+1;
		end;
		if HasHeroSkill(hero,SKILL_FORTUNATE_ADVENTURER) == nil and (H55_DwarvenNetworkOwners[hero] == 1) then
			H55_DwarvenNetworkOwners[hero] = 0;
			H55_NetworkSkillAmount[player] = H55_NetworkSkillAmount[player]-1;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {22,"BaseSkills",player,hero};----------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {24,"Resurrection",player,hero};--------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		-- if not H55_IsThisAIPlayer(player) then
			-- if (HasArtefact(hero,ARTIFACT_MONK_03,1)) ~= nil and (H55_ArtMoveReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				-- ChangeHeroStat(hero,STAT_MOVE_POINTS,350);
				-- H55_ArtMoveReceived[hero] = ci;
			-- end;
		-- end;
	end


	--Map level continues event	
	
	if H55_SPMapContinuesEvent == 1 then
		H55_SPMap_ContinuesEvent();
	end;	
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--TROUBLESHOOTING
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_CrashProtection()
	sleep(1);
	local currentdate = GetDate(DAY);
	sleep(1);
	if H55_Switch ~= 0 then
		if H55_Day < currentdate then
			print("The H55 script engine has crashed, reloading...");
			H55_AmountCrashes = H55_AmountCrashes+1;
			H55_Switch = 1;
			H55_DbgTxt = H55_DEBUG;
			startThread(H55_ContinuesActivator);
			--sleep(2)
			print("The H55 script engine has been restarted!");
		else 
			--print("H55 crash protection is active!");
			print("H55 Player Configuration: "..H55_PlayerStatus[1]..H55_PlayerStatus[2]..H55_PlayerStatus[3]..H55_PlayerStatus[4]..H55_PlayerStatus[5]..H55_PlayerStatus[6]..H55_PlayerStatus[7]..H55_PlayerStatus[8].." - "..H55_GameMode.." - "..H55_CycleSpeed);
			print("H55 Amount of Recovered Crashes: "..H55_AmountCrashes);
			--print("Amount of AI Script Cycles: "..H55_AmountCyclesAI);
			--print("H55 Amount of AI TownConversions: "..H55_AmountAIConversions);
			--print("H55 Amount of AI DwellingConversions: "..H55_AmountAIDwellingConversions);
			--print("H55 Amount of AI Bank Visits: "..H55_AmountAIBankVisits);
		end;
	else 
		print("H55 is switched off by the user")
	end;
	if H55_NewDayTrigger == 1 then
		print("H55 1st local New Day Trigger is active");
		H55_TriggerDaily();
	elseif H55_SecNewDayTrigger == 1 then
		print("H55 2nd local New Day Trigger is active");
		H55_SecTriggerDaily();
	elseif H55_ThrNewDayTrigger == 1 then
		print("H55 3rd local New Day Trigger is active");
		H55_ThrTriggerDaily();
	elseif H55_FrtNewDayTrigger == 1 then
		print("H55 4th local New Day Trigger is active");
		H55_FrtTriggerDaily();
	elseif H55_FifNewDayTrigger == 1 then
		print("H55 5th local New Day Trigger is active");
		H55_FifTriggerDaily();
	end;
end;

function H55_On()
	H55_Switch = 1;
	startThread(H55_ContinuesActivator);
	print("The H55 script engine has been restarted!");
end;

function H55_Off()
	H55_Switch = 0;
	print("The H55 script engine is shutdown!");
end;

function H55_WTF()
	print("please wait, investigating...")
	sleep(3);
	local currentdate = GetDate(DAY);
	sleep(7);
	if H55_Day == currentdate then
		print("H55 is running fine");
	end;
	if H55_Day < currentdate then
		print("The H55 script engine has crashed, sorry for the inconvenience, trying to reload...");
		H55_Switch = 1;
		startThread(H55_ContinuesActivator);
		sleep(2);
		print("The H55 script engine has been restarted!");
	end;
end;

function H55_TeamUpQuestion()
	local status = H55_DetectTeamConfig()
	local answering = 1
	for id = 1,8 do
		if IsPlayerCurrent(id) then
			answering = id
		end;
	end;
	if status == 1 then
		QuestionBoxForPlayers(GetPlayerFilter(answering),"/Text/Game/Scripts/Teamquestion.txt","H55_TeamHumansvsAI","H55_NoTeams");
	elseif H55_AllAgainstOne == 1 then
		H55_ChallengeMe(answering);
	else
		print("H55 Team up question skipped.");
	end;
end;

function H55_MixStacksQuestion()
	for player = 1,8 do
		if not H55_IsThisAIPlayer(player) then
			QuestionBoxForPlayers(GetPlayerFilter(player), "/Text/Game/Scripts/MixStacksQuestion.txt", "H55_MixStacks", "H55_Noop")
			return
		end
	end
end



function H55_ShowTimer()
	print("Day of Week "..H55_Workday);
	print("Day "..H55_Day);
	print("Week "..H55_Week);
	print("Month "..H55_Month);
end;

function H55_CamFixTooManySkills(player,hero)
	local heroes = GetPlayerHeroes(player);
	if table.contains(heroes,hero)	then
		if HasHeroSkill(hero,SKILL_INVOCATION) and HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) == nil then
			if (GetHeroSkillMastery(hero,SKILL_INVOCATION) == 1) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
			end;
			if (GetHeroSkillMastery(hero,SKILL_INVOCATION) == 2) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
			end;
			if (GetHeroSkillMastery(hero,SKILL_INVOCATION) == 3) then
				ChangeHeroStat(hero,STAT_SPELL_POWER,-6);
			end;
		end;
		if HasHeroSkill(hero,SKILL_LEADERSHIP) and H55_GetHeroRaceNum(hero) == 5 then
			if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 1) then
				ChangeHeroStat(hero,STAT_ATTACK,-4);
			end;
			if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 2) then
				ChangeHeroStat(hero,STAT_ATTACK,-6);
			end;
			if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 3) then
				ChangeHeroStat(hero,STAT_ATTACK,-8);
			end;
		end;
		if HasHeroSkill(hero,DEMON_FEAT_DEMONIC_FLAME) then
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_BODYBUILDING) and (GetHeroLevel(hero) >= 10) then
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_WEAKEN_DARK) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_WEAKEN_LIGHT) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_WEAKEN_SUMMONING) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_WEAKEN_DESTRUCTIVE) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_DETAIN_DARK) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_DETAIN_LIGHT) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_DETAIN_SUMMONING) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_DETAIN_DESTRUCTIVE) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
		end;
		if HasHeroSkill(hero,NECROMANCER_FEAT_TWILIGHT) and (GetHeroLevel(hero) >= 30) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-3);
		end;
		if HasHeroSkill(hero,WIZARD_FEAT_SEAL_OF_PROTECTION) then
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
		end;
		if HasHeroSkill(hero,KNIGHT_FEAT_PARIAH) and (GetHeroLevel(hero) >= 30) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-5);
			ChangeHeroStat(hero,STAT_LUCK,1);
		end;
		if HasHeroSkill(hero,HERO_SKILL_SHRUG_DARKNESS) and (H55_GetHeroRaceNum(hero) ~= 4) then
			ChangeHeroStat(hero,STAT_MORALE,-3);
		end;
		-- if HasHeroSkill(hero,NECROMANCER_FEAT_CHILLING_BONES) then
			-- ChangeHeroStat(hero,STAT_DEFENCE,-2);
		-- end;
		-- if HasHeroSkill(hero,NECROMANCER_FEAT_CHILLING_BONES) and (H55_GetHeroRaceNum(hero) ~= 4) then
			-- ChangeHeroStat(hero,STAT_DEFENCE,-4);
		-- end;
		if HasHeroSkill(hero,DEMON_FEAT_DEMONIC_RETALIATION) then
			ChangeHeroStat(hero,STAT_ATTACK,-2);
		end;
		if HasHeroSkill(hero,WARLOCK_FEAT_DARK_REVELATION) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_BARBARIAN_DARK_REVELATION) then
			ChangeHeroStat(hero,STAT_ATTACK,-1);
			ChangeHeroStat(hero,STAT_DEFENCE,-1);
			ChangeHeroStat(hero,STAT_SPELL_POWER,-1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
		end;
		if HasHeroSkill(hero,WARLOCK_FEAT_ELITE_CASTERS) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_BARBARIAN_ELITE_CASTERS) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		if HasHeroSkill(hero,RANGER_FEAT_CUNNING_OF_THE_WOODS) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
		end;
		if HasHeroSkill(hero,RANGER_FEAT_FOREST_RAGE) then
			ChangeHeroStat(hero,STAT_LUCK,1);
		end;
		if HasHeroSkill(hero,HERO_SKILL_DEATH_TO_NONEXISTENT) then
			ChangeHeroStat(hero,STAT_ATTACK,-4);
		end;
		if HasHeroSkill(hero,PERK_EXPERT_TRAINER) then
			ChangeHeroStat(hero,STAT_ATTACK,-2);
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
		end;
		if HasHeroSkill(hero,RANGER_FEAT_LAST_STAND) then
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
		end;
		if HasHeroSkill(hero,KNIGHT_FEAT_RETRIBUTION) and (H55_GetHeroRaceNum(hero) == 4) then
			ChangeHeroStat(hero,STAT_ATTACK,-2);
		end;
		if HasHeroSkill(hero,WARLOCK_FEAT_ELEMENTAL_OVERKILL) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_PREPARATION) then
			ChangeHeroStat(hero,STAT_ATTACK,2);
		end;
		if HasHeroSkill(hero,HERO_SKILL_VOICE) and HasHeroSkill(hero,HERO_SKILL_EMPATHY) then
			ChangeHeroStat(hero,STAT_MORALE,2);
		end;
		if HasHeroSkill(hero,DEMON_FEAT_MASTER_OF_SECRETS) and (GetHeroLevel(hero) >= 20) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
		end;
		if HasHeroSkill(hero,WARLOCK_FEAT_SECRETS_OF_DESTRUCTION) and (GetHeroLevel(hero) >= 20) then
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
		end;
		-- if HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) and (HasHeroWarMachine(hero,4) then
			-- ChangeHeroStat(hero,STAT_ATTACK,-2);
		-- end;
		-- if HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) and GetHeroSkillMastery(hero,SKILL_WAR_MACHINES) == 3 and (HasHeroWarMachine(hero,4) then
			-- ChangeHeroStat(hero,STAT_ATTACK,-1);
		-- end;
		-- if HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) and (HasHeroWarMachine(hero,4) and HasArtefact(hero,ARTIFACT_RING_OF_MACHINE_AFFINITY,1) then
			-- ChangeHeroStat(hero,STAT_ATTACK,-1);
		-- end;
		if (H55_GetDragonishSetCount(hero) == 8) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
			ChangeHeroStat(hero,STAT_ATTACK,-2);
		end;
		if  (H55_GetDragonishSetCount(hero) >= 4) and (H55_GetDragonishSetCount(hero) <= 7) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
			ChangeHeroStat(hero,STAT_DEFENCE,-2);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
			ChangeHeroStat(hero,STAT_ATTACK,-2);
		end;
		if (H55_GetSarIssusSetCount(hero) == 4) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
		end;
		if (H55_GetNecroSetCount(hero) == 6) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-6);
		end;
		if (H55_GetNecroSetCount(hero) >= 3) and (H55_GetNecroSetCount(hero) <= 5) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-6);
		end;
		if (H55_GetPirateSetCount(hero) == 6) then
			ChangeHeroStat(hero,STAT_ATTACK,-6);
		end;
		if (H55_GetPirateSetCount(hero) >= 3) and (H55_GetNecroSetCount(hero) <= 5) then
			ChangeHeroStat(hero,STAT_ATTACK,-6);
		end;
		if (H55_GetDwarvenSetCount(hero) == 4) then
			ChangeHeroStat(hero,STAT_DEFENCE,-4);
		end;
		if (H55_GetDwarvenSetCount(hero) == 2)  or (H55_GetDwarvenSetCount(hero) == 3) then
			ChangeHeroStat(hero,STAT_DEFENCE,-4);
		end;
		if (H55_GetMonkSetCount(hero) == 5) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
		end;
		if (H55_GetMonkSetCount(hero) == 3) or (H55_GetMonkSetCount(hero) == 4) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-4);
		end;
		if (H55_GetGuardianSetCount(hero) == 4) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-1);
			ChangeHeroStat(hero,STAT_DEFENCE,-1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
			ChangeHeroStat(hero,STAT_ATTACK,-1);
		end;
		if (H55_GetGuardianSetCount(hero) == 2) or (H55_GetGuardianSetCount(hero) == 3) then
			ChangeHeroStat(hero,STAT_SPELL_POWER,-1);
			ChangeHeroStat(hero,STAT_DEFENCE,-1);
			ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
			ChangeHeroStat(hero,STAT_ATTACK,-1);
		end;
		if H55_GetLionSetCount(hero) == 3 then
			ChangeHeroStat(hero,STAT_ATTACK,-6);
		end;

		if GetHeroSkillMastery(hero,SKILL_WAR_MACHINES) >= 1 and HasHeroWarMachine(hero,4) == nil then
			GiveHeroWarMachine(hero,4);
		end;
		if HasHeroSkill(hero,PERK_BALLISTA) and HasHeroWarMachine(hero,1) == nil then
			GiveHeroWarMachine(hero,1);
		end;
		if HasHeroSkill(hero,PERK_FIRST_AID) and HasHeroWarMachine(hero,3) == nil then
			GiveHeroWarMachine(hero,3);
		end;

		print("H55 Campaign verified skills and checked war machines");
	else
		print("H55 Hero isn't on the map for skills and war machines verification");
	end;
end;
	
------------------------------------------------------------------------------------------------------------------------------------------------------
--MAIN EVENT
------------------------------------------------------------------------------------------------------------------------------------------------------

function ErrorBox()
	print(H55_DEBUG[2])
	for player = 1,8 do
		if not H55_IsThisAIPlayer(player) then
			MessageBoxForPlayers(GetPlayerFilter(player), {"/Text/Game/Scripts/Error.txt"; debug=H55_DEBUG[1]}, "H55_Noop")
		end
	end
end

function H55_ContinuesActivator()
	errorHook(ErrorBox)

	while (H55_Switch == 1) do
			
		H55_Day = GetDate(DAY);
		if H55_StaticBanks == 0 then H55_BankDay = GetDate(DAY) end;
		H55_Week = GetDate(WEEK);
		H55_Month = GetDate(MONTH);
		H55_Workday = GetDate(DAY_OF_WEEK);
		
		sleep(5);
		
		for i = 1,8 do
			if (GetPlayerState(i) == 1) and IsPlayerInGhostMode(i) == nil then
				if (IsPlayerCurrent(i)) and (H55_Workday == 1) and (H55_Day ~= 1) and H55_Changed(H55_WeeklyEventsCounter, i, H55_Day) then
					H55_SetGlobalWeeklyPayouts(i,0);
					H55_WeeklyEvents(i);
				else
					H55_SetGlobalWeeklyPayouts(i,0);
				end;				
				if (IsPlayerCurrent(i)) and (H55_Day ~= 1) and H55_Changed(H55_DailyEventsCounter, i, H55_Day) then
					H55_SetGlobalDailyPayouts(i,0);				
					H55_DailyEvents(i);
					H55_PayoutThisPlayer(i);
				end;	
				if (H55_ArtifactsIndexed ~= 1) and (H55_Workday == 2) then
					H55_IndexArtifacts();	
				end;
				if (IsPlayerCurrent(i)) then
					H55_ContinuesEvent(i);
				end;
			end;
		end;
	end;
end;
				
------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT ACTIVATION
------------------------------------------------------------------------------------------------------------------------------------------------------

for player = 1,8 do
	startThread(H55_DetectPAI, player)
end
startThread(H55_UpdateMapType);
startThread(H55_DetectPlayerFactions);
startThread(H55_UpdateGameMode);
startThread(H55_UpdateTownQtyDifficulty);
startThread(H55_DetectDuel);


print("H55 The error 'not belong to AI player' is on purpose and shows internal name of your hero.");
doFile("/scripts/H55-AdvMap.lua");

-- startThread(H55_TeamUpQuestion);
startThread(H55_MixStacksQuestion)
startThread(H55_ContinuesActivator);
Trigger(CUSTOM_ABILITY_TRIGGER,"H55_TownManagement");
Trigger(NEW_DAY_TRIGGER,"H55_CrashProtection");


------------------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
------------------------------------------------------------------------------------------------------------------------------------------------------

-- consoleCmd("setvar dev_console_password = schwinge-des-todes");
-- consoleCmd("bind show_console '`'");

-- consoleCmd("bindsection hero_screen");
-- consoleCmd("bind hide_interface 'J'");
-- consoleCmd("bind enter_pressed 'SHIFT' + 'E'");
-- consoleCmd("bindsection town_screen");
-- consoleCmd("bind hide_interface 'J'");
-- consoleCmd("unbind hero_skills 'S'");
-- consoleCmd("bindsection combat_screen");
-- consoleCmd("bind hide_interface 'J'");
-- consoleCmd("bindsection adventure_screen");
-- consoleCmd("bind hide_interface 'J'");
-- consoleCmd("unbind hero_skills 'S'");

-- consoleCmd("unbind flip_floor 'T'");
-- consoleCmd("bind input_select_town_01 'T'");
-- consoleCmd("enable_cheats");
-- consoleCmd("conquest_camera_limits 50 -100 1000 -100 100 0 0");
-- consoleCmd("conquest_camera_softlimits 50 -100 1000 -100 100 0 0");
-- consoleCmd("mission_camera_limits 50 -100 1000 -100 100 0 0");
-- consoleCmd("mission_camera_softlimits 50 -100 1000 -100 100 0 0");

---------------------------------------------------------------------------------------------------------------------------------------------