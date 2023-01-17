------------------------------------------
--  ZehirAbilitiesInit( heroName )
-- ZehirCreaturesAdd(creatureType, creatureQuantity, resType, resQuantity, expCost)
-- ZehirAbilitiesDestroy()
-- ZehirTownInit(townName)
-- AddTownPoint(newX, newY, newFloor, newRotation, newTouchRegion, expCost, newTownRegion)
------------------------------------------

MAX_ZEHIR_TOWN_PLACES = 3;
EFFECT_SUMMON_CREATURES = "/Effects/_(Effect)/Spells/Phantom_Out.xdb#xpointer(/Effect)";
--SOUND_SUMMON_CREATURES = "/Sounds/_(Sound)/Spells/CelestialShield.xdb#xpointer(/Sound)";
SOUND_SUMMON_CREATURES = "/Sounds/_(Sound)/Spells/TeleportStart.xdb#xpointer(/Sound)";

--EFFECT_SUMMON_CREATURES = "/Effects/_(Effect)/Spells/SummonElementals/Earth.xdb#xpointer(/Effect)"; --old effect

ZehirAbilitiesActive = nil;
ZehirHeroName = "";
ZehirCreaturesCurrent = -1;
ZehirCreaturesWeek = -1;
ZehirCreatures = {};
ZehirCreatures.n = 0; 
ZehirTownName = "";
ZehirTownPlaces = {};
ZehirTownPlacesCount = 0;
ZehirTownPlaceCurrent = -1;
ZehirTownRegionEnteredHeroes = 0;
ZehirTouchRegion = -1;

function ZehirCreaturesAdd(creatureType, creatureQuantity, resType, resQuantity, expCost, callBack)
	ZehirCreatures[ZehirCreatures.n] = {};
	ZehirCreatures[ZehirCreatures.n].CreatureType = creatureType;
	
	local creatureNameFile = "";
	if  creatureType == CREATURE_OBSIDIAN_GARGOYLE then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Obsidian_Gargole_Name.txt";
	elseif creatureType == CREATURE_STEEL_GOLEM then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Steel_Golem_Name.txt";
	elseif creatureType == CREATURE_IRON_GOLEM then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_iron_Golem_Name.txt";
	elseif creatureType == CREATURE_OBSIDIAN_GOLEM then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_obsidian_Golem_Name.txt";
	elseif creatureType == CREATURE_MASTER_GENIE then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Djinn_Sultan_Name.txt";
	elseif creatureType == CREATURE_GENIE then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Djinn_Name.txt";
	elseif creatureType == CREATURE_RAKSHASA_KSHATRI then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Rakshasa_Kshatri_Name.txt";
	elseif creatureType == CREATURE_GIANT then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Giant_Name.txt";
	elseif creatureType == CREATURE_STORM_LORD then
		creatureNameFile = "/scripts/A2_Zehir/A2_Zehir_Storm_Lord_Name.txt";
	end;
	ZehirCreatures[ZehirCreatures.n].CreatureNameFile = creatureNameFile;
	ZehirCreatures[ZehirCreatures.n].CreatureQuantity = creatureQuantity;
	ZehirCreatures[ZehirCreatures.n].ResType = resType;
	ZehirCreatures[ZehirCreatures.n].ResQuantity = resQuantity;
	
	local resNameFile = "";
	if resType == ORE then
		resNameFile = "/scripts/A2_Zehir/A2_Zehir_Ore_Name.txt";
	elseif resType == CRYSTAL then
		resNameFile = "/scripts/A2_Zehir/A2_Zehir_Crystal_Name.txt";
	elseif resType == GEM then
		resNameFile = "/scripts/A2_Zehir/A2_Zehir_Gem_Name.txt";
	elseif resType == SULFUR then
		resNameFile = "/scripts/A2_Zehir/A2_Zehir_Sulfur_Name.txt";
	elseif resType == MERCURY then
		resNameFile = "/scripts/A2_Zehir/A2_Zehir_Mercury_Name.txt";
	end;
	ZehirCreatures[ZehirCreatures.n].ResNameFile = resNameFile;
	ZehirCreatures[ZehirCreatures.n].ExpCost = expCost;
	ZehirCreatures[ZehirCreatures.n].callBack = callBack;
	ZehirCreatures.n = ZehirCreatures.n + 1;
