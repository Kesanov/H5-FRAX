-----------------------------------------------------------------------------------
----- SUPPORT FUNCTIONS -----------------------------------------------------------
-----------------------------------------------------------------------------------

function Update(table, key, value)
	if table[key] == value then
		return nil
	else
		table[key] = value
		return not nil
	end
end

function Nums(b)
	local x = {}
	for i = 1,b do
		x[i] = i
	end
	return x
end

function Map(keys)
	function run(keys, index)
		if index == length(keys) + 1 then
			return {}
		end
		local map = {}
		for _, key in keys[index] do
			map[key] = run(keys, index+1)
		end
		return map
	end
	local x = run(keys, 1)
	return x
end

function Fx_IsThisAIPlayer(player)
	return H55_PlayerStatus[player] == 1
end

function Display(player, object, text)
	-- if not Fx_IsThisAIPlayer(player) then
	-- 	sleep(2)
	-- 	ShowFlyingSign(text, object, player, 5)
	-- 	sleep(8)
	-- end
end

IsUtilityExe = GiveHeroBattleBonus and 1 or 0

NumPlayers = 8
NumStats = 8

Haven = 1
Sylvan = 2
Inferno = 3
Necropolis = 4
Academy = 5
Dungeon = 6
Fortress = 7
Stronghold = 8

LOG = {}

Fx_Curses = 0
Fx_Lock = 0


Fx_DarkRitual = {}

Fx_Battle = Map({{0,1}})
Fx_Gifts = Map({Fx_Heroes})
Fx_Resources = Map({Nums(NumPlayers)})
Fx_SpellOwners = Map({Nums(5), Fx_Heroes})
Fx_Stats = Map({Nums(NumStats), Fx_Heroes})
Fx_GovernorBonuses = Map({Nums(NumPlayers)})
Fx_PlayerUltimates = Map({Nums(NumPlayers)})
Fx_BattleBonus = Map({Nums(NumStats)})

function Fx_GetDistance(object1,object2)
	local x1,y1,z1 = GetObjectPosition(object1)
	local x2,y2,z2 = GetObjectPosition(object2)
	return sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)) + ((z1 == z2) and 0 or 1000)
end

function Fx_ChangeStat(hero, stat, amount)
	if -1 < amount and amount < 1 then return end
	ChangeHeroStat(hero, stat, amount)
end

function Fx_ChangeStatOn(hero, skill, stat, amount)
	Fx_ChangeStat(hero, stat, amount - (Fx_Stats[stat][hero][skill] or 0))
	Fx_Stats[stat][hero][skill] = amount

end

function ScaleStatOn(hero, skill, stat, amount)
	Fx_ChangeStatOn(hero, skill, stat, amount * (GetHeroStat(hero, stat) - (Fx_Stats[stat][hero][skill] or 0)))
end

function Fx_ChangeStatOnSkill(hero, skill, stat, amount)
	Fx_ChangeStatOn(hero, skill, stat, amount * GetHeroSkillMastery(hero, skill))
end


function Fx_ArtefactCount(hero, equip, artifacts)
	local count = 0
	for _, artifact in artifacts do
		count = count + (HasArtefact(hero, artifact, equip) or 0)
	end
	return count
end

function Fx_PerkCount(hero, perks)
	local count = 0
	for _, perk in perks do
		count = count + (HasHeroSkill(hero, perk) or 0)
	end
	return count
end

Fx_HeroUltimates = {}

function Fx_GiveArtefacts(hero, artefacts)
	for _, artefact in artefacts do
		GiveArtefact(hero, artefact)
	end
end


function Fx_OfferUltimates(player, hero)
	LOG = {'Fx_OfferUltimates', player, hero}

	if Fx_PerkCount(hero, Fx_Ultimates) >= 1 or Fx_PerkCount(hero, Fx_Skills) >= 8 then
		return
	end

	if Fx_IsThisAIPlayer(player) then
		local race = H55_GetHeroRaceNum(hero)
		if not Fx_HeroUltimates[hero] and GetHeroLevel(hero) >= 15 then
			Fx_GiveUltimate(player, hero, Fx_UltimatesAI[race==8 and 4+random(10) or race==4 and 1+random(10) or 1+random(12)])
		end
		return
	end

	local skills, count = {}, 0
	for _, skill in Fx_Skills do
		if GetHeroSkillMastery(hero, skill) + Fx_PerkCount(hero, Fx_Perks[skill]) >= 5 then
			count = count + 1
			if not Fx_PlayerUltimates[player][skill] then
				skills[length(skills)] = skill
			end
		end
	end

	local N = length(skills)
	if count >= 5 and N >= 2 then
		local r1, r2 = random(N), 1+random(N-1)
		Fx_ChooseUltimate(player, hero, skills[r1], skills[mod(r1 + r2, N)])
		return 1
	end
	return nil
end

function Fx_ChooseUltimate(player, hero, s1, s2)
	LOG = {'Fx_ChooseUltimate', player, hero, s1, s2}

	local t1, t2 = Fx_UltimateText[s1], Fx_UltimateText[s2]
	QuestionBoxForPlayers(GetPlayerFilter(player),
		{"/Text/Game/Scripts/Ultimates/OfferUltimates.txt"; name1=t1[1],name2=t2[1],text1=t1[2],text2=t2[2]},
		"Fx_GiveUltimate("..player..",'"..hero.."',"..s1..")",
		"Fx_GiveUltimate("..player..",'"..hero.."',"..s2..")"
	)
