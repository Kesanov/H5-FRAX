------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - ADVENTURE MAP
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus

------------------------------------------------------------------------------------------------------------------------------------------------
--DYNAMIC TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

--Mentors

H55_MentorBoostVisitors = {};

--Witch Huts

H55_WitchHuts = GetObjectNamesByType("BUILDING_WITCH_HUT");
H55_WitchHutsQty = table.length(H55_WitchHuts);
H55_WHChoice1 = {};
H55_WHChoice2 = {};
H55_WHVisited = {};

--Sphinx

H55_Sphinxs = GetObjectNamesByType("BUILDING_SPHINX");
H55_SphinxsQty = table.length(H55_Sphinxs);
H55_SphinxVisited = {};
H55_SphinxExp = {};

--Magma Shrines (doesn't work)

--H55_Magmas = GetObjectNamesByType("BUILDING_MAGMA_SHRINE");
--H55_MagmasQty = table.length(H55_Magmas);
--H55_MagmaVisited = {};

--Obelisks

H55_Obelisks = GetObjectNamesByType("BUILDING_LAKE_OF_SCARLET_SWAN");
H55_ObelisksQty = table.length(H55_Obelisks);
H55_ObeliskArmies = {};
H55_ObeliskVisited = {};
H55_ObeliskTotalVisited = {};
H55_ObeliskChallengeAccepted = {};
H55_ObeliskGraalFound = {};

--Shantiri Disks

H55_Shantiris = GetObjectNamesByType("BUILDING_EYE_OF_MAGI");
H55_MagiHuts = GetObjectNamesByType("BUILDING_HUT_OF_MAGI");
H55_ShantirisQty = table.length(H55_Shantiris);
H55_ShantiriArmies = {};
H55_ShantiriVisited = {};
H55_ShantiriTotalVisited = {};
H55_ShantiriChallengeAccepted = {};
H55_ShantiriGraalFound = {};

--Seer huts

H55_Mermaids = GetObjectNamesByType("BUILDING_MERMAIDS");
H55_MermaidsQty = table.length(H55_Mermaids);
H55_MermaidChoices = {};

--Summoning temples

H55_SummonTemples = GetObjectNamesByType("BUILDING_SIRENS");
H55_SummonTemplesQty = table.length(H55_SummonTemples);
H55_SummonTempleChoices = {};

--Junk

H55_Wagons = GetObjectNamesByType("BUILDING_WAGON");
H55_WagonsQty = table.length(H55_Wagons);
H55_WagonVisited = {};
H55_WagonChoices = {};

H55_Skeletons = GetObjectNamesByType("BUILDING_SKELETON");
H55_SkeletonsQty = table.length(H55_Skeletons);
H55_SkeletonVisited = {};
H55_SkeletonChoices = {};

--Moon Disc Quest

H55_MoonDiscLocations = {};
H55_MoonDiscLoc01 = 0;
H55_MoonDiscLoc02 = 0;
H55_MoonDiscLoc03 = 0;
H55_MoonDiscLoc04 = 0;
H55_MoonDiscFound01 = 0;
H55_MoonDiscFound02 = 0;
H55_MoonDiscFound03 = 0;
H55_MoonDiscFound04 = 0;
H55_MoonDiscPattern = {159,160,161,162,159,160,161,162};
H55_MoonDiscPatternChoice = random(4)+1;
H55_MoonDiscChoice01 = H55_MoonDiscPatternChoice;
H55_MoonDiscChoice02 = H55_MoonDiscPatternChoice+1;
H55_MoonDiscChoice03 = H55_MoonDiscPatternChoice+2;
H55_MoonDiscChoice04 = H55_MoonDiscPatternChoice+3;

if H55_WagonsQty ~= 0 then
	for i,wagon in H55_Wagons do
		table.inject(H55_MoonDiscLocations,wagon);
	end;
end;
if H55_SkeletonsQty ~= 0 then
	for i,skeleton in H55_Skeletons do
		table.inject(H55_MoonDiscLocations,skeleton);
	end;
end;
if table.length(H55_MoonDiscLocations) >= 2 then
	H55_MoonDiscLoc01 = random(table.length(H55_MoonDiscLocations))+1
	H55_MoonDiscLoc02 = random(table.length(H55_MoonDiscLocations))+1
	H55_MoonDiscLoc03 = random(table.length(H55_MoonDiscLocations))+1
	H55_MoonDiscLoc04 = random(table.length(H55_MoonDiscLocations))+1
end;

--Banks

H55_BankAction = 0;
H55_BankLastVisit = {};
H55_BankPlayerLastVisit = {{},{},{},{},{},{},{},{}};
H55_BankCurrentPlayerVisit = {};
-- H55_MPCurrentPlayerVisit = {};
H55_MineCurrentPlayerVisit = {};
H55_PrisonRewardAmount = {20,16,12,8,6,4,2};
H55_PrisonRewardAmountElves = {12,10,10,8,6,4,2};

H55_Crypts = GetObjectNamesByType("BUILDING_CRYPT");
H55_CryptsQty = table.length(H55_Crypts);
H55_CryptArmies = {};
H55_Utopias = GetObjectNamesByType("BUILDING_DRAGON_UTOPIA");
H55_UtopiasQty = table.length(H55_Utopias);
H55_UtopiaArmies = {};
H55_StoneVaults = GetObjectNamesByType("BUILDING_GARGOYLE_STONEVAULT");
H55_StoneVaultsQty = table.length(H55_StoneVaults);
H55_StoneVaultArmies = {};
H55_DwarvenTreasures = GetObjectNamesByType("BUILDING_DWARVEN_TREASURE");
H55_DwarvenTreasuresQty = table.length(H55_DwarvenTreasures);
H55_DwarvenTreasureArmies = {};
H55_Stockpiles = GetObjectNamesByType("BUILDING_CYCLOPS_STOCKPILE");
H55_StockpilesQty = table.length(H55_Stockpiles);
H55_StockpileArmies = {};
H55_SunkenTemples = GetObjectNamesByType("BUILDING_SUNKEN_TEMPLE");
H55_SunkenTemplesQty = table.length(H55_SunkenTemples);
H55_SunkenTempleArmies = {};
H55_WitchTemples = GetObjectNamesByType("BUILDING_BLOOD_TEMPLE");
H55_WitchTemplesQty = table.length(H55_WitchTemples);
H55_WitchTempleArmies = {};
H55_MageVaults = GetObjectNamesByType("BUILDING_NAGA_BANK");
H55_MageVaultsQty = table.length(H55_MageVaults);
H55_MageVaultArmies = {};
H55_Thickets = GetObjectNamesByType("BUILDING_TREANT_THICKET");
H55_ThicketsQty = table.length(H55_Thickets);
H55_ThicketArmies = {};
H55_Pyramids = GetObjectNamesByType("BUILDING_PYRAMID");
H55_PyramidsQty = table.length(H55_Pyramids);
H55_PyramidArmies = {};
H55_OrcTunnels = GetObjectNamesByType("BUILDING_NAGA_TEMPLE");
H55_OrcTunnelsQty = table.length(H55_OrcTunnels);
H55_OrcTunnelArmies = {};
H55_Unkempts = GetObjectNamesByType("BUILDING_UNKEMPT");
H55_UnkemptsQty = table.length(H55_Unkempts);
H55_UnkemptArmies = {};
H55_Demolishs = GetObjectNamesByType("BUILDING_DEMOLISH");
H55_DemolishsQty = table.length(H55_Demolishs);
H55_DemolishArmies = {};
H55_DemonTowers = GetObjectNamesByType("BUILDING_BUOY");
H55_DemonTowersQty = table.length(H55_DemonTowers);
H55_DemonTowerArmies = {};
H55_ForestTowers = GetObjectNamesByType("BUILDING_LEAN_TO");
H55_ForestTowersQty = table.length(H55_ForestTowers);
H55_ForestTowerArmies = {};

--Mines

H55_AbandonedMines = GetObjectNamesByType("BUILDING_ABANDONED_MINE");
H55_AbandonedMinesQty = table.length(H55_AbandonedMines);
H55_AbandonedMineArmies = {};
H55_WoodMines = GetObjectNamesByType("BUILDING_SAWMILL");
H55_OreMines = GetObjectNamesByType("BUILDING_ORE_PIT");
H55_CrystalMines = GetObjectNamesByType("BUILDING_CRYSTAL_CAVERN");
H55_GemMines = GetObjectNamesByType("BUILDING_GEM_POND");
H55_SulphurMines = GetObjectNamesByType("BUILDING_SULFUR_DUNE");
H55_MercuryMines = GetObjectNamesByType("BUILDING_ALCHEMIST_LAB");
H55_GoldMines = GetObjectNamesByType("BUILDING_GOLD_MINE");

H55_AllMines = {};
H55_AllMinesNotAbandoned = {};
H55_CommonMines = {};
H55_GuardedMines = {};

if table.length(H55_WoodMines) > 0 then
	for i, woodmine in H55_WoodMines do
		H55_CommonMines[woodmine] = 1;
		table.inject(H55_AllMines, woodmine);
		table.inject(H55_AllMinesNotAbandoned, woodmine);
	end;
end;
if table.length(H55_OreMines) > 0 then
	for i, oremine in H55_OreMines do
		H55_CommonMines[oremine] = 1;
		table.inject(H55_AllMines, oremine);
		table.inject(H55_AllMinesNotAbandoned, oremine);
	end;
end;
if table.length(H55_CrystalMines) > 0 then
	for i, crystalmine in H55_CrystalMines do
		table.inject(H55_AllMines, crystalmine);
		table.inject(H55_AllMinesNotAbandoned, crystalmine);
	end;
end;
if table.length(H55_SulphurMines) > 0 then
	for i, sulphurmine in H55_SulphurMines do
		table.inject(H55_AllMines, sulphurmine);
		table.inject(H55_AllMinesNotAbandoned, sulphurmine);
	end;
end;
if table.length(H55_MercuryMines) > 0 then
	for i, mercurymine in H55_MercuryMines do
		table.inject(H55_AllMines, mercurymine);
		table.inject(H55_AllMinesNotAbandoned, mercurymine);
	end;
end;
if table.length(H55_GemMines) > 0 then
	for i, gemmine in H55_GemMines do
		table.inject(H55_AllMines, gemmine);
		table.inject(H55_AllMinesNotAbandoned, gemmine);
	end;
end;
if table.length(H55_GoldMines) > 0 then
	for i, goldmine in H55_GoldMines do
		table.inject(H55_AllMines, goldmine);
		table.inject(H55_AllMinesNotAbandoned, goldmine);
	end;
end;
if H55_AbandonedMinesQty > 0 then
	for i, abandonedmine in H55_AbandonedMines do
		table.inject(H55_AllMines, abandonedmine);
		H55_GuardedMines[abandonedmine] = {0,1};
	end;
end;

if table.length(H55_AllMinesNotAbandoned) > 0 then
	for i, mine in H55_AllMinesNotAbandoned do
		SetObjectEnabled(mine,nil);
		Trigger(OBJECT_TOUCH_TRIGGER,mine,"H55_MineVisit");
		H55_GuardedMines[mine] = {0,1};
	end;
end;

--Duel Boosters

H55_FOfYouth = GetObjectNamesByType("BUILDING_FONTAIN_OF_YOUTH");
H55_FOfYouthQty = table.length(H55_FOfYouth);
H55_FOfFortune = GetObjectNamesByType("BUILDING_FONTAIN_OF_FORTUNE");
H55_FOfFortuneQty = table.length(H55_FOfFortune);
H55_Temples = GetObjectNamesByType("BUILDING_TEMPLE");
H55_TemplesQty = table.length(H55_Temples);
H55_RallyFlags = GetObjectNamesByType("BUILDING_RALLY_FLAG");
H55_RallyFlagsQty = table.length(H55_RallyFlags);
H55_Oasae = GetObjectNamesByType("BUILDING_OASIS");
H55_OasaeQty = table.length(H55_Oasae);
H55_Faeries = GetObjectNamesByType("BUILDING_FAERIE_RING");
H55_FaeriesQty = table.length(H55_Faeries);
H55_Idols = GetObjectNamesByType("BUILDING_IDOL_OF_FORTUNE");
H55_IdolsQty = table.length(H55_Idols);
H55_Wells = GetObjectNamesByType("BUILDING_MAGIC_WELL");
H55_WellsQty = table.length(H55_Wells);
H55_MEShrines = GetObjectNamesByType("BUILDING_NOMADS_SHAMAN");
H55_MEShrinesQty = table.length(H55_MEShrines);
H55_FSanctuaries = GetObjectNamesByType("BUILDING_FORTUITOUS_SANCTUARY");
H55_FSanctuariesQty = table.length(H55_FSanctuaries);

--Special Functions

H55_TradingPosts = GetObjectNamesByType("BUILDING_TRADING_POST");
H55_TradingPostsQty = table.length(H55_TradingPosts);
H55_RObservatories = GetObjectNamesByType("BUILDING_REDWOORD_OBSERVATORY");
H55_RObservatoriesQty = table.length(H55_RObservatories);
H55_RObservatoryUsers = {};

------------------------------------------------------------------------------------------------------------------------------------------------------
--TRIGGERS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_PrepareAdvMap()
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {101,"ShamanPatterns",1,"NoHero"};--------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	for i,shaman in H55_Shamans do
		H55_ShamanPattern[shaman] = random(6)+1;	
	end;
	for i,witch in H55_Witches do
		H55_ShamanPattern[witch] = random(6)+1;	
	end;
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {102,"StartingBonus",1,"NoHero"};---------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if H55_EnableModes == 1 then
		local somebodygold = 0;
		local somebodyres = 0;			
		local somebodyartifact = 0;
		local amountai = table.containsamount(H55_PlayerStatus,1);
		if H55_MapType ~= "Campaign" then
			for i=1,8 do
				if (GetPlayerState(i) == 1) and (not H55_IsThisAIPlayer(i)) then
					local heroes = GetPlayerHeroes(i);
					local goldtoken = GetPlayerResource(i,6);
					local woodtoken = GetPlayerResource(i,0);
					local oretoken = GetPlayerResource(i,1);
					local mercurytoken = GetPlayerResource(i,2);
					local crystaltoken = GetPlayerResource(i,3);
					local sulphurtoken = GetPlayerResource(i,4);
					local gemtoken = GetPlayerResource(i,5);
					local chosegold = 0;
					local choseres = 0;
					local choseartifact = 0;
					if table.contains(H55_StartBonusGold,goldtoken) then
						-- H55_GiveResourcesSilent(i,6,2500);
						chosegold = 1;
						somebodygold = 1;
						if H55_Difficulty == 0 then
							SetPlayerResource(i,6,30000);
						elseif H55_Difficulty == 3 then
							SetPlayerResource(i,6,10000);
						else
							SetPlayerResource(i,6,20000);
						end;
						-- if heroes ~= nil then
							-- H55_ArtifactStartBonus(heroes[0]);
						-- end;
					end;
					if chosegold == 0 then
						if H55_Difficulty == 0 then
							if table.contains(H55_StartBonusNormalWO,woodtoken) then
								SetPlayerResource(i,0,30);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusNormalWO,oretoken) then
								SetPlayerResource(i,1,30);
							end;
							if table.contains(H55_StartBonusNormal,mercurytoken) then
								SetPlayerResource(i,2,15);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusNormal,crystaltoken) then
								SetPlayerResource(i,3,15);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusNormal,sulphurtoken) then
								SetPlayerResource(i,4,15);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusNormal,gemtoken) then
								SetPlayerResource(i,5,15);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
						elseif H55_Difficulty == 3 then
							if table.contains(H55_StartBonusImpossibleWO,woodtoken) then
								SetPlayerResource(i,0,10);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusImpossibleWO,oretoken) then
								SetPlayerResource(i,1,10);
							end;
							if table.contains(H55_StartBonusImpossible,mercurytoken) then
								SetPlayerResource(i,2,5);
								choseres = 1;
								somebodyres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusImpossible,crystaltoken) then
								SetPlayerResource(i,3,5);
								choseres = 1;
								-- if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusImpossible,sulphurtoken) then
								SetPlayerResource(i,4,5);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusImpossible,gemtoken) then
								SetPlayerResource(i,5,5);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
						else
							if table.contains(H55_StartBonusHardWO,woodtoken) then
								SetPlayerResource(i,0,20);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusHardWO,oretoken) then
								SetPlayerResource(i,1,20);
							end;
							if table.contains(H55_StartBonusHard,mercurytoken) then
								SetPlayerResource(i,2,10);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusHard,crystaltoken) then
								SetPlayerResource(i,3,10);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusHard,sulphurtoken) then
								SetPlayerResource(i,4,10);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
							if table.contains(H55_StartBonusHard,gemtoken) then
								SetPlayerResource(i,5,10);
								choseres = 1;
								somebodyres = 1;
								--if heroes ~= nil then H55_ArtifactStartBonus(heroes[0]) end;
							end;
						end;
					end;
					if choseres == 0 and chosegold == 0 then
						if heroes ~= nil then
							for i,minorartifact in H55_MinorArtifacts do
								if HasArtefact(heroes[0],minorartifact) == 1 then
									choseartifact = 1;
									somebodyartifact = 1;
									RemoveArtefact(heroes[0],minorartifact);
								end;
							end;
							--H55_StartCreatureBonus(i,heroes[0],1,4);
						end;
					end;
					if choseres == 0 and chosegold == 0 and choseartifact == 0 then
						--failsafe
						choseartifact = 1;
						somebodyartifact = 1;
					end;
					if heroes ~= nil then
						H55_ArtifactStartBonus(heroes[0]);
					end;
				end;
			end;
		end;
		--print("Test02");
		--print(H55_GameMode);
		if H55_MapType == "Campaign" or H55_MapType == "Scenario" then
			if H55_GameMode == 0 then
				print("H55 Players chose casual mode for scenario or campaign");
			else
				H55_GameMode = 1;
				print("H55 Force Default mode for scenario or campaign");
			end;
		else
			if amountai ~= 0 then
				if H55_GameMode ~= 0 and somebodyartifact == 1 then
					H55_GameMode = 1;
					print("H55 Players chose Default mode");
				elseif H55_GameMode ~= 0 and somebodygold == 1 then
					H55_GameMode = 2;
					for i=1,8 do
						if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i)) then
							DenyAIHeroesFlee(i,1);
							-- if H55_Difficulty <= 1 then
								-- SetPlayerResource(i,0,20);
								-- SetPlayerResource(i,1,20);
								-- SetPlayerResource(i,2,10);
								-- SetPlayerResource(i,3,10);
								-- SetPlayerResource(i,4,10);
								-- SetPlayerResource(i,5,10);
								-- SetPlayerResource(i,6,20000);
								-- print("H55 AI starts with medium resources.");
							-- end;
							-- DenyAIHeroesFlee(playerID, isDenied, enemyHeroName = "" );
						end;
					end;
					print("H55 Players chose more difficult mode, AI heroes will fight to death");
					if H55_NoAutoTeamHumans == 1 then H55_TeamAI() else H55_TeamHumansvsAI() end;
				elseif H55_GameMode ~= 0 and somebodyres == 1 then
					H55_GameMode = 3;
					for i=1,8 do
						if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i)) then
							DenyAIHeroesFlee(i,1);
						end;
					end;
					print("H55 Player chose most difficult mode, AI heroes are unlootable and fight to death");
					if H55_NoAutoTeamHumans == 1 then H55_TeamAI() else H55_TeamHumansvsAI() end;
				else
					--H55_GameMode = 0;
					for i=1,8 do
						if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i)) then
							H55_TakeResourcesSilent(i,0,10);
							H55_TakeResourcesSilent(i,1,10);
							H55_TakeResourcesSilent(i,2,5);
							H55_TakeResourcesSilent(i,3,5);
							H55_TakeResourcesSilent(i,4,5);
							H55_TakeResourcesSilent(i,5,5);
							H55_TakeResourcesSilent(i,6,10000);
						end;
					end;
					print("H55 Players chose casual mode, AI loses all advantages and plays with less or equal resources");
				end;
			else
				H55_GameMode = 1;
				print("H55 Game has only human players, Game mode set to default mode");
			end;
		end;
	end;
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {103,"StartingArmies",1,"NoHero"};--------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if H55_MapType ~= "Campaign" then
		for i=1,8 do
			if (GetPlayerState(i) == 1) then
				local heroes = GetPlayerHeroes(i);

				--Guild summoning
				if heroes ~= nil then
					if table.contains(heroes,"Xerxon") then
						H55_BKnightSwitch[i] = 1;
					end;
					if table.contains(heroes,"AlaricMP") then
						H55_FireSwitch[i] = 1;
					end;
					if table.contains(heroes,"Brand") then
						H55_FireSwitch[i] = 1;
					end;
					if table.contains(heroes,"Azar") then
						H55_WolfSwitch[i] = 1;
					end;
					if table.contains(heroes,"Kyrre") then
						H55_WolfSwitch[i] = 1;
					end;

					local hero = heroes[0];
					local fc = H55_GetHeroRaceNum(hero);

					--H55_MakeStartArmy(hero,fc,add_tier,add_qty,spec_tier,spec_swap)
					--H55_MakeStartArmyNeutral(hero,fc,add_neut,add_qty,spec_tier,spec_swap)
					--spec swap must be 1 or 2, or 0 if not used, add_qty must be worth more than 100 exp, and more than 150 for neutral (180 for inferno)

					if fc == 1 then
						if hero == "Nicolai" then
							H55_MakeStartArmy(hero,fc,5,2,0,0);
						elseif hero == "Sarge" then
							H55_MakeStartArmy(hero,fc,6,1,0,0);
						elseif hero == "GodricMP" then
							H55_MakeStartArmy(hero,fc,5,2,0,0);
						elseif hero == "RedHeavenHero06" then
							H55_MakeStartArmy(hero,fc,4,20,0,0);
						elseif hero == "RedHeavenHero03" then
							H55_MakeStartArmyNeutral(hero,fc,6,5,0,0);
						elseif hero == "AlaricMP" then
							H55_MakeStartArmyNeutral(hero,fc,1,3,0,0);
						-- elseif hero == "Mardigo" then
							-- H55_MakeStartArmy(hero,fc,2,40,0,0);
						elseif hero == "Orrin" then
							H55_MakeStartArmy(hero,fc,1,20,0,0);
						-- elseif hero == "Nathaniel" then
							-- H55_MakeStartArmy(hero,fc,2,40,0,0);
						else
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						end;
					end;

					if fc == 2 then
						if hero == "Jenova" then
							H55_MakeStartArmy(hero,fc,5,2,3,1);
						elseif hero == "Mephala" then
							H55_MakeStartArmy(hero,fc,6,1,3,1);
						elseif hero == "Itil" then
							H55_MakeStartArmy(hero,fc,5,2,3,2);
						elseif hero == "Ildar" then
							H55_MakeStartArmy(hero,fc,4,45,0,0);
						elseif hero == "Melodia" then
							H55_MakeStartArmyNeutral(hero,fc,2,3,0,0);
						elseif hero == "Kyrre" then
							H55_MakeStartArmyNeutral(hero,fc,6,5,3,1);
						elseif hero == "Ossir" then
							local rnd = random(4)+3;
							AddHeroCreatures(hero,H55_Creatures[fc][1][1],rnd);
						elseif hero == "Gem" then
							H55_MakeStartArmy(hero,fc,3,4,1,2);
						-- elseif hero == "Vaniel" then
							-- ChangeHeroStat(hero,STAT_DEFENCE,1);
							-- ChangeHeroStat(hero,STAT_SPELL_POWER,1);
							-- ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
							-- H55_MakeStartArmyElementalist(hero,fc);
						else
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						end;
					end;

					if fc == 3 then
						if hero == "Harkenraz" then
							H55_MakeStartArmy(hero,fc,6,1,4,2);
						elseif hero == "Malustar" then
							H55_MakeStartArmy(hero,fc,6,1,4,1);
						elseif hero == "Ash" then
							H55_MakeStartArmy(hero,fc,5,2,4,2);
						-- elseif hero == "Oddrema" then
							-- H55_MakeStartArmy(hero,fc,4,60,0,0);
						elseif hero == "Calid2" then
							H55_MakeStartArmyNeutral(hero,fc,1,4,3,2);
						elseif hero == "Grok" then
							local rnd = random(3)+15;
							H55_MakeStartArmy(hero,fc,2,rnd,4,1);
						elseif hero == "Calh" then
							local rnd = random(3)+19;
							H55_MakeStartArmy(hero,fc,1,rnd,4,2);
						else
							H55_MakeStartArmy(hero,fc,4,45,0,0);
						end;
					end;

					if fc == 4 then
						if hero == "Archilus" then
							H55_MakeStartArmy(hero,fc,7,1,0,0);
						elseif hero == "Pelt" then
							H55_MakeStartArmy(hero,fc,6,1,3,2);
						elseif hero == "Vidomina" then
							H55_MakeStartArmy(hero,fc,5,2,3,2);
						elseif hero == "Tamika" then
							H55_MakeStartArmy(hero,fc,4,4,3,2);
						elseif hero == "Xerxon" then
							H55_MakeStartArmyNeutral(hero,fc,10,1,4,2);
						elseif hero == "Thant" then
							H55_MakeStartArmyNeutral(hero,fc,9,3,0,0);
						elseif hero == "Nemor" then
							local rnd = random(3)+4;
							H55_MakeStartArmy(hero,fc,3,rnd,3,2);
						elseif hero == "Straker" then
							-- AddHeroCreatures(hero,H55_Creatures[fc][1][1],10);
							H55_MakeStartArmy(hero,fc,1,20,0,0);
						elseif hero == "Nimbus" then
							local rnd = random(2)+5;
							H55_MakeStartArmy(hero,fc,3,rnd,1,2);
						else
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						end;
					end;

					if fc == 5 then
						if hero == "Rissa" then
							H55_MakeStartArmy(hero,fc,4,3,3,2);
						elseif hero == "Davius" then
							H55_MakeStartArmy(hero,fc,6,1,3,2);
						elseif hero == "Cyrus" then
							H55_MakeStartArmy(hero,fc,5,3,4,1);
						elseif hero == "Razzak" then
							H55_MakeStartArmy(hero,fc,4,3,0,0);
						elseif hero == "Emilia" then
							H55_MakeStartArmyNeutral(hero,fc,7,1,4,1);
						elseif hero == "Isher" then
							H55_MakeStartArmy(hero,fc,1,40,0,0);
						elseif hero == "Gurvilin" then
							local rnd = random(2)+3;
							H55_MakeStartArmy(hero,fc,4,rnd,2,1);
						elseif hero == "Havez" then
							H55_MakeStartArmy(hero,fc,2,0,0,0);
						-- elseif hero == "Zehir" then
							-- ChangeHeroStat(hero,STAT_DEFENCE,1);
							-- ChangeHeroStat(hero,STAT_SPELL_POWER,2);
							-- H55_MakeStartArmyElementalist(hero,fc);
						else
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						end;
					end;

					if fc == 6 then
						if hero == "Agbeth" then
							H55_MakeStartArmy(hero,fc,5,2,0,0);
						elseif hero == "Eruina" then
							H55_MakeStartArmy(hero,fc,6,1,0,0);
						elseif hero == "ShadwynMP" then
							H55_MakeStartArmy(hero,fc,6,1,0,0);
						elseif hero == "ThralsaiMP" then
							H55_MakeStartArmy(hero,fc,5,2,0,0);
						elseif hero == "Ferigl" then
							H55_MakeStartArmy(hero,fc,4,40,0,0);
						elseif hero == "Darkstorm" then
							H55_MakeStartArmy(hero,fc,1,40,0,0);
						elseif hero == "Menel" then
							H55_MakeStartArmyNeutral(hero,fc,8,1,0,0);
						elseif hero == "Urunir" then
							H55_MakeStartArmy(hero,fc,1,30,0,0);
						elseif hero == "Ohtarig" then
							H55_MakeStartArmy(hero,fc,2,30,0,0);
						else
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						end;
					end;

					if fc == 7 then
						if hero == "Hangvul2" then
							H55_MakeStartArmy(hero,fc,5,2,0,0);
						elseif hero == "Ufretin" then
							H55_MakeStartArmy(hero,fc,6,1,0,0);
						elseif hero == "Egil" then
							H55_MakeStartArmy(hero,fc,5,2,0,0);
						elseif hero == "Maximus" then
							H55_MakeStartArmy(hero,fc,4,70,0,0);
						elseif hero == "Bersy" then
							H55_MakeStartArmy(hero,fc,2,20,0,0);
						elseif hero == "KingTolghar" then
							H55_MakeStartArmyNeutral(hero,fc,4,3,5,2);
						elseif hero == "Brand" then
							H55_MakeStartArmyNeutral(hero,fc,1,3,0,0);
						elseif hero == "Skeggy" then
							H55_MakeStartArmy(hero,fc,1,20,0,0);
						elseif hero == "Ingvar" then
							H55_MakeStartArmy(hero,fc,2,20,0,0);
						-- elseif hero == "Bart" then
							-- ChangeHeroStat(hero,STAT_DEFENCE,1);
							-- ChangeHeroStat(hero,STAT_SPELL_POWER,1);
							-- ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
							-- H55_MakeStartArmyElementalist(hero,fc);
						else
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						end;
					end;

					if fc == 8 then
						if hero == "GottaiMP" then
							H55_MakeStartArmy(hero,fc,5,3,0,0);
						elseif hero == "Hero6" then
							H55_MakeStartArmy(hero,fc,6,1,0,0);
						elseif hero == "Hero4" then
							H55_MakeStartArmy(hero,fc,5,3,0,0);
						elseif hero == "Hero8" then
							H55_MakeStartArmy(hero,fc,2,40,0,0);--Telsek
						elseif hero == "Kunyak" then
							H55_MakeStartArmyNeutral(hero,fc,3,3,0,0);
						elseif hero == "Azar" then
							H55_MakeStartArmyNeutral(hero,fc,6,5,0,0);
						elseif hero == "Hero1" then
							H55_MakeStartArmy(hero,fc,3,20,0,0);--Kragh
						elseif hero == "Hero9" then
							H55_MakeStartArmy(hero,fc,2,40,0,0);--Kilghan
						elseif hero == "Matewa" then
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						elseif hero == "Crag" then
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						elseif hero == "Kraal" then
							H55_MakeStartArmy(hero,fc,3,20,0,0);
						elseif hero == "Quroq" then
							H55_MakeStartArmy(hero,fc,1,20,0,0);
						else
							H55_MakeStartArmy(hero,fc,4,30,0,0);
						end;
					end;

				end;
			end;
		-- sleep(0.1);
		end;
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {104,"AICompensation",1,"NoHero"};--------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if H55_GameMode == 0 and H55_Difficulty == 0 then
		print("H55 skip AI compensation for not visiting Witch Huts");
	else
		for i=1,8 do
			if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i)) then
				local heroes = GetPlayerHeroes(i);
				if heroes ~= nil then
					for i,hero in heroes do
						if H55_GetHeroClassType(hero) == "Might" or H55_GetHeroClassType(hero) == "Chieftain" then
							GiveHeroSkill(hero,6);
							GiveHeroSkill(hero,6);
							GiveHeroSkill(hero,6);
						elseif H55_GetHeroClassType(hero) == "Magic" then
							GiveHeroSkill(hero,8);
							GiveHeroSkill(hero,8);
							GiveHeroSkill(hero,8);
						else
							GiveHeroSkill(hero,7);
							GiveHeroSkill(hero,7);
							GiveHeroSkill(hero,7);
						end;
						if H55_GetHeroClass(hero) == "Renegade" then
							GiveHeroSkill(hero,7);
							GiveHeroSkill(hero,7);
						end;
						if H55_GetHeroClass(hero) == "Knight" then
							GiveHeroSkill(hero,6);
							GiveHeroSkill(hero,6);
						end;
						if H55_GetHeroClass(hero) == "DeathKnight" then
							GiveHeroSkill(hero,7);
							GiveHeroSkill(hero,7);
						end;
						if H55_GetHeroClass(hero) == "Sorcerer" then
							GiveHeroSkill(hero,7);
							GiveHeroSkill(hero,7);
						end;
					end;
				end;
			end;
		end;
	end;
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {105,"ArtifactMerchants",1,"NoHero"};-----------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if H55_NoArtifactMerchantsInTowns == 1 then
		for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
			DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
		end;
		for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
			DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
		end;
	else				
		for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
			local owner = GetObjectOwner(academy);
			if owner == 0 then
				DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
			elseif owner >= 1 then
				if H55_IsThisAIPlayer(owner) then
					DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
				end;
			end;
		end;
		for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
			local owner = GetObjectOwner(dungeon);
			if owner == 0 then
				DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
			elseif owner >= 1 then
				if H55_IsThisAIPlayer(owner) then
					DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
				end;
			end;
		end;
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	--H55_DEBUG = {106,"RunicShrines",1,"NoHero"};----------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	-- if H55_CompetitiveRunelore == 1 then
		-- for i, fortress in (GetObjectNamesByType("TOWN_FORTRESS")) do
			-- local owner = GetObjectOwner(fortress);
			-- if owner == 0 then
				-- DestroyTownBuildingToLevel(fortress,TOWN_BUILDING_SPECIAL_1,2,0);
			-- end;
		-- end;
	-- end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {107,"Update Campaign Bank Difficulty",1,"NoHero"};------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if H55_MapType == "Campaign" then
		local map = GetMapDataPath();
		-- local bonus = 0;
		-- if H55_Difficulty == 1 then
			-- bonus = 0.05;
		-- elseif H55_Difficulty == 2 then
			-- bonus = 0.1;
		-- elseif H55_Difficulty == 3 then
			-- bonus = 0.2;
		-- else
			-- bonus = 0;
		-- end;
		if table.contains(H55_CampaignsM2,map) then
			H55_BanksDifficulty = 1.1;
		end;
		if table.contains(H55_CampaignsM3,map) then
			H55_BanksDifficulty = 1.2;
		end;
		if table.contains(H55_CampaignsM4,map) then
			H55_BanksDifficulty = 1.3;
		end;
		if table.contains(H55_CampaignsM5,map) then
			H55_BanksDifficulty = 1.4;
		end;
		if map == "Maps/Scenario/C1M5/" then
			H55_BanksDifficulty = 1.2;
		end;
		--H55_BanksDifficulty = H55_BanksDifficulty + bonus;
		print("H55 Campaign Battle Site Difficulty set to "..H55_BanksDifficulty);
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {108,"SpecialObjects",1,"NoHero"};--------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	for _, mines in {H55_AbandonedMines, H55_WoodMines, H55_OreMines, H55_CrystalMines, H55_GemMines, H55_SulphurMines, H55_MercuryMines, H55_GoldMines} do
		for _, mine in mines do

			-- SetObjectEnabled(mine,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,mine,"H55_MineVisit")
		end
	end

	if H55_SphinxsQty ~= 0 then
		for i, sphinx in H55_Sphinxs do
			SetObjectEnabled(sphinx,nil);
			H55_SphinxVisited[sphinx] = {};
			Trigger(OBJECT_TOUCH_TRIGGER,sphinx,"H55_SphinxVisit");
		end;
	end;
	-- if H55_MagmasQty ~= 0 then
		-- for i, magma in H55_Magmas do
			-- SetObjectEnabled(magma,nil);
			-- H55_MagmaVisited[magma] = {};
			-- Trigger(OBJECT_TOUCH_TRIGGER,magma,"H55_MagmaVisit");
		-- end;
	-- end;	
	if H55_MapType == "Scenario" or H55_MapType == "Campaign" or H55_RPGPotions == 1 then
		if H55_TradingPostsQty ~= 0 then
			for i, object in H55_TradingPosts do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_TradingPostVisit");
				OverrideObjectTooltipNameAndDescription(object,H55_PotionShop_Name,H55_PotionShop_Txt);
			end;
		end;
	end;
	if H55_MapType == "RMG" then
		if H55_MoonDiscOnARMGMaps == 1 and H55_MoonDiscCoef() < 12 then
			H55_MoonDiscQuest = 1;
		end;
		if H55_ManaObservatories == 1 then
			if H55_RObservatoriesQty ~= 0 then
				for i, object in H55_RObservatories do
					SetObjectEnabled(object,nil);
					Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_RObservatoryVisit");
					OverrideObjectTooltipNameAndDescription(object,H55_Observatory_Name,H55_Observatory_Txt);
				end;
			end;
			-- if H55_FOfYouthQty ~= 0 then
				-- for i, object in H55_FOfYouth do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			-- if H55_FOfFortuneQty ~= 0 then
				-- for i, object in H55_FOfFortune do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			-- if H55_OasaeQty ~= 0 then
				-- for i, object in H55_Oasae do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			
			-- if H55_FSanctuariesQty ~= 0 then
				-- for i, object in H55_FSanctuaries do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;			
			-- if H55_TemplesQty ~= 0 then
				-- for i, object in H55_Temples do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			-- if H55_RallyFlagsQty ~= 0 then
				-- for i, object in H55_RallyFlags do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			-- if H55_MEShrinesQty ~= 0 then
				-- for i, object in H55_MEShrines do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			-- if H55_IdolsQty ~= 0 then
				-- for i, object in H55_Idols do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;
			-- if H55_FaeriesQty ~= 0 then
				-- for i, object in H55_Faeries do
					-- SetObjectEnabled(object,nil);
					-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_ManaObjectVisit");
				-- end;
			-- end;			
		end;		
	end;
	if H55_MapType ~= "Campaign" then
		if H55_ObelisksQty > 0 then
			for i,Obelisk in H55_Obelisks do
				H55_ObeliskArmies[Obelisk] = {};
				for i = 1,14 do
					H55_ObeliskArmies[Obelisk][i] = random(3)+1;
				end;
				for i = 15,20 do
					H55_ObeliskArmies[Obelisk][i] = random(2)+1+(i-15);
				end;
				for i = 21,26 do
					H55_ObeliskArmies[Obelisk][i] = random(2)+1+(i-21);
				end;
				H55_ObeliskArmies[Obelisk][27] = random(7)+1;
				H55_ObeliskArmies[Obelisk][28] = random(8)+1;
				H55_ObeliskArmies[Obelisk][29] = random(9)+1;
				H55_ObeliskArmies[Obelisk][30] = random(8)+1;
				SetObjectEnabled(Obelisk,nil);
				H55_ObeliskVisited[Obelisk] = {};
				Trigger(OBJECT_TOUCH_TRIGGER,Obelisk,"H55_ObeliskVisit");
			end;
		end;
		if table.length(H55_MagiHuts) == 0 and H55_ShantirisQty > 0 then
			for i,Shantiri in H55_Shantiris do
				H55_ShantiriArmies[Shantiri] = {};
				for i = 1,14 do
					H55_ShantiriArmies[Shantiri][i] = random(3)+1;
				end;
				for i = 15,20 do
					H55_ShantiriArmies[Shantiri][i] = random(2)+1+(i-15);
				end;
				for i = 21,26 do
					H55_ShantiriArmies[Shantiri][i] = random(2)+1+(i-21);
				end;
				H55_ShantiriArmies[Shantiri][27] = random(7)+1;
				H55_ShantiriArmies[Shantiri][28] = random(8)+1;
				H55_ShantiriArmies[Shantiri][29] = random(9)+1;
				H55_ShantiriArmies[Shantiri][30] = random(8)+1;
				SetObjectEnabled(Shantiri,nil);
				H55_ShantiriVisited[Shantiri] = {};
				Trigger(OBJECT_TOUCH_TRIGGER,Shantiri,"H55_ShantiriVisit");
			end;
		end;
	end;
	if H55_MermaidsQty ~= 0 then
		for i, mermaid in H55_Mermaids do
			H55_MermaidChoices[mermaid] = {};
			H55_MermaidChoices[mermaid][1] = random(15)+1;
			H55_MermaidChoices[mermaid][2] = random(2)+1;
			H55_MermaidChoices[mermaid][3] = random(5)+1;
			H55_MermaidChoices[mermaid][4] = random(2)+1;
			H55_MermaidChoices[mermaid][5] = random(2)+1;			
			SetObjectEnabled(mermaid,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,mermaid,"H55_MermaidVisit");
		end;
	end;
	if H55_SummonTemplesQty ~= 0 then
		for i, temple in H55_SummonTemples do
			H55_SummonTempleChoices[temple] = {};
			H55_SummonTempleChoices[temple][1] = random(6);
			H55_SummonTempleChoices[temple][2] = random(7)+1;
			for i=1,8 do
				if GetPlayerState(i) == 1 then
				SetAIPlayerAttractor(temple,i,-1);
				end;
			end;
			SetObjectEnabled(temple,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,temple,"H55_SummonTempleVisit");
		end;
	end;
	if H55_WitchHutsQty ~= 0 then
		if H55_ARMG_Duel == 1 then
			for i, hut in H55_WitchHuts do	
				SetObjectEnabled(hut,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,hut,"H55_WitchVisitDuel");
			end;
		else
			for i, hut in H55_WitchHuts do
				local choice1 = random(12)+1
				local choice2 = random(12)+1
				if choice1 == choice2 and choice2 <= 11 then
					choice2 = choice2+1;
				end;
				if choice1 == choice2 and choice2 == 12 then
					choice2 = 1;
				end;
				H55_WHChoice1[hut] = choice1;
				H55_WHChoice2[hut] = choice2;
				H55_WHVisited[hut] = {};
				SetObjectEnabled(hut,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,hut,"H55_WitchVisit");
			end;
		end;
	end;
	if H55_ARMG_Duel == 1 then
		if H55_FOfYouthQty ~= 0 then
			for i, object in H55_FOfYouth do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_FOfFortuneQty ~= 0 then
			for i, object in H55_FOfFortune do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_TemplesQty ~= 0 then
			for i, object in H55_Temples do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_RallyFlagsQty ~= 0 then
			for i, object in H55_RallyFlags do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_OasaeQty ~= 0 then
			for i, object in H55_Oasae do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_WellsQty ~= 0 then
			for i, object in H55_Wells do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_MEShrinesQty ~= 0 then
			for i, object in H55_MEShrines do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_IdolsQty ~= 0 then
			for i, object in H55_Idols do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_FaeriesQty ~= 0 then
			for i, object in H55_Faeries do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_FSanctuariesQty ~= 0 then
			for i, object in H55_FSanctuaries do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_IllegalVisit");
			end;
		end;
		if H55_RObservatoriesQty ~= 0 then
			for i, object in H55_RObservatories do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_RObservatoryVisit");
			end;
		end;		
	else
		-- if H55_FOfYouthQty ~= 0 then
			-- for i, object in H55_FOfYouth do
				-- SetObjectEnabled(object,nil);
				-- Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_FountainYouthVisit");
			-- end;
		-- end;
		if H55_FOfFortuneQty ~= 0 then
			for i, object in H55_FOfFortune do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_FountainFortuneVisit");
			end;
		end;
		if H55_TemplesQty ~= 0 then
			for i, object in H55_Temples do
				SetObjectEnabled(object,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,object,"H55_RegularTempleVisit");
			end;
		end;
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {109,"Junk",1,"NoHero"};------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if H55_WagonsQty ~= 0 then
		for i, wagon in H55_Wagons do
			H55_WagonChoices[wagon] = {};
			H55_WagonChoices[wagon][1] = random(6)+3;
			H55_WagonChoices[wagon][2] = random(12)+1;
			H55_WagonChoices[wagon][3] = random(table.length(H55_MinorArtifacts))+1;
			H55_WagonChoices[wagon][4] = random(7);		
			H55_WagonChoices[wagon][5] = random(4)+2;
			-- H55_WagonChoices[wagon][6] = random(100)+1;
			-- H55_WagonChoices[wagon][7] = random(100)+1;
			-- H55_WagonChoices[wagon][8] = random(100)+1;
			SetObjectEnabled(wagon,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,wagon,"H55_WagonVisit");
		end;
	end;		
	if H55_SkeletonsQty ~= 0 then
		for i, skeleton in H55_Skeletons do
			H55_SkeletonChoices[skeleton] = {};
			H55_SkeletonChoices[skeleton][1] = random(3)+1;
			H55_SkeletonChoices[skeleton][2] = random(12)+1;
			H55_SkeletonChoices[skeleton][3] = random(table.length(H55_MinorArtifacts))+1;
			H55_SkeletonChoices[skeleton][4] = random(3);		
			H55_SkeletonChoices[skeleton][5] = random(4)+2;
			-- H55_SkeletonChoices[skeleton][6] = random(100)+1;
			-- H55_SkeletonChoices[skeleton][7] = random(100)+1;
			-- H55_SkeletonChoices[skeleton][8] = random(100)+1;
			SetObjectEnabled(skeleton,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,skeleton,"H55_SkeletonVisit");
		end;
	end;
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {110,"Banks",1,"NoHero"};-----------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if H55_CryptsQty ~= 0 then
		for i,crypt in H55_Crypts do
			H55_CryptArmies[crypt] = {};
			for i = 1,14 do
				H55_CryptArmies[crypt][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_CryptArmies[crypt][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_CryptArmies[crypt][i] = random(2)+1+(i-21);
			end;
			H55_CryptArmies[crypt][27] = random(7)+1;
			H55_CryptArmies[crypt][28] = random(11)+1;
			H55_CryptArmies[crypt][29] = random(12)+1;
			SetObjectEnabled(crypt,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,crypt,"H55_CryptVisit");
		end;
	end;
	if H55_DemonTowersQty > 0 then
		for i,DemonTower in H55_DemonTowers do
			H55_DemonTowerArmies[DemonTower] = {};
			for i = 1,14 do
				H55_DemonTowerArmies[DemonTower][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_DemonTowerArmies[DemonTower][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_DemonTowerArmies[DemonTower][i] = random(2)+1+(i-21);
			end;
			H55_DemonTowerArmies[DemonTower][27] = random(7)+1;
			H55_DemonTowerArmies[DemonTower][28] = random(8)+1;
			H55_DemonTowerArmies[DemonTower][29] = random(9)+1;
			SetObjectEnabled(DemonTower,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,DemonTower,"H55_DemonTowerVisit");
		end;
	end;
	if H55_ForestTowersQty > 0 then
		for i,ForestTower in H55_ForestTowers do
			H55_ForestTowerArmies[ForestTower] = {};
			for i = 1,14 do
				H55_ForestTowerArmies[ForestTower][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_ForestTowerArmies[ForestTower][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_ForestTowerArmies[ForestTower][i] = random(2)+1+(i-21);
			end;
			H55_ForestTowerArmies[ForestTower][27] = random(7)+1;
			H55_ForestTowerArmies[ForestTower][28] = random(8)+1;
			H55_ForestTowerArmies[ForestTower][29] = random(9)+1;
			SetObjectEnabled(ForestTower,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,ForestTower,"H55_ForestTowerVisit");
		end;
	end;
	if H55_StoneVaultsQty > 0 then
		for i,StoneVault in H55_StoneVaults do
			H55_StoneVaultArmies[StoneVault] = {}
			for i = 1,14 do
				H55_StoneVaultArmies[StoneVault][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_StoneVaultArmies[StoneVault][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_StoneVaultArmies[StoneVault][i] = random(2)+1+(i-21);
			end;
			H55_StoneVaultArmies[StoneVault][27] = random(7)+1;
			H55_StoneVaultArmies[StoneVault][28] = random(8)+1;
			H55_StoneVaultArmies[StoneVault][29] = random(9)+1;
			SetObjectEnabled(StoneVault,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,StoneVault,"H55_StoneVaultVisit");
		end;
	end;
	if H55_MageVaultsQty > 0 then
		for i,MageVault in H55_MageVaults do
			H55_MageVaultArmies[MageVault] = {};
			for i = 1,14 do
				H55_MageVaultArmies[MageVault][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_MageVaultArmies[MageVault][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_MageVaultArmies[MageVault][i] = random(2)+1+(i-21);
			end;
			H55_MageVaultArmies[MageVault][27] = random(7)+1;
			H55_MageVaultArmies[MageVault][28] = random(8)+1;
			H55_MageVaultArmies[MageVault][29] = random(9)+1;
			SetObjectEnabled(MageVault,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,MageVault,"H55_MageVaultVisit");
		end;
	end;
	if H55_DwarvenTreasuresQty > 0 then
		for i,DwarvenTreasure in H55_DwarvenTreasures do
			H55_DwarvenTreasureArmies[DwarvenTreasure] = {};
			for i = 1,14 do
				H55_DwarvenTreasureArmies[DwarvenTreasure][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_DwarvenTreasureArmies[DwarvenTreasure][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_DwarvenTreasureArmies[DwarvenTreasure][i] = random(2)+1+(i-21);
			end;
			H55_DwarvenTreasureArmies[DwarvenTreasure][27] = random(7)+1;
			H55_DwarvenTreasureArmies[DwarvenTreasure][28] = random(8)+1;
			H55_DwarvenTreasureArmies[DwarvenTreasure][29] = random(9)+1;
			SetObjectEnabled(DwarvenTreasure,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,DwarvenTreasure,"H55_DwarvenTreasureVisit");
		end;
	end;	
	if H55_WitchTemplesQty > 0 then
		for i,WitchTemple in H55_WitchTemples do
			H55_WitchTempleArmies[WitchTemple] = {};
			for i = 1,14 do
				H55_WitchTempleArmies[WitchTemple][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_WitchTempleArmies[WitchTemple][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_WitchTempleArmies[WitchTemple][i] = random(2)+1+(i-21);
			end;
			H55_WitchTempleArmies[WitchTemple][27] = random(7)+1;
			H55_WitchTempleArmies[WitchTemple][28] = random(8)+1;
			H55_WitchTempleArmies[WitchTemple][29] = random(9)+1;
			SetObjectEnabled(WitchTemple,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,WitchTemple,"H55_WitchTempleVisit");
		end;
	end;
	if H55_ThicketsQty > 0 then
		for i,Thicket in H55_Thickets do
			H55_ThicketArmies[Thicket] = {}
			for i = 1,14 do
				H55_ThicketArmies[Thicket][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_ThicketArmies[Thicket][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_ThicketArmies[Thicket][i] = random(2)+1+(i-21);
			end;
			H55_ThicketArmies[Thicket][27] = random(7)+1;
			H55_ThicketArmies[Thicket][28] = random(8)+1;
			H55_ThicketArmies[Thicket][29] = random(9)+1;
			SetObjectEnabled(Thicket,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Thicket,"H55_ThicketVisit");
		end;
	end;
	if H55_PyramidsQty > 0 then
		for i,Pyramid in H55_Pyramids do
			H55_PyramidArmies[Pyramid] = {};
			for i = 1,14 do
				H55_PyramidArmies[Pyramid][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_PyramidArmies[Pyramid][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_PyramidArmies[Pyramid][i] = random(2)+1+(i-21);
			end;
			H55_PyramidArmies[Pyramid][27] = random(7)+1;
			H55_PyramidArmies[Pyramid][28] = random(8)+1;
			H55_PyramidArmies[Pyramid][29] = random(9)+1;
			SetObjectEnabled(Pyramid,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Pyramid,"H55_PyramidVisit");
		end;
	end;
	if H55_OrcTunnelsQty > 0 then
		for i,OrcTunnel in H55_OrcTunnels do
			H55_OrcTunnelArmies[OrcTunnel] = {};
			for i = 1,14 do
				H55_OrcTunnelArmies[OrcTunnel][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_OrcTunnelArmies[OrcTunnel][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_OrcTunnelArmies[OrcTunnel][i] = random(2)+1+(i-21);
			end;
			H55_OrcTunnelArmies[OrcTunnel][27] = random(7)+1;
			H55_OrcTunnelArmies[OrcTunnel][28] = random(8)+1;
			H55_OrcTunnelArmies[OrcTunnel][29] = random(9)+1;
			SetObjectEnabled(OrcTunnel,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,OrcTunnel,"H55_OrcTunnelVisit");
		end;
	end;	
	if H55_StockpilesQty > 0 then
		for i,Stockpile in H55_Stockpiles do
			H55_StockpileArmies[Stockpile] = {};
			for i = 1,7 do
				H55_StockpileArmies[Stockpile][i] = random(3)+1;
			end;
			H55_StockpileArmies[Stockpile][8] = random(5)+1;
			SetObjectEnabled(Stockpile,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Stockpile,"H55_StockpileVisit");
		end;
	end;
	if H55_UtopiasQty > 0 then
		for i,Utopia in H55_Utopias do
			H55_UtopiaArmies[Utopia] = {};
			for i = 1,6 do
				H55_UtopiaArmies[Utopia][i] = random(3)+1;
			end;
			H55_UtopiaArmies[Utopia][7] = random(8)+1;
			SetObjectEnabled(Utopia,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Utopia,"H55_UtopiaVisit");
		end;
	end;
	if H55_AbandonedMinesQty > 0 then
		if H55_ARMG_Duel == 1 then
			for i,AbandonedMine in H55_AbandonedMines do
				SetObjectEnabled(AbandonedMine,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,AbandonedMine,"H55_AbandonedMineVisitDuel");
			end;
		else	
			for i,AbandonedMine in H55_AbandonedMines do
				H55_AbandonedMineArmies[AbandonedMine] = {};
				for i = 1,14 do
					H55_AbandonedMineArmies[AbandonedMine][i] = random(3)+1;
				end;
				for i = 15,20 do
					H55_AbandonedMineArmies[AbandonedMine][i] = random(2)+1+(i-15);
				end;
				for i = 21,26 do
					H55_AbandonedMineArmies[AbandonedMine][i] = random(2)+1+(i-21);
				end;
				H55_AbandonedMineArmies[AbandonedMine][27] = random(7)+1;
				H55_AbandonedMineArmies[AbandonedMine][28] = random(8)+1;
				H55_AbandonedMineArmies[AbandonedMine][29] = random(9)+1;
				H55_AbandonedMineArmies[AbandonedMine][30] = random(8)+1;
				SetObjectEnabled(AbandonedMine,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,AbandonedMine,"H55_AbandonedMineVisit");
			end;
		end;
	end;
	if H55_UnkemptsQty > 0 then
		for i,Unkempt in H55_Unkempts do
			H55_UnkemptArmies[Unkempt] = {};
			for i = 1,14 do
				H55_UnkemptArmies[Unkempt][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_UnkemptArmies[Unkempt][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_UnkemptArmies[Unkempt][i] = random(2)+1+(i-21);
			end;
			H55_UnkemptArmies[Unkempt][27] = random(7)+1;
			H55_UnkemptArmies[Unkempt][28] = random(8)+1;
			H55_UnkemptArmies[Unkempt][29] = random(9)+1;
			H55_UnkemptArmies[Unkempt][30] = random(8)+1;
			SetObjectEnabled(Unkempt,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Unkempt,"H55_UnkemptVisit");
		end;
	end;
	if H55_DemolishsQty > 0 then
		for i,Demolish in H55_Demolishs do
			H55_DemolishArmies[Demolish] = {};
			for i = 1,14 do
				H55_DemolishArmies[Demolish][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_DemolishArmies[Demolish][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_DemolishArmies[Demolish][i] = random(2)+1+(i-21);
			end;
			H55_DemolishArmies[Demolish][27] = random(7)+1;
			H55_DemolishArmies[Demolish][28] = random(8)+1;
			H55_DemolishArmies[Demolish][29] = random(9)+1;
			H55_DemolishArmies[Demolish][30] = random(8)+1;
			SetObjectEnabled(Demolish,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Demolish,"H55_DemolishVisit");
		end;
	end;	
	if H55_SunkenTemplesQty > 0 then
		for i,SunkenTemple in H55_SunkenTemples do
			H55_SunkenTempleArmies[SunkenTemple] = {};
			for i = 1,14 do
				H55_SunkenTempleArmies[SunkenTemple][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_SunkenTempleArmies[SunkenTemple][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_SunkenTempleArmies[SunkenTemple][i] = random(2)+1+(i-21);
			end;
			H55_SunkenTempleArmies[SunkenTemple][27] = random(7)+1;
			H55_SunkenTempleArmies[SunkenTemple][28] = random(8)+1;
			H55_SunkenTempleArmies[SunkenTemple][29] = random(9)+1;
			H55_SunkenTempleArmies[SunkenTemple][30] = random(8)+1;
			SetObjectEnabled(SunkenTemple,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,SunkenTemple,"H55_SunkenTempleVisit");
		end;
	end;
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {111,"ArtifactQuests",1,"NoHero"};--------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	H55_TriggerToObjectType("BUILDING_ASTROLOGER_TOWER",OBJECT_TOUCH_TRIGGER,"H55_AstrologerVisit",nil);
	H55_TriggerToObjectType("BUILDING_SPELL_SHOP",OBJECT_TOUCH_TRIGGER,"H55_SpellShopVisit",nil);
	H55_TriggerToObjectType("BUILDING_MEMORY_MENTOR",OBJECT_TOUCH_TRIGGER,"H55_MemoryMentorVisit",nil);
	H55_TriggerToObjectType("BUILDING_BLACK_MARKET",OBJECT_TOUCH_TRIGGER,"H55_BlackMarketVisit",nil);
	H55_TriggerToObjectType("BUILDING_SACRIFICIAL_ALTAR",OBJECT_TOUCH_TRIGGER,"H55_SacrificialAltarVisit",nil);
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {112,"Suppliers",1,"NoHero"};-------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if H55_MysticalGardens ~= nil then
		for i,garden in H55_MysticalGardens do
			H55_WeeklyMysticalGardenRes[garden] = random(2);
			H55_MysticalGardensOwned[garden] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,garden,"H55_MysticalGardenVisit");
			SetObjectEnabled(garden,nil);
		end;
	end;
	
	if H55_SiegeWorkshops ~= nil then
		for i,workshop in H55_SiegeWorkshops do
			H55_WeeklySiegeWorkshopResQty[workshop] = 3+random(5);
			H55_SiegeWorkshopsOwned[workshop] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,workshop,"H55_SiegeWorkshopVisit");
			SetObjectEnabled(workshop,nil);
		end;
	end;
	
	if H55_Windmills ~= nil then
		for i,mill in H55_Windmills do
			H55_WeeklyWindmillRes[mill] = 1+random(5);
			H55_WeeklyWindmillResQty[mill] = 3+random(5);		
			H55_WindmillsOwned[mill] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,mill,"H55_WindmillVisit");
			SetObjectEnabled(mill,nil);
		end;
	end;
	
	if H55_Waterwheels ~= nil then
		for i,wheel in H55_Waterwheels do
			H55_WaterwheelsOwned[wheel] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,wheel,"H55_WaterwheelVisit");
			SetObjectEnabled(wheel,nil);
		end;
	end;
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {113,"DwellingConversion",1,"NoHero"};----------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	if H55_MapType ~= "Campaign" then
		for i=1,8 do
			H55_TriggerToObjectType(H55_T1DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T1DwellingVisit",nil);
		end;
		for i=1,8 do
			H55_TriggerToObjectType(H55_T2DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T2DwellingVisit",nil);
		end;
		for i=1,8 do
			H55_TriggerToObjectType(H55_T3DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T3DwellingVisit",nil);
		end;
		for i=1,8 do
			H55_TriggerToObjectType(H55_T4DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T4DwellingVisit",nil);
		end;
	end;

	H55_AdvMapProcessed = 1;
	print("H55 Adventure Map initialized");
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--MINE CONTROL
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_MineVisit(hero,mine)
	if H55_MineControl == 1 then
		local owner = GetObjectOwner(mine);
		local player = GetObjectOwner(hero);
		local creatures = H55_MonsterInfo(mine);
		if not H55_IsThisAIPlayer(player) then
			if owner ~= 0 and owner ~= player then
				--if count[0] == 0 and count[1] == 0 and count[2] == 0 and count[3] == 0 and count[4] == 0 and count[5] == 0 and count[6] == 0 then
				if empty(creatures) then
					H55_VisitMine(hero,mine);
				else
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Mines/AttackMine.txt"},
					"H55_VisitMine('"..hero.."','"..mine.."')","H55_VisitMineRefuse('"..hero.."','"..mine.."')");
				end;
			elseif owner == player then
				if H55_GuardedMines[mine][1] ~= owner then --count[0] == 0
					local amount = 1250;
					if H55_CommonMines[mine] == 1 then
						amount = 750 --elseif	H55_RareMines[mine] == 1 then amount = 1500
					elseif table.contains(H55_GoldMines,mine) then
						amount = 2500 --else    amount = 1500
					end;
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Mines/QuestionGuardMine.txt"; num=amount},
					"H55_GuardMine('"..hero.."','"..mine.."')","H55_VisitMineRefuse('"..hero.."','"..mine.."')");
				else
					MessageBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/Mines/OwnGuardedMine.txt","H55_VisitMineRefuse");
				end;
			else --owner == 0
				H55_VisitMine(hero,mine);
			end;
		else
			H55_VisitMine(hero,mine);
		end;
	else
		H55_VisitMineRemoveTrigger(hero,mine);
	end;
end;

function H55_GuardMine(hero,mine)
	local owner = GetObjectOwner(mine);
	local player = GetObjectOwner(hero);
	local amount = 1250;
	if H55_CommonMines[mine] == 1 then
		amount = 750;
	elseif table.contains(H55_GoldMines,mine) then
		amount = 2500;
	end;
	if GetPlayerResource(player,6) >= amount then
		H55_TakeResourcesSilent(player,6,amount);
		H55_GuardedMines[mine] = {owner,H55_Day};
		MessageBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/Mines/MineIsGuarded.txt","H55_VisitMineRefuse");
		--OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Warren);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
	end;
end;

function H55_VisitMineRemoveTrigger(hero,mine)
	Trigger(OBJECT_TOUCH_TRIGGER,mine,nil);
	SetObjectEnabled(mine,not nil);
	MakeHeroInteractWithObject(hero,mine);
end;

function H55_VisitMine(hero,mine)
	Trigger(OBJECT_TOUCH_TRIGGER,mine,nil);
	SetObjectEnabled(mine,not nil);
	MakeHeroInteractWithObject(hero,mine);
	Trigger(OBJECT_TOUCH_TRIGGER,mine,"H55_MineVisit");
	SetObjectEnabled(mine,nil);
end;

function H55_VisitMineRefuse(hero,mine)
	print("H55 End of interaction with object");
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--DWELLING CONVERSION
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_GetT1DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if table.contains(GetObjectNamesByType(H55_T1DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_GetT2DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if table.contains(GetObjectNamesByType(H55_T2DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_GetT3DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if table.contains(GetObjectNamesByType(H55_T3DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_GetT4DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if table.contains(GetObjectNamesByType(H55_T4DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;
	
function H55_T1DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT1DwellingRace(dwelling);
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and playerrace ~= dwellingrace and GetObjectOwner(dwelling) == player and not H55_IsThisAIPlayer(player) then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT1ConvCosts[1],wood=H55_DwellingT1ConvCosts[2],ore=H55_DwellingT1ConvCosts[2]},
			"H55_T1DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T1DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T1DwellingVisitNoAction(hero,dwelling);
	end;
end;

function H55_T2DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT2DwellingRace(dwelling);
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and playerrace ~= dwellingrace and GetObjectOwner(dwelling) == player and not H55_IsThisAIPlayer(player) then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT2ConvCosts[1],wood=H55_DwellingT2ConvCosts[2],ore=H55_DwellingT2ConvCosts[2]},
			"H55_T2DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T2DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T2DwellingVisitNoAction(hero,dwelling);
	end;
end;

function H55_T3DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT3DwellingRace(dwelling);
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and playerrace ~= dwellingrace and GetObjectOwner(dwelling) == player and not H55_IsThisAIPlayer(player) then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT3ConvCosts[1],wood=H55_DwellingT3ConvCosts[2],ore=H55_DwellingT3ConvCosts[2]},
			"H55_T3DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T3DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T3DwellingVisitNoAction(hero,dwelling);
	end;
end;

function H55_T4DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT4DwellingRace(dwelling);
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and playerrace ~= dwellingrace and GetObjectOwner(dwelling) == player and not H55_IsThisAIPlayer(player) then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT4ConvCosts[1],wood=H55_DwellingT4ConvCosts[2],ore=H55_DwellingT4ConvCosts[2]},
			"H55_T4DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T4DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T4DwellingVisitNoAction(hero,dwelling);
	end;
end;

--and HasArtefact(hero,103,0)

function H55_T1DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetTownRaceID(playerrace);	
	local amountT1dwellings = table.length(GetObjectNamesByType(H55_T1DwellingTypes[playerrace]));
	if amountT1dwellings < H55_MaxDwellingsT1 then
		if GetPlayerResource(player,0) < H55_DwellingT1ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT1ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT1ConvCosts[1] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else	
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT1ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT1ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT1ConvCosts[1]);		
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_Limit.txt", hero, player, 5);	
	end;
end;

function H55_T2DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetTownRaceID(playerrace);	
	local amountT2dwellings = table.length(GetObjectNamesByType(H55_T2DwellingTypes[playerrace]));
	if amountT2dwellings < H55_MaxDwellingsT2 then
		if GetPlayerResource(player,0) < H55_DwellingT2ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT2ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT2ConvCosts[1] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else	
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT2ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT2ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT2ConvCosts[1]);		
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_Limit.txt", hero, player, 5);	
	end;
end;

function H55_T3DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetTownRaceID(playerrace);	
	local amountT3dwellings = table.length(GetObjectNamesByType(H55_T3DwellingTypes[playerrace]));
	if amountT3dwellings < H55_MaxDwellingsT3 then
		if GetPlayerResource(player,0) < H55_DwellingT3ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT3ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT3ConvCosts[1] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else	
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT3ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT3ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT3ConvCosts[1]);		
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_Limit.txt", hero, player, 5);	
	end;
end;

function H55_T4DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetTownRaceID(playerrace);	
	local amountT4dwellings = table.length(GetObjectNamesByType(H55_T4DwellingTypes[playerrace]));
	if amountT4dwellings < H55_MaxDwellingsT4 then
		if GetPlayerResource(player,0) < H55_DwellingT4ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT4ConvCosts[2] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT4ConvCosts[1] then 
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else	
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT4ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT4ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT4ConvCosts[1]);		
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_Limit.txt", hero, player, 5);	
	end;
end;

function H55_T1DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T1DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

function H55_T2DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T2DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

function H55_T3DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T3DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

function H55_T4DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T4DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--SUPPLIERS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_MysticalGardenVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		if H55_MysticalGardensOwned[building] == player then
			H55_MysticalGardenRefuse(hero,building);
		else
			H55_MysticalGardensOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Garden);
			H55_MysticalGardenRefuse(hero,building);
		end;
	else
		if H55_MysticalGardensOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/SupplyQuestion.txt"; num=H55_SupplierCost},
			"H55_MysticalGardenAccept('"..hero.."','"..building.."')","H55_MysticalGardenRefuse('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/Supply/AlreadyNetwork.txt", hero, player, 5);	
		end;
	end;
end;

function H55_MysticalGardenAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= H55_SupplierCost then
		H55_TakeResourcesSilent(player,6,H55_SupplierCost);
		H55_MysticalGardensOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Garden);
		MarkObjectAsVisited(building,hero);
		H55_MysticalGardenRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_MysticalGardenRefuse(hero,building);		
	end;
end;	
	
function H55_MysticalGardenRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MysticalGardenVisit");
	SetObjectEnabled(building,nil);
end;

function H55_WindmillVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		if H55_WindmillsOwned[building] == player then
			H55_WindmillRefuse(hero,building);
		else
			H55_WindmillsOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Warren);
			H55_WindmillRefuse(hero,building);
		end;
	else
		if H55_WindmillsOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/SupplyQuestion.txt"; num=H55_SupplierCost},
			"H55_WindmillAccept('"..hero.."','"..building.."')","H55_WindmillRefuse('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/Supply/AlreadyNetwork.txt", hero, player, 5);	
		end;
	end;
end;

function H55_WindmillAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= H55_SupplierCost then
		H55_TakeResourcesSilent(player,6,H55_SupplierCost);
		H55_WindmillsOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Warren);
		MarkObjectAsVisited(building,hero);
		H55_WindmillRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_WindmillRefuse(hero,building);		
	end;
end;	
	
function H55_WindmillRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_WindmillVisit");
	SetObjectEnabled(building,nil);
end;

function H55_WaterwheelVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		if H55_WaterwheelsOwned[building] == player then
			H55_WaterwheelRefuse(hero,building);
		else
			H55_WaterwheelsOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Mill);
			H55_WaterwheelRefuse(hero,building);
		end;
	else
		if H55_WaterwheelsOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/SupplyQuestion.txt"; num=H55_SupplierCost},
			"H55_WaterwheelAccept('"..hero.."','"..building.."')","H55_WaterwheelRefuse('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/Supply/AlreadyNetwork.txt", hero, player, 5);	
		end;
	end;
end;

function H55_WaterwheelAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= H55_SupplierCost then
		H55_TakeResourcesSilent(player,6,H55_SupplierCost);
		H55_WaterwheelsOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Mill);
		MarkObjectAsVisited(building,hero);
		H55_WaterwheelRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_WaterwheelRefuse(hero,building);		
	end;	
end;	
	
function H55_WaterwheelRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_WaterwheelVisit");
	SetObjectEnabled(building,nil);
end;

function H55_SiegeWorkshopVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		if H55_SiegeWorkshopsOwned[building] == player then
			H55_SiegeWorkshopRefuse(hero,building);
		else
			H55_SiegeWorkshopsOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Workshop);
			H55_SiegeWorkshopRefuse(hero,building);
		end;
	else
		if H55_SiegeWorkshopsOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/WorkshopQuestion.txt"; num=H55_SupplierCost},
			"H55_SiegeWorkshopAccept('"..hero.."','"..building.."')","H55_SiegeWorkshopRefuse('"..hero.."','"..building.."')");
		else
			H55_SiegeWorkshopRefuse(hero,building);	
		end;
	end;
end;

function H55_SiegeWorkshopAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= H55_SupplierCost then
		H55_TakeResourcesSilent(player,6,H55_SupplierCost);
		H55_SiegeWorkshopsOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Workshop);
		MarkObjectAsVisited(building,hero);
		H55_SiegeWorkshopRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_SiegeWorkshopRefuse(hero,building);		
	end;
end;
	
function H55_SiegeWorkshopRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_SiegeWorkshopVisit");
	SetObjectEnabled(building,nil);
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--ARTIFACT QUESTS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_SacrificialAltarVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_SacrificialAltarRefuse(hero,building);
	else
		if H55_GetLegionOwnCount(hero) == 7 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/LegionQuestion.txt"},
			"H55_SacrificialAltarAccept2('"..hero.."','"..building.."')","H55_SacrificialAltarRefuse('"..hero.."','"..building.."')");				
		elseif H55_GetDragonishOwnCount(hero) == 8 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DragonQuestion.txt"},
			"H55_SacrificialAltarAccept('"..hero.."','"..building.."')","H55_SacrificialAltarRefuse('"..hero.."','"..building.."')");
		elseif ((H55_GetHeroRaceNum(hero) == 3) or (H55_GetHeroRaceNum(hero) == 4) or (H55_GetHeroRaceNum(hero) == 6) or (H55_GetHeroRaceNum(hero) == 8)) and HasArtefact(hero,89,0) then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/EggQuestion.txt"},
			"H55_SacrificialAltarAccept3('"..hero.."','"..building.."')","H55_SacrificialAltarRefuse('"..hero.."','"..building.."')");
		else
			H55_SacrificialAltarRefuse(hero,building);
		end;
	end;
end;

function H55_SacrificialAltarAccept(hero,building)
	H55_ExchangeDragonishSet(hero);
end;

function H55_SacrificialAltarAccept2(hero,building)
	H55_ExchangeLegionSet(hero);
end;

function H55_SacrificialAltarAccept3(hero,building)
	RemoveArtefact(hero,89);
	GiveExp(hero,50000);
end;

function H55_SacrificialAltarRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_SacrificialAltarVisit");
	SetObjectEnabled(building,nil);
end;

function H55_TradingPostVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_PotionBuyRefuse(hero,building);
	elseif H55_RPGPotions == 1 or H55_MapType == "Campaign" then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/PotionQuestion.txt"},
		"H55_PotionBuyAccept('"..hero.."','"..building.."')","H55_PotionBuyRefuse('"..hero.."','"..building.."')");
	else
		H55_PotionBuyRefuse(hero,building);
	end;
end;

function H55_PotionBuyAccept(hero,building)
	local player = GetObjectOwner(hero);
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/PotionChoose.txt"},
	"H55_PotionManaAccept('"..hero.."','"..building.."')","H55_PotionMoveAccept('"..hero.."','"..building.."')");
end;

function H55_PotionManaAccept(hero,building)
	local player = GetObjectOwner(hero);
	local cost = 5000;
	if GetPlayerResource(player,6) >= cost then
		H55_TakeResourcesSilent(player,6,cost);
		GiveArtefact(hero,ARTIFACT_POTION01,0);
	else
		ShowFlyingSign("/Text/Game/Scripts/Witch/Nogold.txt",hero,player,7);
	end;
end;

function H55_PotionMoveAccept(hero,building)
	local player = GetObjectOwner(hero);
	local cost = 10000;
	if GetPlayerResource(player,6) >= cost then
		H55_TakeResourcesSilent(player,6,cost);
		GiveArtefact(hero,ARTIFACT_POTION02,0);
	else
		ShowFlyingSign("/Text/Game/Scripts/Witch/Nogold.txt",hero,player,7);
	end;
end;

function H55_PotionBuyRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_TradingPostVisit");
	SetObjectEnabled(building,nil);
end;

function H55_SpellShopVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_SpellShopRefuse(hero,building);
	elseif H55_GetCornucopiaOwnCount(hero) == 6 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SpellShopQuestion.txt"},
		"H55_SpellShopAccept('"..hero.."','"..building.."')","H55_SpellShopRefuse('"..hero.."','"..building.."')");
	elseif H55_GetEndGoldOwnCount(hero) == 3 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SpellShopQuestionB.txt"},
		"H55_SpellShopAcceptB('"..hero.."','"..building.."')","H55_SpellShopRefuse('"..hero.."','"..building.."')");
	elseif H55_GetMoonDiscOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SpellShopQuestionC.txt"},
		"H55_SpellShopAcceptC('"..hero.."','"..building.."')","H55_SpellShopRefuse('"..hero.."','"..building.."')");
	else
		H55_SpellShopRefuse(hero,building);
	end;
end;

function H55_SpellShopAccept(hero,building)
	H55_ExchangeCornucopia(hero);
end;

function H55_SpellShopAcceptB(hero,building)
	H55_ExchangeEndGoldSet(hero);
end;

function H55_SpellShopAcceptC(hero,building)
	H55_ExchangeMoonDisc(hero);
end;

function H55_SpellShopRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_SpellShopVisit");
	SetObjectEnabled(building,nil);
end;

function H55_AstrologerVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_AstrologerRefuse(hero,building);
	elseif H55_GetSarIssusOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/AstrologerQuestion.txt"},
		"H55_AstrologerAccept('"..hero.."','"..building.."')","H55_AstrologerRefuse('"..hero.."','"..building.."')");
	else
		H55_AstrologerRefuse(hero,building);
	end;
end;

function H55_AstrologerAccept(hero,building)
	local player = GetObjectOwner(hero);
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/AstrologerFQuestion.txt"},
	"H55_AstrologerAccept2('"..hero.."','"..building.."')","H55_AstrologerRefuse2('"..hero.."','"..building.."')");
end;

function H55_AstrologerAccept2(hero,building)
	H55_ExchangeSarIssusSet(hero);
end;

function H55_AstrologerRefuse2(hero,building)
	H55_ExchangeSarIssusSetB(hero);
end;

function H55_AstrologerRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_AstrologerVisit");
	SetObjectEnabled(building,nil);
end;

function H55_MemoryMentorVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_MemoryMentorRefuseAI(hero,building);
	elseif H55_GetTomesOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/MemoryMentorQuestion.txt"},
		"H55_MemoryMentorAccept('"..hero.."','"..building.."')","H55_MemoryMentorRefuse('"..hero.."','"..building.."')");
	else
		H55_MemoryMentorRefuse(hero,building);
	end;