end;

function ZehirAbilitiesDestroy()
	ZehirHeroName = "";
	ZehirCreatures.n = 0;
	Trigger(CUSTOM_ABILITY_TRIGGER, nil);
end;

function ZehirCreaturesNext()
	if ZehirCreatures.n > 0 then
		ZehirCreaturesCurrent = random(ZehirCreatures.n);
	end;
end;

function ZehirCreaturesStartMessageBox()
	if ZehirCreatures.n > 0 then
		if ZehirCreatures.n == 1 then
			MessageBox( {"/scripts/A2_Zehir/A2_Zehir_Msg1.txt"; 
				creature1={"/scripts/A2_Zehir/A2_Zehir_Creature_Notice.txt"; 
					CreatureCount=ZehirCreatures[0].CreatureQuantity, 
					CreatureName={ZehirCreatures[0].CreatureNameFile}, 
					ResCount=ZehirCreatures[0].ResQuantity,
					ResName={ZehirCreatures[0].ResNameFile},
					Exp=ZehirCreatures[0].ExpCost}
					},ZehirCreatures[0].callBack);
		elseif ZehirCreatures.n == 2 then
			MessageBox( {"/scripts/A2_Zehir/A2_Zehir_Msg1.txt"; 
				creature1={"/scripts/A2_Zehir/A2_Zehir_Creature_Notice.txt"; 
					CreatureCount=ZehirCreatures[0].CreatureQuantity, 
					CreatureName={ZehirCreatures[0].CreatureNameFile}, 
					ResCount=ZehirCreatures[0].ResQuantity,
					ResName={ZehirCreatures[0].ResNameFile},
					Exp=ZehirCreatures[0].ExpCost},
				creature2={"/scripts/A2_Zehir/A2_Zehir_Creature_Notice.txt"; 
					CreatureCount=ZehirCreatures[1].CreatureQuantity, 
					CreatureName={ZehirCreatures[1].CreatureNameFile}, 
					ResCount=ZehirCreatures[1].ResQuantity,
					ResName={ZehirCreatures[1].ResNameFile},
					Exp=ZehirCreatures[1].ExpCost}
					},ZehirCreatures[1].callBack);
		end;
	end;
end;