end


function Fx_GiveUltimate(player, hero, skill)
	LOG = {'Fx_GiveUltimate', player, hero, skill}

	Fx_HeroUltimates[hero] = skill
	Fx_PlayerUltimates[player][skill] = 1
	local ultimate = Fx_Ultimates[skill]
	GiveHeroSkill(hero, ultimate)
	GiveHeroSkill(hero, ultimate)
	GiveHeroSkill(hero, ultimate)
	if skill == SKILL_LOGISTICS then
		Fx_Gifts[hero][ARTIFACT_ANGEL_WINGS] = 1
	elseif skill == SKILL_LEARNING then
		TeachHeroSpell(hero,SPELL_MASS_HASTE)
		TeachHeroSpell(hero,SPELL_MASS_BLOODLUST)
		TeachHeroSpell(hero,SPELL_MASS_DISPEL)
		TeachHeroSpell(hero,SPELL_MASS_STONESKIN)
		TeachHeroSpell(hero,SPELL_MASS_BLESS)
		TeachHeroSpell(hero,SPELL_MASS_DEFLECT_ARROWS)

		TeachHeroSpell(hero,SPELL_MASS_SLOW)
		TeachHeroSpell(hero,SPELL_MASS_FORGETFULNESS)
		TeachHeroSpell(hero,SPELL_MASS_DISRUPTING_RAY)
		TeachHeroSpell(hero,SPELL_MASS_WEAKNESS)
		TeachHeroSpell(hero,SPELL_MASS_CURSE)
		TeachHeroSpell(hero,SPELL_MASS_PLAGUE)

		TeachHeroSpell(hero, SPELL_WARCRY_RALLING_CRY)
		TeachHeroSpell(hero, SPELL_WARCRY_CALL_OF_BLOOD)
		TeachHeroSpell(hero, SPELL_WARCRY_WORD_OF_THE_CHIEF)
		TeachHeroSpell(hero, SPELL_WARCRY_FEAR_MY_ROAR)
		TeachHeroSpell(hero, SPELL_WARCRY_BATTLECRY)
		TeachHeroSpell(hero, SPELL_WARCRY_SHOUT_OF_MANY)
	elseif skill == SKILL_WAR_MACHINES then
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_CHARGE)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_BERSERKING)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_MAGIC_CONTROL)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_EXORCISM)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_ELEMENTAL_IMMUNITY)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_STUNNING)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_BATTLERAGE)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_ETHEREALNESS)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_REVIVE)
		-- TeachHeroSpell(hero, SPELL_RUNE_OF_DRAGONFORM)
	elseif skill == SKILL_DEFENCE then
		sleep(1)
		GiveHeroSkill(hero, SKILL_SEAL_OF_PROTECTION)
	end
end

function Fx_GetHeroDragonblood(hero)
	LOG = {'Fx_GetHeroDragonblood', hero}

	local amount = 0

	amount = amount +  5 * (hero == "Xerxon" or 0)
	amount = amount + 10 * (hero == "Menel" or 0)
	amount = amount + 10 * (hero == "Thant" or 0)
	amount = amount + 10 * (hero == "Melodia" or 0)
	amount = amount + 10 * (hero == "Emilia" or 0)
	amount = amount + 10 * (hero == "Kunyak" or 0)
	amount = amount + 10 * (hero == "KingTolghar" or 0)
	amount = amount + 10 * (hero == "Calid2" or 0)
	amount = amount + 10 * (hero == "RedHeavenHero03" or 0)

	if H55_Governors[hero] then
		amount = amount + 2 * (GetHeroSkillMastery(hero, SKILL_DARK_MAGIC) == 3 or 0)
		amount = amount + 2 * (GetHeroSkillMastery(hero, SKILL_LIGHT_MAGIC) == 3 or 0)
		amount = amount + 2 * (GetHeroSkillMastery(hero, SKILL_SUMMONING_MAGIC) == 3 or 0)
		amount = amount + 2 * (GetHeroSkillMastery(hero, SKILL_DESTRUCTIVE_MAGIC) == 3 or 0)
	end


	if HasArtefact(hero, ARTIFACT_ELRATH_02, 0) then
		local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE)
		knowledge = knowledge + 10 * (HasArtefact(hero,ARTIFACT_CROWN_OF_COURAGE,1) or 0)
		knowledge = knowledge +  5 * (HasArtefact(hero,ARTIFACT_VALORIOUS_ARMOR,1) or 0)
		amount = amount + math.round(knowledge/2)
	end
	
	if HasArtefact(hero,ARTIFACT_BAND_OF_CONJURER,0) then
		local factor = GetHeroStat(hero,STAT_KNOWLEDGE)
		local coef = ((100+(factor*2))/100)
		amount = math.round(coef*amount)
	end
	
	amount = GetHeroLevel(hero)*amount
	return amount
end

function Fx_GetPlayerDragonblood(player)
	local dragonblood = 0
	for i,hero in (GetPlayerHeroes(player) or {}) do
		dragonblood = dragonblood + Fx_GetHeroDragonblood(hero)
	end
	return dragonblood > 600 and 600 or dragonblood
end


