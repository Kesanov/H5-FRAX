dofile = doFile

function StopTrigger() end --needed for lualib

dofile("/scripts/combat-common.lua")

function IsHuman(side) return GetHost(side) == HUMAN end
function IsComputer(side) return GetHost(side) == COMPUTER end

MODE_NORMAL = 0
MODE_MANUAL = 1
MODE_AUTO = 2

ATTACKER = 0
DEFENDER = 1

HERO = 0
CREATURE = 1
WAR_MACHINE = 2
BUILDING = 3
SPELL_SPAWN = 4

function IsAttacker(unit) return GetUnitSide(unit) == ATTACKER end
function IsDefender(unit) return GetUnitSide(unit) == DEFENDER end
function IsHero(unit) return GetUnitType(unit) == HERO end
function IsCreature(unit) return GetUnitType(unit) == CREATURE end
function IsWarMachine(unit) return GetUnitType(unit) == WAR_MACHINE end
function IsBuilding(unit) return GetUnitType(unit) == BUILDING end
function IsSpellSpawn(unit) return GetUnitType(unit) == SPELL_SPAWN end

function GetHero(side)
	local units = GetUnits(side, HERO)
	local units_count = length(units)
	if (units_count > 1) then
		_ERRORMESSAGE('Internal error: army has more than one hero')
	end
	for index, unit in units do
		return unit
	end
	return nil
end
-- Warning!!! Do not remove variables 'temp' in these functions:
-- due the lua engine error game may (and probably will) crash.
function GetCreatures(side) local temp = GetUnits(side, CREATURE) return temp end
function GetWarMachines(side) local temp = GetUnits(side, WAR_MACHINE) return temp end
function GetBuildings(side) local temp = GetUnits(side, BUILDING) return temp end
function GetSpellSpawns(side) local temp = GetUnits(side, SPELL_SPAWN) return temp end

function GetAttackerHero() local temp = GetHero(ATTACKER) return temp end
function GetDefenderHero() local temp = GetHero(DEFENDER) return temp end
function GetAttackerCreatures() local temp = GetCreatures(ATTACKER) return temp end
function GetDefenderCreatures() local temp = GetCreatures(DEFENDER) return temp end
function GetAttackerWarMachines() local temp = GetWarMachines(ATTACKER) return temp end
function GetDefenderWarMachines() local temp = GetWarMachines(DEFENDER) return temp end
function GetAttackerBuildings() local temp = GetBuildings(ATTACKER) return temp end
function GetDefenderBuildings() local temp = GetBuildings(DEFENDER) return temp end
function GetAttackerSpellSpawns() local temp = GetSpellSpawns(ATTACKER) return temp end
function GetDefenderSpellSpawns() local temp = GetSpellSpawns(DEFENDER) return temp end

function GetWarMachine(side, typ)
	local units = GetWarMachines(side)
	for index, unit in units do
		if GetWarMachineType(unit) == typ then
			return unit
		end
	end
	return nil
end
function GetAttackerWarMachine(typ) local temp = GetWarMachine(ATTACKER, typ) return temp end
function GetDefenderWarMachine(typ) local temp = GetWarMachine(DEFENDER, typ) return temp end

function GetBuilding(side, typ)
	local units = GetBuildings(side)
	for index, unit in units do
		if GetBuildingType(unit) == typ then
			return unit
		end
	end
	return nil
end
function GetAttackerBuilding(typ) local temp = GetBuilding(ATTACKER, typ) return temp end
function GetDefenderBuilding(typ) local temp = GetBuilding(DEFENDER, typ) return temp end


function createCombatAliases()
    --
    -- abilitiy IDs
    --
    ABILITY_BATTLE_DIVE = 15;
    ABILITY_BATTLE_DIVE_FINISH = 27;
    ABILITY_LAY_HANDS = 16;
    ABILITY_RESURRECT_ALLIES = 17;
    ABILITY_SCATTER_SHOT = 14;
    -- Inferno
    ABILITY_GATING = 155;
    ABILITY_FEAR = 143;
    ABILITY_SUMMON_BALOR = 146;
    ABILITY_EXPLOSION = 147;
    ABILITY_EXPLOSION_EFFECT = 148;
    ABILITY_CHAIN_SHOT_END_EFFECT = 150;
    ABILITY_MANA_DESTROY = 160;
    ABILITY_MANA_STEAL = 157;
    ABILITY_TELEPORTING_MOVE = 163;
    -- Necropolis
    ABILITY_LIFE_DRAIN = 168;
    ABILITY_MANA_DRAIN = 169;
    ABILITY_DEATH_CLOUD = 170;
    ABILITY_HARM_TOUCH = 171;


	BUILDING_WALL = 1
	BUILDING_GATE = 2
	BUILDING_LEFT_TOWER = 3
	BUILDING_BIG_TOWER = 4
	BUILDING_MOAT = 5
	BUILDING_RIGHT_TOWER = 6
	BUILDING_MAGIC_WALL = 7

    --
    -- Animation Action Types
    --
    --INVISIBLE = 0
    IDLE = 1
    ONESHOT_STILL = 2
    ONESHOT = 3
    --MOVE = 4
    NON_ESSENTIAL = 5

    --
    -- dumb command aliasing
    --
    ExecConsoleCommand = consoleCmd

    ShowCombatHighlighting = showHighlighting;

    MoveCombatUnit = commandMove;
    AttackCombatUnit = commandMoveAttack;
    ShootCombatUnit = commandShot;
    UseCombatAbility = commandDoSpecial;
    DefendCombatUnit = commandDefend;
    GetCombatPosition = pos;
    SetCombatPosition = displace;
    IsCombatUnit = exist;
    AddCombatUnit = addUnit;
    RemoveCombatUnit = removeUnit;