function ZehirCreaturesGeneration()
	if GetPlayerState( PLAYER_1 ) ~= 1 then
		return
	end;
	if ZehirHeroName ~= "" then
		if IsHeroAlive(ZehirHeroName) then
			ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_1, CUSTOM_ABILITY_ENABLED);
		end;

		local resN;
		resN = GetPlayerResource(PLAYER_1, ZehirCreatures[ZehirCreaturesCurrent].ResType);
		if  resN >= ZehirCreatures[ZehirCreaturesCurrent].ResQuantity then

			if IsHeroAlive(ZehirHeroName) == nil then return end;
			if GetHeroStat(ZehirHeroName, STAT_EXPERIENCE) >= ZehirCreatures[ZehirCreaturesCurrent].ExpCost then

				BlockGame();

				sleep(2);
				local pos = {};

				if IsHeroAlive(ZehirHeroName) == nil then UnblockGame(); return end;
				if GetHeroTown( ZehirHeroName ) == nil   then
					pos.x, pos.y, pos.floor = GetObjectPosition( ZehirHeroName );
					MoveCamera(pos.x, pos.y, pos.floor, 0, 0, 0, 1, 1, 0);
					PlayVisualEffect( EFFECT_SUMMON_CREATURES, ZehirHeroName );
					Play2DSound( SOUND_SUMMON_CREATURES );
					sleep( 35 );
					local expCost = ZehirCreatures[ZehirCreaturesCurrent].ExpCost;

					if IsHeroAlive(ZehirHeroName) == nil then UnblockGame(); return end;
					TakeAwayHeroExpFlying(ZehirHeroName, expCost);
				else
					pos.x, pos.y, pos.floor = GetObjectPosition( GetHeroTown( ZehirHeroName ), 0, 1) ;	
					MoveCamera(pos.x, pos.y, pos.floor, 0, 0, 0, 1, 1, 0);
					local expCost = ZehirCreatures[ZehirCreaturesCurrent].ExpCost;

					if IsHeroAlive(ZehirHeroName) == nil then UnblockGame(); return end;
					TakeAwayHeroExp( ZehirHeroName, expCost );
				end;

				UnblockGame();

				local crType = ZehirCreatures[ZehirCreaturesCurrent].CreatureType;
				local crCount = ZehirCreatures[ZehirCreaturesCurrent].CreatureQuantity;

				SetPlayerResource(1, ZehirCreatures[ZehirCreaturesCurrent].ResType, resN - ZehirCreatures[ZehirCreaturesCurrent].ResQuantity);
				if GetPlayerResource( PLAYER_1, GOLD) >= 1000000 then
					startThread( DeployUFO, crType, crCount );
				else
					AddHeroCreatures(ZehirHeroName, crType, crCount );
				end;

				ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_1, CUSTOM_ABILITY_DISABLED);
			else
				MessageBox({"/scripts/A2_Zehir/A2_Zehir_Msg4.txt"; 
					creature1={"/scripts/A2_Zehir/A2_Zehir_Creature_Notice.txt"; 
					CreatureCount=ZehirCreatures[0].CreatureQuantity, 
					CreatureName={ZehirCreatures[0].CreatureNameFile}, 
					ResCount=ZehirCreatures[0].ResQuantity,
					ResName={ZehirCreatures[0].ResNameFile},
					Exp=ZehirCreatures[0].ExpCost}
					});
			end;
		else
			MessageBox({"/scripts/A2_Zehir/A2_Zehir_Msg3.txt"; 
					creature1={"/scripts/A2_Zehir/A2_Zehir_Creature_Notice.txt"; 
					CreatureCount=ZehirCreatures[0].CreatureQuantity, 
					CreatureName={ZehirCreatures[0].CreatureNameFile}, 
					ResCount=ZehirCreatures[0].ResQuantity,
					ResName={ZehirCreatures[0].ResNameFile},
					Exp=ZehirCreatures[0].ExpCost}
					});
		end;
	end;
end;

function DeployUFO( crType, crCount )
	if IsHeroAlive( "ufo" ) ~= nil then
		RemoveObject( "ufo" );
		sleep(1);
	end;
	local x, y, floor = GetObjectPosition( ZehirHeroName );
	DeployReserveHero( "ufo", x, y, floor );
	sleep(1);
	t1,t2,t3,t4,t5,t6,t7 = GetHeroCreaturesTypes( "ufo" );
	if t1 ~= 0 then c1 = GetHeroCreatures( "ufo", t1 ); end;
	if t2 ~= 0 then c2 = GetHeroCreatures( "ufo", t2 ); end;
	if t3 ~= 0 then c3 = GetHeroCreatures( "ufo", t3 ); end;
	if t4 ~= 0 then c4 = GetHeroCreatures( "ufo", t4 ); end;
	if t5 ~= 0 then c5 = GetHeroCreatures( "ufo", t5 ); end;
	if t6 ~= 0 then c6 = GetHeroCreatures( "ufo", t6 ); end;
	if t7 ~= 0 then c7 = GetHeroCreatures( "ufo", t7 ); end;
	AddHeroCreatures( "ufo", crType, crCount );
	if t1 ~= 0 then RemoveHeroCreatures( "ufo", t1,c1 ); end;
	if t2 ~= 0 then RemoveHeroCreatures( "ufo", t2,c2 ); end;
	if t3 ~= 0 then RemoveHeroCreatures( "ufo", t3,c3 ); end;
	if t4 ~= 0 then RemoveHeroCreatures( "ufo", t4,c4 ); end;
	if t5 ~= 0 then RemoveHeroCreatures( "ufo", t4,c5 ); end;
	if t6 ~= 0 then RemoveHeroCreatures( "ufo", t4,c6 ); end;
	if t7 ~= 0 then RemoveHeroCreatures( "ufo", t4,c7 ); end;