function Fx_ResurrectArmy(player,hero,ci,side,baseperc)
	LOG = {'Fx_ResurrectArmy', player, hero, ci, side, baseperc}

	local stackscount = GetSavedCombatArmyCreaturesCount(ci,side)
	for i = 0,stackscount-1,1 do
		creature,cnt,died = GetSavedCombatArmyCreatureInfo(ci,side,i)
		local resurrect = math.min(died, cnt*baseperc)
		if resurrect >= 1 then
			AddHeroCreatures(hero,creature,resurrect)
			Display(player, hero, {"/Text/Game/Scripts/Resurrection.txt"; num=resurrect, tier=Fx_CreaturesInv[creature][2]})
		end
	end
end

function Fx_Diplomacy(player, hero,ci,side,percent)
	LOG = {'Fx_Diplomacy', hero, ci, side, percent}

	local stackscount = GetSavedCombatArmyCreaturesCount(ci,side)
	for i = 0,stackscount-1 do
		local creature,cnt,died = GetSavedCombatArmyCreatureInfo(ci,side,i)
		if died * percent >= 1 then
			AddHeroCreatures(hero,creature,died*percent)
		end
	end
end


function Fx_Reinforce(player, hero, town, tier, growth)
	LOG = {'Fx_Reinforce', player, hero, town, tier, growth}

	if growth < 1 then return end
	for creature, _ in Fx_HeroArmy(hero) do
		if table.contains(Fx_Creatures[town][tier], creature) then
			AddHeroCreatures(hero,creature,growth)
			return
		end
	end
end

function Fx_SpecReinforce(player, hero, town, tier, coef)
	LOG = { 'Fx_SpecReinforce', player, hero, town, tier, coef}

	if coef < 0.1 then return end
	local level = GetHeroLevel(hero)
	local multiplier = 0.6 + 0.4 * length(H55_GetPlayerTowns(player))
	local growth = math.floor(multiplier*coef*level*Fx_CreaturesGrowthReal[town][tier]);
	Fx_Reinforce(player, hero, town, tier, growth)
end

function Fx_DailyReinforcements(player, hero)
	if GetHeroLevel(hero) >= 1 then
		Fx_Reinforce(player, hero, Inferno, 1, HasHeroSkill(hero,SKILL_SPOILS_OF_WAR) or 0)
		Fx_Reinforce(player, hero, Fortress, 1, HasHeroSkill(hero,SKILL_DEMONIC_FLAME) or 0)
		Fx_Reinforce(player, hero, Stronghold, 3, HasHeroSkill(hero,SKILL_DEFEND_US_ALL) or 0)
		Fx_Reinforce(player, hero, Academy, 3, HasHeroSkill(hero,SKILL_MARCH_OF_THE_MACHINES) or 0)
		Fx_Reinforce(player, hero, Sylvan, 3, HasHeroSkill(hero,SKILL_FOREST_GUARD_EMBLEM) or 0)
	end
end

function Fx_WeeklyReinforcements(player, hero)
	local N = 0.07

	Fx_SpecReinforce(player, hero, Stronghold, 1, N * (hero == "Hero9" or 0))
	Fx_SpecReinforce(player, hero, Haven, 1, N * (hero == "Nathaniel" or 0))
	Fx_SpecReinforce(player, hero, Inferno, 1, N * (hero == "Calh" or 0))
	Fx_SpecReinforce(player, hero, Necropolis, 1, N * (hero == "Nimbus" or 0))
	Fx_SpecReinforce(player, hero, Sylvan, 1, N * (hero == "Gem" or 0))
	Fx_SpecReinforce(player, hero, Necropolis, 2, N/2 * (hero == "Straker" or 0))
	Fx_SpecReinforce(player, hero, Academy, 2, N * (hero == "Gurvilin" or 0))
	Fx_SpecReinforce(player, hero, Haven, 3, N/2 * (hero == "Mardigo" or 0))
	Fx_SpecReinforce(player, hero, Academy, 3, N/2 * (hero == "Isher" or 0))
	Fx_SpecReinforce(player, hero, Necropolis, 3, N * (hero == "Nemor" or 0))
	Fx_SpecReinforce(player, hero, Dungeon, 4, N/2 * (hero == "Ferigl" or 0))
	Fx_SpecReinforce(player, hero, Dungeon, 3, N/2 * (hero == "Darkstorm" or 0))
	Fx_SpecReinforce(player, hero, Sylvan, 4, N * (hero == "Ildar" or 0))
	Fx_SpecReinforce(player, hero, Fortress, 4, N * (hero == "Maximus" or 0))
	Fx_SpecReinforce(player, hero, Stronghold, 4, N * (hero == "Hero7" or 0))
	Fx_SpecReinforce(player, hero, Academy, 5, N * (hero == "Cyrus" or 0))
	Fx_SpecReinforce(player, hero, Haven, 5, N * (hero == "GodricMP" or 0))
	Fx_SpecReinforce(player, hero, Necropolis, 5, N * (hero == "Vidomina" or 0))
	Fx_SpecReinforce(player, hero, Academy, 6, N * (hero == "Davius" or 0))
	Fx_SpecReinforce(player, hero, Dungeon, 6, N * (hero == "Shadwyn" or 0))
	Fx_SpecReinforce(player, hero, Inferno, 6, N * (hero == "Malustar" or 0))
	Fx_SpecReinforce(player, hero, Fortress, 6, N * (hero == "Ufretin" or 0))
	Fx_SpecReinforce(player, hero, Necropolis, 6, N * (hero == "Pelt" or 0))
	Fx_SpecReinforce(player, hero, Haven, 7,  N * (hero == "Nicolai" or 0))
	Fx_SpecReinforce(player, hero, Academy, 7,  N * (hero == "Rissa" or 0))
	Fx_SpecReinforce(player, hero, Sylvan, 7,  N * (hero == "Jenova" or 0))
	Fx_SpecReinforce(player, hero, Fortress, 7, N * (hero == "Hangvul2" or 0))
	Fx_SpecReinforce(player, hero, Dungeon, 7, N * (hero == "Agbeth" or 0))
	Fx_SpecReinforce(player, hero, Necropolis, 7, N * (hero == "Archilus" or 0))
	Fx_SpecReinforce(player, hero, Inferno, 7, N * (hero == "Harkenraz" or 0))
	Fx_SpecReinforce(player, hero, Stronghold, 7, N * (hero == "GottaiMP" or 0))

	-- TODO exploding corpses ..
	local town = H55_GetHeroRaceNum(hero)
	if HasHeroSkill(hero,SKILL_LORD_OF_UNDEAD) then
		Fx_Reinforce(player, hero, town, 1, GetHeroStat(hero, STAT_KNOWLEDGE))
	end
	if HasHeroSkill(hero,SKILL_EXPLODING_CORPSES) then
		Fx_SpecReinforce(player, hero, town, Fx_Casters[town], 0.05 * GetHeroStat(hero, STAT_KNOWLEDGE))
	end