end;

function H55_MemoryMentorAccept(hero,building)
	H55_ExchangeTomesSet(hero);
end;

function H55_MemoryMentorRefuse(hero,building)
	local player = GetObjectOwner(hero);
	if H55_NoMentoring == 0 then
		Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
		SetObjectEnabled(building,not nil);
		MakeHeroInteractWithObject(hero,building);
		Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MemoryMentorVisit");
		SetObjectEnabled(building,nil);
	else
		if H55_MentorBoostVisitors[hero] == nil then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/MemoryMentorSkillBoost.txt"},
			"H55_MemoryMentorSP('"..hero.."','"..building.."')","H55_MemoryMentorKN('"..hero.."','"..building.."')");	
		else
			ShowFlyingSign("/Text/Game/Scripts/MemoryMentorAlready.txt",hero,player,8);
		end;
	end;
end;

function H55_MemoryMentorRefuseAI(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MemoryMentorVisit");
	SetObjectEnabled(building,nil);
end;

function H55_MemoryMentorSP(hero,building)
	local player = GetObjectOwner(hero);
	H55_MentorBoostVisitors[hero] = 1;
	ChangeHeroStat(hero,STAT_SPELL_POWER,2);
	ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5);	
end;

function H55_MemoryMentorKN(hero,building)
	local player = GetObjectOwner(hero);
	H55_MentorBoostVisitors[hero] = 1;
	ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
	ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5);
