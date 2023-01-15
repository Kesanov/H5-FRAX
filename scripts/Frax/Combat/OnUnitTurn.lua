
function RestoreMana(unit)
    if GetUnitMaxManaPoints(unit) > 0 then
        local attacker  = IsAttacker(unit)
        local ammo_cart = exist((attacker and 'attacker' or 'defender')..'-warmachine-WAR_MACHINE_AMMO_CART')
        local mana = GetUnitMaxManaPoints(unit) * 0.1 * (ammo_cart and 2 or 1)
        SetUnitManaPoints(unit, GetUnitManaPoints(unit) + (0.5 + mana))
    end
end