end


function Fx_HandleVictory(player, hero, ci, side)
	LOG = {'Fx_HandleVictory', player, hero, ci}


	---- RESOURCE ----
	
	if HasHeroSkill(hero, SKILL_FINE_RUNE) then
		local remaining = 5
		for resource, amount in Fx_Resources[hero] do
			local refund = math.min(remaining, math.max(0, amount - GetPlayerResource(player, resource)))
			H55_GiveResources(player, resource, refund, hero)
			remaining = remaining - refund
		end
	end

	local resource = 0

	resource = resource + 2 * GetHeroSkillMastery(hero, SKILL_ACADEMY_AWARD)
	resource = resource + 1 * (HasArtefact(hero,ARTIFACT_PIRATE04,1) or 0)

	if resource > 0 then H55_GiveResources(player, random(6), resource, hero) end


	---- GOLD ----

	local gold = 0

	gold = gold + (random(201) + 100) * (HasArtefact(hero,ARTIFACT_PIRATE02,1) or 0)
	gold = gold + 300 * (Fx_GovernorBonuses[player][SKILL_LUCK] or 0)

	if gold > 0 then H55_GiveResources(player, GOLD, gold, hero) end


	---- MANA ----

	local mana = 0.5 * GetHeroStat(hero, STAT_KNOWLEDGE)

	mana = mana +  4 * (HasHeroWarMachine(hero, WAR_MACHINE_AMMO_CART) or 0)
	mana = mana +  3 * (HasArtefact(hero, ARTIFACT_BEGINNER_MAGIC_STICK) or 0)
	mana = mana +  2 * (HasArtefact(hero, ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD) or 0)
	mana = mana +  6 * (HasArtefact(hero, ARTIFACT_CROWN_OF_MAGI) or 0)
	mana = mana + 12 * (HasArtefact(hero, ARTIFACT_EIGHTFOLD) or 0)
	mana = mana +  8 * (HasArtefact(hero, ARTIFACT_GEAR_03) or 0)
	mana = mana + 12 * (HasArtefact(hero, ARTIFACT_MONK_01) or 0)
	mana = mana +  4 * (HasArtefact(hero, ARTIFACT_MONK_02) or 0)
	mana = mana +  3 * (HasArtefact(hero, ARTIFACT_MONK_04) or 0)
	mana = mana +  6 * (HasArtefact(hero, ARTIFACT_ROBE_OF_MAGI) or 0)
	mana = mana +  2 * (HasArtefact(hero, ARTIFACT_RUNE_OF_FLAME) or 0)
	mana = mana +  5 * (HasArtefact(hero, ARTIFACT_RUNIC_WAR_AXE) or 0)
	mana = mana +  5 * (HasArtefact(hero, ARTIFACT_RUNIC_WAR_HARNESS) or 0)
	mana = mana -  3 * (HasArtefact(hero, ARTIFACT_UPG_ST1) or 0)
	mana = mana +  3 * (HasArtefact(hero, ARTIFACT_UPG_ST2) or 0)

	ChangeHeroStat(hero, STAT_MANA_POINTS, mana)


	---- MOVEMENT ----

	local movement = HasHeroSkill(hero,SKILL_RAISE_ARCHERS) and 100 or 0

	movement = movement - 200 * (3 - GetHeroSkillMastery(hero,SKILL_RUSH)) * GetHeroSkillMastery(hero,SKILL_RUSH)
	movement = movement - 200 * (3 - GetHeroSkillMastery(hero,SKILL_STAMINA)) * GetHeroSkillMastery(hero,SKILL_STAMINA)
	movement = movement + 150 * (HasArtefact(hero,ARTIFACT_PIRATE05,1) or 0)
	movement = movement + 150 * (HasArtefact(hero,ARTIFACT_GUARDIAN_02,1) or 0)
	movement = movement + 500 * (HasArtefact(hero,ARTIFACT_PIRATE01,1) and IsHeroInBoat(hero) or 0)
	movement = movement + 250 * (HasArtefact(hero,ARTIFACT_PIRATE06,1) and IsHeroInBoat(hero) or 0)
	movement = movement + 100 * (Fx_GovernorBonuses[player][SKILL_LOGISTICS] or 0)

	for cr, _ in Fx_HeroArmy(hero) do
		if cr == CREATURE_CLERIC or cr == CREATURE_ORCCHIEF_CHIEFTAIN then
			movement = movement + 100
			break
		end
	end

	ChangeHeroStat(hero, STAT_MOVE_POINTS, movement)


	---- DIPLOMACY ----

	local join = (hero == 'Elleshar' or hero == 'Markal') and 0.1 or 0

	join = join + 0.05 * GetHeroSkillMastery(hero, SKILL_DIPLOMACY)
	join = join + 0.05 * (HasArtefact(hero, ARTIFACT_CROWN_OF_LEADER, 1) or 0)
	join = join + 0.01 * (Fx_GovernorBonuses[player][SKILL_LEADERSHIP] or 0)

	Fx_Diplomacy(player,hero,ci,1-side,join)


	---- RESURRECTION ----

	local resurrect = (hero == "Jeddite" or hero == "Kraal") and 0.05 or 0

	resurrect = resurrect + 0.02 * (HasArtefact(hero,ARTIFACT_LIFE_01,1) or 0)
	resurrect = resurrect + 0.03 * (HasArtefact(hero,ARTIFACT_LIFE_02,1) or 0)
	resurrect = resurrect + 0.03 * (HasArtefact(hero,ARTIFACT_LIFE_03,1) or 0)
	resurrect = resurrect + 0.04 * (HasArtefact(hero,ARTIFACT_LIFE_04,1) or 0)
	resurrect = resurrect + 0.04 * (HasArtefact(hero,ARTIFACT_SANDALS_OF_THE_SAINT,1) or 0)
	resurrect = resurrect + 0.05 * (HasArtefact(hero,ARTIFACT_MEDICAL01,1) or 0)
	resurrect = resurrect + 0.05 * (HasArtefact(hero,ARTIFACT_MEDICAL02,1) or 0)

	resurrect = resurrect + 0.03 * (HasArtefact(hero,ARTIFACT_MEDICAL03,1) or 0)
	resurrect = resurrect + 0.03 * (HasArtefact(hero,ARTIFACT_MEDICAL04,1) or 0)
	resurrect = resurrect + 0.04 * (HasArtefact(hero,ARTIFACT_GEAR_02,1) or 0)

	resurrect = resurrect + 0.02 * GetHeroSkillMastery(hero,SKILL_NO_REST_FOR_THE_WICKED)
	resurrect = resurrect + 0.04 * GetHeroSkillMastery(hero,SKILL_GUARDIAN_ANGEL)

	resurrect = resurrect + 0.02 * (Fx_GovernorBonuses[player][SKILL_WAR_MACHINES] or 0)

	if HasArtefact(hero,ARTIFACT_POTION03,1) then
		RemoveArtefact(hero, ARTIFACT_POTION03)
		resurrect = resurrect + 0.15
	end

	Fx_ResurrectArmy(player,hero,ci,side,resurrect)