end;

function H55_BlackMarketVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_BlackMarketRefuseAI(hero,building);
	elseif H55_GetGuardianOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/BlackMarketQuestion.txt"},
		"H55_BlackMarketAccept('"..hero.."','"..building.."')","H55_BlackMarketRefuse('"..hero.."','"..building.."')");
	else
		H55_BlackMarketRefuse(hero,building);
	end;
end;

function H55_BlackMarketAccept(hero,building)
	local player = GetObjectOwner(hero);
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/BlackMarketFQuestion.txt"},
	"H55_BlackMarketAccept2('"..hero.."','"..building.."')","H55_BlackMarketRefuse2('"..hero.."','"..building.."')");
end;

function H55_BlackMarketAccept2(hero,building)
	H55_ExchangeGuardianSet(hero);
end;

function H55_BlackMarketRefuse2(hero,building)
	H55_ExchangeGuardianSetB(hero);
end;

function H55_BlackMarketRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_BlackMarketVisit");
	SetObjectEnabled(building,nil);
end;

function H55_BlackMarketRefuseAI(hero,building)
	print("H55 Blocked AI from visiting Artifact Merchant");
end;

------------------------------------------------------------------------------------------------------------------------------------------
--SPHINX
------------------------------------------------------------------------------------------------------------------------------------------

function H55_SphinxVisit(hero,sphinx)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	if H55_SphinxVisited[sphinx][hero] ~= 1 then
		if H55_SphinxExp[hero] == nil then
			GiveExp(hero,5000);
			H55_SphinxExp[hero] = 5000;
			H55_SphinxVisited[sphinx][hero] = 1;
			MarkObjectAsVisited(sphinx,hero);
		else 
			GiveExp(hero,(H55_SphinxExp[hero]+5000));
			H55_SphinxExp[hero] = (H55_SphinxExp[hero]+5000);
			H55_SphinxVisited[sphinx][hero] = 1;
			MarkObjectAsVisited(sphinx,hero);
		end;
	else
		if not H55_IsThisAIPlayer(player) then ShowFlyingSign("/Text/Game/Scripts/Sphinxdead.txt",hero,player,5) end;
	end;
end;

function H55_WitchVisitDuel(hero,witch)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	if H55_DuelExperienceReceived[player] ~= 1 then
		GiveExp(hero,H55_ExpTable[H55_Duel_HeroLevel]);
		H55_DuelExperienceReceived[player] = 1;
		MarkObjectAsVisited(witch,hero);
	else
		if not H55_IsThisAIPlayer(player) then ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5) end;
	end;
end;

function H55_AbandonedMineVisitDuel(hero,mine)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	if H55_Duel_Relics == 0 and H55_Duel_Majors == 0 and H55_Minors == 0 then
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	else	
		if H55_DuelArtifactsReceived[player] ~= 1 then
			local x,y,z = GetObjectPosition(hero);
			if H55_Duel_Relics >= 1 then
				for i=1,H55_Duel_Relics do
					H55_ArtifactAwardDuel(hero,3);
				end;
			end;
			if H55_Duel_Majors >= 1 then		
				for i=1,H55_Duel_Majors do
					H55_ArtifactAwardDuel(hero,2);
				end;
			end;
			if H55_Duel_Minors >= 1 then		
				for i=1,H55_Duel_Minors do
					H55_ArtifactAwardDuel(hero,1);
				end;
			end;
			H55_DuelArtifactsReceived[player] = 1;
			MarkObjectAsVisited(mine,hero);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
			if not H55_IsThisAIPlayer(player) then
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
				sleep(5);
			end;		
		else
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		end;
	end;
end;

function H55_IllegalVisit(hero,object)
	local player = GetObjectOwner(hero);
	if not H55_IsThisAIPlayer(player) then 
		ShowFlyingSign("/Text/Game/Scripts/Duel/Booster.txt",hero,player,5);
		sleep(5);
	end;
	MarkObjectAsVisited(object,hero);
end;

function H55_RObservatoryVisit(hero,observatory)
	if H55_RObservatoryUsers[hero] ~= H55_Day then
		local player = GetObjectOwner(hero);
		local x,y,z = GetObjectPosition(observatory)
		local mana = GetHeroStat(hero,STAT_MANA_POINTS);
		local manatotal = 10 * GetHeroStat(hero,STAT_KNOWLEDGE);
		if HasHeroSkill(hero,PERK_INTELLIGENCE) then
			manatotal = (math.round(1.4*manatotal))-1;
		end;
		OpenCircleFog(x,y,z,30,player);
		if mana < manatotal then
			H55_ModifyMana(hero,900);
		end;
		if not H55_IsThisAIPlayer(player) then
			ShowFlyingSign("/Text/Game/Scripts/Duel/ManaObservatory.txt",hero,player,5);
			sleep(5);
		end;
		H55_RObservatoryUsers[hero] = H55_Day
		MarkObjectAsVisited(observatory,hero);
	else
		if not H55_IsThisAIPlayer(player) then 
			ShowFlyingSign("/Text/Game/Scripts/Duel/Already.txt",hero,player,5);
			sleep(5);
		end;
	end;
end;

-- function H55_ManaObjectVisit(hero,object)
	-- startThread(H55_CheckAdvMapObjQueue);
	-- if H55_BankAction == 1 then return nil end;
	-- if H55_ManaObjectUsers[hero] ~= H55_Day then
		-- local player = GetObjectOwner(hero);
		--local x,y,z = GetObjectPosition(object)
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,900);
		-- H55_ManaObjectUsers[hero] = H55_Day
		--if not H55_IsThisAIPlayer(player) then
		-- MakeHeroInteractWithObject(hero,object);
		--end;
		-- MarkObjectAsVisited(object,hero);
		-- if not H55_IsThisAIPlayer(player) then 
			-- ShowFlyingSign("/Text/Game/Scripts/Duel/ManaObservatory.txt",hero,player,5);
			-- sleep(8);
		-- end;
	-- else
		-- local player = GetObjectOwner(hero);
		-- MakeHeroInteractWithObject(hero,object);
		-- MarkObjectAsVisited(object,hero);
		-- if not H55_IsThisAIPlayer(player) then 
			-- ShowFlyingSign("/Text/Game/Scripts/Duel/Booster.txt",hero,player,5);
			-- sleep(8);
		-- end;
	-- end;
-- end;

------------------------------------------------------------------------------------------------------------------------------------------
--MAGMA SHRINES
------------------------------------------------------------------------------------------------------------------------------------------

-- function H55_MagmaVisit(hero,magma)
	-- startThread(H55_CheckAdvMapObjQueue);
	-- if H55_BankAction == 1 then return nil end;
	-- local player = GetObjectOwner(hero);
	-- if H55_MagmaVisited[magma][hero] ~= 1 then
		-- GiveExp(hero,2000);
		-- H55_MagmaVisited[magma][hero] = 1;
		-- H55_MagmaReactivate(hero,building);		
		-- MarkObjectAsVisited(magma,hero);
	-- else
		-- if not H55_IsThisAIPlayer(player) then ShowFlyingSign("/Text/Game/Scripts/Sphinxdead.txt",hero,player,5) end;
	-- end;
-- end;

-- function H55_MagmaReactivate(hero,building)
	-- Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	-- SetObjectEnabled(building,not nil);
	-- MakeHeroInteractWithObject(hero,building);
	-- Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MagmaVisit");
	-- SetObjectEnabled(building,nil);
-- end;

------------------------------------------------------------------------------------------------------------------------------------------
--OBELISK
------------------------------------------------------------------------------------------------------------------------------------------

function H55_ObeliskVisit(hero,obelisk)
	local player = GetObjectOwner(hero);
	if H55_PuzzleQuest == 0 then	
		if H55_IsThisAIPlayer(player) then
			H55_ObeliskVisitAI(hero,obelisk);
		elseif H55_ObelisksQty == 1 then 
			if H55_ObeliskVisited[obelisk][player] == nil then
				H55_ObeliskVisited[obelisk][player] = 1;
				MarkObjectAsVisited(obelisk,hero);				
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskOnlyOne.txt"},
				"H55_OneObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");
			elseif H55_ObeliskVisited[obelisk][player] == 1 and H55_ObeliskChallengeAccepted[player] ~= 1 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskOnlyOne.txt"},
				"H55_OneObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");				
			elseif H55_ObeliskVisited[obelisk][player] == 1 and H55_ObeliskChallengeAccepted[player] == 1  and H55_ObeliskGraalFound[player] == 1 then
					ShowFlyingSign("/Text/Game/Scripts/Obelisk/ObeliskQuestComplete.txt",hero,player,5);
			else
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskCryptFail.txt"},hero,player,5);
			end;
		elseif H55_ObelisksQty >= 2 then		
			if H55_ObeliskTotalVisited[player] == nil then
				H55_ObeliskVisited[obelisk][player] = 1;
				H55_ObeliskTotalVisited[player] = 1;
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskVisit.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);	
				MarkObjectAsVisited(obelisk,hero);					
			elseif H55_ObeliskVisited[obelisk][player] == nil then
				H55_ObeliskVisited[obelisk][player] = 1;
				H55_ObeliskTotalVisited[player] = H55_ObeliskTotalVisited[player]+1;
				MarkObjectAsVisited(obelisk,hero);
				if H55_ObeliskTotalVisited[player] == H55_ObelisksQty then
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskQuestion.txt"},
					"H55_ObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");	
				else	
					ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskVisit.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);
				end;
			elseif H55_ObeliskTotalVisited[player] == H55_ObelisksQty and H55_ObeliskChallengeAccepted[player] ~= 1 then
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskQuestion.txt"},
					"H55_ObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");
			elseif H55_ObeliskTotalVisited[player] == H55_ObelisksQty and H55_ObeliskChallengeAccepted[player] == 1 and H55_ObeliskGraalFound[player] == 1 then
					ShowFlyingSign("/Text/Game/Scripts/Obelisk/ObeliskQuestComplete.txt",hero,player,5);
			elseif H55_ObeliskTotalVisited[player] == H55_ObelisksQty and H55_ObeliskChallengeAccepted[player] == 1 and H55_ObeliskGraalFound[player] ~= 1 then
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskFail.txt"},hero,player,5);			
			else
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskAlready.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);
			end;
		end;
	elseif H55_IsThisAIPlayer(player) then
		H55_ObeliskVisitAI(hero,obelisk);
	
	--User Made Puzzle Quest
	elseif H55_ObeliskVisited[obelisk][player] == nil then
		H55_ObeliskVisited[obelisk][player] = 1;
		OpenPuzzleMap(player,1);
		MarkObjectAsVisited(obelisk,hero);			
	else
		ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskAlready.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);	
	end;
end;

function H55_ObeliskRefuse(hero)
	print("Challenge refused by player");
end;

function H55_ObeliskVisitAI(hero,obelisk)			
	Trigger(OBJECT_TOUCH_TRIGGER,obelisk,nil);
	SetObjectEnabled(obelisk,not nil);
	MakeHeroInteractWithObject(hero,obelisk);
	Trigger(OBJECT_TOUCH_TRIGGER,obelisk,"H55_ObeliskVisit");
	SetObjectEnabled(obelisk,nil);				
end;

