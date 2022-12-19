dofile('/scripts/Frax/Values.lua')
dofile('/scripts/Frax/Tables.lua')

Fx_MasterOfElements = { ['Bart'] = 1, ['Zehir'] = 1, ['Vaniel'] = 1 }
Fx_Enrage = {
	[CREATURE_FOOTMAN] = 1,
	[CREATURE_SWORDSMAN] = 1,
	[CREATURE_VINDICATOR] = 1,

	[CREATURE_DEMON] = 1,
	[CREATURE_HORNED_DEMON] = 1,
	[CREATURE_HORNED_LEAPER] = 1,

	[CREATURE_WALKING_DEAD] = 1,
	[CREATURE_ZOMBIE] = 1,
	[CREATURE_DISEASE_ZOMBIE] = 1,

	[CREATURE_TREANT] = 1,
	[CREATURE_TREANT_GUARDIAN] = 1,
	[CREATURE_ANGER_TREANT] = 1,

	[CREATURE_STONE_GARGOYLE] = 1,
	[CREATURE_OBSIDIAN_GARGOYLE] = 1,
	[CREATURE_MARBLE_GARGOYLE] = 1,

	[CREATURE_RIDER] = 1,
	[CREATURE_BEAR_RIDER] = 1,
	[CREATURE_WHITE_BEAR_RIDER] = 1,

	[CREATURE_ORC_WARRIOR] = 1,
	[CREATURE_ORC_SLAYER] = 1,
	[CREATURE_ORC_WARMONGER] = 1,
}


function Fx_CombatPrepare()

end

Fx_StackSize = {}
function Fx_CombatStart()
	for _, unit in GetUnits(ATTACKER, CREATURE) do
		Fx_StackSize[unit] = GetCreatureNumber(unit)
	end
	for _, unit in GetUnits(DEFENDER, CREATURE) do
		Fx_StackSize[unit] = GetCreatureNumber(unit)
	end
end

Fx_Skip = 'None'
function Fx_Combat(unit)
	local attacker  = IsAttacker(unit)
	local ammo_cart = exist((attacker and 'attacker' or 'defender')..'-warmachine-WAR_MACHINE_AMMO_CART')
	
	if Fx_Skip ~= 'None' then
		Fx_Skip = 'None'
		return 
	end

	if IsCreature(unit) then
		if GetUnitMaxManaPoints(unit) > 0 then
			local mana = GetUnitMaxManaPoints(unit) * 0.1 * (ammo_cart and 2 or 1)
			SetUnitManaPoints(unit, GetUnitManaPoints(unit) + (0.5 + mana))
			Fx_Skip = unit
		end
	end
end

function DelayedSummonCreature(side, type, size, x, y, delay)
 	if size < 1 then return end
	function Summon(side, type, size, x, y, delay)
		sleep(delay)
		SummonCreature(side, type, size, x, y)
	end
	startThread(Summon, side, type, size, x, y, delay)
end

function Fx_CombatOnDeath(unit)
	local side = GetUnitSide(unit)
	local hero = GetHero(side) and GetHeroName(GetHero(side)) or 'None'
	
	if IsCreature(unit) then
		local unitType = GetCreatureType(unit)
		local x, y = GetUnitPosition(unit)
		if Fx_StackSize[unit] then
			--- MASTER OF ELEMENTS ---
			if Fx_MasterOfElements[hero] then
				local type = Fx_CreaturesInv[unitType]
				local size = 0.2 * Fx_StackSize[unit] * Fx_Growth[type[1]][type[2]] / Fx_Growth[9][1]
				DelayedSummonCreature(side, 85 + math.random(4), size, x, y, 50)
			end

			----- MASTER OF DEATH ---
			--if Fx_MasterOfDeath[hero] then
			--	local type = Fx_CreaturesInv[unitType]
			--	local size = 0.2 * Fx_StackSize[unit]
			--	DelayedSummonCreature(side, unitType, size, x, y, 50)
			--end

			----- FRENZY ---
			--if Fx_Frenzy[hero] then
			--	setATB(Fx_LastPlayed[1-side], 1)
			--end

			--- SOUL EATER ---
			local ghosts = 0
			for _, u in GetUnits(1 - side, CREATURE) do
				if GetCreatureType(u) == CREATURE_POLTERGEIST and Fx_StackSize[u] then
					ghosts = ghosts + 0.2 * GetCreatureNumber(u)
				end
			end
			DelayedSummonCreature(1 - side, CREATURE_POLTERGEIST, ghosts, x, y, 50)

			--- ENRAGE ---
			for _, u in GetUnits(1 - side, CREATURE) do
				if Fx_Enrage[GetCreatureType(u)] then
					setATB(u, 1)
				end
			end

		else
			--if unitType == CREATURE_BLACK_KNIGHT then
			--	UseCombatAbility(GetHero(side), SPELL_ABILITY_AVATAR_OF_DEATH)
			--end
			--if unitType == CREATURE_PHOENIX and GetUnitManaPoints(GetHero(side)) >= 10 then
			--	SetUnitManaPoints(GetHero(side), GetUnitManaPoints(GetHero(side)) + 10)
			--	sleep(1)
			--	UnitCastGlobalSpell(HetHero(side), SPELL_CONJURE_PHOENIX)
			--end
		end
	end
end