end

function Fx_HeroArmy(hero)
	local units, creatures = {}, {}
	units[0], units[1], units[2], units[3], units[4], units[5], units[6] = GetHeroCreaturesTypes(hero)
	for _, unit in units do
		if unit and unit ~= 0 then
			creatures[unit] = GetHeroCreatures(hero,unit)
		end
	end
	return creatures
end

function Fx_ObjectArmy(object)
	local units, creatures = {}, {}
	units[0], units[1], units[2], units[3], units[4], units[5], units[6] = GetObjectCreaturesTypes(object)
	for _, unit in units do
		if unit and unit ~= 0 then
			creatures[unit] = GetObjectCreatures(object,unit)
		end
	end
	return creatures
end

function Fx_FactionsInArmy(hero)
	local factions = {}
	for creature, _ in Fx_HeroArmy(hero) do
		factions[Fx_CreaturesInv[creature][1]] = 1
	end
	return 0 + length(factions)
end

function Fx_CreaturesInArmy(hero, town, tier, upgr)
	local total = 0
	for creature, amount in Fx_HeroArmy(hero) do
		local typ = Fx_CreaturesInv[creature]	
		if (not town or town == typ[1]) and (not tier or tier == typ[2]) and (not upgr or upgr == typ[3]) then
			total = total + amount
		end
	end
	return total
end

function Fx_TeachRandomSpell(player, hero, school, level)
	LOG = {'Fx_TeachRandomSpell', player, hero, school, level}
	
	local spells = Fx_Spells[school][level]
	local N, rnd = length(spells), random(length(spells))
	for i = 1,N do
		if not KnowHeroSpell(hero, spells[mod(rnd+i, N)+1]) then
			Display(player, hero, {"/Text/Game/Scripts/Learnspell.txt"; level=level})
			TeachHeroSpell(hero, spells[mod(rnd+i, N)+1])
			return
		end
	end
end

function Fx_TeachSpellOnSkill(hero, skill, spell)
	if HasHeroSkill(hero, skill) then
		TeachHeroSpell(hero, spell)
	end