function H55_ObeliskChallenge(hero,obelisk)
	local player = GetObjectOwner(hero);
	H55_ObeliskChallengeAccepted[player] = 1;	
	local alignment = H55_ObeliskArmies[obelisk][30];
	local faction1 = 1;
	local faction2 = 1;
	if alignment == 1  then faction1 = 3 faction2 = 8 end;
	if alignment == 2  then faction1 = 4 faction2 = 6 end;
	if alignment == 3  then faction1 = 3 faction2 = 4 end;
	if alignment == 4  then faction1 = 8 faction2 = 6 end;	
	if alignment == 5  then faction1 = 8 faction2 = 3 end;
	if alignment == 6  then faction1 = 6 faction2 = 4 end;
	if alignment == 7  then faction1 = 4 faction2 = 3 end;
	if alignment == 8  then faction1 = 6 faction2 = 8 end;

	local rnd01 = H55_ObeliskArmies[obelisk][1]   local rnd02 = H55_ObeliskArmies[obelisk][2]  local rnd03 = H55_ObeliskArmies[obelisk][3];
	local rnd04 = H55_ObeliskArmies[obelisk][4]   local rnd05 = H55_ObeliskArmies[obelisk][5]  local rnd06 = H55_ObeliskArmies[obelisk][6];
	local rnd07 = H55_ObeliskArmies[obelisk][7]   local rnd08 = H55_ObeliskArmies[obelisk][8]  local rnd09 = H55_ObeliskArmies[obelisk][9];
	local rnd10 = H55_ObeliskArmies[obelisk][10]  local rnd11 = H55_ObeliskArmies[obelisk][11] local rnd12 = H55_ObeliskArmies[obelisk][12];
	local rnd13 = H55_ObeliskArmies[obelisk][13]  local rnd14 = H55_ObeliskArmies[obelisk][14];		

	local rnd12a = H55_ObeliskArmies[obelisk][15] local rnd23a = H55_ObeliskArmies[obelisk][16] local rnd34a = H55_ObeliskArmies[obelisk][17];
	local rnd45a = H55_ObeliskArmies[obelisk][18] local rnd56a = H55_ObeliskArmies[obelisk][19] local rnd67a = H55_ObeliskArmies[obelisk][20];
	
	local rnd12b = H55_ObeliskArmies[obelisk][21] local rnd23b = H55_ObeliskArmies[obelisk][22] local rnd34b = H55_ObeliskArmies[obelisk][23];
	local rnd45b = H55_ObeliskArmies[obelisk][24] local rnd56b = H55_ObeliskArmies[obelisk][25] local rnd67b = H55_ObeliskArmies[obelisk][26];

	local combat01 = H55_ObeliskArmies[obelisk][27] local combat02 = H55_ObeliskArmies[obelisk][28] local combat03 = H55_ObeliskArmies[obelisk][29];		

	local t01a = H55_Creatures[faction1][1][rnd01];
	local t02a = H55_Creatures[faction2][2][rnd02];
	local t03a = H55_Creatures[faction1][3][rnd03];
	local t04a = H55_Creatures[faction2][4][rnd04];
	local t05a = H55_Creatures[faction1][5][rnd05];
	local t06a = H55_Creatures[faction2][6][rnd06];
	local t07a = H55_Creatures[faction1][7][rnd07];

	local t01b = H55_Creatures[faction2][1][rnd08];
	local t02b = H55_Creatures[faction1][2][rnd09];
	local t03b = H55_Creatures[faction2][3][rnd10];
	local t04b = H55_Creatures[faction1][4][rnd11];
	local t05b = H55_Creatures[faction2][5][rnd12];
	local t06b = H55_Creatures[faction1][6][rnd13];
	local t07b = H55_Creatures[faction2][7][rnd14];		

	local t12a = H55_Creatures[faction1][rnd12a][rnd08];		
	local t12b = H55_Creatures[faction2][rnd12b][rnd07];
	local t23a = H55_Creatures[faction1][rnd23a][rnd06];
	local t23b = H55_Creatures[faction2][rnd23b][rnd05];

	local t34a = H55_Creatures[faction2][rnd34a][rnd12];
	local t34b = H55_Creatures[faction1][rnd34b][rnd11];
	local t45a = H55_Creatures[faction2][rnd45a][rnd10];
	local t45b = H55_Creatures[faction1][rnd45b][rnd09];

	local t56a = H55_Creatures[faction2][rnd56a][rnd04];
	local t56b = H55_Creatures[faction1][rnd56b][rnd03];
	local t67a = H55_Creatures[faction1][rnd67a][rnd02];
	local t67b = H55_Creatures[faction2][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()
	local boss = 1.3;
	
	local cnt01 = boss*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1])));
	local cnt02 = boss*(random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction1][2])));
	local cnt03 = boss*(random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction1][3])));
	local cnt04 = boss*(random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction1][4])));
	local cnt05 = boss*(random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction1][5])));
	local cnt06 = boss*(random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction1][6])));
	local cnt07 = boss*(random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction1][7])));
	local cntcr = boss*(5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1]))));
	
	if H55_BankDay <= 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;				
	end;
	if H55_BankDay > 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;			
	end;			
end;

function H55_OneObeliskChallenge(hero,obelisk)
	local player = GetObjectOwner(hero);
	H55_ObeliskChallengeAccepted[player] = 1;	
	local faction = 4;
	
	local rnd01 = H55_ObeliskArmies[obelisk][1]   local rnd02 = H55_ObeliskArmies[obelisk][2]  local rnd03 = H55_ObeliskArmies[obelisk][3];
	local rnd04 = H55_ObeliskArmies[obelisk][4]   local rnd05 = H55_ObeliskArmies[obelisk][5]  local rnd06 = H55_ObeliskArmies[obelisk][6];
	local rnd07 = H55_ObeliskArmies[obelisk][7]   local rnd08 = H55_ObeliskArmies[obelisk][8]  local rnd09 = H55_ObeliskArmies[obelisk][9];
	local rnd10 = H55_ObeliskArmies[obelisk][10]  local rnd11 = H55_ObeliskArmies[obelisk][11] local rnd12 = H55_ObeliskArmies[obelisk][12];
	local rnd13 = H55_ObeliskArmies[obelisk][13]  local rnd14 = H55_ObeliskArmies[obelisk][14];		

	local rnd12a = H55_ObeliskArmies[obelisk][15] local rnd23a = H55_ObeliskArmies[obelisk][16] local rnd34a = H55_ObeliskArmies[obelisk][17];
	local rnd45a = H55_ObeliskArmies[obelisk][18] local rnd56a = H55_ObeliskArmies[obelisk][19] local rnd67a = H55_ObeliskArmies[obelisk][20];
	
	local rnd12b = H55_ObeliskArmies[obelisk][21] local rnd23b = H55_ObeliskArmies[obelisk][22] local rnd34b = H55_ObeliskArmies[obelisk][23];
	local rnd45b = H55_ObeliskArmies[obelisk][24] local rnd56b = H55_ObeliskArmies[obelisk][25] local rnd67b = H55_ObeliskArmies[obelisk][26];

	local combat01 = H55_ObeliskArmies[obelisk][27] local combat02 = H55_ObeliskArmies[obelisk][28] local combat03 = H55_ObeliskArmies[obelisk][29];		

	local t01a = H55_Creatures[faction][1][rnd01];
	local t02a = H55_Creatures[faction][2][rnd02];
	local t03a = H55_Creatures[faction][3][rnd03];
	local t04a = H55_Creatures[faction][4][rnd04];
	local t05a = H55_Creatures[faction][5][rnd05];
	local t06a = H55_Creatures[faction][6][rnd06];
	local t07a = H55_Creatures[faction][7][rnd07];

	local t01b = H55_Creatures[faction][1][rnd08];
	local t02b = H55_Creatures[faction][2][rnd09];
	local t03b = H55_Creatures[faction][3][rnd10];
	local t04b = H55_Creatures[faction][4][rnd11];
	local t05b = H55_Creatures[faction][5][rnd12];
	local t06b = H55_Creatures[faction][6][rnd13];
	local t07b = H55_Creatures[faction][7][rnd14];		

	local t12a = H55_Creatures[faction][rnd12a][rnd08];		
	local t12b = H55_Creatures[faction][rnd12b][rnd07];
	local t23a = H55_Creatures[faction][rnd23a][rnd06];
	local t23b = H55_Creatures[faction][rnd23b][rnd05];

	local t34a = H55_Creatures[faction][rnd34a][rnd12];
	local t34b = H55_Creatures[faction][rnd34b][rnd11];
	local t45a = H55_Creatures[faction][rnd45a][rnd10];
	local t45b = H55_Creatures[faction][rnd45b][rnd09];

	local t56a = H55_Creatures[faction][rnd56a][rnd04];
	local t56b = H55_Creatures[faction][rnd56b][rnd03];
	local t67a = H55_Creatures[faction][rnd67a][rnd02];
	local t67b = H55_Creatures[faction][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()
	
	local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
	local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
	local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
	local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
	local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
	local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
	local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
	local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
	
	if H55_BankDay <= 56 then
		if combat01 == 1 or combat01 == 2 then
			StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat01 == 3 or combat01 == 4 then
			StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat01 == 5 or combat01 == 6 then
			StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat01 == 7 then
			StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;			
	end;	
	if H55_BankDay > 56 and H55_BankDay <= 112 then
		if combat02 == 1 or combat02 == 2 or combat02 == 3 then
			StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 4 or combat02 == 5 or combat02 == 6 then
			StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 7 or combat02 == 8 or combat02 == 9 then
			StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 10 then
			StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat02 == 11 then
			StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;			
	end;
	if H55_BankDay > 112 and H55_BankDay <= 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;				
	end;
	if H55_BankDay > 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,
			"H55_OneObeliskWin","/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
end;

function H55_ShantiriVisit(hero,shantiri)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_ShantiriVisitAI(hero,shantiri);
	elseif H55_ShantirisQty == 1 then 
		if H55_ShantiriVisited[shantiri][player] == nil then
			H55_ShantiriVisited[shantiri][player] = 1;
			MarkObjectAsVisited(shantiri,hero);				
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriOnlyOne.txt"},
			"H55_OneShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");
		elseif H55_ShantiriVisited[shantiri][player] == 1 and H55_ShantiriChallengeAccepted[player] ~= 1 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriOnlyOne.txt"},
			"H55_OneShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");				
		elseif H55_ShantiriVisited[shantiri][player] == 1 and H55_ShantiriChallengeAccepted[player] == 1  and H55_ShantiriGraalFound[player] == 1 then
				ShowFlyingSign("/Text/Game/Scripts/Obelisk/ShantiriQuestComplete.txt",hero,player,5);
		else
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriCryptFail.txt"},hero,player,5);
		end;
	elseif H55_ShantirisQty >= 2 then		
		if H55_ShantiriTotalVisited[player] == nil then
			H55_ShantiriVisited[shantiri][player] = 1;
			H55_ShantiriTotalVisited[player] = 1;
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriVisit.txt";amount=H55_ShantiriTotalVisited[player],total=H55_ShantirisQty},hero,player,5);	
			MarkObjectAsVisited(shantiri,hero);					
		elseif H55_ShantiriVisited[shantiri][player] == nil then
			H55_ShantiriVisited[shantiri][player] = 1;
			H55_ShantiriTotalVisited[player] = H55_ShantiriTotalVisited[player]+1;
			MarkObjectAsVisited(shantiri,hero);
			if H55_ShantiriTotalVisited[player] == H55_ShantirisQty 	then				
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriQuestion.txt"},
				"H55_ShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");	
			else	
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriVisit.txt";amount=H55_ShantiriTotalVisited[player],total=H55_ShantirisQty},hero,player,5);
			end;
		elseif H55_ShantiriTotalVisited[player] == H55_ShantirisQty and H55_ShantiriChallengeAccepted[player] ~= 1 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriQuestion.txt"},
				"H55_ShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");
		elseif H55_ShantiriTotalVisited[player] == H55_ShantirisQty and H55_ShantiriChallengeAccepted[player] == 1 and H55_ShantiriGraalFound[player] == 1 then
				ShowFlyingSign("/Text/Game/Scripts/Obelisk/ShantiriQuestComplete.txt",hero,player,5);
		elseif H55_ShantiriTotalVisited[player] == H55_ShantirisQty and H55_ShantiriChallengeAccepted[player] == 1 and H55_ShantiriGraalFound[player] ~= 1 then
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriFail.txt"},hero,player,5);			
		else
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriAlready.txt";amount=H55_ShantiriTotalVisited[player],total=H55_ShantirisQty},hero,player,5);
		end;
	end;
end;

function H55_ShantiriRefuse(hero)
	print("Challenge refused by player");
end;

function H55_ShantiriVisitAI(hero,shantiri)			
	Trigger(OBJECT_TOUCH_TRIGGER,shantiri,nil);
	SetObjectEnabled(shantiri,not nil);
	MakeHeroInteractWithObject(hero,shantiri);
	Trigger(OBJECT_TOUCH_TRIGGER,shantiri,"H55_ShantiriVisit");
	SetObjectEnabled(shantiri,nil);				
end;

function H55_ShantiriChallenge(hero,shantiri)
	local player = GetObjectOwner(hero);
	H55_ShantiriChallengeAccepted[player] = 1;	
	local alignment = H55_ShantiriArmies[shantiri][30];
	local faction1 = 1;
	local faction2 = 1;
	if alignment == 1  then faction1 = 1 faction2 = 2 end;
	if alignment == 2  then faction1 = 5 faction2 = 7 end;
	if alignment == 3  then faction1 = 1 faction2 = 7 end;
	if alignment == 4  then faction1 = 2 faction2 = 5 end;	
	if alignment == 5  then faction1 = 2 faction2 = 1 end;
	if alignment == 6  then faction1 = 7 faction2 = 5 end;
	if alignment == 7  then faction1 = 7 faction2 = 1 end;
	if alignment == 8  then faction1 = 5 faction2 = 2 end;	

	local rnd01 = H55_ShantiriArmies[shantiri][1]   local rnd02 = H55_ShantiriArmies[shantiri][2]  local rnd03 = H55_ShantiriArmies[shantiri][3];
	local rnd04 = H55_ShantiriArmies[shantiri][4]   local rnd05 = H55_ShantiriArmies[shantiri][5]  local rnd06 = H55_ShantiriArmies[shantiri][6];
	local rnd07 = H55_ShantiriArmies[shantiri][7]   local rnd08 = H55_ShantiriArmies[shantiri][8]  local rnd09 = H55_ShantiriArmies[shantiri][9];
	local rnd10 = H55_ShantiriArmies[shantiri][10]  local rnd11 = H55_ShantiriArmies[shantiri][11] local rnd12 = H55_ShantiriArmies[shantiri][12];
	local rnd13 = H55_ShantiriArmies[shantiri][13]  local rnd14 = H55_ShantiriArmies[shantiri][14];		

	local rnd12a = H55_ShantiriArmies[shantiri][15] local rnd23a = H55_ShantiriArmies[shantiri][16] local rnd34a = H55_ShantiriArmies[shantiri][17];
	local rnd45a = H55_ShantiriArmies[shantiri][18] local rnd56a = H55_ShantiriArmies[shantiri][19] local rnd67a = H55_ShantiriArmies[shantiri][20];
	
	local rnd12b = H55_ShantiriArmies[shantiri][21] local rnd23b = H55_ShantiriArmies[shantiri][22] local rnd34b = H55_ShantiriArmies[shantiri][23];
	local rnd45b = H55_ShantiriArmies[shantiri][24] local rnd56b = H55_ShantiriArmies[shantiri][25] local rnd67b = H55_ShantiriArmies[shantiri][26];

	local combat01 = H55_ShantiriArmies[shantiri][27] local combat02 = H55_ShantiriArmies[shantiri][28] local combat03 = H55_ShantiriArmies[shantiri][29];		

	local t01a = H55_Creatures[faction1][1][rnd01];
	local t02a = H55_Creatures[faction2][2][rnd02];
	local t03a = H55_Creatures[faction1][3][rnd03];
	local t04a = H55_Creatures[faction2][4][rnd04];
	local t05a = H55_Creatures[faction1][5][rnd05];
	local t06a = H55_Creatures[faction2][6][rnd06];
	local t07a = H55_Creatures[faction1][7][rnd07];

	local t01b = H55_Creatures[faction2][1][rnd08];
	local t02b = H55_Creatures[faction1][2][rnd09];
	local t03b = H55_Creatures[faction2][3][rnd10];
	local t04b = H55_Creatures[faction1][4][rnd11];
	local t05b = H55_Creatures[faction2][5][rnd12];
	local t06b = H55_Creatures[faction1][6][rnd13];
	local t07b = H55_Creatures[faction2][7][rnd14];		

	local t12a = H55_Creatures[faction1][rnd12a][rnd08];		
	local t12b = H55_Creatures[faction2][rnd12b][rnd07];
	local t23a = H55_Creatures[faction1][rnd23a][rnd06];
	local t23b = H55_Creatures[faction2][rnd23b][rnd05];

	local t34a = H55_Creatures[faction2][rnd34a][rnd12];
	local t34b = H55_Creatures[faction1][rnd34b][rnd11];
	local t45a = H55_Creatures[faction2][rnd45a][rnd10];
	local t45b = H55_Creatures[faction1][rnd45b][rnd09];

	local t56a = H55_Creatures[faction2][rnd56a][rnd04];
	local t56b = H55_Creatures[faction1][rnd56b][rnd03];
	local t67a = H55_Creatures[faction1][rnd67a][rnd02];
	local t67b = H55_Creatures[faction2][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()
	local boss = 1.3;
	
	local cnt01 = boss*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1])));
	local cnt02 = boss*(random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction1][2])));
	local cnt03 = boss*(random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction1][3])));
	local cnt04 = boss*(random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction1][4])));
	local cnt05 = boss*(random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction1][5])));
	local cnt06 = boss*(random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction1][6])));
	local cnt07 = boss*(random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction1][7])));
	local cntcr = boss*(5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1]))));
	
	if H55_BankDay <= 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;				
	end;
	if H55_BankDay > 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;			
	end;			
end;

function H55_OneShantiriChallenge(hero,shantiri)
	local player = GetObjectOwner(hero);
	H55_ShantiriChallengeAccepted[player] = 1;	
	local faction = 6;
	
	local rnd01 = H55_ShantiriArmies[shantiri][1]   local rnd02 = H55_ShantiriArmies[shantiri][2]  local rnd03 = H55_ShantiriArmies[shantiri][3];
	local rnd04 = H55_ShantiriArmies[shantiri][4]   local rnd05 = H55_ShantiriArmies[shantiri][5]  local rnd06 = H55_ShantiriArmies[shantiri][6];
	local rnd07 = H55_ShantiriArmies[shantiri][7]   local rnd08 = H55_ShantiriArmies[shantiri][8]  local rnd09 = H55_ShantiriArmies[shantiri][9];
	local rnd10 = H55_ShantiriArmies[shantiri][10]  local rnd11 = H55_ShantiriArmies[shantiri][11] local rnd12 = H55_ShantiriArmies[shantiri][12];
	local rnd13 = H55_ShantiriArmies[shantiri][13]  local rnd14 = H55_ShantiriArmies[shantiri][14];		

	local rnd12a = H55_ShantiriArmies[shantiri][15] local rnd23a = H55_ShantiriArmies[shantiri][16] local rnd34a = H55_ShantiriArmies[shantiri][17];
	local rnd45a = H55_ShantiriArmies[shantiri][18] local rnd56a = H55_ShantiriArmies[shantiri][19] local rnd67a = H55_ShantiriArmies[shantiri][20];
	
	local rnd12b = H55_ShantiriArmies[shantiri][21] local rnd23b = H55_ShantiriArmies[shantiri][22] local rnd34b = H55_ShantiriArmies[shantiri][23];
	local rnd45b = H55_ShantiriArmies[shantiri][24] local rnd56b = H55_ShantiriArmies[shantiri][25] local rnd67b = H55_ShantiriArmies[shantiri][26];

	local combat01 = H55_ShantiriArmies[shantiri][27] local combat02 = H55_ShantiriArmies[shantiri][28] local combat03 = H55_ShantiriArmies[shantiri][29];		

	local t01a = H55_Creatures[faction][1][rnd01];
	local t02a = H55_Creatures[faction][2][rnd02];
	local t03a = H55_Creatures[faction][3][rnd03];
	local t04a = H55_Creatures[faction][4][rnd04];
	local t05a = H55_Creatures[faction][5][rnd05];
	local t06a = H55_Creatures[faction][6][rnd06];
	local t07a = H55_Creatures[faction][7][rnd07];

	local t01b = H55_Creatures[faction][1][rnd08];
	local t02b = H55_Creatures[faction][2][rnd09];
	local t03b = H55_Creatures[faction][3][rnd10];
	local t04b = H55_Creatures[faction][4][rnd11];
	local t05b = H55_Creatures[faction][5][rnd12];
	local t06b = H55_Creatures[faction][6][rnd13];
	local t07b = H55_Creatures[faction][7][rnd14];		

	local t12a = H55_Creatures[faction][rnd12a][rnd08];		
	local t12b = H55_Creatures[faction][rnd12b][rnd07];
	local t23a = H55_Creatures[faction][rnd23a][rnd06];
	local t23b = H55_Creatures[faction][rnd23b][rnd05];

	local t34a = H55_Creatures[faction][rnd34a][rnd12];
	local t34b = H55_Creatures[faction][rnd34b][rnd11];
	local t45a = H55_Creatures[faction][rnd45a][rnd10];
	local t45b = H55_Creatures[faction][rnd45b][rnd09];

	local t56a = H55_Creatures[faction][rnd56a][rnd04];
	local t56b = H55_Creatures[faction][rnd56b][rnd03];
	local t67a = H55_Creatures[faction][rnd67a][rnd02];
	local t67b = H55_Creatures[faction][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()
	
	local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
	local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
	local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
	local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
	local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
	local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
	local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
	local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
	
	if H55_BankDay <= 56 then
		if combat01 == 1 or combat01 == 2 then
			StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat01 == 3 or combat01 == 4 then
			StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat01 == 5 or combat01 == 6 then
			StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat01 == 7 then
			StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_OneShantiriWin",
			nil,1);
		end;			
	end;	
	if H55_BankDay > 56 and H55_BankDay <= 112 then
		if combat02 == 1 or combat02 == 2 or combat02 == 3 then
			StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 4 or combat02 == 5 or combat02 == 6 then
			StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 7 or combat02 == 8 or combat02 == 9 then
			StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 10 then
			StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_OneShantiriWin",
			nil,1);
		end;	
		if combat02 == 11 then
			StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_OneShantiriWin",
			nil,1);
		end;			
	end;
	if H55_BankDay > 112 and H55_BankDay <= 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;	
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_OneShantiriWin",
			nil,1);
		end;				
	end;
	if H55_BankDay > 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_OneShantiriWin",
			nil,1);
		end;	
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,
			"H55_OneShantiriWin",nil,1);
		end;
	end;
end;

function H55_ObeliskWin(hero,result)
	local player = GetObjectOwner(hero);
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	if result ~= nil then
		if H55_ObelisksQty == 2 then
			H55_ArtifactAward(hero,1);
		end;
		if H55_ObelisksQty >= 3 and H55_ObelisksQty < 5 then	
			H55_ArtifactAward(hero,2);	
		end;
		if mapsize == 256 and floorsize == 0 then
			if H55_ObelisksQty >= 6 and H55_ObelisksQty < 8 then
				if H55_ForcedObelisk >= 1 then
					H55_StaticObeliskAward(hero);
				else
					H55_RandomUltimateAward(hero);
				end;
			end;
		elseif mapsize == 176 and floorsize == 1 then
			if H55_ObelisksQty >= 6 and H55_ObelisksQty < 8 then	
				if H55_ForcedObelisk >= 1 then
					H55_StaticObeliskAward(hero);
				else
					H55_RandomUltimateAward(hero);
				end;
			end;
		else
			if H55_ObelisksQty >= 6 and H55_ObelisksQty < 8 then	
				H55_ArtifactAward(hero,3);	
			end;
		end;
		if H55_ObelisksQty >= 8 then
			H55_RandomUltimateAward(hero);				
		end;		
		H55_ObeliskGraalFound[player]=1;		
	end;	
end;

function H55_OneObeliskWin(hero,result)
	local player = GetObjectOwner(hero);
	if result ~= nil then
		H55_ArtifactAward(hero,1);
		H55_ObeliskGraalFound[player]=1;		
	end;
end;

function H55_ShantiriWin(hero,result)
	local player = GetObjectOwner(hero);
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	if result ~= nil then
		if H55_ShantirisQty == 2 then
			H55_ArtifactAward(hero,1);	
		end;
		if H55_ShantirisQty >= 3 and H55_ShantirisQty < 5 then	
			H55_ArtifactAward(hero,2);	
		end;
		if mapsize == 256 and floorsize == 0 then
			if H55_ShantirisQty >= 6 and H55_ShantirisQty < 8 then	
				if H55_ForcedShantiri >= 1 then
					H55_StaticShantiriAward(hero);
				else
					H55_RandomUltimateAward(hero);
				end;
			end;
		elseif mapsize == 176 and floorsize == 1 then
			if H55_ShantirisQty >= 6 and H55_ShantirisQty < 8 then	
				if H55_ForcedShantiri >= 1 then
					H55_StaticShantiriAward(hero);
				else
					H55_RandomUltimateAward(hero);
				end;
			end;
		else
			if H55_ShantirisQty >= 6 and H55_ShantirisQty < 8 then	
				H55_ArtifactAward(hero,3);	
			end;
		end;
		if H55_ShantirisQty >= 8 then	
			H55_RandomUltimateAward(hero);	
		end;		
		H55_ShantiriGraalFound[player]=1;		
	end;
end;

function H55_OneShantiriWin(hero,result)
	local player = GetObjectOwner(hero);
	if result ~= nil then
		H55_ArtifactAward(hero,1);
		H55_ShantiriGraalFound[player]=1;		
	end;
end;

-------------------------------------------------------------------------------------------------------------------------------------------
--SEER HUT 
-------------------------------------------------------------------------------------------------------------------------------------------

function H55_MermaidVisit(hero,mermaid)
	local player = GetObjectOwner(hero);
	if IsHeroInBoat(hero) == nil then
		if not H55_IsThisAIPlayer(player) then
			local minor = H55_MermaidChoices[mermaid][1];
			local minorart = H55_MinorSeerArtifacts[minor];
			local minoramount = H55_MermaidChoices[mermaid][2];
			local reward = H55_MermaidChoices[mermaid][3];
			local herohasminor = GetHeroArtifactsCount(hero,minorart);
			if herohasminor < minoramount then			
				MessageBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SeerIntro.txt";qty=minoramount,type=H55_MinorSeerArtifactsText[minor]},
				"H55_SeerHutRefuse('"..hero.."','"..mermaid.."')");
			elseif herohasminor >= minoramount then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SeerArtifactQuestion.txt";qty=minoramount,type=H55_MinorSeerArtifactsText[minor]},
				"H55_SeerHutAccept('"..hero.."','"..mermaid.."','"..minoramount.."','"..minorart.."')","H55_SeerHutRefuse('"..hero.."','"..mermaid.."')");		
			end;
			MarkObjectAsVisited(mermaid,hero);
		else
			print("AI visits Seer hut!");
			MarkObjectAsVisited(mermaid,hero);
			--MakeHeroInteractWithObject(hero,mermaid); --cause of flickering cursor bug
		end;
	else
		if not H55_IsThisAIPlayer(player) then
			Trigger(OBJECT_TOUCH_TRIGGER,mermaid,nil);
			SetObjectEnabled(mermaid,not nil);
			MakeHeroInteractWithObject(hero,mermaid);
			print("Mermaids activated");
		else
			print("AI visits Seer hut!");
			MarkObjectAsVisited(mermaid,hero);
		end;
	end;
end;

function H55_SeerHutAccept(hero,mermaid,minoramount,minorart)
	local player = GetObjectOwner(hero);
	local level = GetHeroLevel(hero);
	--local skill = H55_MermaidChoices[mermaid][3];
	local choice1 = H55_MermaidChoices[mermaid][4];
	local choice2 = H55_MermaidChoices[mermaid][5];
	local amount1 = 1;
	local amount2 = 1;
	if choice1 == 2 then amount1 = 2 end;
	if choice2 == 2 then amount2 = (level*1000) end;	
	local reward1 = H55_SeerRewardText1[choice1];
	local reward2 = H55_SeerRewardText2[choice2];
	for i=1,minoramount do
		RemoveArtefact(hero,minorart)
	end;	
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SeerRewardChoice.txt";qty_a=amount1,type_a=reward1,qty_b=amount2,type_b=reward2},
	"H55_SeerHutRewardA('"..hero.."','"..mermaid.."')","H55_SeerHutRewardB('"..hero.."','"..mermaid.."')");	
end;

function H55_SeerHutRewardA(hero,mermaid)
	local player = GetObjectOwner(hero);
	local skill = H55_MermaidChoices[mermaid][3];
	local choice1 = H55_MermaidChoices[mermaid][4];
	local amount1 = 1;
	if choice1 == 2 then amount1 = 2 end;
	if choice1 == 2 then
		ChangeHeroStat(hero,H55_StatAwards[skill],amount1);
		if not H55_IsThisAIPlayer(player) then
			ShowFlyingSign({H55_BankStatText[skill];param=amount1},hero,player,7);			
		end;	
	else
		LevelUpHero(hero);
	end;
	H55_ResetMermaid(mermaid)
end;

function H55_SeerHutRewardB(hero,mermaid)
	local player = GetObjectOwner(hero);
	local level = GetHeroLevel(hero);	
	local choice2 = H55_MermaidChoices[mermaid][5];
	local amount2 = 1;
	if choice2 == 2 then amount2 = (level*1000) end;
	if choice2 == 2 then
		H55_GiveResources(player,6,amount2,hero);
	else
		H55_ArtifactAward(hero,2);
	end;
	H55_ResetMermaid(mermaid)
end;

function H55_SeerHutRefuse(hero,mermaid)
	MarkObjectAsVisited(mermaid,hero);
end;

function H55_ResetMermaid(mermaid)
	H55_MermaidChoices[mermaid][1] = random(20)+1;
	H55_MermaidChoices[mermaid][2] = 2+random(2);
	H55_MermaidChoices[mermaid][3] = random(4)+1;	
	H55_MermaidChoices[mermaid][4] = random(2)+1;	
	H55_MermaidChoices[mermaid][5] = random(2)+1;		
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--TEMPLE OF SHALASSA - RESOURCES ONLY
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_MapSizeSummoningAmount()
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	local amount = 40;
	if floorsize == 0 then
		if mapsize == 320 then amount = 80 end;
		if mapsize == 256 then amount = 60 end;
		if mapsize == 216 then amount = 50 end;
		if mapsize == 176 then amount = 50 end;
	end;
	if floorsize == 1 then
		if mapsize == 320 then amount = 120 end;
		if mapsize == 256 then amount = 100 end;
		if mapsize == 216 then amount = 80 end;
		if mapsize == 176 then amount = 60 end;
		if mapsize == 136 then amount = 50 end;
	end; 
	return amount
end;

