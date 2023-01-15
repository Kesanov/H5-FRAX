
function OnUnitDeath_BoostAtb(unit)
    setATB(unit, 1)
end

function OnUnitDeath_ReviveIt(side, unit, x, y)
    local unitType = GetCreatureType(unit)
    local size = 0.2 * Fx_StackSize[unit]
    DelayedSummonCreature(side, unitType, size, x, y, 50)
end

function OnUnitDeath_SummonElementals(side, unit, x, y)
    local unitType = GetCreatureType(unit)
    local type = Fx_CreaturesInv[unitType]
    local size = 0.2 * Fx_StackSize[unit] * Fx_Growth[type[1]][type[2]] / Fx_Growth[9][1]
    DelayedSummonCreature(side, 85 + math.random(4), size, x, y, 50)
end

function OnUnitDeath_SummonLastActor(side, unit, x, y)
    local unitType = GetCreatureType(unit)
    local type = Fx_CreaturesInv[unitType]
    local unitType2 = GetCreatureType(Fx_PreviousUnitOnSide[side])
    local type2 = Fx_CreaturesInv[unitType2]
    local size = 0.2 * Fx_StackSize[unit] * Fx_Growth[type[1]][type[2]] / Fx_Growth[type2[1]][type2[2]]
    DelayedSummonCreature(side, unitType2, size, x, y, 50)
end

function OnUnitDeath_SummonUndead(side, unit, x, y)
    local unitType = GetCreatureType(unit)
    local type = Fx_CreaturesInv[unitType]
    local unitType2 = Fx_Creatures[4, type[2], type[3]]
    local type2 = Fx_CreaturesInv[unitType2]
    local size = 0.2 * Fx_StackSize[unit] * Fx_Growth[type[1]][type[2]] / Fx_Growth[type2[1]][type2[2]]
    DelayedSummonCreature(side, unitType2, size, x, y, 50)
end

function OnUnitDeath_KillerCastDash()
    UseCombatAbility(Fx_CurrentUnit, SPELL_ABILITY_DASH)
end

function OnUnitDeath_HeroCastSpell(hero, target, spell)
    if GetUnitManaPoints(hero) >= Fx_SpellManaCost[spell] then
        UnitCastAimedSpell(hero, spell, target)
    end
end