end;

function ZehirCreaturesRequestYes()
	ZehirCreaturesGeneration();
end;

function ZehirTrigger(heroName, customAbilityID)
	if heroName == ZehirHeroName then
		if customAbilityID == CUSTOM_ABILITY_1 then
			ZehirCreaturesGeneration();
		elseif customAbilityID == CUSTOM_ABILITY_2 then
			if ZehirTouchRegion >= 0 then
				ZehirMoveTownWithChecking(ZehirTouchRegion);
			end;
		elseif customAbilityID == CUSTOM_ABILITY_4 then
			H55_TownManagement(heroName,customAbilityID);
		end;
	end;
end;

function ZehirCreaturesRequestNo()
	ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_1, CUSTOM_ABILITY_ENABLED);
end;

function ZehirCreaturesRequest()
	if ZehirCreatures.n > 0 and ZehirHeroName ~= ""  then
		QuestionBox( {"/scripts/A2_Zehir/A2_Zehir_Msg2.txt"; 
			creature1={"/scripts/A2_Zehir/A2_Zehir_Creature_Notice.txt"; 
				CreatureCount=ZehirCreatures[ZehirCreaturesCurrent].CreatureQuantity, 
				CreatureName={ZehirCreatures[ZehirCreaturesCurrent].CreatureNameFile}, 
				ResCount=ZehirCreatures[ZehirCreaturesCurrent].ResQuantity,
				ResName={ZehirCreatures[ZehirCreaturesCurrent].ResNameFile},
				Exp=ZehirCreatures[ZehirCreaturesCurrent].ExpCost}}, 
				"ZehirCreaturesRequestYes", "ZehirCreaturesRequestNo"
				);
	end;
end;

function ZehirCreaturesCheckCreation()
	repeat sleep(1); until ZehirCreatures.n > 0;
	while 1 do
		if IsHeroAlive(ZehirHeroName) == nil then
			print("Warning: It is impossible to find the hero with name specified in a script");
			repeat sleep(1); until IsHeroAlive(ZehirHeroName) == true;
		end;
		if GetPlayerState( PLAYER_1 ) ~= 1 then -- Player is defeated
			print( "Player was defeated, state = ", GetPlayerState( PLAYER_1 ) );
			return
		end;
		if ZehirHeroName == "" then
			return
		end;
		if ZehirCreatures.n == 0 then
			return
		end;
		if GetDate(DAY) == 1 and ZehirCreaturesWeek == -1 then
			ZehirCreaturesWeek = GetDate(WEEK);
			ZehirCreaturesStartMessageBox();
		elseif GetDate(DAY_OF_WEEK) == 1 and GetDate(WEEK) ~= ZehirCreaturesWeek then
			ZehirCreaturesWeek = GetDate(WEEK);
			ZehirCreaturesNext();
			sleep(1);
			ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_1, CUSTOM_ABILITY_DISABLED);
			ZehirCreaturesRequest();
		end;
		sleep(1);
	end;
end;

function ZehirAbilitiesInit(heroName)
	ZehirHeroName = heroName;
	ZehirAbilitiesActive = true;
	ZehirStartWeek = GetDate(WEEK);
	ControlHeroCustomAbility(heroName, CUSTOM_ABILITY_1, CUSTOM_ABILITY_DISABLED);
	Trigger(CUSTOM_ABILITY_TRIGGER, "ZehirTrigger");
	startThread(ZehirCreaturesCheckCreation);