end

function Fx_UpdateSpellOwner(hero, skill, circle)
	local x = Update(Fx_SpellOwners[circle][hero], skill, HasHeroSkill(hero, skill))
	return x
end

function Fx_HandleSpells(player, hero)
	LOG = {'Fx_HandleSpells', player, hero}

	if H55_ChieftainsPhonebook[hero] then return end

	Fx_TeachSpellOnSkill(hero, SKILL_SET_AFIRE, SPELL_CONJURE_PHOENIX)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_ICE, SPELL_ICE_BOLT)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_FIRE, SPELL_FIREWALL)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_LIGHTNINGS, SPELL_LIGHTNING_BOLT)
	Fx_TeachSpellOnSkill(hero, SKILL_DEADLY_COLD, SPELL_FROST_RING)

	Fx_TeachSpellOnSkill(hero, SKILL_TWILIGHT, SPELL_REGENERATION)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_BLESSING, SPELL_BLESS)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_ABJURATION, SPELL_STONESKIN)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_WRATH, SPELL_HASTE)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_CURSES, SPELL_CURSE)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_SICKNESS, SPELL_PLAGUE)
	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_MIND, SPELL_FORGETFULNESS)

	Fx_TeachSpellOnSkill(hero, SKILL_MASTER_OF_QUAKES, SPELL_EARTHQUAKE)
	Fx_TeachSpellOnSkill(hero, SKILL_DEAD_LUCK, SPELL_FORGETFULNESS)
	Fx_TeachSpellOnSkill(hero, SKILL_WEAKENING_STRIKE, SPELL_CURSE)
	Fx_TeachSpellOnSkill(hero, SKILL_DEAD_LUCK, SPELL_FORGETFULNESS)
	Fx_TeachSpellOnSkill(hero, SKILL_CUNNING_OF_THE_WOODS, SPELL_MASS_DISRUPTING_RAY)

	Fx_TeachSpellOnSkill(hero, SKILL_PARIAH, SPELL_VAMPIRISM)
end

function Fx_HandleSpellsDaily(player, hero)
	LOG = {'Fx_HandleSpellsDaily', player, hero}

	if Fx_UpdateSpellOwner(hero, SKILL_WISDOM, 4) then
		Fx_TeachRandomSpell(player, hero, Fx_Schools[1+random(4)], 4)
	end
	if Fx_UpdateSpellOwner(hero, SKILL_EAGLE_EYE, 5) then
		Fx_TeachRandomSpell(player, hero, Fx_Schools[1+random(4)], 5)
		Fx_TeachRandomSpell(player, hero, Fx_Schools[1+random(4)], 5)
	end

	for _, school in Fx_Schools do
		local mastery = GetHeroSkillMastery(hero, school)

		if mastery >= 1 then
			TeachHeroSpell(hero, Fx_Spells[school][1][1])
		end
		if mastery >= 2 and Fx_UpdateSpellOwner(hero, school, 1) then
			Fx_TeachRandomSpell(player, hero, school, 1)
		end
		if mastery >= 3 and Fx_UpdateSpellOwner(hero, school, 2) then
			Fx_TeachRandomSpell(player, hero, school, 2)
		end
	end

	if HasHeroSkill(hero,SKILL_SCHOLAR) then
		for _, school in Fx_UnusualSchools[H55_GetHeroRaceNum(hero)] do
			local mastery = GetHeroSkillMastery(hero, school)
			if mastery >= 1 and GetHeroLevel(hero) >= 20 and Fx_UpdateSpellOwner(hero, school, 3) then
				Fx_TeachRandomSpell(player, hero, school, 3)
			end
			if mastery >= 2 and GetHeroLevel(hero) >= 25 and Fx_UpdateSpellOwner(hero, school, 4) then
				Fx_TeachRandomSpell(player, hero, school, 4)
			end
			if mastery >= 3 and GetHeroLevel(hero) >= 30 and Fx_UpdateSpellOwner(hero, school, 5) then
				Fx_TeachRandomSpell(player, hero, school, 5)
			end
		end
	end
end