function H55_SummonTempleVisit(hero,temple)
	local player = GetObjectOwner(hero);
	local reschoice = H55_SummonTempleChoices[temple][1];	
	local armychoice = H55_SummonTempleChoices[temple][2];
	local amount = H55_MapSizeSummoningAmount();
	if reschoice == 0 or reschoice == 1 then amount = (2*amount) end;
	if IsHeroInBoat(hero) == nil then
		if H55_IsThisAIPlayer(player) then
			print("AI Visits Summoning Temple!");
			MarkObjectAsVisited(temple,hero);
		else
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Question.txt";qty=amount,type=H55_SummonResourceText[reschoice]},
			"H55_SummonAccept('"..hero.."','"..temple.."')","H55_SummonSRefuse('"..hero.."','"..temple.."')");
		end;
	else
		if H55_IsThisAIPlayer(player) then
			print("AI Visits Sirens!");
			MarkObjectAsVisited(temple,hero);
		else
			Trigger(OBJECT_TOUCH_TRIGGER,temple,nil);
			SetObjectEnabled(temple,not nil);
			MakeHeroInteractWithObject(hero,temple);
			print("Sirens activated");
		end;
	end;
end;
	
function H55_SummonAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local reschoice = H55_SummonTempleChoices[temple][1];	
	local armychoice = H55_SummonTempleChoices[temple][2];
	local amount = H55_MapSizeSummoningAmount();
	if reschoice == 0 or reschoice == 1 then
		amount = (2*amount);
	end;
	if GetPlayerResource(player,reschoice) >= amount then	
		H55_TakeResources(player,reschoice,amount,hero);
		H55_SummonTempleReward(hero,3,armychoice);
	else
		ShowFlyingSign("/Text/Game/Scripts/Summon/Fail.txt",hero,player,5);
	end;
	H55_SummonTempleChoices[temple][1] = random(6);
	H55_SummonTempleChoices[temple][2] = random(7)+1;
	MarkObjectAsVisited(temple,hero);
end;
	
function H55_SummonSRefuse(hero,temple)
	local player = GetObjectOwner(hero);
	ShowFlyingSign("/Text/Game/Scripts/Summon/Refuse.txt",hero,player,5);
	MarkObjectAsVisited(temple,hero);
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--FOUNTAIN SUMMONING
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_FountainFortuneVisit(hero,fountain)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_FountainFortuneRefuse(hero,fountain);		
	elseif HasArtefact(hero,ARTIFACT_ORB_03,0) or HasArtefact(hero,ARTIFACT_ORB_04,0) or HasArtefact(hero,ARTIFACT_ORB_01,0) or HasArtefact(hero,ARTIFACT_ORB_02,0) or HasArtefact(hero,ARTIFACT_GOVERNOR_02,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Orbs.txt"},
		"H55_FountainFortuneAccept('"..hero.."','"..fountain.."')","H55_FountainFortuneRefuse('"..hero.."','"..fountain.."')");	
	else
		H55_FountainFortuneRefuse(hero,fountain)
	end;
end;

function H55_FountainFortuneRefuse(hero,fountain)
	Trigger(OBJECT_TOUCH_TRIGGER,fountain,nil);
	SetObjectEnabled(fountain,not nil);
	MakeHeroInteractWithObject(hero,fountain);
	--MarkObjectAsVisited(temple,hero); ???
	Trigger(OBJECT_TOUCH_TRIGGER,fountain,"H55_FountainFortuneVisit");
	SetObjectEnabled(fountain,nil);
end;

function H55_FountainFortuneAccept(hero,fountain)
	local player = GetObjectOwner(hero);
	if HasArtefact(hero,ARTIFACT_GOVERNOR_02,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Phoenix.txt"},
		"H55_SummonPhoenixAccept('"..hero.."','"..fountain.."')","H55_SummonFRefuse('"..hero.."','"..fountain.."')");
	end;
	if HasArtefact(hero,ARTIFACT_ORB_03,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Fire.txt"},
		"H55_SummonFireAccept('"..hero.."','"..fountain.."')","H55_SummonFRefuse('"..hero.."','"..fountain.."')");
	end;
	if HasArtefact(hero,ARTIFACT_ORB_04,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Water.txt"},
		"H55_SummonWaterAccept('"..hero.."','"..fountain.."')","H55_SummonFRefuse('"..hero.."','"..fountain.."')");
	end;
	if HasArtefact(hero,ARTIFACT_ORB_01,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Air.txt"},
		"H55_SummonAirAccept('"..hero.."','"..fountain.."')","H55_SummonFRefuse('"..hero.."','"..fountain.."')");
	end;
	if HasArtefact(hero,ARTIFACT_ORB_02,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Earth.txt"},
		"H55_SummonEarthAccept('"..hero.."','"..fountain.."')","H55_SummonFRefuse('"..hero.."','"..fountain.."')");
	end;		
end;

function H55_SummonPhoenixAccept(hero,fountain)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(1*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_GOVERNOR_02);
	AddHeroCreatures(hero,91,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Phoenixes.txt";num=amount},hero,player,7);	
end;

function H55_SummonFireAccept(hero,fountain)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_ORB_03);
	AddHeroCreatures(hero,85,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);	
end;

function H55_SummonWaterAccept(hero,fountain)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_ORB_04);
	AddHeroCreatures(hero,86,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);	
end;

function H55_SummonAirAccept(hero,fountain)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_ORB_01);
	AddHeroCreatures(hero,88,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);	
end;

function H55_SummonEarthAccept(hero,fountain)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_ORB_02);
	AddHeroCreatures(hero,87,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);	
end;

function H55_SummonFRefuse(hero,fountain)
	print("H55 Summoning of creatures was canceled");
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--TEMPLE SUMMONING
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_RegularTempleVisit(hero,temple)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		H55_RegularTempleRefuse(hero,temple);		
	elseif HasArtefact(hero,ARTIFACT_MOONBLADE,0) or HasArtefact(hero,ARTIFACT_GEAR_06,0) or HasArtefact(hero,ARTIFACT_SHAWL_OF_GREAT_LICH,0) or HasArtefact(hero,ARTIFACT_BONESTUDDED_LEATHER,0) or HasArtefact(hero,ARTIFACT_WEREWOLF_CLAW_NECKLACE,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Temple.txt"},
		"H55_RegularTempleAccept('"..hero.."','"..temple.."')","H55_RegularTempleRefuse('"..hero.."','"..temple.."')");		
	else
		H55_RegularTempleRefuse(hero,temple);
	end;
end;

function H55_RegularTempleRefuse(hero,temple)
	Trigger(OBJECT_TOUCH_TRIGGER,temple,nil);
	SetObjectEnabled(temple,not nil);
	MakeHeroInteractWithObject(hero,temple);
	--MarkObjectAsVisited(temple,hero); ???
	Trigger(OBJECT_TOUCH_TRIGGER,temple,"H55_RegularTempleVisit");
	SetObjectEnabled(temple,nil);
end;

function H55_RegularTempleAccept(hero,temple)
	local player = GetObjectOwner(hero);
	if HasArtefact(hero,ARTIFACT_MOONBLADE,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Manticore.txt"},
		"H55_SummonManticoreAccept('"..hero.."','"..temple.."')","H55_SummonTRefuse('"..hero.."','"..temple.."')");
	end;		
	-- if HasArtefact(hero,ARTIFACT_GEAR_06,0) then
	-- 	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Eagle.txt"},
	-- 	"H55_SummonEagleAccept('"..hero.."','"..temple.."')","H55_SummonTRefuse('"..hero.."','"..temple.."')");
	-- end;
	if HasArtefact(hero,ARTIFACT_SHAWL_OF_GREAT_LICH,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Dreadknight.txt"},
		"H55_SummonDreadKnightAccept('"..hero.."','"..temple.."')","H55_SummonTRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_BONESTUDDED_LEATHER,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Mummy.txt"},
		"H55_SummonMummyAccept('"..hero.."','"..temple.."')","H55_SummonTRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_WEREWOLF_CLAW_NECKLACE,0) then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Wolves.txt"},
		"H55_SummonWolvesAccept('"..hero.."','"..temple.."')","H55_SummonTRefuse('"..hero.."','"..temple.."')");
	end;	
end;

function H55_SummonManticoreAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(2*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_MOONBLADE);
	AddHeroCreatures(hero,115,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Manticores.txt";num=amount},hero,player,7);	
end;

function H55_SummonEagleAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(2*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_GEAR_06);
	AddHeroCreatures(hero,114,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Eagles.txt";num=amount},hero,player,7);	
end;

function H55_SummonWolvesAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(6*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_WEREWOLF_CLAW_NECKLACE);
	AddHeroCreatures(hero,113,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Wolfpack.txt";num=amount},hero,player,7);	
end;

function H55_SummonMummyAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(3*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_BONESTUDDED_LEATHER);
	AddHeroCreatures(hero,116,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/MReceive.txt";num=amount},hero,player,7);	
end;

function H55_SummonDreadKnightAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = math.round(1+(2*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_SHAWL_OF_GREAT_LICH);
	AddHeroCreatures(hero,90,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/DKReceive.txt";num=amount},hero,player,7);	
end;

function H55_SummonTRefuse(hero,temple)
	print("H55 Summoning of creatures was canceled");
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--WITCH HUT 
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_WitchVisit(hero,hut)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) then
		print("AI Visits Witch Hut!");
	elseif table.contains(H55_WHVisited[hut],hero) then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
	else
		local choice1 = H55_WHChoice1[hut];
		local classtype = H55_GetHeroClass(hero);
		local heroskills = 0;
		for i,s in H55_WitchSkills do
	 		if HasHeroSkill(hero, s) then
				heroskills = heroskills+1;
		    end
		end;
		if heroskills > 7 then
			heroskills = "Full"
		else
			heroskills = ""..heroskills
		end		
		for i=1,H55_ClassesCount do
			if classtype == H55_ClassesNames[i] then
				local mastery1 = GetHeroSkillMastery(hero,H55_WitchSkills[H55_WitchSelect[i][choice1]]);				
				if (mastery1 == 0 and heroskills == "Full" ) or mastery1 == 3 then
					H55_WitchVisit2nd(hero,hut,heroskills);
				elseif mastery1 <= 2 then
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
					mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchSkillText[H55_WitchSelect[i][choice1]]},
					"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."','"..heroskills.."')");
				end;
				break;
			end;
			
		end;
	end;
end;

function H55_WitchAccept01(hero,hut)
	local player = GetObjectOwner(hero);
	local classtype = H55_GetHeroClass(hero);
	local choice1 = H55_WHChoice1[hut];
	local visits = table.length(H55_WHVisited[hut])
	local currentvisitor = table.length(H55_WHVisited[hut])+1
	local x,y,z = GetObjectPosition(hut);
	for i=1,H55_ClassesCount do
		if classtype == H55_ClassesNames[i] then
			GiveHeroSkill(hero,H55_WitchSkills[H55_WitchSelect[i][choice1]]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
			break;
		end;
	end;
end;

function H55_WitchVisit2nd(hero,hut,heroskills)
	local player = GetObjectOwner(hero);
	local choice2 = H55_WHChoice2[hut];
	local classtype = H55_GetHeroClass(hero);
	local price = 2000;
	for i=1,H55_ClassesCount do
		if classtype == H55_ClassesNames[i] then
			local mastery2 = GetHeroSkillMastery(hero,H55_WitchSkills[H55_WitchSelect[i][choice2]]);
			if (mastery2 == 0 and heroskills == "Full" ) or mastery2 == 3 then
				ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);	
			elseif mastery2 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
				gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchSkillText[H55_WitchSelect[i][choice2]]},
				"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");				
			end;
			break;
		end;
	end;
end;

function H55_WitchRefuse01(hero,hut,heroskills)
	local player = GetObjectOwner(hero);
	local choice2 = H55_WHChoice2[hut];
	local classtype = H55_GetHeroClass(hero);
	local price = 2000;
	for i=1,H55_ClassesCount do
		if classtype == H55_ClassesNames[i] then
			local mastery2 = GetHeroSkillMastery(hero,H55_WitchSkills[H55_WitchSelect[i][choice2]]);
			if mastery2 == 0 and heroskills == "Full" then
				ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
			elseif mastery2 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
				gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchSkillText[H55_WitchSelect[i][choice2]]},
				"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
			elseif mastery2 == 3 then
				ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
			end;
			break;
		end;
	end;
end;
	
function H55_WitchAccept02(hero,hut)
		print("H55_WitchAccept02")
	local player = GetObjectOwner(hero);
	local classtype = H55_GetHeroClass(hero);
	local choice2 = H55_WHChoice2[hut];
	local visits = table.length(H55_WHVisited[hut])
	local currentvisitor = table.length(H55_WHVisited[hut])+1
	local x,y,z = GetObjectPosition(hut);
	local money = GetPlayerResource(player,6);
	if money >= 2000 then
		for i=1,H55_ClassesCount do
			if classtype == H55_ClassesNames[i] then
				GiveHeroSkill(hero,H55_WitchSkills[H55_WitchSelect[i][choice2]]);
				H55_WHVisited[hut][currentvisitor] = hero;
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
				MarkObjectAsVisited(hut,hero);
				H55_TakeResources(player,6,2000,hero);
				break;
			end;
		end;	
	else
		ShowFlyingSign("/Text/Game/Scripts/Witch/Nogold.txt",hero,player,5);
	end;
end;

function H55_WitchRefuse02(hero)
	print("H55_WitchRefuse02")
	local player = GetObjectOwner(hero);
	ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--BANKS
----------------------------------------------------------------------------------------------------------------------------------------------	

function H55_SetBankDay(day)
	H55_StaticBanks = 1;
	H55_BankDay = day;
end;

function H55_BanksOnTimer()
	H55_StaticBanks = 0;
end;

function H55_GetBankDifMultiplier()
	local multiplier = 1;
	local add = H55_TownQtyBankDifficulty;
	local weeks = (H55_BankDay/7)+1;
	local normal = 1+((H55_BankDay/7)*(0.03+add));
	local hard = 1+((H55_BankDay/7)*(0.04+add));
	local heroic = 1+((H55_BankDay/7)*(0.05+add));
	local impossible = 1+((H55_BankDay/7)*(0.06+add));
	local reduction = 1;
	--
	if H55_BankDay < 28 then reduction = 0.7 end;
	if H55_BankDay >= 28 and H55_BankDay < 56 then reduction = 0.8 end;
	if H55_BankDay >= 56 and H55_BankDay < 84 then reduction = 0.9 end;
	-- if H55_BankDay >= 84 and H55_BankDay < 112 then reduction = 1 end;
	if H55_BankDay >= 112 and H55_BankDay < 140 then reduction = 1.1 end;
	if H55_BankDay >= 140 and H55_BankDay < 168 then reduction = 1.2 end;
	if H55_BankDay >= 168 and H55_BankDay < 196 then reduction = 1.3 end;		
	if H55_BankDay >= 196 and H55_BankDay < 224 then reduction = 1.4 end;	
	if H55_BankDay >= 224 and H55_BankDay < 252 then reduction = 1.5 end;	
	if H55_BankDay >= 252 and H55_BankDay < 280 then reduction = 1.6 end;
	if H55_BankDay >= 280 and H55_BankDay < 308 then reduction = 1.7 end;
	if H55_BankDay >= 308 and H55_BankDay < 336 then reduction = 1.8 end;		
	if H55_BankDay >= 336 then reduction = 1.9 end;				
	--
	if H55_GovernanceEnabled == 1 then reduction = reduction + 0.05 end;
	if H55_GameMode == 3 then reduction = reduction + 0.1 end;
	if H55_GameMode == 2 then reduction = reduction + 0.05 end;
	if H55_Difficulty == 0 then reduction = reduction - 0.05 end;
	if H55_GameMode == 0 then reduction = reduction - 0.1 end;
	if H55_GameMode ~= 0 then
		if H55_MapType == "Campaign" or H55_MapType == "Scenario" then reduction = reduction - 0.05 end;
	end;
	--
	if H55_Difficulty == 3 then
		multiplier = reduction*(impossible*weeks);
	elseif H55_Difficulty == 2 then
		multiplier = reduction*(heroic*weeks);
	elseif H55_Difficulty == 1 then
		multiplier = reduction*(hard*weeks);
	else
		multiplier = reduction*(normal*weeks);
	end;
	if H55_BanksDifficulty <= 0.3 then
		H55_BanksDifficulty = 0.3;
	end;
	multiplier = (H55_BanksDifficulty-0.16) * multiplier;
	return multiplier
end;

function H55_GetLastVisited(bank)
	local day = GetDate(DAY);
	local result = 9999;
	if H55_BankLastVisit[bank] ~= nil then
		result = (day - H55_BankLastVisit[bank])
	end;
	return result
end;

function H55_GetPlayerLastVisited(player,bank)
	local day = GetDate(DAY);
	local result = 9999;
	if H55_BankPlayerLastVisit[player][bank] ~= nil then
		result = (day - H55_BankPlayerLastVisit[player][bank]);
	end;
	return result
end;

function H55_CheckAdvMapObjQueue()
	if H55_BankAction == 0 then
		H55_BankAction = 1;
		sleep(8);
		H55_BankAction = 0;
	else
		return
		--print("Multiple entries detected.");
	end;
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--JUNK 
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_WagonVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(bank);
	local founddisc = 0;
	if H55_MoonDiscQuest == 1 and not H55_IsThisAIPlayer(player) then
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc01] and H55_MoonDiscFound01 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice01],0);
			H55_MoonDiscFound01 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc02] and H55_MoonDiscFound02 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice02],0);
			H55_MoonDiscFound02 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc03] and H55_MoonDiscFound03 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice03],0);
			H55_MoonDiscFound03 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc04] and H55_MoonDiscFound04 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice04],0);
			H55_MoonDiscFound04 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
	end;
	if founddisc == 0 then
		if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
			H55_BankCurrentPlayerVisit[player] = bank;
			local faction = H55_WagonChoices[bank][1];
			local rndevent = H55_WagonChoices[bank][2];	
			local rndartifact = H55_WagonChoices[bank][3];
			local rndrestype = H55_WagonChoices[bank][4];	
			local rndamount = H55_WagonChoices[bank][5];
			if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
				rndamount = rndamount+1;
			end;		
			local rndtext = random(5)+1;
			local day = GetDate(DAY);
			if faction == 4 then faction = 1 end;
			if rndrestype == 6 then rndamount = rndamount*100 end;	
			if rndevent == 1 or rndevent == 2 or rndevent == 3 then			
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);	
			elseif rndevent == 4 or rndevent == 5 or rndevent == 6 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				H55_GiveResources(player,rndrestype,rndamount,hero);
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);	
			elseif rndevent == 7 then
				-- if H55_RPGPotions == 1 and not H55_IsThisAIPlayer(player) then
					-- GiveArtefact(hero,ARTIFACT_FREIDA);
					-- ShowFlyingSign("/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,5);
					-- H55_BankLastVisit[bank] = day;
					-- H55_BankPlayerLastVisit[player][bank] = day;	
					-- MarkObjectAsVisited(bank,hero);
				-- else
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				H55_GiveResources(player,rndrestype,rndamount,hero);
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);	
				--end;
			elseif rndevent == 8 then
				if H55_IsThisAIPlayer(player) then 
					H55_WagonWin03(hero,1);
				else
					ShowFlyingSign(H55_WagonEnterText[rndtext],hero,player,5);
					sleep(1);
					local t01a = H55_Creatures[faction][1][1];
					local t01b = H55_Creatures[faction][1][2];
					local t01c = H55_Creatures[faction][1][3];	
					local multiplier = H55_GetBankDifMultiplier();		
					local cnt01a = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					local cnt01b = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					local cnt01c = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					StartCombat(hero,nil,3,t01a,cnt01a,t01b,cnt01b,t01c,cnt01c,nil,"H55_WagonWin03",nil,1);
				end;			
			elseif rndevent == 9 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				H55_GoldReward(hero,0.1);	
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);			
			elseif rndevent == 10 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				GiveArtefact(hero,H55_MinorArtifacts[rndartifact],0);
				if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);
			elseif rndevent == 11 then
				if H55_IsThisAIPlayer(player) then 
					H55_WagonWin01(hero,1);
				else
					ShowFlyingSign(H55_WagonEnterText[rndtext],hero,player,5);
					sleep(1);
					local t01a = H55_Creatures[faction][1][1];
					local t01b = H55_Creatures[faction][1][2];
					local t01c = H55_Creatures[faction][1][3];	
					local multiplier = H55_GetBankDifMultiplier();		
					local cnt01a = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					local cnt01b = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					local cnt01c = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					StartCombat(hero,nil,3,t01a,cnt01a,t01b,cnt01b,t01c,cnt01c,nil,"H55_WagonWin01",nil,1);
				end;
			else
				if H55_IsThisAIPlayer(player) then 
					H55_WagonWin02(hero,1);
				else
					ShowFlyingSign(H55_WagonEnterText[rndtext],hero,player,5);
					sleep(1);
					local t01a = H55_Creatures[faction][1][1];
					local t01b = H55_Creatures[faction][1][2];
					local t01c = H55_Creatures[faction][1][3];	
					local multiplier = H55_GetBankDifMultiplier()		
					local cnt01a = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					local cnt01b = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					local cnt01c = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][1]));
					StartCombat(hero,nil,3,t01a,cnt01a,t01b,cnt01b,t01c,cnt01c,nil,"H55_WagonWin02",nil,1);
				end;
			end;
		else
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		end;
	end;
end;

function H55_SkeletonVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(bank);
	local founddisc = 0;
	if H55_MoonDiscQuest == 1 and not H55_IsThisAIPlayer(player) then
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc01] and H55_MoonDiscFound01 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice01],0);
			H55_MoonDiscFound01 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc02] and H55_MoonDiscFound02 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice02],0);
			H55_MoonDiscFound02 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc03] and H55_MoonDiscFound03 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice03],0);
			H55_MoonDiscFound03 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
		if bank == H55_MoonDiscLocations[H55_MoonDiscLoc04] and H55_MoonDiscFound04 ~= 1 then
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
			GiveArtefact(hero,H55_MoonDiscPattern[H55_MoonDiscChoice04],0);
			H55_MoonDiscFound04 = 1;
			founddisc = 1;
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givefragment.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
			H55_BankLastVisit[bank] = day;
			H55_BankPlayerLastVisit[player][bank] = day;	
			MarkObjectAsVisited(bank,hero);	
		end;
	end;
	if founddisc == 0 then 
		if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
			H55_BankCurrentPlayerVisit[player] = bank;
			local faction = 4
			local rndtier = H55_SkeletonChoices[bank][1];			
			local rndevent = H55_SkeletonChoices[bank][2];	
			local rndartifact = H55_SkeletonChoices[bank][3];
			local rndrestype = H55_SkeletonChoices[bank][4];	
			local rndamount = H55_SkeletonChoices[bank][5];
			if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
				rndamount = rndamount+1;
			end;
			local rndtext = random(5)+1;		
			local day = GetDate(DAY);
			if rndrestype == 2 then rndrestype = 6 rndamount = rndamount*100 end;			
			if rndevent == 1 or rndevent == 2 or rndevent == 3 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);	
			elseif rndevent == 4 then
				if H55_IsThisAIPlayer(player) then 
					H55_SkeletonWin03(hero,1);
				else
					ShowFlyingSign(H55_GraveEnterText[rndtext],hero,player,5);
					sleep(1);					
					local t01a = H55_Creatures[faction][rndtier][1];
					local t01b = H55_Creatures[faction][rndtier][2];
					local t01c = H55_Creatures[faction][rndtier][3];	
					local multiplier = H55_GetBankDifMultiplier();		
					local cnt01a = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					local cnt01b = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					local cnt01c = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					StartCombat(hero,nil,3,t01a,cnt01a,t01b,cnt01b,t01c,cnt01c,nil,"H55_SkeletonWin03",nil,1);
				end;			
			elseif rndevent == 5 or rndevent == 6 or rndevent == 7 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				H55_GiveResources(player,rndrestype,rndamount,hero);
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);	
			elseif rndevent == 8 then
				-- if H55_RPGPotions == 1 and not H55_IsThisAIPlayer(player) then
					-- GiveArtefact(hero,ARTIFACT_FREIDA);
					-- ShowFlyingSign("/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,5);
					-- H55_BankLastVisit[bank] = day;
					-- H55_BankPlayerLastVisit[player][bank] = day;	
					-- MarkObjectAsVisited(bank,hero);
				-- else
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
					H55_GiveResources(player,rndrestype,rndamount,hero);
					H55_BankLastVisit[bank] = day;
					H55_BankPlayerLastVisit[player][bank] = day;	
					MarkObjectAsVisited(bank,hero);	
				--end;
			elseif rndevent == 9 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				H55_GoldReward(hero,0.1);	
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);				
			elseif rndevent == 10 then
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
				GiveArtefact(hero,H55_MinorArtifacts[rndartifact],0);		
				if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
				H55_BankLastVisit[bank] = day;
				H55_BankPlayerLastVisit[player][bank] = day;	
				MarkObjectAsVisited(bank,hero);
			elseif rndevent == 11 then
				if H55_IsThisAIPlayer(player) then 
					H55_SkeletonWin01(hero,1);
				else
					ShowFlyingSign(H55_GraveEnterText[rndtext],hero,player,5);
					sleep(1);					
					local t01a = H55_Creatures[faction][rndtier][1];
					local t01b = H55_Creatures[faction][rndtier][2];
					local t01c = H55_Creatures[faction][rndtier][3];	
					local multiplier = H55_GetBankDifMultiplier();		
					local cnt01a = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					local cnt01b = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					local cnt01c = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					StartCombat(hero,nil,3,t01a,cnt01a,t01b,cnt01b,t01c,cnt01c,nil,"H55_SkeletonWin01",nil,1);
				end;
			else
				if H55_IsThisAIPlayer(player) then 
					H55_SkeletonWin02(hero,1);
				else
					ShowFlyingSign(H55_GraveEnterText[rndtext],hero,player,5);
					sleep(1);
					local t01a = H55_Creatures[faction][rndtier][1];
					local t01b = H55_Creatures[faction][rndtier][2];
					local t01c = H55_Creatures[faction][rndtier][3];	
					local multiplier = H55_GetBankDifMultiplier();		
					local cnt01a = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					local cnt01b = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					local cnt01c = random(5)+ math.round(0.5*(multiplier*H55_CreaturesGrowth[faction][rndtier]));
					StartCombat(hero,nil,3,t01a,cnt01a,t01b,cnt01b,t01c,cnt01c,nil,"H55_SkeletonWin02",nil,1);
				end;
			end;
		else
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		end;
	end;
end;

------------------------------------------------------------------------------------------------------------------------------------------------
--COMBAT
------------------------------------------------------------------------------------------------------------------------------------------------
		