end

function createTutorialAliases()
    -- tutorials
    --ShowTutorialMode = toggleTutorialMode
    --HideTutorialMode = toggleTutorialMode
    ShowTutorialMessage = showMessage;
    HideTutorialMessage = clearMessage;
end

dofile("/scripts/H55-Combat.lua")

function Prepare() end

function DoPrepare()
	C55_CombatPrepare()
	Prepare()
	return nil
end;

function Start() end

function DoStart()
	C55_CombatStart()
	Start()
	return nil
end;

function AttackerHeroMove(heroName) return nil end
function AttackerCreatureMove(creatureName) return nil end
function AttackerWarMachineMove(warMachineName) return nil end
function DefenderHeroMove(heroName) return nil end
function DefenderCreatureMove(creatureName) return nil end
function DefenderWarMachineMove(warMachineName) return nil end
function DefenderBuildingMove(buildingName) return nil end

function AttackerUnitMove(unitName)
	local temp = nil
	if IsHero(unitName) then
		temp = AttackerHeroMove(unitName)
	elseif IsCreature(unitName) then
		temp = AttackerCreatureMove(unitName)
	elseif IsWarMachine(unitName) then
		temp = AttackerWarMachineMove(unitName)
	elseif IsBuilding(unitName) then
		temp = DefenderBuildingMove(unitName)
	end
	return temp
end;

function DefenderUnitMove(unitName)
	local temp = nil
	if IsHero(unitName) then
		temp = DefenderHeroMove(unitName)
	elseif IsCreature(unitName) then
		temp = DefenderCreatureMove(unitName)
	elseif IsWarMachine(unitName) then
		temp = DefenderWarMachineMove(unitName)
	elseif IsBuilding(unitName) then
		temp = DefenderBuildingMove(unitName)
	end
	return temp
end;

function UnitMove(unitName)
	local temp = nil	
	C55_Combat(unitName)		
	if IsAttacker(unitName) then
		temp = AttackerUnitMove(unitName)
	elseif IsDefender(unitName) then
		temp = DefenderUnitMove(unitName)
	end
	return temp
end

function AttackerHeroDeath(heroName) end
function AttackerCreatureDeath(creatureName) end
function AttackerWarMachineDeath(warMachineName) end
function AttackerSpellSpawnDeath(buildingName) end
function DefenderHeroDeath(heroName) end
function DefenderCreatureDeath(creatureName) end
function DefenderWarMachineDeath(warMachineName) end
function DefenderBuildingDeath(buildingName) end
function DefenderSpellSpawnDeath(buildingName) end

function AttackerUnitDeath(unitName)
	if IsHero(unitName) then
		AttackerHeroDeath(unitName)
	elseif IsCreature(unitName) then
		AttackerCreatureDeath(unitName)
	elseif IsWarMachine(unitName) then
		AttackerWarMachineDeath(unitName)
	elseif IsBuilding(unitName) then
		DefenderBuildingDeath(unitName)
	elseif IsSpellSpawn(unitName) then
		AttackerSpellSpawnDeath(unitName)
	end
end

function DefenderUnitDeath(unitName)
	if IsHero(unitName) then
		DefenderHeroDeath(unitName)
	elseif IsCreature(unitName) then
		DefenderCreatureDeath(unitName)
	elseif IsWarMachine(unitName) then
		DefenderWarMachineDeath(unitName)
	elseif IsBuilding(unitName) then
		DefenderBuildingDeath(unitName)
	elseif IsSpellSpawn(unitName) then
		DefenderSpellSpawnDeath(unitName)
	end
end

function UnitDeath(unitName)
	-- C55_CombatOnDeath(unitName)
	if IsAttacker(unitName) then
		AttackerUnitDeath(unitName)
	elseif IsDefender(unitName) then
		DefenderUnitDeath(unitName)
	end
end