function Fx_HandleStats(player, hero)
	LOG = {'Fx_HandleStats', player, hero}

	Fx_ChangeStatOnSkill(hero, SKILL_SHATTER_SUMMONING_MAGIC, STAT_DEFENCE, 10/3)
	Fx_ChangeStatOnSkill(hero, SKILL_ABSOLUTE_LUCK, STAT_ATTACK, GetHeroStat(hero, STAT_LUCK) < 5 and -10/3 or 0)
	Fx_ChangeStatOnSkill(hero, SKILL_ABSOLUTE_PROTECTION, STAT_DEFENCE, -6/3)
	Fx_ChangeStatOnSkill(hero, SKILL_WEAKEN_SUMMONING, STAT_ATTACK, -6/3)
	Fx_ChangeStatOnSkill(hero, SKILL_RETRIBUTION, STAT_MORALE, 5/3)
	-- Fx_ChangeStatOnSkill(hero, SKILL_CORRUPT_DARK, STAT_HEALTH, 40/3)

	Fx_ChangeStatOnSkill(hero, SKILL_CUNNING_OF_THE_WOODS, STAT_KNOWLEDGE, 2)
	Fx_ChangeStatOnSkill(hero, SKILL_FOREST_RAGE, STAT_LUCK, 1)
	Fx_ChangeStatOnSkill(hero, SKILL_DEMONIC_FLAME, STAT_DEFENCE, 2)

	Fx_ChangeStatOnSkill(hero, SKILL_POWER_OF_HASTE, STAT_KNOWLEDGE, 1)
	Fx_ChangeStatOnSkill(hero, SKILL_WEAKENING_STRIKE, STAT_SPELL_POWER, 3)

	Fx_ChangeStatOnSkill(hero, SKILL_DEMONIC_FIRE, STAT_SPELL_POWER, 2)
	Fx_ChangeStatOnSkill(hero, SKILL_EMPOWERED_SPELLS, STAT_KNOWLEDGE, 3)
	Fx_ChangeStatOnSkill(hero, SKILL_ELEMENTAL_BALANCE, STAT_SPELL_POWER, 2)

	Fx_ChangeStatOnSkill(hero, SKILL_MASTER_OF_QUAKES, STAT_KNOWLEDGE, 2)
	Fx_ChangeStatOnSkill(hero, SKILL_COUNTERSPELL, STAT_KNOWLEDGE, 7)

	Fx_ChangeStatOnSkill(hero, SKILL_SCHOLAR, STAT_MORALE, Fx_FactionsInArmy(hero))

	if H55_ChieftainsPhonebook[hero] then
		Fx_ChangeStatOnSkill(hero, SKILL_POWER_OF_HASTE, STAT_ATTACK, 3)
		Fx_ChangeStatOnSkill(hero, SKILL_POWER_OF_STONE, STAT_DEFENCE, 3)
		Fx_ChangeStatOnSkill(hero, SKILL_MIGHT_OVER_MAGIC, STAT_ATTACK, GetHeroStat(hero, STAT_SPELL_POWER)/2)
	end

	if not H55_NecropolisPhonebook[hero] then
		Fx_ChangeStatOnSkill(hero, SKILL_CHILLING_BONES, STAT_DEFENCE, 4)
		Fx_ChangeStatOnSkill(hero, SKILL_NECROMANCY, STAT_MORALE, 1)
	end


	local scale = 0

	scale = 0.05 * Fx_GovernorBonuses[player][SKILL_OFFENCE]
	ScaleStatOn(hero, SKILL_OFFENCE, STAT_ATTACK, scale)

	scale = 0.05 * Fx_GovernorBonuses[player][SKILL_DEFENCE]
	scale = scale + scale * 0.2 * GetHeroSkillMastery(hero, SKILL_SEAL_OF_PROTECTION)
	ScaleStatOn(hero, SKILL_DEFENCE, STAT_DEFENCE, scale)

	scale = 0.05 * Fx_GovernorBonuses[player][SKILL_INVOCATION]
	scale = scale + scale * 0.1 * GetHeroSkillMastery(hero, SKILL_INVOCATION)
	scale = scale - scale * 0.2 * GetHeroSkillMastery(hero, SKILL_MIGHT_OVER_MAGIC) * (H55_ChieftainsPhonebook[hero] or 0)
	ScaleStatOn(hero, SKILL_INVOCATION, STAT_SPELL_POWER, scale)

	scale = 0.05 * Fx_GovernorBonuses[player][SKILL_FAITH]
	ScaleStatOn(hero, SKILL_FAITH, STAT_KNOWLEDGE, scale)
end

function Fx_HandleEvents(player, hero)
	LOG = {'Fx_HandleEvents', player, hero}

	if HasHeroSkill(hero, SKILL_DARK_RITUAL) and GetHeroStat(hero, STAT_MOVE_POINTS) == 0 and (Fx_DarkRitual[hero] or 0) >= 3000 then
		ChangeHeroStat(hero,STAT_MOVE_POINTS,1500)
	end

	Fx_DarkRitual[hero] = GetHeroStat(hero, STAT_MOVE_POINTS)
	if HasArtefact(hero, ARTIFACT_POTION01, 1) and GetHeroStat(hero,STAT_MOVE_POINTS) <= 100 then
		ChangeHeroStat(hero,STAT_MOVE_POINTS,1500)
		RemoveArtefact(hero, ARTIFACT_POTION01)
	end
end

function MixStacks()
	print("H55 Modifying Neutral stack sizes...")
	-- BlockGame()

	local creatures = GetObjectNamesByType("CREATURE")

	for ix, object in creatures do
		local creatures = MonsterInfo(object)
		local power,unit,typ,stacks = 0, 1, {0,0,0}, 5
		local ix = 0
		for unit_, count in creatures do
			ix = ix + 1
			local typ_ = Fx_CreaturesInv[unit_]
			power = power + count / CreaturesGrowth[typ_[1]][typ_[2]]
			if typ_[2] > typ[2] then
				unit = unit_
				typ  = typ_
			end
			if ix > 1 then
				RemoveObjectCreatures(object, unit_, count)
			end
		end
		power = power * (typ[2] == 1 and 0.8 or 1)
		RemoveObjectCreatures(object, unit, 1 + creatures[unit] * (ix == 1 and 2/3 or 0))
		local town2 = AlignedTowns[typ[1]][1+random(4)]
		for i = 1,2 do
			local town     = i < 2 and typ[1] or town2
			local tier, up = 1+random(Fx_CreaturesInv[unit][2]), 2+random(2)
			local amount   = math.ceil(power / 3 * CreaturesGrowth[town][tier])
			if amount >= 1 then
				AddObjectCreatures(object, Fx_Creatures[town][tier][up], amount)
			end
		end

		if mod(ix, 10) == 0 then print(ix) sleep(10) end
	end
	-- UnblockGame()
	print("H55 Neutrals processed")