function H55_CryptVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 4;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 
			--SetAIHeroAttractor(bank,hero,-1);
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;			
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_CryptVisit");
			SetObjectEnabled(bank,nil);			
			H55_CryptWin(hero,1);
		else
			local rnd01 = H55_CryptArmies[bank][1]   local rnd02 = H55_CryptArmies[bank][2]  local rnd03 = H55_CryptArmies[bank][3];
			local rnd04 = H55_CryptArmies[bank][4]   local rnd05 = H55_CryptArmies[bank][5]  local rnd06 = H55_CryptArmies[bank][6];
			local rnd07 = H55_CryptArmies[bank][7]   local rnd08 = H55_CryptArmies[bank][8]  local rnd09 = H55_CryptArmies[bank][9];
			local rnd10 = H55_CryptArmies[bank][10]  local rnd11 = H55_CryptArmies[bank][11] local rnd12 = H55_CryptArmies[bank][12];
			local rnd13 = H55_CryptArmies[bank][13]  local rnd14 = H55_CryptArmies[bank][14];		

			local rnd12a = H55_CryptArmies[bank][15] local rnd23a = H55_CryptArmies[bank][16] local rnd34a = H55_CryptArmies[bank][17];
			local rnd45a = H55_CryptArmies[bank][18] local rnd56a = H55_CryptArmies[bank][19] local rnd67a = H55_CryptArmies[bank][20];
			
			local rnd12b = H55_CryptArmies[bank][21] local rnd23b = H55_CryptArmies[bank][22] local rnd34b = H55_CryptArmies[bank][23];
			local rnd45b = H55_CryptArmies[bank][24] local rnd56b = H55_CryptArmies[bank][25] local rnd67b = H55_CryptArmies[bank][26];

			local combat01 = H55_CryptArmies[bank][27] local combat02 = H55_CryptArmies[bank][28] local combat03 = H55_CryptArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
			
			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;	
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_CryptWin",
					"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,
					"H55_CryptWin","/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_StoneVaultVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 3;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_StoneVaultVisit");
			SetObjectEnabled(bank,nil);				
			H55_StoneVaultWin(hero,1);
		else
			local rnd01 = H55_StoneVaultArmies[bank][1]   local rnd02 = H55_StoneVaultArmies[bank][2]  local rnd03 = H55_StoneVaultArmies[bank][3];
			local rnd04 = H55_StoneVaultArmies[bank][4]   local rnd05 = H55_StoneVaultArmies[bank][5]  local rnd06 = H55_StoneVaultArmies[bank][6];
			local rnd07 = H55_StoneVaultArmies[bank][7]   local rnd08 = H55_StoneVaultArmies[bank][8]  local rnd09 = H55_StoneVaultArmies[bank][9];
			local rnd10 = H55_StoneVaultArmies[bank][10]  local rnd11 = H55_StoneVaultArmies[bank][11] local rnd12 = H55_StoneVaultArmies[bank][12];
			local rnd13 = H55_StoneVaultArmies[bank][13]  local rnd14 = H55_StoneVaultArmies[bank][14];		

			local rnd12a = H55_StoneVaultArmies[bank][15] local rnd23a = H55_StoneVaultArmies[bank][16] local rnd34a = H55_StoneVaultArmies[bank][17];
			local rnd45a = H55_StoneVaultArmies[bank][18] local rnd56a = H55_StoneVaultArmies[bank][19] local rnd67a = H55_StoneVaultArmies[bank][20];
			
			local rnd12b = H55_StoneVaultArmies[bank][21] local rnd23b = H55_StoneVaultArmies[bank][22] local rnd34b = H55_StoneVaultArmies[bank][23];
			local rnd45b = H55_StoneVaultArmies[bank][24] local rnd56b = H55_StoneVaultArmies[bank][25] local rnd67b = H55_StoneVaultArmies[bank][26];

			local combat01 = H55_StoneVaultArmies[bank][27] local combat02 = H55_StoneVaultArmies[bank][28] local combat03 = H55_StoneVaultArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
			
			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;	
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_StoneVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_MageVaultVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 5;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;	
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_MageVaultVisit");
			SetObjectEnabled(bank,nil);				
			H55_MageVaultWin(hero,1);
		else
			local rnd01 = H55_MageVaultArmies[bank][1]   local rnd02 = H55_MageVaultArmies[bank][2]  local rnd03 = H55_MageVaultArmies[bank][3];
			local rnd04 = H55_MageVaultArmies[bank][4]   local rnd05 = H55_MageVaultArmies[bank][5]  local rnd06 = H55_MageVaultArmies[bank][6];
			local rnd07 = H55_MageVaultArmies[bank][7]   local rnd08 = H55_MageVaultArmies[bank][8]  local rnd09 = H55_MageVaultArmies[bank][9];
			local rnd10 = H55_MageVaultArmies[bank][10]  local rnd11 = H55_MageVaultArmies[bank][11] local rnd12 = H55_MageVaultArmies[bank][12];
			local rnd13 = H55_MageVaultArmies[bank][13]  local rnd14 = H55_MageVaultArmies[bank][14];		

			local rnd12a = H55_MageVaultArmies[bank][15] local rnd23a = H55_MageVaultArmies[bank][16] local rnd34a = H55_MageVaultArmies[bank][17];
			local rnd45a = H55_MageVaultArmies[bank][18] local rnd56a = H55_MageVaultArmies[bank][19] local rnd67a = H55_MageVaultArmies[bank][20];
			
			local rnd12b = H55_MageVaultArmies[bank][21] local rnd23b = H55_MageVaultArmies[bank][22] local rnd34b = H55_MageVaultArmies[bank][23];
			local rnd45b = H55_MageVaultArmies[bank][24] local rnd56b = H55_MageVaultArmies[bank][25] local rnd67b = H55_MageVaultArmies[bank][26];

			local combat01 = H55_MageVaultArmies[bank][27] local combat02 = H55_MageVaultArmies[bank][28] local combat03 = H55_MageVaultArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));

			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;				
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,6,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,t01b,cnt01,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);   
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t04a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,4,t07a,cnt07,t07a,cnt07,t07b,cnt07,t04a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,5,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,t04a,cnt04,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_MageVaultWin","/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_DwarvenTreasureVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 7;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;	
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_DwarvenTreasureVisit");
			SetObjectEnabled(bank,nil);				
			H55_DwarvenTreasureWin(hero,1);
		else
			local rnd01 = H55_DwarvenTreasureArmies[bank][1]   local rnd02 = H55_DwarvenTreasureArmies[bank][2]  local rnd03 = H55_DwarvenTreasureArmies[bank][3];
			local rnd04 = H55_DwarvenTreasureArmies[bank][4]   local rnd05 = H55_DwarvenTreasureArmies[bank][5]  local rnd06 = H55_DwarvenTreasureArmies[bank][6];
			local rnd07 = H55_DwarvenTreasureArmies[bank][7]   local rnd08 = H55_DwarvenTreasureArmies[bank][8]  local rnd09 = H55_DwarvenTreasureArmies[bank][9];
			local rnd10 = H55_DwarvenTreasureArmies[bank][10]  local rnd11 = H55_DwarvenTreasureArmies[bank][11] local rnd12 = H55_DwarvenTreasureArmies[bank][12];
			local rnd13 = H55_DwarvenTreasureArmies[bank][13]  local rnd14 = H55_DwarvenTreasureArmies[bank][14];		

			local rnd12a = H55_DwarvenTreasureArmies[bank][15] local rnd23a = H55_DwarvenTreasureArmies[bank][16] local rnd34a = H55_DwarvenTreasureArmies[bank][17];
			local rnd45a = H55_DwarvenTreasureArmies[bank][18] local rnd56a = H55_DwarvenTreasureArmies[bank][19] local rnd67a = H55_DwarvenTreasureArmies[bank][20];
			
			local rnd12b = H55_DwarvenTreasureArmies[bank][21] local rnd23b = H55_DwarvenTreasureArmies[bank][22] local rnd34b = H55_DwarvenTreasureArmies[bank][23];
			local rnd45b = H55_DwarvenTreasureArmies[bank][24] local rnd56b = H55_DwarvenTreasureArmies[bank][25] local rnd67b = H55_DwarvenTreasureArmies[bank][26];

			local combat01 = H55_DwarvenTreasureArmies[bank][27] local combat02 = H55_DwarvenTreasureArmies[bank][28] local combat03 = H55_DwarvenTreasureArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));

			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;			
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,6,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,t04b,cnt04,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,4,t07a,cnt07,t07a,cnt07,t07b,cnt07,t05a,cnt05,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_DwarvenTreasureWin","/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_WitchTempleVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 6;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_WitchTempleVisit");
			SetObjectEnabled(bank,nil);				
			H55_WitchTempleWin(hero,1);
		else
			local rnd01 = H55_WitchTempleArmies[bank][1]   local rnd02 = H55_WitchTempleArmies[bank][2]  local rnd03 = H55_WitchTempleArmies[bank][3];
			local rnd04 = H55_WitchTempleArmies[bank][4]   local rnd05 = H55_WitchTempleArmies[bank][5]  local rnd06 = H55_WitchTempleArmies[bank][6];
			local rnd07 = H55_WitchTempleArmies[bank][7]   local rnd08 = H55_WitchTempleArmies[bank][8]  local rnd09 = H55_WitchTempleArmies[bank][9];
			local rnd10 = H55_WitchTempleArmies[bank][10]  local rnd11 = H55_WitchTempleArmies[bank][11] local rnd12 = H55_WitchTempleArmies[bank][12];
			local rnd13 = H55_WitchTempleArmies[bank][13]  local rnd14 = H55_WitchTempleArmies[bank][14];		

			local rnd12a = H55_WitchTempleArmies[bank][15] local rnd23a = H55_WitchTempleArmies[bank][16] local rnd34a = H55_WitchTempleArmies[bank][17];
			local rnd45a = H55_WitchTempleArmies[bank][18] local rnd56a = H55_WitchTempleArmies[bank][19] local rnd67a = H55_WitchTempleArmies[bank][20];
			
			local rnd12b = H55_WitchTempleArmies[bank][21] local rnd23b = H55_WitchTempleArmies[bank][22] local rnd34b = H55_WitchTempleArmies[bank][23];
			local rnd45b = H55_WitchTempleArmies[bank][24] local rnd56b = H55_WitchTempleArmies[bank][25] local rnd67b = H55_WitchTempleArmies[bank][26];

			local combat01 = H55_WitchTempleArmies[bank][27] local combat02 = H55_WitchTempleArmies[bank][28] local combat03 = H55_WitchTempleArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));

			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;				
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt03,t06a,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t45a,cnt03,t06b,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t06a,cnt06,t05a,cnt05,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,6,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,t02b,cnt02,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t45b,cnt04,t06a,cnt06,t56a,cnt05,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t06a,cnt06,t67a,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t02a,cnt02,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,5,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,t02a,cnt02,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,5,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t02a,cntcr,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,4,t07a,cnt07,t07a,cnt07,t07b,cnt07,t06a,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_WitchTempleWin","/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_ThicketVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 2;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_ThicketVisit");
			SetObjectEnabled(bank,nil);			
			H55_ThicketWin(hero,1);
		else
			local rnd01 = H55_ThicketArmies[bank][1]   local rnd02 = H55_ThicketArmies[bank][2]  local rnd03 = H55_ThicketArmies[bank][3];
			local rnd04 = H55_ThicketArmies[bank][4]   local rnd05 = H55_ThicketArmies[bank][5]  local rnd06 = H55_ThicketArmies[bank][6];
			local rnd07 = H55_ThicketArmies[bank][7]   local rnd08 = H55_ThicketArmies[bank][8]  local rnd09 = H55_ThicketArmies[bank][9];
			local rnd10 = H55_ThicketArmies[bank][10]  local rnd11 = H55_ThicketArmies[bank][11] local rnd12 = H55_ThicketArmies[bank][12];
			local rnd13 = H55_ThicketArmies[bank][13]  local rnd14 = H55_ThicketArmies[bank][14];		

			local rnd12a = H55_ThicketArmies[bank][15] local rnd23a = H55_ThicketArmies[bank][16] local rnd34a = H55_ThicketArmies[bank][17];
			local rnd45a = H55_ThicketArmies[bank][18] local rnd56a = H55_ThicketArmies[bank][19] local rnd67a = H55_ThicketArmies[bank][20];
			
			local rnd12b = H55_ThicketArmies[bank][21] local rnd23b = H55_ThicketArmies[bank][22] local rnd34b = H55_ThicketArmies[bank][23];
			local rnd45b = H55_ThicketArmies[bank][24] local rnd56b = H55_ThicketArmies[bank][25] local rnd67b = H55_ThicketArmies[bank][26];

			local combat01 = H55_ThicketArmies[bank][27] local combat02 = H55_ThicketArmies[bank][28] local combat03 = H55_ThicketArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
				
			if H55_BankDay <= 112 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 112 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_ThicketWin","/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_ForestTowerVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 2;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_ForestTowerVisit");
			SetObjectEnabled(bank,nil);				
			H55_ForestTowerWin(hero,1);
		else
			local rnd01 = H55_ForestTowerArmies[bank][1]   local rnd02 = H55_ForestTowerArmies[bank][2]  local rnd03 = H55_ForestTowerArmies[bank][3];
			local rnd04 = H55_ForestTowerArmies[bank][4]   local rnd05 = H55_ForestTowerArmies[bank][5]  local rnd06 = H55_ForestTowerArmies[bank][6];
			local rnd07 = H55_ForestTowerArmies[bank][7]   local rnd08 = H55_ForestTowerArmies[bank][8]  local rnd09 = H55_ForestTowerArmies[bank][9];
			local rnd10 = H55_ForestTowerArmies[bank][10]  local rnd11 = H55_ForestTowerArmies[bank][11] local rnd12 = H55_ForestTowerArmies[bank][12];
			local rnd13 = H55_ForestTowerArmies[bank][13]  local rnd14 = H55_ForestTowerArmies[bank][14];		

			local rnd12a = H55_ForestTowerArmies[bank][15] local rnd23a = H55_ForestTowerArmies[bank][16] local rnd34a = H55_ForestTowerArmies[bank][17];
			local rnd45a = H55_ForestTowerArmies[bank][18] local rnd56a = H55_ForestTowerArmies[bank][19] local rnd67a = H55_ForestTowerArmies[bank][20];
			
			local rnd12b = H55_ForestTowerArmies[bank][21] local rnd23b = H55_ForestTowerArmies[bank][22] local rnd34b = H55_ForestTowerArmies[bank][23];
			local rnd45b = H55_ForestTowerArmies[bank][24] local rnd56b = H55_ForestTowerArmies[bank][25] local rnd67b = H55_ForestTowerArmies[bank][26];

			local combat01 = H55_ForestTowerArmies[bank][27] local combat02 = H55_ForestTowerArmies[bank][28] local combat03 = H55_ForestTowerArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));

			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;			
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt03,t06a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t45a,cnt03,t06b,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,t06a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t03b,cnt03,t03b,cnt03,t03a,cnt03,t06b,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end; 
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t45b,cnt04,t56a,cnt06,t56a,cnt05,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt06,t67a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t06a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,5,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,t06a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,5,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t06a,cnt05,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,4,t07a,cnt07,t07a,cnt07,t07b,cnt07,t06a,cnt06,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,t04b,cnt04,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t06b,cnt05,nil,"H55_ForestTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_PyramidVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 4;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_PyramidVisit");
			SetObjectEnabled(bank,nil);				
			H55_PyramidWin(hero,1);
		else
			local rnd01 = H55_PyramidArmies[bank][1]   local rnd02 = H55_PyramidArmies[bank][2]  local rnd03 = H55_PyramidArmies[bank][3];
			local rnd04 = H55_PyramidArmies[bank][4]   local rnd05 = H55_PyramidArmies[bank][5]  local rnd06 = H55_PyramidArmies[bank][6];
			local rnd07 = H55_PyramidArmies[bank][7]   local rnd08 = H55_PyramidArmies[bank][8]  local rnd09 = H55_PyramidArmies[bank][9];
			local rnd10 = H55_PyramidArmies[bank][10]  local rnd11 = H55_PyramidArmies[bank][11] local rnd12 = H55_PyramidArmies[bank][12];
			local rnd13 = H55_PyramidArmies[bank][13]  local rnd14 = H55_PyramidArmies[bank][14];		

			local rnd12a = H55_PyramidArmies[bank][15] local rnd23a = H55_PyramidArmies[bank][16] local rnd34a = H55_PyramidArmies[bank][17];
			local rnd45a = H55_PyramidArmies[bank][18] local rnd56a = H55_PyramidArmies[bank][19] local rnd67a = H55_PyramidArmies[bank][20];
			
			local rnd12b = H55_PyramidArmies[bank][21] local rnd23b = H55_PyramidArmies[bank][22] local rnd34b = H55_PyramidArmies[bank][23];
			local rnd45b = H55_PyramidArmies[bank][24] local rnd56b = H55_PyramidArmies[bank][25] local rnd67b = H55_PyramidArmies[bank][26];

			local combat01 = H55_PyramidArmies[bank][27] local combat02 = H55_PyramidArmies[bank][28] local combat03 = H55_PyramidArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
				
			if H55_BankDay <= 112 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 112 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_PyramidWin","/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_OrcTunnelVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local faction = 8;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			-- H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			-- Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			-- SetObjectEnabled(bank,not nil);
			-- MakeHeroInteractWithObject(hero,bank);
			-- Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_OrcTunnelVisit");
			-- SetObjectEnabled(bank,nil);			
			H55_OrcTunnelWin(hero,1);
		else
			local rnd01 = H55_OrcTunnelArmies[bank][1]   local rnd02 = H55_OrcTunnelArmies[bank][2]  local rnd03 = H55_OrcTunnelArmies[bank][3];
			local rnd04 = H55_OrcTunnelArmies[bank][4]   local rnd05 = H55_OrcTunnelArmies[bank][5]  local rnd06 = H55_OrcTunnelArmies[bank][6];
			local rnd07 = H55_OrcTunnelArmies[bank][7]   local rnd08 = H55_OrcTunnelArmies[bank][8]  local rnd09 = H55_OrcTunnelArmies[bank][9];
			local rnd10 = H55_OrcTunnelArmies[bank][10]  local rnd11 = H55_OrcTunnelArmies[bank][11] local rnd12 = H55_OrcTunnelArmies[bank][12];
			local rnd13 = H55_OrcTunnelArmies[bank][13]  local rnd14 = H55_OrcTunnelArmies[bank][14];		

			local rnd12a = H55_OrcTunnelArmies[bank][15] local rnd23a = H55_OrcTunnelArmies[bank][16] local rnd34a = H55_OrcTunnelArmies[bank][17];
			local rnd45a = H55_OrcTunnelArmies[bank][18] local rnd56a = H55_OrcTunnelArmies[bank][19] local rnd67a = H55_OrcTunnelArmies[bank][20];
			
			local rnd12b = H55_OrcTunnelArmies[bank][21] local rnd23b = H55_OrcTunnelArmies[bank][22] local rnd34b = H55_OrcTunnelArmies[bank][23];
			local rnd45b = H55_OrcTunnelArmies[bank][24] local rnd56b = H55_OrcTunnelArmies[bank][25] local rnd67b = H55_OrcTunnelArmies[bank][26];

			local combat01 = H55_OrcTunnelArmies[bank][27] local combat02 = H55_OrcTunnelArmies[bank][28] local combat03 = H55_OrcTunnelArmies[bank][29];		

			local t01a = H55_Creatures[faction][1][rnd01];
			local t02a = H55_Creatures[faction][2][rnd02];
			local t03a = H55_Creatures[faction][3][rnd03];
			local t04a = H55_Creatures[faction][4][rnd04];
			local t05a = H55_Creatures[faction][5][rnd05];
			local t06a = H55_Creatures[faction][6][rnd06];
			local t07a = H55_Creatures[faction][7][rnd07];

			local t01b = H55_Creatures[faction][1][rnd08];
			local t02b = H55_Creatures[faction][2][rnd09];
			local t03b = H55_Creatures[faction][3][rnd10];
			local t04b = H55_Creatures[faction][4][rnd11];
			local t05b = H55_Creatures[faction][5][rnd12];
			local t06b = H55_Creatures[faction][6][rnd13];
			local t07b = H55_Creatures[faction][7][rnd14];		

			local t12a = H55_Creatures[faction][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction][rnd12b][rnd07];
			local t23a = H55_Creatures[faction][rnd23a][rnd06];
			local t23b = H55_Creatures[faction][rnd23b][rnd05];

			local t34a = H55_Creatures[faction][rnd34a][rnd12];
			local t34b = H55_Creatures[faction][rnd34b][rnd11];
			local t45a = H55_Creatures[faction][rnd45a][rnd10];
			local t45b = H55_Creatures[faction][rnd45b][rnd09];

			local t56a = H55_Creatures[faction][rnd56a][rnd04];
			local t56b = H55_Creatures[faction][rnd56b][rnd03];
			local t67a = H55_Creatures[faction][rnd67a][rnd02];
			local t67b = H55_Creatures[faction][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));

			if H55_BankDay <= 42 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;			
			if H55_BankDay > 42 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_OrcTunnelWin","/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_DemonTowerVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	if IsHeroInBoat(hero) == nil then
		local player = GetObjectOwner(hero);
		local faction = 3;
		if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
			H55_BankCurrentPlayerVisit[player] = bank;
			if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_DemonTowerVisit");
			SetObjectEnabled(bank,nil);					
				H55_DemonTowerWin(hero,1);
			else
				local rnd01 = H55_DemonTowerArmies[bank][1]   local rnd02 = H55_DemonTowerArmies[bank][2]  local rnd03 = H55_DemonTowerArmies[bank][3];
				local rnd04 = H55_DemonTowerArmies[bank][4]   local rnd05 = H55_DemonTowerArmies[bank][5]  local rnd06 = H55_DemonTowerArmies[bank][6];
				local rnd07 = H55_DemonTowerArmies[bank][7]   local rnd08 = H55_DemonTowerArmies[bank][8]  local rnd09 = H55_DemonTowerArmies[bank][9];
				local rnd10 = H55_DemonTowerArmies[bank][10]  local rnd11 = H55_DemonTowerArmies[bank][11] local rnd12 = H55_DemonTowerArmies[bank][12];
				local rnd13 = H55_DemonTowerArmies[bank][13]  local rnd14 = H55_DemonTowerArmies[bank][14];		

				local rnd12a = H55_DemonTowerArmies[bank][15] local rnd23a = H55_DemonTowerArmies[bank][16] local rnd34a = H55_DemonTowerArmies[bank][17];
				local rnd45a = H55_DemonTowerArmies[bank][18] local rnd56a = H55_DemonTowerArmies[bank][19] local rnd67a = H55_DemonTowerArmies[bank][20];
				
				local rnd12b = H55_DemonTowerArmies[bank][21] local rnd23b = H55_DemonTowerArmies[bank][22] local rnd34b = H55_DemonTowerArmies[bank][23];
				local rnd45b = H55_DemonTowerArmies[bank][24] local rnd56b = H55_DemonTowerArmies[bank][25] local rnd67b = H55_DemonTowerArmies[bank][26];

				local combat01 = H55_DemonTowerArmies[bank][27] local combat02 = H55_DemonTowerArmies[bank][28] local combat03 = H55_DemonTowerArmies[bank][29];		

				local t01a = H55_Creatures[faction][1][rnd01];
				local t02a = H55_Creatures[faction][2][rnd02];
				local t03a = H55_Creatures[faction][3][rnd03];
				local t04a = H55_Creatures[faction][4][rnd04];
				local t05a = H55_Creatures[faction][5][rnd05];
				local t06a = H55_Creatures[faction][6][rnd06];
				local t07a = H55_Creatures[faction][7][rnd07];

				local t01b = H55_Creatures[faction][1][rnd08];
				local t02b = H55_Creatures[faction][2][rnd09];
				local t03b = H55_Creatures[faction][3][rnd10];
				local t04b = H55_Creatures[faction][4][rnd11];
				local t05b = H55_Creatures[faction][5][rnd12];
				local t06b = H55_Creatures[faction][6][rnd13];
				local t07b = H55_Creatures[faction][7][rnd14];		

				local t12a = H55_Creatures[faction][rnd12a][rnd08];		
				local t12b = H55_Creatures[faction][rnd12b][rnd07];
				local t23a = H55_Creatures[faction][rnd23a][rnd06];
				local t23b = H55_Creatures[faction][rnd23b][rnd05];

				local t34a = H55_Creatures[faction][rnd34a][rnd12];
				local t34b = H55_Creatures[faction][rnd34b][rnd11];
				local t45a = H55_Creatures[faction][rnd45a][rnd10];
				local t45b = H55_Creatures[faction][rnd45b][rnd09];

				local t56a = H55_Creatures[faction][rnd56a][rnd04];
				local t56b = H55_Creatures[faction][rnd56b][rnd03];
				local t67a = H55_Creatures[faction][rnd67a][rnd02];
				local t67b = H55_Creatures[faction][rnd67b][rnd01];

				local multiplier = H55_GetBankDifMultiplier()
				
				local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1]));
				local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction][2]));
				local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction][3]));
				local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction][4]));
				local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction][5]));
				local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction][6]));
				local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction][7]));
				local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction][1])));
					
				if H55_BankDay <= 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;				
				end;
				if H55_BankDay > 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_DemonTowerWin","/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;		
			end;
		else 
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		end;
	else
		Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
		SetObjectEnabled(bank,not nil);
		MakeHeroInteractWithObject(hero,bank);
		print("Buoy activated");
	end;
end;