end;

function ZehirMoveTownPlayEffect(townName)
	local effect = "/Effects/_(Effect)/Spells/DivineVengeance/FX_DivineVengeance.(Effect).xdb#xpointer(/Effect)";
	PlayVisualEffect(effect, townName, "", -3, -3, 0);
	PlayVisualEffect(effect, townName, "", -3, 3, 0);
	Play2DSound( "/Maps/Scenario/A2C3M1/SummonEarthsound.xdb#xpointer(/Sound)" );
	sleep(1);
	PlayVisualEffect(effect, townName, "", 3, -3, 0);
	PlayVisualEffect(effect, townName, "", 3, 3, 0);
	sleep(3);
	PlayVisualEffect(effect, townName, "", 1, -2, 0);
	sleep(5);
end;

function ZehirMoveTownPlayEffectCoord(x, y)
	local effect = "/Effects/_(Effect)/Spells/DivineVengeance/FX_DivineVengeance.(Effect).xdb#xpointer(/Effect)";
	PlayVisualEffect(effect, "", "", x-3, y-3, 0);
	PlayVisualEffect(effect, "", "", x-3, y+3, 0);
	Play2DSound( "/Maps/Scenario/A2C3M1/SummonEarthsound.xdb#xpointer(/Sound)" );
	sleep(1);
	PlayVisualEffect(effect, "", "", x+3, y-3, 0);
	PlayVisualEffect(effect, "", "", x+3, y+3, 0);
	sleep(3);
	PlayVisualEffect(effect, "", "", x+1, y-2, 0);
	sleep(5);
end;

function ZehirTownInit(townName)
	ZehirTownName = townName;
	ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_2, CUSTOM_ABILITY_DISABLED);
end;

--- ZehirCheckTouchRegion ---

function ZehirCheckTouchRegion_1(heroName)
	startThread(ZehirCheckTouchRegion, heroName, 0);
end;

function ZehirCheckTouchRegion_2(heroName)
	startThread(ZehirCheckTouchRegion, heroName, 1);
end;

function ZehirCheckTouchRegion_3(heroName)
	startThread(ZehirCheckTouchRegion, heroName, 2);
end;

function ZehirCheckTouchRegionExit_1(heroName)
	startThread(ZehirCheckTouchRegionExit, heroName, 0);
end;

function ZehirCheckTouchRegionExit_2(heroName)
	startThread(ZehirCheckTouchRegionExit, heroName, 1);
end;

function ZehirCheckTouchRegionExit_3(heroName)
	startThread(ZehirCheckTouchRegionExit, heroName, 2);
end;

--- CheckTownRegion ---
function ZehirCheckTownRegionEnter_1(heroName)
	startThread(ZehirCheckTownRegionEnter, heroName, 0);
end;

function ZehirCheckTownRegionEnter_2(heroName)
	startThread(ZehirCheckTownRegionEnter, heroName, 1);
end;

function ZehirCheckTownRegionEnter_3(heroName)
	startThread(ZehirCheckTownRegionEnter, heroName, 2);
end;

function ZehirCheckTownRegionExit_1(heroName)
	startThread(ZehirCheckTownRegionExit, heroName, 0);
end;

function ZehirCheckTownRegionExit_2(heroName)
	startThread(ZehirCheckTownRegionExit, heroName, 1);
end;

function ZehirCheckTownRegionExit_3(heroName)
	startThread(ZehirCheckTownRegionExit, heroName, 2);
end;

ZehirTownMovingYes = 0;

function ZehirTownMovingRequestYes()	
	ZehirTownMovingYes = 1;
end;

function ZehirTownMovingRequestNo()	
	ZehirTownMovingYes = 2;
end;

function ZehirCheckTownRegionEnter(heroName, regNumber)
	if ZehirTownName == "" then
		return
	end;
	ZehirTownPlaces[regNumber].EnteredHeroes = ZehirTownPlaces[regNumber].EnteredHeroes + 1;
end;

