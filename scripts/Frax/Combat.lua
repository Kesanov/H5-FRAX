dofile('/scripts/Frax/Values.lua')
dofile('/scripts/Frax/Tables.lua')
dofile('/scripts/Frax/Combat/_CombatVars.lua')
dofile('/scripts/Frax/Combat/_CombatFunctions.lua')
dofile('/scripts/Frax/Combat/CreatureAbilityTables.lua')
dofile('/scripts/Frax/Combat/HeroSpecTables.lua')
dofile('/scripts/Frax/Combat/OnUnitTurn.lua')
dofile('/scripts/Frax/Combat/OnUnitDeath.lua')


function Fx_CombatPrepare()

end


function Fx_CombatStart()
	for _, unit in GetUnits(ATTACKER, CREATURE) do
		Fx_StackSize[unit] = GetCreatureNumber(unit)
	end
	for _, unit in GetUnits(DEFENDER, CREATURE) do
		Fx_StackSize[unit] = GetCreatureNumber(unit)
	end
end

function Fx_Combat(unit)
	local side = GetUnitSide(unit)
	local hero = GetHero(side) and GetHeroName(GetHero(side)) or 'None'
	local ennemy_hero = GetHero(1 - side) and GetHeroName(GetHero(1 - side)) or 'None'

	Fx_PreviousUnit_Side = Fx_CurrentUnit_Side
	Fx_PreviousUnit_Mana = Fx_CurrentUnit_Mana
	Fx_PreviousUnit = Fx_CurrentUnit
	Fx_PreviousUnitOnSide[Fx_PreviousUnit_Side] = Fx_PreviousUnit

	Fx_CurrentUnit_Side = side
	Fx_CurrentUnit_Mana = GetUnitManaPoints(unit)
	Fx_CurrentUnit = unit


	if IsCreature(unit) then
		RestoreMana(unit)
		local type = Fx_CreaturesInv[GetCreatureType(unit)]

		if Fx_Spec_Name_15[hero] then
			if type[1] == 5 and type[2] == 4 then
				RestoreMana(unit)
			end
		end

	end


	if IsHero(unit) then

	end
	

	local last_unit_used_mana = Fx_PreviousUnit_Mana - GetUnitManaPoints(Fx_PreviousUnit)
	if last_unit_used_mana > 0 then
		local hero_on_side = GetHero(Fx_PreviousUnit_Side) and GetHeroName(GetHero(Fx_PreviousUnit_Side)) or 'None'
		local hero_other_side = GetHero(1 - Fx_PreviousUnit_Side) and GetHeroName(GetHero(1 - Fx_PreviousUnit_Side)) or 'None'

		if Fx_Spec_Name_13[hero_other_side] then
			SetUnitManaPoints(hero_other_side, GetUnitManaPoints(hero_other_side) + last_unit_used_mana)
		end

		if Fx_Spec_Name_14[hero_on_side] then
			if Fx_PreviousUnit == GetHero(Fx_PreviousUnit_Side) then
				SetUnitManaPoints(hero_other_side, math.max(0, GetUnitManaPoints(hero_other_side) - last_unit_used_mana))
		end

		if Fx_Spec_Name_15[hero_on_side] then
			if IsCreature(Fx_PreviousUnit) then
				local previous_creature_type = Fx_CreaturesInv[GetCreatureType(Fx_PreviousUnit)]
				if previous_creature_type[1] == 5 and previous_creature_type[2] == 4 then
					SetUnitManaPoints(hero_other_side, math.max(0, GetUnitManaPoints(hero_other_side) - last_unit_used_mana))
				end
			end
		end
	end

end

function Fx_CombatOnDeath(unit)
	local side = GetUnitSide(unit)
	local hero = GetHero(side) and GetHeroName(GetHero(side)) or 'None'
	local ennemy_hero = GetHero(1 - side) and GetHeroName(GetHero(1 - side)) or 'None'
	
	if IsCreature(unit) then
		local x, y = GetUnitPosition(unit)
		
		if Fx_StackSize[unit] then
			if Fx_MasterOfElements[hero] then
				OnUnitDeath_SummonElementals(side, unit, x, y)
			end
			if Fx_MasterOfDeath[hero] then
				OnUnitDeath_ReviveIt(side, unit, x, y)
			end
			if Fx_Frenzy[hero] then
				OnUnitDeath_BoostAtb(Fx_CurrentUnit)
			end
			if Fx_Spec_Name_01[hero] then
				OnUnitDeath_SummonLastActor(side, unit, x, y)
			end
			if Fx_Spec_Name_07[ennemy_hero] then
				OnUnitDeath_SummonUndead(1 - side, unit, x, y)
			end
			if Fx_Spec_Name_08[ennemy_hero] then
				OnUnitDeath_SummonLastActor(1 - side, unit, x, y)
			end
			if Fx_Spec_Name_09[ennemy_hero] then
				OnUnitDeath_KillerCastDash()
			end
			if Fx_Spec_Name_10[ennemy_hero] then
				OnUnitDeath_BoostAtb(ennemy_hero)
			end
			if Fx_Spec_Name_11[ennemy_hero] then
				OnUnitDeath_HeroCastSpell(ennemy_hero, Fx_CurrentUnit, SPELL_VAMPIRISM)
			end

			
			for _, u in GetUnits(1 - side, CREATURE) do
				if Fx_Enrage[GetCreatureType(u)] then
					OnUnitDeath_BoostAtb(u)
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