end

function Fx_HandleCurses(player, hero)
	LOG = {'Fx_HandleCurses', player, hero}

	if GetHeroSkillMastery(hero, SKILL_SHATTER_DARK_MAGIC) > Fx_Curses and not Fx_IsThisAIPlayer(player) then
		Fx_Curses = GetHeroSkillMastery(hero, SKILL_SHATTER_DARK_MAGIC)
	end
	local curses = Fx_Curses - GetHeroSkillMastery(hero, SKILL_SHATTER_DARK_MAGIC)

	Fx_ChangeStat(hero, STAT_MOVE_POINTS, -150*curses)
end


function Fx_HandleArtifacts(player, hero)
	LOG = {'Fx_HandleArtifacts', player, hero}

	if Fx_IsThisAIPlayer(player) then
		if HasArtefact(hero, ARTIFACT_HELM_OF_CHAOS) then
			RemoveArtefact(hero, ARTIFACT_HELM_OF_CHAOS)
		end
	else
		if Fx_Curses > GetHeroSkillMastery(hero, SKILL_SHATTER_DARK_MAGIC) then
			if not Fx_Gifts[hero][ARTIFACT_HELM_OF_CHAOS] then
				Fx_Gifts[hero][ARTIFACT_HELM_OF_CHAOS] = 1
			end
		else
			Fx_Gifts[hero][ARTIFACT_HELM_OF_CHAOS] = nil
			if HasArtefact(hero, ARTIFACT_HELM_OF_CHAOS) then
				RemoveArtefact(hero, ARTIFACT_HELM_OF_CHAOS)
			end
		end
	end

	for artifact, value in Fx_Gifts[hero] do
		-- weird behavior: value can be `nil`
		if value and Update(Fx_Gifts[hero], artifact, 2) then
			GiveArtefact(hero, artifact)
		end
	end
end

function Fx_WeeklyEvents(player)
	LOG = {'Fx_WeeklyEvents', player}

	for _, hero in (GetPlayerHeroes(player) or {}) do
		Fx_WeeklyReinforcements(player, hero)
	end
end

function Fx_DailyEvents(player)
	LOG = {'Fx_DailyEvents', player}

	for _, skill in Fx_Skills do
		local bonus = 0
		for _, hero in (GetPlayerHeroes(player) or {}) do
			bonus = bonus + (H55_Governors[hero] and GetHeroSkillMastery(hero,skill) or 0)
		end
		Fx_GovernorBonuses[player][skill] = bonus
	end

	for _, hero in (GetPlayerHeroes(player) or {}) do
		if Fx_OfferUltimates(player, hero) then 
			break 
		end
	end
		
	for _, hero in (GetPlayerHeroes(player) or {}) do
		Fx_HandleCurses(player, hero)
		Fx_DailyReinforcements(player, hero)

		local gold = 0

		gold = gold + 0.5 * GetHeroSkillMastery(hero, SKILL_LORD_OF_UNDEAD) * Fx_CreaturesInArmy(hero, Necropolis, 1, nil)
		gold = gold + 0.5 * GetHeroSkillMastery(hero, SKILL_GOBLIN_SUPPORT) * Fx_CreaturesInArmy(hero, Stronghold, 1, nil)

		H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+gold
	end
end

function Fx_InstantEvents(player)
	if Fx_Lock == 1 then return end

	LOG = {'Fx_InstantEvents', player}
	
	local ungifted = 0
	for _, hero in (GetPlayerHeroes(player) or {}) do
		Fx_HandleStats(player, hero)
		Fx_HandleSpells(player, hero)
		Fx_HandleSpellsDaily(player, hero)
		Fx_HandleArtifacts(player, hero)
		Fx_HandleEvents(player, hero)

		local ci = GetLastSavedCombatIndex()
		for side=0,1 do
			if GetSavedCombatArmyHero(ci,side)==hero and Update(Fx_Battle[side], hero, ci) then
				Fx_HandleVictory(player, hero, ci, side)
			end
		end

		for artifact, value in Fx_Gifts[hero] do
			ungifted = ungifted + (value and not HasArtefact(hero, artifact,0) or 0)
		end

	end

	for _, hero in (GetPlayerHeroes(player) or {}) do
		local cursed = Fx_Curses - GetHeroSkillMastery(hero, SKILL_SHATTER_DARK_MAGIC)
		local badboy = cursed > 0 and not HasArtefact(hero, ARTIFACT_HELM_OF_CHAOS,1) or 0

		Fx_ChangeStatOn(hero, SKILL_FAITH, STAT_MORALE, -1 * ungifted -2 * badboy)
		Fx_ChangeStatOn(hero, SKILL_FAITH, STAT_LUCK, -1 * ungifted -2 * badboy)
	end
		
	for resource = 0,6 do
		Fx_Resources[player][resource] = GetPlayerResource(player, resource)
	end
end


H55_GetHeroDragonblood = Fx_GetHeroDragonblood
H55_GetPlayerDragonblood = Fx_GetPlayerDragonblood