function ZehirCheckTownRegionExit(heroName, regNumber)
	if ZehirTownName == "" then
		return
	end;
	ZehirTownPlaces[regNumber].EnteredHeroes = ZehirTownPlaces[regNumber].EnteredHeroes - 1;
end;

function ZehirCheckTouchRegion(heroName, regNumber)
	if ZehirTownName == "" then
		return
	end;
	ZehirTouchRegion = regNumber;
	if ZehirTownPlaceCurrent == regNumber then
		return
	end;
	if ZehirHeroName == heroName then
		ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_2, CUSTOM_ABILITY_ENABLED);
		QuestionBox( {"/scripts/A2_Zehir/A2_Zehir_Msg5.txt"; 
			COST=ZehirTownPlaces[regNumber].ExpCost}, "ZehirTownMovingRequestYes", "ZehirTownMovingRequestNo");
		ZehirTownMovingYes = 0;
		while 1 do
			if ZehirTownMovingYes == 1 then
				ZehirTownMovingYes = 0;
				break;
			end;
			if ZehirTownMovingYes == 2 then
				ZehirTownMovingYes = 0;
				return
			end;
			sleep(1);
		end;
		ZehirMoveTownWithChecking(regNumber);
	end;
end;

function ZehirMoveTownWithChecking(regNumber)
	if ZehirTownPlaces[regNumber].EnteredHeroes > 0 then
		MessageBox("/scripts/A2_Zehir/A2_Zehir_Msg6.txt");
		return
	end;
	BlockGame();
	local showStart = nil;
	local owner = GetObjectOwner(ZehirTownName);
	if owner == PLAYER_1 then
		showStart = true;
	end;
	ZehirMoveTown(ZehirTownName, ZehirTownPlaces[regNumber].X, ZehirTownPlaces[regNumber].Y, ZehirTownPlaces[regNumber].Floor, 
		ZehirTownPlaces[regNumber].Rotation, showStart, ZehirTownPlaces[regNumber].ExpCost, regNumber);
	UnblockGame();
end;

function ZehirCheckTouchRegionExit(heroName, regNumber)
	if ZehirTownName == "" then
		return
	end;
	if ZehirHeroName == heroName and ZehirTouchRegion == regNumber then
		ZehirTouchRegion = -1;
		ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_2, CUSTOM_ABILITY_DISABLED);
	end;
end;

function AddTownPoint(newX, newY, newFloor, newRotation, newTouchRegion, expCost, newTownRegion)
	if ZehirTownName == "" then
		return
	end;
	__ZehirsTouchRegion_Name__ = newTouchRegion;
	__TownLandingZone_Name__ = newTownRegion;
	local currentPlace = ZehirTownPlacesCount;
	ZehirTownPlaces[currentPlace] = {};
	ZehirTownPlaces[currentPlace].X = newX;
	ZehirTownPlaces[currentPlace].Y = newY;
	ZehirTownPlaces[currentPlace].Floor = newFloor;
	ZehirTownPlaces[currentPlace].Rotation = newRotation;
	ZehirTownPlaces[currentPlace].Region = newTouchRegion;
	ZehirTownPlaces[currentPlace].ExpCost = expCost;
	ZehirTownPlaces[currentPlace].EnteredHeroes = 0;
	if currentPlace >= MAX_ZEHIR_TOWN_PLACES then
		print("Exceed max Zehir town places(", MAX_ZEHIR_TOWN_PLACES, ")"  );
		return
	end;
	if newTownRegion ~= nil then
		if currentPlace == 0 then
			Trigger(REGION_ENTER_WITHOUT_STOP_TRIGGER, newTownRegion, "ZehirCheckTownRegionEnter_1");
			Trigger(REGION_EXIT_TRIGGER, newTownRegion, "ZehirCheckTownRegionExit_1");
		elseif currentPlace == 1 then
			Trigger(REGION_ENTER_WITHOUT_STOP_TRIGGER, newTownRegion, "ZehirCheckTownRegionEnter_2");
			Trigger(REGION_EXIT_TRIGGER, newTownRegion, "ZehirCheckTownRegionExit_2");
		elseif  currentPlace == 2 then
			Trigger(REGION_ENTER_WITHOUT_STOP_TRIGGER, newTownRegion, "ZehirCheckTownRegionEnter_3");
			Trigger(REGION_EXIT_TRIGGER, newTownRegion, "ZehirCheckTownRegionExit_3");
		end;
	end;
	if currentPlace == 0 then
		Trigger(REGION_ENTER_AND_STOP_TRIGGER, newTouchRegion, "ZehirCheckTouchRegion_1");
		Trigger(REGION_EXIT_TRIGGER, newTouchRegion, "ZehirCheckTouchRegionExit_1");
	elseif currentPlace == 1 then
		Trigger(REGION_ENTER_AND_STOP_TRIGGER, newTouchRegion, "ZehirCheckTouchRegion_2");
		Trigger(REGION_EXIT_TRIGGER, newTouchRegion, "ZehirCheckTouchRegionExit_2");
	elseif  currentPlace == 2 then
		Trigger(REGION_ENTER_AND_STOP_TRIGGER, newTouchRegion, "ZehirCheckTouchRegion_3");
		Trigger(REGION_EXIT_TRIGGER, newTouchRegion, "ZehirCheckTouchRegionExit_3");
	end;
	ZehirTownPlacesCount = ZehirTownPlacesCount + 1;