function H55_StockpileVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local efaction = H55_StockpileArmies[bank][8];
	if efaction == 1 then
		efaction = 8;
	end;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_StockpileVisit");
			SetObjectEnabled(bank,nil);				
			H55_StockpileWin(hero,1);
		else
			local rnd01 = H55_StockpileArmies[bank][1]   local rnd02 = H55_StockpileArmies[bank][2]  local rnd03 = H55_StockpileArmies[bank][3];
			local rnd04 = H55_StockpileArmies[bank][4]   local rnd05 = H55_StockpileArmies[bank][5]  local rnd06 = H55_StockpileArmies[bank][6];
			local rnd07 = H55_StockpileArmies[bank][7];  		

			local tef = H55_NeutralCreatures[1];
			local tew = H55_NeutralCreatures[2];
			local tee = H55_NeutralCreatures[3];
			local tea = H55_NeutralCreatures[4];
			local tep = H55_NeutralCreatures[5];			
					
			local t01a = H55_Creatures[efaction][1][rnd01];
			local t02a = H55_Creatures[efaction][2][rnd02];
			local t03a = H55_Creatures[efaction][3][rnd03];
			local t04a = H55_Creatures[efaction][4][rnd04];
			local t05a = H55_Creatures[efaction][5][rnd05];
			local t06a = H55_Creatures[efaction][6][rnd06];
			local t07a = H55_Creatures[efaction][7][rnd07];

			local multiplier = H55_GetBankDifMultiplier();

			local cntef = random(4)+ math.round(0.8*((multiplier*H55_NeutralCreaturesGrowth[1])));
			local cntew = random(4)+ math.round(0.8*((multiplier*H55_NeutralCreaturesGrowth[2])));
			local cntee = random(4)+ math.round(0.8*((multiplier*H55_NeutralCreaturesGrowth[3])));
			local cntea = random(4)+ math.round(0.8*((multiplier*H55_NeutralCreaturesGrowth[4])));
			
			local cnt01 = random(8)+ math.round(0.8*((multiplier*H55_CreaturesGrowth[efaction][1])));
			local cnt02 = random(7)+ math.round(0.8*((multiplier*H55_CreaturesGrowth[efaction][2])));
			local cnt03 = random(6)+ math.round(0.8*((multiplier*H55_CreaturesGrowth[efaction][3])));
			local cnt04 = random(5)+ math.round(0.8*((multiplier*H55_CreaturesGrowth[efaction][4])));
			local cnt05 = random(4)+ math.round(0.8*((multiplier*H55_CreaturesGrowth[efaction][5])));
			local cnt06 = random(3)+ math.round(0.8*((multiplier*H55_CreaturesGrowth[efaction][6])));
			local cnt07 = random(2)+ math.round(0.6*((multiplier*H55_CreaturesGrowth[efaction][7])));
			local cnt08 = random(2)+ math.round(0.9*((multiplier*H55_CreaturesGrowth[efaction][7])));
					
			if H55_BankDay <= 112 then
				if efaction == 3 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,tef,cntef,tef,cntef,t05a,cnt05,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 2 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,tew,cntew,tew,cntew,t05a,cnt05,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 8 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,tee,cntee,tee,cntee,t05a,cnt05,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 5 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,tea,cntea,tea,cntea,t05a,cnt05,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if efaction == 4 then
					StartCombat(hero,nil,4,tef,cntef,tew,cntew,tee,cntee,tea,cntea,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;								
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if efaction == 3 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,tef,cntef,tef,cntef,t05a,cnt05,t06a,cnt06,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 2 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,tew,cntew,tew,cntew,t05a,cnt05,t06a,cnt06,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 8 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,tee,cntee,tee,cntee,t05a,cnt05,t06a,cnt06,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 5 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,tea,cntea,tea,cntea,t05a,cnt05,t06a,cnt06,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if efaction == 4 then
					StartCombat(hero,nil,5,tef,cntef,tew,cntew,tee,cntee,tea,cntea,tep,cnt07,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 224 then
				if efaction == 3 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,tef,cntef,tef,cntef,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 2 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,tew,cntew,tew,cntew,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 8 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,tee,cntee,tee,cntee,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if efaction == 5 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,tea,cntea,tea,cntea,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if efaction == 4 then
					StartCombat(hero,nil,5,tef,cntef,tew,cntew,tee,cntee,tea,cntea,tep,cnt08,nil,"H55_StockpileWin","/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_UtopiaVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_UtopiaVisit");
			SetObjectEnabled(bank,nil);				
			H55_UtopiaWin(hero,1);
		else
			local rnd01 = H55_UtopiaArmies[bank][1]   local rnd02 = H55_UtopiaArmies[bank][2]  local rnd03 = H55_UtopiaArmies[bank][3];
			local rnd04 = H55_UtopiaArmies[bank][4]   local rnd05 = H55_UtopiaArmies[bank][5]  local rnd06 = H55_UtopiaArmies[bank][6];
			local combat = H55_UtopiaArmies[bank][7];  		

			local tef = H55_NeutralCreatures[1];
			local tew = H55_NeutralCreatures[2];
			local tee = H55_NeutralCreatures[3];
			local tea = H55_NeutralCreatures[4];
			local tep = H55_NeutralCreatures[5];			
					
			local t05a = H55_Creatures[2][5][rnd01];
			local t05b = H55_Creatures[6][5][rnd02];			
			local t07a = H55_Creatures[2][7][rnd03];			
			local t07b = H55_Creatures[4][7][rnd04];
			local t07c = H55_Creatures[6][7][rnd05];
			local t07d = H55_Creatures[7][7][rnd06];			

			local multiplier = math.round(H55_GetBankDifMultiplier());

			local cntef = random(4)+ math.round((multiplier*H55_NeutralCreaturesGrowth[1]));
			local cntew = random(4)+ math.round((multiplier*H55_NeutralCreaturesGrowth[2]));
			local cntee = random(4)+ math.round((multiplier*H55_NeutralCreaturesGrowth[3]));
			local cntea = random(4)+ math.round((multiplier*H55_NeutralCreaturesGrowth[4]));

			local cnt04 = random(5)+ math.round((multiplier*5));
			local cnt05 = random(4)+ math.round((multiplier*3));
			local cnt07 = random(3)+ 2 + math.round((multiplier*1));
					
			if combat == 1 then
				StartCombat(hero,nil,5,104,cnt07,105,cnt07,172,cnt07,tef,cntef,tef,cntef,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;
			if combat == 2 then
				StartCombat(hero,nil,5,55,cnt07,56,cnt07,158,cnt07,t05a,cnt05,t05a,cnt05,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;
			if combat == 3 then
				StartCombat(hero,nil,5,83,cnt07,84,cnt07,144,cnt07,t05b,cnt05,t05b,cnt05,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;
			if combat == 4 then
				StartCombat(hero,nil,5,41,cnt07,42,cnt07,158,cnt07,116,cnt05,116,cnt05,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;				
			if combat == 5 then
				StartCombat(hero,nil,4,83,cnt07,84,cnt07,41,cnt07,42,cnt07,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;
			if combat == 6 then
				StartCombat(hero,nil,4,55,cnt07,56,cnt07,104,cnt07,105,cnt07,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;
			if combat == 7 then
				StartCombat(hero,nil,4,104,cnt07,105,cnt07,172,cnt07,91,cnt07,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;
			if combat == 8 then
				StartCombat(hero,nil,4,151,cnt07,56,cnt07,t05a,cnt04,91,cnt07,nil,"H55_UtopiaWin","/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
			end;				
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_AbandonedMineVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local alignment = H55_AbandonedMineArmies[bank][30];
	local faction1 = 1;
	local faction2 = 2;
	if alignment == 1  then faction1 = 3 faction2 = 8 end;
	if alignment == 2  then faction1 = 4 faction2 = 6 end;
	if alignment == 3  then faction1 = 3 faction2 = 4 end;
	if alignment == 4  then faction1 = 8 faction2 = 6 end;	
	if alignment == 5  then faction1 = 8 faction2 = 3 end;
	if alignment == 6  then faction1 = 6 faction2 = 4 end;
	if alignment == 7  then faction1 = 4 faction2 = 3 end;
	if alignment == 8  then faction1 = 6 faction2 = 8 end;	
	if H55_GetLastVisited(bank) > 1 and H55_GetPlayerLastVisited(player,bank) > 1 then
		H55_MineCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 		
			H55_AbandonedMineWin(hero,1);
		else
			local rnd01 = H55_AbandonedMineArmies[bank][1]   local rnd02 = H55_AbandonedMineArmies[bank][2]  local rnd03 = H55_AbandonedMineArmies[bank][3];
			local rnd04 = H55_AbandonedMineArmies[bank][4]   local rnd05 = H55_AbandonedMineArmies[bank][5]  local rnd06 = H55_AbandonedMineArmies[bank][6];
			local rnd07 = H55_AbandonedMineArmies[bank][7]   local rnd08 = H55_AbandonedMineArmies[bank][8]  local rnd09 = H55_AbandonedMineArmies[bank][9];
			local rnd10 = H55_AbandonedMineArmies[bank][10]  local rnd11 = H55_AbandonedMineArmies[bank][11] local rnd12 = H55_AbandonedMineArmies[bank][12];
			local rnd13 = H55_AbandonedMineArmies[bank][13]  local rnd14 = H55_AbandonedMineArmies[bank][14];		

			local rnd12a = H55_AbandonedMineArmies[bank][15] local rnd23a = H55_AbandonedMineArmies[bank][16] local rnd34a = H55_AbandonedMineArmies[bank][17];
			local rnd45a = H55_AbandonedMineArmies[bank][18] local rnd56a = H55_AbandonedMineArmies[bank][19] local rnd67a = H55_AbandonedMineArmies[bank][20];
			
			local rnd12b = H55_AbandonedMineArmies[bank][21] local rnd23b = H55_AbandonedMineArmies[bank][22] local rnd34b = H55_AbandonedMineArmies[bank][23];
			local rnd45b = H55_AbandonedMineArmies[bank][24] local rnd56b = H55_AbandonedMineArmies[bank][25] local rnd67b = H55_AbandonedMineArmies[bank][26];

			local combat01 = H55_AbandonedMineArmies[bank][27] local combat02 = H55_AbandonedMineArmies[bank][28] local combat03 = H55_AbandonedMineArmies[bank][29];		

			local t01a = H55_Creatures[faction1][1][rnd01];
			local t02a = H55_Creatures[faction2][2][rnd02];
			local t03a = H55_Creatures[faction1][3][rnd03];
			local t04a = H55_Creatures[faction2][4][rnd04];
			local t05a = H55_Creatures[faction1][5][rnd05];
			local t06a = H55_Creatures[faction2][6][rnd06];
			local t07a = H55_Creatures[faction1][7][rnd07];

			local t01b = H55_Creatures[faction2][1][rnd08];
			local t02b = H55_Creatures[faction1][2][rnd09];
			local t03b = H55_Creatures[faction2][3][rnd10];
			local t04b = H55_Creatures[faction1][4][rnd11];
			local t05b = H55_Creatures[faction2][5][rnd12];
			local t06b = H55_Creatures[faction1][6][rnd13];
			local t07b = H55_Creatures[faction2][7][rnd14];		

			local t12a = H55_Creatures[faction1][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction2][rnd12b][rnd07];
			local t23a = H55_Creatures[faction1][rnd23a][rnd06];
			local t23b = H55_Creatures[faction2][rnd23b][rnd05];

			local t34a = H55_Creatures[faction2][rnd34a][rnd12];
			local t34b = H55_Creatures[faction1][rnd34b][rnd11];
			local t45a = H55_Creatures[faction2][rnd45a][rnd10];
			local t45b = H55_Creatures[faction1][rnd45b][rnd09];

			local t56a = H55_Creatures[faction2][rnd56a][rnd04];
			local t56b = H55_Creatures[faction1][rnd56b][rnd03];
			local t67a = H55_Creatures[faction1][rnd67a][rnd02];
			local t67b = H55_Creatures[faction2][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction1][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction1][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction1][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction1][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction1][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction1][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1])));
			
			if H55_BankDay <= 56 then
				if combat01 == 1 or combat01 == 2 then
					StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 3 or combat01 == 4 then
					StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 5 or combat01 == 6 then
					StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat01 == 7 then
					StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;	
			if H55_BankDay > 56 and H55_BankDay <= 112 then
				if combat02 == 1 or combat02 == 2 or combat02 == 3 then
					StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 4 or combat02 == 5 or combat02 == 6 then
					StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 7 or combat02 == 8 or combat02 == 9 then
					StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat02 == 10 then
					StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat02 == 11 then
					StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;
			if H55_BankDay > 112 and H55_BankDay <= 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 12 then
					StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;				
			end;
			if H55_BankDay > 224 then
				if combat03 == 1 or combat03 == 2 or combat03 == 3 then
					StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 4 or combat03 == 5 or combat03 == 6 then
					StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 7 or combat03 == 8 or combat03 == 9 then
					StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 10 then
					StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;	
				if combat03 == 11 then
					StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;
				if combat03 == 12 then
					StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_AbandonedMineWin","/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
				end;			
			end;		
		end;
	else
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_UnkemptVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local alignment = H55_UnkemptArmies[bank][30];
	local faction1 = 1;
	local faction2 = 1;
	if IsHeroInBoat(hero) then
		if alignment == 1  then faction1 = 1 faction2 = 2 end;
		if alignment == 2  then faction1 = 5 faction2 = 7 end;
		if alignment == 3  then faction1 = 1 faction2 = 7 end;
		if alignment == 4  then faction1 = 2 faction2 = 5 end;	
		if alignment == 5  then faction1 = 2 faction2 = 1 end;
		if alignment == 6  then faction1 = 7 faction2 = 5 end;
		if alignment == 7  then faction1 = 7 faction2 = 1 end;
		if alignment == 8  then faction1 = 5 faction2 = 2 end;	
	end;
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then 
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_UnkemptVisit");
			SetObjectEnabled(bank,nil);				
			H55_UnkemptWin(hero,1);			
		else
			local rnd01 = H55_UnkemptArmies[bank][1]   local rnd02 = H55_UnkemptArmies[bank][2]  local rnd03 = H55_UnkemptArmies[bank][3];
			local rnd04 = H55_UnkemptArmies[bank][4]   local rnd05 = H55_UnkemptArmies[bank][5]  local rnd06 = H55_UnkemptArmies[bank][6];
			local rnd07 = H55_UnkemptArmies[bank][7]   local rnd08 = H55_UnkemptArmies[bank][8]  local rnd09 = H55_UnkemptArmies[bank][9];
			local rnd10 = H55_UnkemptArmies[bank][10]  local rnd11 = H55_UnkemptArmies[bank][11] local rnd12 = H55_UnkemptArmies[bank][12];
			local rnd13 = H55_UnkemptArmies[bank][13]  local rnd14 = H55_UnkemptArmies[bank][14];		

			local rnd12a = H55_UnkemptArmies[bank][15] local rnd23a = H55_UnkemptArmies[bank][16] local rnd34a = H55_UnkemptArmies[bank][17];
			local rnd45a = H55_UnkemptArmies[bank][18] local rnd56a = H55_UnkemptArmies[bank][19] local rnd67a = H55_UnkemptArmies[bank][20];
			
			local rnd12b = H55_UnkemptArmies[bank][21] local rnd23b = H55_UnkemptArmies[bank][22] local rnd34b = H55_UnkemptArmies[bank][23];
			local rnd45b = H55_UnkemptArmies[bank][24] local rnd56b = H55_UnkemptArmies[bank][25] local rnd67b = H55_UnkemptArmies[bank][26];

			local combat01 = H55_UnkemptArmies[bank][27] local combat02 = H55_UnkemptArmies[bank][28] local combat03 = H55_UnkemptArmies[bank][29];		

			local t01a = H55_Creatures[faction1][1][rnd01];
			local t02a = H55_Creatures[faction2][2][rnd02];
			local t03a = H55_Creatures[faction1][3][rnd03];
			local t04a = H55_Creatures[faction2][4][rnd04];
			local t05a = H55_Creatures[faction1][5][rnd05];
			local t06a = H55_Creatures[faction2][6][rnd06];
			local t07a = H55_Creatures[faction1][7][rnd07];

			local t01b = H55_Creatures[faction2][1][rnd08];
			local t02b = H55_Creatures[faction1][2][rnd09];
			local t03b = H55_Creatures[faction2][3][rnd10];
			local t04b = H55_Creatures[faction1][4][rnd11];
			local t05b = H55_Creatures[faction2][5][rnd12];
			local t06b = H55_Creatures[faction1][6][rnd13];
			local t07b = H55_Creatures[faction2][7][rnd14];		

			local t12a = H55_Creatures[faction1][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction2][rnd12b][rnd07];
			local t23a = H55_Creatures[faction1][rnd23a][rnd06];
			local t23b = H55_Creatures[faction2][rnd23b][rnd05];

			local t34a = H55_Creatures[faction2][rnd34a][rnd12];
			local t34b = H55_Creatures[faction1][rnd34b][rnd11];
			local t45a = H55_Creatures[faction2][rnd45a][rnd10];
			local t45b = H55_Creatures[faction1][rnd45b][rnd09];

			local t56a = H55_Creatures[faction2][rnd56a][rnd04];
			local t56b = H55_Creatures[faction1][rnd56b][rnd03];
			local t67a = H55_Creatures[faction1][rnd67a][rnd02];
			local t67b = H55_Creatures[faction2][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction1][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction1][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction1][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction1][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction1][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction1][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1])));
	
			if IsHeroInBoat(hero) then
				if H55_BankDay <= 56 then
					if combat01 == 1 or combat01 == 2 then
						StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat01 == 3 or combat01 == 4 then
						StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat01 == 5 or combat01 == 6 then
						StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat01 == 7 then
						StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_UnkemptWin",nil,1);
					end;			
				end;	
				if H55_BankDay > 56 and H55_BankDay <= 112 then
					if combat02 == 1 or combat02 == 2 or combat02 == 3 then
						StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat02 == 4 or combat02 == 5 or combat02 == 6 then
						StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat02 == 7 or combat02 == 8 or combat02 == 9 then
						StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat02 == 10 then
						StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_UnkemptWin",nil,1);
					end;	
					if combat02 == 11 then
						StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_UnkemptWin",nil,1);
					end;			
				end;
				if H55_BankDay > 112 and H55_BankDay <= 224 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_UnkemptWin",nil,1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_UnkemptWin",nil,1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_UnkemptWin",nil,1);
					end;				
				end;
				if H55_BankDay > 224 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_UnkemptWin",nil,1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_UnkemptWin",nil,1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_UnkemptWin",nil,1);
					end;			
				end;
			else
				if H55_BankDay <= 56 then
					if combat01 == 1 or combat01 == 2 then
						StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat01 == 3 or combat01 == 4 then
						StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat01 == 5 or combat01 == 6 then
						StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat01 == 7 then
						StartCombat(hero,nil,5,t02a,cnt02,t02a,cnt02,t01b,cnt01,t01a,cnt01,t01a,cnt01,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;			
				if H55_BankDay > 56 and H55_BankDay <= 112 then
					if combat02 == 1 or combat02 == 2 or combat02 == 3 then
						StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat02 == 4 or combat02 == 5 or combat02 == 6 then
						StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat02 == 7 or combat02 == 8 or combat02 == 9 then
						StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat02 == 10 then
						StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat02 == 11 then
						StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;
				if H55_BankDay > 112 and H55_BankDay <= 224 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;				
				end;
				if H55_BankDay > 224 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_TowerWin","/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;			
			end;
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_DemolishVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local alignment = H55_DemolishArmies[bank][30];
	local faction1 = 4;
	local faction2 = 4;
	if alignment == 1  then faction1 = 3 faction2 = 8 end;
	if alignment == 2  then faction1 = 4 faction2 = 6 end;
	if alignment == 3  then faction1 = 3 faction2 = 4 end;
	if alignment == 4  then faction1 = 8 faction2 = 6 end;	
	if alignment == 5  then faction1 = 8 faction2 = 3 end;
	if alignment == 6  then faction1 = 6 faction2 = 4 end;
	if alignment == 7  then faction1 = 4 faction2 = 3 end;
	if alignment == 8  then faction1 = 6 faction2 = 8 end;	
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_DemolishVisit");
			SetObjectEnabled(bank,nil);				
			H55_DemolishWin(hero,1);
		else
			local rnd01 = H55_DemolishArmies[bank][1]   local rnd02 = H55_DemolishArmies[bank][2]  local rnd03 = H55_DemolishArmies[bank][3];
			local rnd04 = H55_DemolishArmies[bank][4]   local rnd05 = H55_DemolishArmies[bank][5]  local rnd06 = H55_DemolishArmies[bank][6];
			local rnd07 = H55_DemolishArmies[bank][7]   local rnd08 = H55_DemolishArmies[bank][8]  local rnd09 = H55_DemolishArmies[bank][9];
			local rnd10 = H55_DemolishArmies[bank][10]  local rnd11 = H55_DemolishArmies[bank][11] local rnd12 = H55_DemolishArmies[bank][12];
			local rnd13 = H55_DemolishArmies[bank][13]  local rnd14 = H55_DemolishArmies[bank][14];		

			local rnd12a = H55_DemolishArmies[bank][15] local rnd23a = H55_DemolishArmies[bank][16] local rnd34a = H55_DemolishArmies[bank][17];
			local rnd45a = H55_DemolishArmies[bank][18] local rnd56a = H55_DemolishArmies[bank][19] local rnd67a = H55_DemolishArmies[bank][20];
			
			local rnd12b = H55_DemolishArmies[bank][21] local rnd23b = H55_DemolishArmies[bank][22] local rnd34b = H55_DemolishArmies[bank][23];
			local rnd45b = H55_DemolishArmies[bank][24] local rnd56b = H55_DemolishArmies[bank][25] local rnd67b = H55_DemolishArmies[bank][26];

			local combat01 = H55_DemolishArmies[bank][27] local combat02 = H55_DemolishArmies[bank][28] local combat03 = H55_DemolishArmies[bank][29];		

			local t01a = H55_Creatures[faction1][1][rnd01];
			local t02a = H55_Creatures[faction2][2][rnd02];
			local t03a = H55_Creatures[faction1][3][rnd03];
			local t04a = H55_Creatures[faction2][4][rnd04];
			local t05a = H55_Creatures[faction1][5][rnd05];
			local t06a = H55_Creatures[faction2][6][rnd06];
			local t07a = H55_Creatures[faction1][7][rnd07];

			local t01b = H55_Creatures[faction2][1][rnd08];
			local t02b = H55_Creatures[faction1][2][rnd09];
			local t03b = H55_Creatures[faction2][3][rnd10];
			local t04b = H55_Creatures[faction1][4][rnd11];
			local t05b = H55_Creatures[faction2][5][rnd12];
			local t06b = H55_Creatures[faction1][6][rnd13];
			local t07b = H55_Creatures[faction2][7][rnd14];		

			local t12a = H55_Creatures[faction1][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction2][rnd12b][rnd07];
			local t23a = H55_Creatures[faction1][rnd23a][rnd06];
			local t23b = H55_Creatures[faction2][rnd23b][rnd05];

			local t34a = H55_Creatures[faction2][rnd34a][rnd12];
			local t34b = H55_Creatures[faction1][rnd34b][rnd11];
			local t45a = H55_Creatures[faction2][rnd45a][rnd10];
			local t45b = H55_Creatures[faction1][rnd45b][rnd09];

			local t56a = H55_Creatures[faction2][rnd56a][rnd04];
			local t56b = H55_Creatures[faction1][rnd56b][rnd03];
			local t67a = H55_Creatures[faction1][rnd67a][rnd02];
			local t67b = H55_Creatures[faction2][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction1][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction1][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction1][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction1][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction1][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction1][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1])));
			
			if IsHeroInBoat(hero) then
				if H55_BankDay <= 112 then
					if combat02 == 1 or combat02 == 2 or combat02 == 3 then
						StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_DemolishWin",nil,1);
					end;
					if combat02 == 4 or combat02 == 5 or combat02 == 6 then
						StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_DemolishWin",nil,1);
					end;
					if combat02 == 7 or combat02 == 8 or combat02 == 9 then
						StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_DemolishWin",nil,1);
					end;
					if combat02 == 10 then
						StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_DemolishWin",nil,1);
					end;	
					if combat02 == 11 then
						StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_DemolishWin",nil,1);
					end;			
				end;
				if H55_BankDay > 112 and H55_BankDay <= 224 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_DemolishWin",nil,1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_DemolishWin",nil,1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_DemolishWin",nil,1);
					end;				
				end;
				if H55_BankDay > 224 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_DemolishWin",nil,1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_DemolishWin",nil,1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_DemolishWin",nil,1);
					end;			
				end;
			else
				if H55_BankDay <= 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;				
				end;
				if H55_BankDay > 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_MausoleumWin","/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;
			end;
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

function H55_SunkenTempleVisit(hero,bank)
	startThread(H55_CheckAdvMapObjQueue);
	if H55_BankAction == 1 then	return nil end;
	local player = GetObjectOwner(hero);
	local alignment = H55_SunkenTempleArmies[bank][30];
	local faction1 = 5;
	local faction2 = 5;
	if alignment == 1  then faction1 = 1 faction2 = 2 end;
	if alignment == 2  then faction1 = 5 faction2 = 7 end;
	if alignment == 3  then faction1 = 1 faction2 = 7 end;
	if alignment == 4  then faction1 = 2 faction2 = 5 end;	
	if alignment == 5  then faction1 = 2 faction2 = 1 end;
	if alignment == 6  then faction1 = 7 faction2 = 5 end;
	if alignment == 7  then faction1 = 7 faction2 = 1 end;
	if alignment == 8  then faction1 = 5 faction2 = 2 end;		
	if H55_GetLastVisited(bank) > 6 and H55_GetPlayerLastVisited(player,bank) > 55 then
		H55_BankCurrentPlayerVisit[player] = bank;
		if H55_IsThisAIPlayer(player) then
			--SetAIHeroAttractor(bank,hero,-1);	
			H55_AmountAIBankVisits = H55_AmountAIBankVisits+1;				
			Trigger(OBJECT_TOUCH_TRIGGER,bank,nil);
			SetObjectEnabled(bank,not nil);
			MakeHeroInteractWithObject(hero,bank);
			Trigger(OBJECT_TOUCH_TRIGGER,bank,"H55_SunkenTempleVisit");
			SetObjectEnabled(bank,nil);				
			H55_SunkenTempleWin(hero,1);
		else
			local rnd01 = H55_SunkenTempleArmies[bank][1]   local rnd02 = H55_SunkenTempleArmies[bank][2]  local rnd03 = H55_SunkenTempleArmies[bank][3];
			local rnd04 = H55_SunkenTempleArmies[bank][4]   local rnd05 = H55_SunkenTempleArmies[bank][5]  local rnd06 = H55_SunkenTempleArmies[bank][6];
			local rnd07 = H55_SunkenTempleArmies[bank][7]   local rnd08 = H55_SunkenTempleArmies[bank][8]  local rnd09 = H55_SunkenTempleArmies[bank][9];
			local rnd10 = H55_SunkenTempleArmies[bank][10]  local rnd11 = H55_SunkenTempleArmies[bank][11] local rnd12 = H55_SunkenTempleArmies[bank][12];
			local rnd13 = H55_SunkenTempleArmies[bank][13]  local rnd14 = H55_SunkenTempleArmies[bank][14];		

			local rnd12a = H55_SunkenTempleArmies[bank][15] local rnd23a = H55_SunkenTempleArmies[bank][16] local rnd34a = H55_SunkenTempleArmies[bank][17];
			local rnd45a = H55_SunkenTempleArmies[bank][18] local rnd56a = H55_SunkenTempleArmies[bank][19] local rnd67a = H55_SunkenTempleArmies[bank][20];
			
			local rnd12b = H55_SunkenTempleArmies[bank][21] local rnd23b = H55_SunkenTempleArmies[bank][22] local rnd34b = H55_SunkenTempleArmies[bank][23];
			local rnd45b = H55_SunkenTempleArmies[bank][24] local rnd56b = H55_SunkenTempleArmies[bank][25] local rnd67b = H55_SunkenTempleArmies[bank][26];

			local combat01 = H55_SunkenTempleArmies[bank][27] local combat02 = H55_SunkenTempleArmies[bank][28] local combat03 = H55_SunkenTempleArmies[bank][29];		

			local t01a = H55_Creatures[faction1][1][rnd01];
			local t02a = H55_Creatures[faction2][2][rnd02];
			local t03a = H55_Creatures[faction1][3][rnd03];
			local t04a = H55_Creatures[faction2][4][rnd04];
			local t05a = H55_Creatures[faction1][5][rnd05];
			local t06a = H55_Creatures[faction2][6][rnd06];
			local t07a = H55_Creatures[faction1][7][rnd07];

			local t01b = H55_Creatures[faction2][1][rnd08];
			local t02b = H55_Creatures[faction1][2][rnd09];
			local t03b = H55_Creatures[faction2][3][rnd10];
			local t04b = H55_Creatures[faction1][4][rnd11];
			local t05b = H55_Creatures[faction2][5][rnd12];
			local t06b = H55_Creatures[faction1][6][rnd13];
			local t07b = H55_Creatures[faction2][7][rnd14];		

			local t12a = H55_Creatures[faction1][rnd12a][rnd08];		
			local t12b = H55_Creatures[faction2][rnd12b][rnd07];
			local t23a = H55_Creatures[faction1][rnd23a][rnd06];
			local t23b = H55_Creatures[faction2][rnd23b][rnd05];

			local t34a = H55_Creatures[faction2][rnd34a][rnd12];
			local t34b = H55_Creatures[faction1][rnd34b][rnd11];
			local t45a = H55_Creatures[faction2][rnd45a][rnd10];
			local t45b = H55_Creatures[faction1][rnd45b][rnd09];

			local t56a = H55_Creatures[faction2][rnd56a][rnd04];
			local t56b = H55_Creatures[faction1][rnd56b][rnd03];
			local t67a = H55_Creatures[faction1][rnd67a][rnd02];
			local t67b = H55_Creatures[faction2][rnd67b][rnd01];

			local multiplier = H55_GetBankDifMultiplier()
			
			local cnt01 = random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1]));
			local cnt02 = random(7)+ math.round((multiplier*H55_CreaturesGrowth[faction1][2]));
			local cnt03 = random(6)+ math.round((multiplier*H55_CreaturesGrowth[faction1][3]));
			local cnt04 = random(5)+ math.round((multiplier*H55_CreaturesGrowth[faction1][4]));
			local cnt05 = random(4)+ math.round((multiplier*H55_CreaturesGrowth[faction1][5]));
			local cnt06 = random(3)+ math.round((multiplier*H55_CreaturesGrowth[faction1][6]));
			local cnt07 = random(2)+ math.round((multiplier*H55_CreaturesGrowth[faction1][7]));
			local cntcr = 5*(random(8)+ math.round((multiplier*H55_CreaturesGrowth[faction1][1])));
			
			if IsHeroInBoat(hero) then
				if H55_BankDay <= 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;				
				end;
				if H55_BankDay > 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;
			else
				if H55_BankDay <= 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 12 then
						StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;				
				end;
				if H55_BankDay > 112 then
					if combat03 == 1 or combat03 == 2 or combat03 == 3 then
						StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 4 or combat03 == 5 or combat03 == 6 then
						StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 7 or combat03 == 8 or combat03 == 9 then
						StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 10 then
						StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;	
					if combat03 == 11 then
						StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;
					if combat03 == 12 then
						StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_SunkenTempleWin",
						"/Arenas/CombatArena/FinalCombat/Bank_SunkenL.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
					end;			
				end;
			end;
		end;
	else 
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
	end;
end;

--Combat scripts for Military posts

-- function H55_FortressMPVisit(hero,bank) 
	-- H55_MPFight(hero,bank,7);
-- end;

-- function H55_SylvanMPVisit(hero,bank) 
	-- H55_MPFight(hero,bank,2); 
-- end;

-- function H55_HavenMPVisit(hero,bank)
	-- H55_MPFight(hero,bank,1); 
-- end;

-- function H55_StrongholdMPVisit(hero,bank)
	-- H55_MPFight(hero,bank,8); 
-- end;

-- function H55_AcademyMPVisit(hero,bank)
	-- H55_MPFight(hero,bank,5); 
-- end;

-- function H55_DungeonMPVisit(hero,bank)
	-- H55_MPFight(hero,bank,6); 
-- end;

-- function H55_InfernoMPVisit(hero,bank)
	-- H55_MPFight(hero,bank,3); 
-- end;

-- function H55_NecropolisMPVisit(hero,bank)
	-- H55_MPFight(hero,bank,4); 
-- end;

