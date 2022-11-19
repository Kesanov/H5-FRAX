
function Fx_MissionEnd(hero, missionName)
	LOG = {'Fx_MissionEnd', hero}
	
	Fx_Lock = 1
	
	for _, stat in {STAT_ATTACK, STAT_DEFENCE, STAT_SPELL_POWER, STAT_KNOWLEDGE} do
		local amount = 0
		for _, num in Fx_Stats[stat][hero] do
			if not (-1 < amount and amount < 1) then
				amount = amount + num
			end
		end
		SetGameVar(missionName..'.Stat.'..hero..'.'..stat, amount)
	end

	for circle, owners in Fx_SpellOwners do
		for _, skill in Fx_MagicSkills do
			local name = missionName..'.SpellOwner.'..circle..'.'..hero..'.'..skill
			SetGameVar(name, owners[hero][skill] and '1' or '0')
		end
	end
end


function Fx_MissionStart(hero, previousMissionName)	
	LOG = {'Fx_MissionStart', hero}

	for _, stat in {STAT_ATTACK, STAT_DEFENCE, STAT_SPELL_POWER, STAT_KNOWLEDGE} do
		Fx_ChangeStat(hero, stat, 0 + GetGameVar(previousMissionName..'.Stat.'..hero..'.'..stat))
	end

	for circle, owners in Fx_SpellOwners do
		for _, skill in Fx_MagicSkills do
			local name = previousMissionName..'.SpellOwner.'..circle..'.'..hero..'.'..skill
			owners[hero][skill] = GetGameVar(name) == '1'
		end
	end
end