end;

function TakeAwayHeroExpFlying(heroName, expCost)
	TakeAwayHeroExp(heroName, expCost);
	ShowFlyingSign({"/scripts/A2_Zehir/A2_Zehir_Msg7.txt"; EXP=expCost}, heroName, PLAYER_1, 5);
end;

function ZehirMoveTown(townName, newX, newY, newFloor, newRotation, showStart, expCost, regNumber, regionName)
	if expCost <= GetHeroStat(ZehirHeroName, STAT_EXPERIENCE) then
		TakeAwayHeroExpFlying(ZehirHeroName, expCost);
		local pos = {};
		pos.x, pos.y, pos.floor = GetObjectPosition(townName);
		MakeTownMovable(townName);
		sleep(1);
		if showStart == true then
			MoveCamera(pos.x, pos.y, pos.floor, 0, 0, 0, 1, 1, 0);
			sleep(15);
			ZehirMoveTownPlayEffect(townName);
			SetObjectRotation(townName, newRotation);
			SetObjectPosition(townName, newX, newY, newFloor);
			SetObjectOwner(ZehirTownName, PLAYER_1);
			MoveCamera(newX, newY, newFloor, 0, 0, 0, 1, 1, 0);
			sleep(5);
			ZehirMoveTownPlayEffectCoord(newX, newY);
			sleep(5);
			OpenCircleFog(newX, newY, GROUND, 8, PLAYER_1);
		else
			MoveCamera(newX, newY, newFloor, 0, 0, 0, 1, 1, 0);
			OpenCircleFog(newX, newY, GROUND, 8, PLAYER_1);
			ZehirMoveTownPlayEffectCoord(newX, newY);
			sleep(2);
			SetObjectRotation(townName, newRotation);
			SetObjectPosition(townName, newX, newY, newFloor);
			SetObjectOwner(ZehirTownName, PLAYER_1);
		end;
		Trigger(REGION_ENTER_AND_STOP_TRIGGER, __ZehirsTouchRegion_Name__, nil );
		ZehirTownPlaceCurrent = regNumber;
		ControlHeroCustomAbility(ZehirHeroName, CUSTOM_ABILITY_2, CUSTOM_ABILITY_DISABLED);
		SetRegionBlocked( __TownLandingZone_Name__, nil, PLAYER_1 );
	else
		MessageBox( {"/scripts/A2_Zehir/A2_Zehir_Msg4.txt"; EXP=expCost}); 
	end;
end;