-- function H55_MPFight(hero,bank,faction)
	-- local player = GetObjectOwner(hero);
	-- H55_MPCurrentPlayerVisit[player] = bank;
	-- if H55_IsThisAIPlayer(player) then 
		-- H55_MPFightWin(hero,1);
	-- else
		-- local rnd01 = H55_MPFightArmies[bank][1]   local rnd02 = H55_MPFightArmies[bank][2]  local rnd03 = H55_MPFightArmies[bank][3];
		-- local rnd04 = H55_MPFightArmies[bank][4]   local rnd05 = H55_MPFightArmies[bank][5]  local rnd06 = H55_MPFightArmies[bank][6];
		-- local rnd07 = H55_MPFightArmies[bank][7];
		
		-- local rnd01 = random(3)+1;
		-- local rnd02 = random(3)+1;
		-- local rnd03 = random(3)+1;
		-- local rnd04 = random(3)+1;
		-- local rnd05 = random(3)+1;
		-- local rnd06 = random(3)+1;
		-- local rnd07 = random(3)+1;
		-- local combat = random(4)+1;
		
		-- local t01a = H55_Creatures[faction][1][rnd01];
		-- local t02a = H55_Creatures[faction][2][rnd02];
		-- local t03a = H55_Creatures[faction][3][rnd03];
		-- local t04a = H55_Creatures[faction][4][rnd04];
		-- local t05a = H55_Creatures[faction][5][rnd05];
		-- local t06a = H55_Creatures[faction][6][rnd06];
		-- local t07a = H55_Creatures[faction][7][rnd07];

		-- local multiplier = H55_GetBankDifMultiplier()
		
		-- local cnt01 = random(8)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][1]))));
		-- local cnt02 = random(7)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][2]))));
		-- local cnt03 = random(6)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][3]))));
		-- local cnt04 = random(5)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][4]))));
		-- local cnt05 = random(4)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][5]))));
		-- local cnt06 = random(3)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][6]))));
		-- local cnt07 = random(2)+(0.5*(math.round((multiplier*H55_CreaturesGrowth[faction][7]))));
			
		-- if combat == 1 then
			-- StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t05a,cnt05,t07a,cnt07,nil,"H55_MPFightWin",nil,1);
		-- end;
		-- if combat == 2 then
			-- StartCombat(hero,nil,4,t01a,cnt01,t03a,cnt03,t04a,cnt04,t07a,cnt07,nil,"H55_MPFightWin",nil,1);
		-- end;
		-- if combat == 3 then
			-- StartCombat(hero,nil,4,t01a,cnt01,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_MPFightWin",nil,1);
		-- end;
		-- if combat == 4 then
			-- StartCombat(hero,nil,4,t02a,cnt02,t03a,cnt03,t05a,cnt05,t06a,cnt06,nil,"H55_MPFightWin",nil,1);
		-- end;				
	-- end;
-- end;

--------------------------------------------------------------------------------------------------------------------------------------------
--AFTERMATH
--------------------------------------------------------------------------------------------------------------------------------------------

function H55_WagonWin01(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_ArtifactAward(hero,1);			
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_WagonWin02(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_GoldReward(hero,0.1);		
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_WagonWin03(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local rndrestype = H55_WagonChoices[bank][4];	
	local rndamount = H55_WagonChoices[bank][5];
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		rndamount = rndamount+1;
	end;	
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if rndrestype == 6 then rndamount = rndamount*100 end;
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);	
		H55_GiveResources(player,rndrestype,rndamount,hero);		
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_SkeletonWin01(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_ArtifactAward(hero,1);			
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_SkeletonWin02(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_GoldReward(hero,0.1);		
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_SkeletonWin03(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Already.txt",hero,player,H55_MsgSleep,H55_MsgTime) end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

-- function H55_MPFightWin(hero,result)
	-- if result ~= nil then
		-- local player = GetObjectOwner(hero);
		-- local mp = H55_MPCurrentPlayerVisit[player];
		-- Trigger(OBJECT_TOUCH_TRIGGER,mp,nil);
		-- SetObjectEnabled(mp,not nil);
		-- MakeHeroInteractWithObject(hero,mp);
	-- end;
-- end;

function H55_AbandonedMineWin(hero,result)
	if result ~= nil then
		local player = GetObjectOwner(hero);
		local mine = H55_MineCurrentPlayerVisit[player];
		Trigger(OBJECT_TOUCH_TRIGGER,mine,nil);
		SetObjectEnabled(mine,not nil);
		MakeHeroInteractWithObject(hero,mine);
		Trigger(OBJECT_TOUCH_TRIGGER,mine,"H55_MineVisit");
		SetObjectEnabled(mine,nil);
	end;
end;

function H55_CryptWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,0,1); 
			H55_ResourceReward(hero,4,1);	
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1)
			elseif rnd1 == 3 then
				H55_RandomArtifactAward(hero,50,45,5);
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,0,2);
			H55_ResourceReward(hero,4,2);			
			if rnd2 == 1 then
				H55_PrisonersReward(hero,3,5);
			elseif rnd2 == 2 then
				H55_DocumentAward(hero,1);
			else
				H55_RandomArtifactAward(hero,20,70,10);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_CryptArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_CryptArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_CryptArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_CryptArmies[bank][27] = random(7)+1;
		H55_CryptArmies[bank][28] = random(11)+1;
		H55_CryptArmies[bank][29] = random(12)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_StoneVaultWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,0,1); 
			H55_ResourceReward(hero,4,1);	
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1)
			elseif rnd1 == 3 then
				H55_RandomArtifactAward(hero,50,45,5);
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,0,2);
			H55_ResourceReward(hero,4,2);		
			if rnd2 == 1 then
				H55_DocumentAward(hero,1);
			elseif rnd2 == 2 then
				H55_RandomArtifactAward(hero,20,70,10);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_StoneVaultArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_StoneVaultArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_StoneVaultArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_StoneVaultArmies[bank][27] = random(7)+1;
		H55_StoneVaultArmies[bank][28] = random(8)+1;
		H55_StoneVaultArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_MageVaultWin(hero,result)
	local player = GetObjectOwner(hero)
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,2);
			H55_SpellAward(hero,2);	
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);			
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,2,1); 
				H55_ResourceReward(hero,5,1);	
			elseif rnd1 == 3 then
				local rnddoc = random(2)+1
				if rnddoc == 1 then
					H55_DocumentAward(hero,1);
				else
					H55_DocumentAward(hero,2);
				end;
			else
				H55_RandomArtifactAward(hero,20,60,20);	
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,3);
			H55_SpellAward(hero,2)	
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,60,20);			
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,2,2); 
				H55_ResourceReward(hero,5,2);				
			elseif rnd2 == 3 then
				H55_RandomArtifactAward(hero,20,50,30);				
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);		
		for i = 1,14 do
			H55_MageVaultArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_MageVaultArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_MageVaultArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_MageVaultArmies[bank][27] = random(7)+1;
		H55_MageVaultArmies[bank][28] = random(8)+1;
		H55_MageVaultArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_DwarvenTreasureWin(hero,result)
	local player = GetObjectOwner(hero)
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,3,1); 
			H55_ResourceReward(hero,5,1);			
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);			
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,1,1);
				H55_RandomArtifactAward(hero,50,45,5);				
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,3,2);
			H55_ResourceReward(hero,5,2);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,60,20);			
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,2,2); 
				H55_ResourceReward(hero,5,2);
				H55_RandomArtifactAward(hero,50,45,5);				
			elseif rnd2 == 3 then
				local rnddoc = random(2)+1
				if rnddoc == 1 then
					H55_DocumentAward(hero,1);
				else
					H55_DocumentAward(hero,2);
				end;
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_DwarvenTreasureArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DwarvenTreasureArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DwarvenTreasureArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DwarvenTreasureArmies[bank][27] = random(7)+1;
		H55_DwarvenTreasureArmies[bank][28] = random(8)+1;
		H55_DwarvenTreasureArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_WitchTempleWin(hero,result)
	local player = GetObjectOwner(hero)
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,2);
			H55_ArtifactAward(hero,2);			
			if rnd1 == 1 then
				H55_ArtifactAward(hero,1);			
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,3,1); 
				H55_ResourceReward(hero,4,1);
			elseif rnd1 == 3 then
				H55_SpellAward(hero,2);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,2);
			H55_RandomArtifactAward(hero,0,80,20);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,70,30,0);			
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,3,2); 
				H55_ResourceReward(hero,4,2);	
			elseif rnd2 == 3 then
				H55_SpellAward(hero,2);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_WitchTempleArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_WitchTempleArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_WitchTempleArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_WitchTempleArmies[bank][27] = random(7)+1;
		H55_WitchTempleArmies[bank][28] = random(8)+1;
		H55_WitchTempleArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_ThicketWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,4);	
			H55_ArtifactAward(hero,2);			
			if rnd1 == 1 then
				H55_ArtifactAward(hero,3);					
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,5,2);
				H55_ResourceReward(hero,0,3);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,2);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,4);
			H55_ArtifactAward(hero,2);	
			if rnd2 == 1 then
				H55_ArtifactAward(hero,3);		
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,5,3);
				H55_ResourceReward(hero,0,4); 
			elseif rnd2 == 3 then
				local rnddoc = random(3)+1
				if rnddoc == 1 then
					H55_DocumentAward(hero,3);
				else
					H55_DocumentAward(hero,2);
				end;
			else
				H55_PrisonersReward(hero,6,7);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_ThicketArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_ThicketArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_ThicketArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_ThicketArmies[bank][27] = random(7)+1;
		H55_ThicketArmies[bank][28] = random(8)+1;
		H55_ThicketArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_ForestTowerWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,3);
			H55_ResourceReward(hero,0,3); 			
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);		
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,5,2);
				H55_RandomArtifactAward(hero,50,45,5);
			elseif rnd1 == 3 then
				local rnddoc = random(2)+1
				if rnddoc == 1 then
					H55_DocumentAward(hero,1);
				else
					H55_DocumentAward(hero,2);
				end;
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,4);
			H55_ResourceReward(hero,0,4); 			
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,50,30);		
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,5,3);
				H55_RandomArtifactAward(hero,50,45,5);
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,2);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_ForestTowerArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_ForestTowerArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_ForestTowerArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_ForestTowerArmies[bank][27] = random(7)+1;
		H55_ForestTowerArmies[bank][28] = random(8)+1;
		H55_ForestTowerArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_PyramidWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;		
		H55_GoldReward(hero,3);
		H55_SpellAward(hero,2);			
		if rnd1 == 1 then
			H55_RandomArtifactAward(hero,0,20,80);		
		elseif rnd1 == 2 then
			H55_RandomArtifactAward(hero,20,70,10);	
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3); 			
		elseif rnd1 == 3 then
			local rnddoc = random(3)+1
			H55_RandomArtifactAward(hero,20,70,10);			
			if rnddoc == 1 then
				H55_DocumentAward(hero,3);
			else
				H55_DocumentAward(hero,2);
			end;			
		else
			H55_RandomArtifactAward(hero,20,70,10);	
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_PyramidArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_PyramidArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_PyramidArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_PyramidArmies[bank][27] = random(7)+1;
		H55_PyramidArmies[bank][28] = random(8)+1;
		H55_PyramidArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_OrcTunnelWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,1);
			H55_PrisonersReward(hero,2,5);		
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,50,50,0);		
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,0,1); 
				H55_ResourceReward(hero,2,1); 
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,2,5);
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,2);
			H55_PrisonersReward(hero,2,6); 			
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);		
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,0,2); 
				H55_ResourceReward(hero,2,2); 
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,7);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_OrcTunnelArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_OrcTunnelArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_OrcTunnelArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_OrcTunnelArmies[bank][27] = random(7)+1;
		H55_OrcTunnelArmies[bank][28] = random(8)+1;
		H55_OrcTunnelArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_DemonTowerWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;		
		H55_GoldReward(hero,3);
		H55_PrisonersReward(hero,6,7);		
		if rnd1 == 1 then
			H55_ArtifactAward(hero,2);			
			H55_SpellAward(hero,2);	
		elseif rnd1 == 2 then
			H55_ArtifactAward(hero,3);	
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3); 			
		elseif rnd1 == 3 then
			local rnddoc = random(3)+1
			H55_ArtifactAward(hero,2);	
			if rnddoc == 1 then
				H55_DocumentAward(hero,3);
			else
				H55_DocumentAward(hero,2);
			end;
		else
			H55_ArtifactAward(hero,3);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_DemonTowerArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DemonTowerArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DemonTowerArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DemonTowerArmies[bank][27] = random(7)+1;
		H55_DemonTowerArmies[bank][28] = random(8)+1;
		H55_DemonTowerArmies[bank][29] = random(9)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_StockpileWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(2)+1;
			local rnd3 = random(2)+1;			
			H55_ResourceReward(hero,0,rnd1); 
			H55_ResourceReward(hero,1,rnd1); 
			H55_ResourceReward(hero,2,rnd1); 
			H55_ResourceReward(hero,3,rnd1); 
			H55_ResourceReward(hero,4,rnd1); 
			H55_ResourceReward(hero,5,rnd1); 
			if rnd3 == 2 then
				H55_RandomArtifactAward(hero,40,50,10);
			end;
		else
			local rnd2 = random(2)+2;
			local rnd4 = random(2)+1;			
			H55_ResourceReward(hero,0,rnd2); 
			H55_ResourceReward(hero,1,rnd2); 
			H55_ResourceReward(hero,2,rnd2); 
			H55_ResourceReward(hero,3,rnd2); 
			H55_ResourceReward(hero,4,rnd2); 
			H55_ResourceReward(hero,5,rnd2); 
			if rnd4 == 2 then
				H55_RandomArtifactAward(hero,20,60,20);
			end;			
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,7 do
			H55_StockpileArmies[bank][i] = random(3)+1
		end;
		H55_StockpileArmies[bank][8] = random(5)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_UtopiaWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;		
		H55_GoldReward(hero,4);
		H55_ArtifactAward(hero,3);
		H55_ArtifactAward(hero,2);			
		if rnd1 == 1 then
			H55_ArtifactAward(hero,1);
		elseif rnd1 == 2 then
			H55_ResourceReward(hero,4,4);  
		elseif rnd1 == 3 then
			local rnddoc = random(2)+1	
			if rnddoc == 1 then
				H55_DocumentAward(hero,3);
			else
				H55_DocumentAward(hero,2);
			end;
		else
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,6 do
			H55_UtopiaArmies[bank][i] = random(3)+1;
		end;
		H55_UtopiaArmies[bank][7] = random(8)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_SunkenTempleWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;		
		H55_GoldReward(hero,3);
		H55_ArtifactAward(hero,3);		
		if rnd1 == 1 then
			H55_RandomArtifactAward(hero,30,70,0);			
			H55_SpellAward(hero,2);	
		elseif rnd1 == 2 then
			H55_RandomArtifactAward(hero,30,70,0);	
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3); 			
		elseif rnd1 == 3 then
			local rnddoc = random(3)+1
			H55_RandomArtifactAward(hero,30,70,0);	
			if rnddoc == 1 then
				H55_DocumentAward(hero,3);
			else
				H55_DocumentAward(hero,2);
			end;
		else
			H55_RandomArtifactAward(hero,30,70,0);	
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_SunkenTempleArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_SunkenTempleArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_SunkenTempleArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_SunkenTempleArmies[bank][27] = random(7)+1;
		H55_SunkenTempleArmies[bank][28] = random(8)+1;
		H55_SunkenTempleArmies[bank][29] = random(9)+1;
		H55_SunkenTempleArmies[bank][30] = random(8)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_UnkemptWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,0,1); 
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1);
			elseif rnd1 == 3 then
				H55_RandomArtifactAward(hero,75,25,0);			
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,0,2);	
			if rnd2 == 1 then
				H55_PrisonersReward(hero,3,5);
			elseif rnd2 == 2 then
				H55_DocumentAward(hero,1);
			else
				H55_RandomArtifactAward(hero,50,45,5);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_UnkemptArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_UnkemptArmies[bank][27] = random(7)+1;
		H55_UnkemptArmies[bank][28] = random(8)+1;
		H55_UnkemptArmies[bank][29] = random(9)+1;
		H55_UnkemptArmies[bank][30] = random(8)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_DemolishWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_RandomArtifactAward(hero,50,50,0);
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1);
			elseif rnd1 == 3 then
				H55_ResourceReward(hero,0,1); 
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_RandomArtifactAward(hero,20,60,20);
			if rnd2 == 1 then
				H55_DocumentAward(hero,1);				
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,0,2);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_DemolishArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DemolishArmies[bank][27] = random(7)+1;
		H55_DemolishArmies[bank][28] = random(8)+1;
		H55_DemolishArmies[bank][29] = random(9)+1;
		H55_DemolishArmies[bank][30] = random(8)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_TowerWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;		
			H55_GoldReward(hero,1);
			H55_PrisonersReward(hero,2,5);			
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);		
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,0,2); 
				H55_ResourceReward(hero,1,2); 
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;		
			H55_GoldReward(hero,2);
			H55_PrisonersReward(hero,2,6); 			
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,65,15);		
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,0,2); 
				H55_ResourceReward(hero,1,2); 
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,7);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_UnkemptArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_UnkemptArmies[bank][27] = random(7)+1;
		H55_UnkemptArmies[bank][28] = random(8)+1;
		H55_UnkemptArmies[bank][29] = random(9)+1;
		H55_UnkemptArmies[bank][30] = random(8)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

function H55_MausoleumWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;		
		H55_GoldReward(hero,3);
		H55_RandomArtifactAward(hero,0,20,80);
		if rnd1 == 1 then
			H55_RandomArtifactAward(hero,50,50,0);			
			H55_SpellAward(hero,2);	
		elseif rnd1 == 2 then
			H55_RandomArtifactAward(hero,30,70,0);	
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3); 			
		elseif rnd1 == 3 then
			local rnddoc = random(3)+1	
			H55_RandomArtifactAward(hero,50,50,0);
			if rnddoc == 1 then
				H55_DocumentAward(hero,3);
			else
				H55_DocumentAward(hero,2);
			end;			
		else
			H55_RandomArtifactAward(hero,50,50,0);	
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;	
		MarkObjectAsVisited(bank,hero);	
		for i = 1,14 do
			H55_DemolishArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DemolishArmies[bank][27] = random(7)+1;
		H55_DemolishArmies[bank][28] = random(8)+1;
		H55_DemolishArmies[bank][29] = random(9)+1;
		H55_DemolishArmies[bank][30] = random(8)+1;		
	else
		MarkObjectAsVisited(bank,hero);	
	end;
end;

-------------------------------------------------------------------------------------------------------------------------------------------------
--REWARDS
-------------------------------------------------------------------------------------------------------------------------------------------------

function H55_GoldReward(hero,level)
	local player = GetObjectOwner(hero);
	local rnd = random(3000)+1;
	local amount = (level*2000)+rnd;
	if level == 4 then amount = amount+4000 end;
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(20)+1)/100));
		amount = math.round(amount*lucky);
	end;	
	H55_GiveResources(player,6,amount,hero);
end;

function H55_ResourceReward(hero,typ,level)
	local player = GetObjectOwner(hero);
	local rnd = random(5)+1;
	local amount = (level*3)+rnd;
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(20)+1)/100));
		amount = math.round(amount*lucky);
	end;
	H55_GiveResources(player,typ,amount,hero);
end;

function H55_ArtifactAwardDuel(hero,level)
	local player = GetObjectOwner(hero);
	local rnda = random(table.length(H55_MinorArtifactsDuel))+1;
	local rndb = random(table.length(H55_MajorArtifactsDuel))+1;
	local rndc = random(table.length(H55_RelicArtifactsDuel))+1;
	if level == 3 then
		GiveArtefact(hero,H55_RelicArtifactsDuel[rndc],0);
	elseif level == 2 then 
		GiveArtefact(hero,H55_MajorArtifactsDuel[rndb],0);
	else 
		GiveArtefact(hero,H55_MinorArtifactsDuel[rnda],0);
	end;
end;

function H55_ArtifactAward(hero,level)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);
	if H55_Day == 1 then
		local rnda = random(table.length(H55_MinorArtifacts))+1;
		local rndb = random(table.length(H55_MajorArtifacts))+1;
		local rndc = random(table.length(H55_RelicArtifacts))+1;
		if level == 3 then
			GiveArtefact(hero,H55_RelicArtifacts[rndc],0);
		elseif level == 2 then 
			GiveArtefact(hero,H55_MajorArtifacts[rndb],0);
		else 
			GiveArtefact(hero,H55_MinorArtifacts[rnda],0);
		end;	
	else
		local rnd1 = random(table.length(H55_MinorArtifactsUsed));
		local rnd2 = random(table.length(H55_MajorArtifactsUsed));
		local rnd3 = random(table.length(H55_RelicArtifactsUsed));
		if level == 3 then
			GiveArtefact(hero,H55_RelicArtifactsUsed[rnd3],0);
		elseif level == 2 then 
			GiveArtefact(hero,H55_MajorArtifactsUsed[rnd2],0);
		else 
			GiveArtefact(hero,H55_MinorArtifactsUsed[rnd1],0);
		end;
	end;
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);	
	if not H55_IsThisAIPlayer(player) then 
		startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
	end;	
end;

function H55_ArtifactStartBonus(hero)
	if hero ~= nil then
		local rnd = random(table.length(H55_MinorArtifacts))+1;
		GiveArtefact(hero,H55_MinorArtifacts[rnd],0);
	else
		print("H55 Artifact Start Bonus could not be provided!");
	end;
end;

function H55_RandomArtifactAward(hero,minorchance,majorchance,relicchance)
	local player = GetObjectOwner(hero);
	local choice = random(100)+1;
	local x,y,z = GetObjectPosition(hero);
	if H55_Day == 1 then
		local rnda = random(table.length(H55_MinorArtifacts))+1;
		local rndb = random(table.length(H55_MajorArtifacts))+1;
		local rndc = random(table.length(H55_RelicArtifacts))+1;
		if choice <= minorchance then
			GiveArtefact(hero,H55_MinorArtifacts[rnda],0);
		elseif choice > minorchance and choice <= (majorchance+minorchance) then
			GiveArtefact(hero,H55_MajorArtifacts[rndb],0);
		else
			GiveArtefact(hero,H55_RelicArtifacts[rndc],0);
		end;	
	else
		local rnd1 = random(table.length(H55_MinorArtifactsUsed));
		local rnd2 = random(table.length(H55_MajorArtifactsUsed));
		local rnd3 = random(table.length(H55_RelicArtifactsUsed));
		if choice <= minorchance then
			GiveArtefact(hero,H55_MinorArtifactsUsed[rnd1],0);
		elseif choice > minorchance and choice <= (majorchance+minorchance) then
			GiveArtefact(hero,H55_MajorArtifactsUsed[rnd2],0);
		else
			GiveArtefact(hero,H55_RelicArtifactsUsed[rnd3],0);
		end;
	end;
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);		
	if not H55_IsThisAIPlayer(player) then
		startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
	end;	
end;

function H55_GraalAward(hero,result)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);
	GiveArtefact(hero,53);
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);		
	if not H55_IsThisAIPlayer(player) then 
		startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
	end;	
end;

function H55_RandomUltimateAward(hero)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);	
	if H55_Day == 1 then
		local rnda = random(table.length(H55_UltimateArtifacts))+1;
		GiveArtefact(hero,H55_UltimateArtifacts[rnda],0);			
	else
		local rnd1 = random(table.length(H55_UltimateArtifactsUsed))+1;
		GiveArtefact(hero,H55_UltimateArtifactsUsed[rnd1],0);
	end;		
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);	
	if not H55_IsThisAIPlayer(player) then 
		startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
	end;
end;

function H55_StaticObeliskAward(hero)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);	
	GiveArtefact(hero,H55_UltimateArtifacts[H55_ForcedObelisk],0);	
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);	
	if not H55_IsThisAIPlayer(player) then 
		startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
	end;
end;

function H55_StaticShantiriAward(hero)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);	
	GiveArtefact(hero,H55_UltimateArtifacts[H55_ForcedShantiri],0);		
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);	
	if not H55_IsThisAIPlayer(player) then 
		startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
	end;
end;

function H55_PrisonersReward(hero,multiplier,maxtier)
	local player = GetObjectOwner(hero);
	local tier = random(maxtier)+1;
	local faction = H55_GetHeroRaceNum(hero);
	local amount = random(4)+(multiplier*H55_CreaturesGrowthReal[faction][tier]);	
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(20)+1)/100));
		amount = math.round(amount*lucky);
	end;	
	local units = H55_ArmyInfoSimple(hero);
	local released = 0;	
	local x,y,z = GetObjectPosition(hero);
	for i = 0,6 do
		if units[i] == H55_Creatures[faction][tier][2] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Banks/Prisoners.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime) end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
			released = 1;
		end;
		if units[i] == H55_Creatures[faction][tier][3] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Banks/Prisoners.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime) end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
			released = 1;
		end;
		if units[i] == H55_Creatures[faction][tier][1] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
			if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Banks/Prisoners.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime) end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
			released = 1;
		end;
	end;
	if released == 0 then
		for i = 0,6 do
			if (units[i] == 0 or units[i] == nil) and released == 0 then
				AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				if not H55_IsThisAIPlayer(player) then startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Banks/Prisoners.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime) end;
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
				released = 1;
			end;	
		end;
	end;
	if not H55_IsThisAIPlayer(player) then
		sleep(4);
	end;
end;

-- function H55_StartCreatureBonus(player,hero,multiplier,maxtier)
	-- local tier = 3; --random(maxtier-1)+2;
	-- if hero == "Bersy" or hero == "Mardigo" or hero == "Hero8" then
		-- tier = 2;
	-- end;
	-- if hero == "Calid" or hero == "Ossir" or hero == "Isher"  or hero == "Darkstorm" then
		-- tier = 1;
	-- end;

	-- local faction = H55_GetHeroRaceNum(hero);
	-- --if faction ~= 0 then
		-- local amount = random(2)+(multiplier*H55_CreaturesGrowthReal[faction][tier]);
		-- AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
		-- -- local units = H55_ArmyInfoSimple(hero);
		-- -- local released = 0;
		-- -- for i = 0,6 do
			-- -- if units[i] == H55_Creatures[faction][tier][2] and released == 0 then
				-- -- AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
				-- -- released = 1;
			-- -- end;
			-- -- if units[i] == H55_Creatures[faction][tier][3] and released == 0 then
				-- -- AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
				-- -- released = 1;
			-- -- end;
			-- -- if units[i] == H55_Creatures[faction][tier][1] and released == 0 then
				-- -- AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				-- -- released = 1;
			-- -- end;
		-- -- end;
		-- -- if released == 0 then
			-- -- for i = 0,6 do
				-- -- if (units[i] == 0 or units[i] == nil) and released == 0 then
					-- -- AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
					-- -- released = 1;
				-- -- end;
			-- -- end;
		-- -- end;
	-- --end;
-- end;

function H55_SummonTempleReward(hero,multiplier,maxtier)
	local player = GetObjectOwner(hero);
	local tier = maxtier;
	local faction = H55_GetHeroRaceNum(hero);
	local amount = random(4)+(multiplier*H55_CreaturesGrowthReal[faction][tier]);	
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(10)+1)/100));
		amount = math.round(amount*lucky);
	end;	
	local units = H55_ArmyInfoSimple(hero);
	local released = 0;
	local x,y,z = GetObjectPosition(hero);
	for i = 0,6 do
		if units[i] == H55_Creatures[faction][tier][2] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
			startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Summon/Summons.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
			released = 1;
		end;
		if units[i] == H55_Creatures[faction][tier][3] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
			startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Summon/Summons.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
			released = 1;
		end;
		if units[i] == H55_Creatures[faction][tier][1] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
			startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Summon/Summons.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
			released = 1;
		end;
	end;
	if released == 0 then
		for i = 0,6 do
			if (units[i] == 0 or units[i] == nil) and released == 0 then
				AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				startThread(H55_ProtectedSignPrisoners,"/Text/Game/Scripts/Summon/Summons.txt",amount,tier,hero,player,H55_MsgSleep,H55_MsgTime);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);	
				released = 1;
			end;	
		end;
	end;
end;

function H55_SpellAward(hero,level)
	local player = GetObjectOwner(hero);	
	local rnd5 = random(8)+1;
	local rnd4 = random(9)+1;
	local rnd3 = random(10)+1;
	local rnd2 = random(11)+1;
	local rnd1 = random(10)+1;
	local teached = 0;
	local x,y,z = GetObjectPosition(hero);
	if level == 2 then
		if table.contains(H55_Chieftains,hero) then
			GiveArtefact(hero,ARTIFACT_SCROLL_OF_SPELL_X);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);	
		else
			if KnowHeroSpell(hero,H55_SpellsL5[rnd5]) == nil then
				if table.contains(H55_LightSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL5[rnd5],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_DarkSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL5[rnd5],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_DestructiveSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL5[rnd5],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_SummoningSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL5[rnd5],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;			
			elseif KnowHeroSpell(hero,H55_SpellsL4[rnd4]) == nil then
				if table.contains(H55_LightSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL4[rnd4],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_DarkSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL4[rnd4],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_DestructiveSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL4[rnd4],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_SummoningSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL4[rnd4],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;			
			elseif KnowHeroSpell(hero,H55_SpellsL3[rnd3]) == nil then
				if table.contains(H55_LightSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL3[rnd3],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_DarkSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL3[rnd3],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif table.contains(H55_DestructiveSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL3[rnd3],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);						
						teached = 1;
					end;
				elseif table.contains(H55_SummoningSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL3[rnd3],hero,player,H55_MsgSleep,H55_MsgTime) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);	
						teached = 1;
					end;
				end;
			end;
			if teached == 0 then
				GiveArtefact(hero,ARTIFACT_SCROLL_OF_SPELL_X);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
			-- if not H55_IsThisAIPlayer(player) then
				-- sleep(8);
			-- end;
		end;
	else
		if table.contains(H55_Chieftains,hero) then
			GiveArtefact(hero,ARTIFACT_WAND_OF_X);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);	
		else		
			if HasHeroSkill(hero,PERK_WISDOM) then
				if KnowHeroSpell(hero,H55_SpellsL3[rnd3]) == nil then
					TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
					if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL3[rnd3],hero,player,H55_MsgSleep,H55_MsgTime) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);					
					teached = 1;
				end;
			end;
			if teached == 0 then
				if KnowHeroSpell(hero,H55_SpellsL2[rnd2]) == nil then
					TeachHeroSpell(hero,H55_SpellsL2[rnd2]);
					if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL2[rnd2],hero,player,H55_MsgSleep,H55_MsgTime) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);						
					teached = 1;
				elseif KnowHeroSpell(hero,H55_SpellsL2[rnd1]) == nil then
					TeachHeroSpell(hero,H55_SpellsL2[rnd1]);	
					if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL2[rnd1],hero,player,H55_MsgSleep,H55_MsgTime) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);	
					teached = 1;			
				elseif KnowHeroSpell(hero,H55_SpellsL1[rnd3]) == nil then
					TeachHeroSpell(hero,H55_SpellsL1[rnd3]);
					if not H55_IsThisAIPlayer(player) then H55_ProtectedSignSpell("/Text/Game/Scripts/Banks/Givespell.txt",H55_SpellsTextL1[rnd3],hero,player,H55_MsgSleep,H55_MsgTime) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);	
					teached = 1;
				end;
			end;
			if teached == 0 then
				GiveArtefact(hero,ARTIFACT_WAND_OF_X);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
				startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
			end;
			-- if not H55_IsThisAIPlayer(player) then
				-- sleep(4);
			-- end;
		end;
	end;
end;	

function H55_DocumentAward(hero,level)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);
	local rndprank = random(100)+1;
	if not H55_IsThisAIPlayer(player) then
		if H55_MapType ~= "Campaign" and H55_MapType ~= "Scenario" and H55_NegativeArtifacts == 1 and rndprank >= 97 then
			local rndx = random(table.length(H55_PrankArtifacts))+1;
			-- local humanplayers = table.containsamount(H55_PlayerStatus,0);
			-- if humanplayers >= 2 then
				-- GiveArtefact(hero,H55_PrankArtifacts[rndx]);
			-- else
			GiveArtefact(hero,H55_PrankArtifacts[rndx]);
			-- end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
			startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Badartifact.txt",hero,player,H55_MsgSleep,H55_MsgTime);
		else
			if level == 3 then
				local rnda = random(table.length(H55_RelicBookArtifacts))+1;
				local rndp = random(table.length(H55_RelicBookArtifacts))+1;
				if HasArtefact(hero,H55_RelicBookArtifacts[rnda],0) == nil then
					GiveArtefact(hero,H55_RelicBookArtifacts[rnda],0);
				elseif HasArtefact(hero,H55_RelicBookArtifacts[rndp],0) == nil then
					GiveArtefact(hero,H55_RelicBookArtifacts[rndp],0);
				else
					H55_ArtifactAward(hero,3);
				end;
			elseif level == 2 then
				local rndb = random(table.length(H55_MajorBookArtifacts))+1;
				local rndq = random(table.length(H55_MajorBookArtifacts))+1;
				if HasArtefact(hero,H55_MajorBookArtifacts[rndb],0) == nil then
					GiveArtefact(hero,H55_MajorBookArtifacts[rndb],0);
				elseif HasArtefact(hero,H55_MajorBookArtifacts[rndq],0) == nil then
					GiveArtefact(hero,H55_MajorBookArtifacts[rndq],0);
				else
					H55_ArtifactAward(hero,2);
				end;
			else
				local rndc = random(table.length(H55_MinorBookArtifacts))+1;
				local rndr = random(table.length(H55_MinorBookArtifacts))+1;
				if HasArtefact(hero,H55_MinorBookArtifacts[rndc],0) == nil then
					GiveArtefact(hero,H55_MinorBookArtifacts[rndc],0);
				elseif HasArtefact(hero,H55_MinorBookArtifacts[rndr],0) == nil then
					GiveArtefact(hero,H55_MinorBookArtifacts[rndr],0);
				else
					H55_ArtifactAward(hero,1);
				end;				
			end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
			startThread(H55_ProtectedSign,"/Text/Game/Scripts/Banks/Givebook.txt",hero,player,H55_MsgSleep,H55_MsgTime);
		end;
	elseif H55_IsThisAIPlayer(player) then
		local rnd = random(4)+1;
		if level == 2 or level == 3 then
			ChangeHeroStat(hero,H55_StatAwards[rnd],2);
		else
			ChangeHeroStat(hero,H55_StatAwards[rnd],1);
		end;
	end;
end;

function H55_SeerAward(hero,level,skill)
	local player = GetObjectOwner(hero);	
	ChangeHeroStat(hero,H55_StatAwards[skill],level);
	if not H55_IsThisAIPlayer(player) then
		ShowFlyingSign({H55_BankStatText[skill];param=level},hero,player,7);
		sleep(8);			
	end;
end;

---------------------------------------------------------------------------------------------------------------------------------------------
--ACTIVATOR
---------------------------------------------------------------------------------------------------------------------------------------------

startThread(H55_PrepareAdvMap);

---------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
---------------------------------------------------------------------------------------------------------------------------------------------