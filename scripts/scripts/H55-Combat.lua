------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - COMBAT MAP
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus

------------------------------------------------------------------------------------------------------------------------------------------------
--TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

C55_FirstMover = {};
--C55_BallistaMover = {};
--C55_TankMover = {};
C55_ThreadedAimedSpellDone = {};
C55_ThreadedAreaSpellDone = {};

C55_FastActors = {
["Isabell"]=1,["Mephala"]=1,["Gem"]=1,["Vaniel"]=1,["Gillion"]=1,["Nymus"]=1,["Malustar"]=1,["Ash"]=1,
["Nimbus"]=1,["Nemor"]=1,["Isher"]=1,["Cyrus"]=1,["Davius"]=1,["Gurvilin"]=1,["Zehir"]=1,
["Nur"]=1,["Darkstorm"]=1,["Ohtarig"]=1,["Bersy"]=1,["Ufretin"]=1,["Hangvul2"]=1,["Bart"]=1,["Maximus"]=1,
["Hero8"]=1,["Hero9"]=1,["GottaiMP"]=1
}; --["Nathaniel"]=1,["Laszlo"]=1,["Mardigo"]=1,["ThralsaiMP"]=1,["Rissa"]=1

C55_Reverse = {[0]=1,[1]=0};

C55_StrongATB = {0.81,0.82,0.83,0.84,0.85,0.88,0.88,0.88,0.89,0.90};
C55_MediumATB = {0.71,0.72,0.73,0.74,0.75,0.76,0.77,0.78,0.79,0.80};
C55_WeakATB   = {0.61,0.62,0.63,0.64,0.65,0.66,0.67,0.68,0.69,0.70};

C55_Creatures = {
{{1,2,106},{3,4,107},{5,6,108},{7,8,109},{9,10,110},{11,12,111},{13,14,112}}, --Haven
{{43,44,145},{45,46,146},{47,48,147},{49,50,148},{51,52,149},{53,54,150},{55,56,151}}, --Sylvan
{{15,16,131},{17,18,132},{19,20,133},{21,22,134},{23,24,135},{25,26,136},{27,28,137}}, --Inferno
{{29,30,152},{31,32,153},{33,34,154},{35,36,155},{37,38,156},{39,40,157},{41,42,158}}, --Necropolis
{{57,58,159},{59,60,160},{61,62,161},{63,64,162},{65,66,163},{67,68,164},{69,70,165}}, --Academy
{{71,72,138},{73,74,139},{75,76,140},{77,78,141},{79,80,142},{81,82,143},{83,84,144}}, --Dungeon
{{92,93,166},{94,95,167},{96,97,168},{98,99,169},{100,101,170},{102,103,171},{104,105,172}}, --Fortress
{{117,118,173},{119,120,174},{121,122,175},{123,124,176},{125,126,177},{127,128,178},{129,130,179}}, --Stronghold
{{87,87,88}, {85,85,86}, {113,113,113}, {116,116,116}, {115,115,115}, {90,90,90}, {89,114,91}}, --Neutral
};

H55_CreaturesInv = {}
for town = 1,9,1 do
	for tier = 1,7,1 do
		for upgrade = 1,3 do
			H55_CreaturesInv[C55_Creatures[town][tier][upgrade]] = {town, tier, upgrade}
		end
	end
end

H55_CreaturesGrowthReal = {
	{22, 12, 10, 5, 3, 2, 1}, --Haven
	{12, 9, 7, 4, 3, 2, 1}, --Sylvan
	{17, 15, 8, 5, 3, 2, 1}, --Inferno
	{20, 15, 6, 5, 3, 2, 1}, --Necropolis
	{20, 14, 9, 5, 3, 2, 1}, --Academy
	{7, 5, 6, 4, 3, 2, 1}, --Dungeon
	{16, 14, 7, 6, 3, 2, 1}, --Fortress
	{25, 14, 11, 5, 5, 2, 1}, --Stronghold
	{20, 20, 6, 3, 2, 2, 1} -- Neutral
}

C55_MasterOfElements = { ['Bart'] = 1, ['Zehir'] = 1, ['Vaniel'] = 1 }
C55_Enrage = {
	[CREATURE_ZOMBIE] = 1,
	-- TODO
}

------------------------------------------------------------------------------------------------------------------------------------------------
--FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------

-- function C55_BallistaSalvo(side,unitName)
	-- local creatures = GetUnits(C55_Reverse[side],CREATURE);
	-- --local stacks = table.length(creatures);
	-- --local target = 0; if stacks >= 2 then target = math.random(0,stacks) end;
	-- if creatures ~= nil then
		-- ShootCombatUnit(unitName,creatures[0]);
		-- setATB(unitName,1);
	-- end;
-- end;

-- function C55_PullTank(side,attacker,faction,tier)
	-- local creatures = GetUnits(side,CREATURE);
	-- for i,cr in creatures do
		-- if GetCreatureNumber(cr) >= 2 then
			-- if GetCreatureType(cr) == C55_Creatures[faction][tier][1] or 
			   -- GetCreatureType(cr) == C55_Creatures[faction][tier][2] or 
			   -- GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
			   -- setATB(cr,1);
			   -- --break;
			-- end;
		-- end;
	-- end;
-- end;

function C55_BoostATB(unitName,side,faction,tier,qty1,qty2,qty3)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if qty1 ~= 0 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][1] then
				setATB(unitName,0.99);
				setATB(cr,qty1);
			end;
		end;
		if qty2 ~= 0 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][2] then
				setATB(unitName,0.99);
				setATB(cr,qty2);
			end;
		end;
		if qty3 ~= 0 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
				setATB(unitName,0.99);
				setATB(cr,qty3);
			end;
		end;
	end;
end;

function C55_FreeSpecial(side,special,faction,tier)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if GetCreatureNumber(cr) >= 2 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][1] or 
			   GetCreatureType(cr) == C55_Creatures[faction][tier][2] or 
			   GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
				UseCombatAbility(cr,special);
				break;
			end;
		end;
	end;
end;

function C55_ThreadedAimedSpell(hero_id,spell,cr)
	repeat sleep(1) until GetUnitManaPoints(hero_id) >= 50;
	UnitCastAimedSpell(hero_id,spell,cr)
	C55_ThreadedAimedSpellDone[hero_id] = 1;
end;

function C55_FreeSpell(unitName,side,hero_id,spell,atb,faction,tier)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if GetCreatureNumber(cr) >= 2 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][1] or 
			   GetCreatureType(cr) == C55_Creatures[faction][tier][2] or 
			   GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
				setATB(unitName,0.99);
				local mana = GetUnitManaPoints(hero_id);
				if mana < 50 then SetUnitManaPoints(hero_id,50) end;
				startThread(C55_ThreadedAimedSpell,hero_id,spell,cr);
				repeat sleep(1) until C55_ThreadedAimedSpellDone[hero_id] == 1;
				SetUnitManaPoints(hero_id,mana);
				setATB(hero_id,atb);
				C55_ThreadedAimedSpellDone[hero_id] = 0;
				break;
			end;
		end;
	end;
end;

function C55_ThreadedAreaSpell(hero_id,spell,x,y)
	repeat sleep(1) until GetUnitManaPoints(hero_id) >= 20;
	UnitCastAreaSpell(hero_id,spell,x,y)
	C55_ThreadedAreaSpellDone[hero_id] = 1;
end;

function C55_FreeMines(unitName,side,hero_id,atb,faction,tier)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if GetCreatureNumber(cr) >= 2 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][1] or 
			   GetCreatureType(cr) == C55_Creatures[faction][tier][2] or 
			   GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
				setATB(unitName,0.99);
				local mana = GetUnitManaPoints(hero_id);
				local x,y = GetUnitPosition(cr);
				if side == 0 then x=x+1 else x=x-1 end;
				if mana < 20 then SetUnitManaPoints(hero_id,20) end;
				startThread(C55_ThreadedAreaSpell,hero_id,38,x,y);
				repeat sleep(1) until C55_ThreadedAreaSpellDone[hero_id] == 1;
				SetUnitManaPoints(hero_id,mana);
				setATB(hero_id,atb);
				C55_ThreadedAreaSpellDone[hero_id] = 0;
				break;
			end;
		end;
	end;
end;

-- function C55_FreeSummon(side,heroname,cr,power)
	-- local x,y = 3,7;
	-- if side == 1 then x=14 end;
	-- local levelstr = GetGameVar("C55_Level_"..heroname);
	-- local level = tonumber(levelstr);
	-- local amount = math.floor((level/power)*level);
	-- if amount == 0 then amount = 1 end;
	-- SummonCreature(side,cr,amount,x,y);
	-- sleep(1);
-- end;

function C55_FreeSummon(side,heroname,faction,tier,power)
	local creatures = GetUnits(side,CREATURE);
	local amount = 0;
	for i,cr in creatures do
		if GetCreatureType(cr) == C55_Creatures[faction][tier][1] or 
		   GetCreatureType(cr) == C55_Creatures[faction][tier][2] or 
		   GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
		   amount = amount + GetCreatureNumber(cr);
		end;
	end;
	if amount > 0 then
		local x,y = 3,7;
		if side == 1 then x=14 end;
		local qty = math.floor(amount/power);
		if qty > 0 then
			SummonCreature(side,C55_Creatures[faction][tier][1],qty,x,y);
			sleep(1);
		end;
	end;
end;

function C55_ElementalSummon(side,hero_id,power)
	local x,y = 3,7;
	local elemental = 88;
	if side == 1 then x=14 end;
	if side == 1 then elemental = 85 end;
	local maxmana = GetUnitMaxManaPoints(hero_id);
	local amount = math.floor((maxmana/power)*maxmana);
	if amount == 0 then amount = 1 end;
	SummonCreature(side,elemental,amount,x,y);
	sleep(1);
end;

-- function C55_ElementalSummon(side,heroname,power)
	-- local x,y = 3,7;
	-- local elemental = 88;
	-- if side == 1 then x=14 end;
	-- if side == 1 then elemental = 85 end;
	-- local levelstr = GetGameVar("C55_Level_"..heroname);
	-- local level = tonumber(levelstr);
	-- local amount = math.floor((level/power)*level);
	-- if amount == 0 then amount = 1 end;
	-- SummonCreature(side,elemental,amount,x,y);
	-- sleep(1);
-- end;



-- function C55_ChillingSummon(side,heroname,power)
	-- local x,y = 3,7;
	-- local elemental = 86;
	-- if side == 1 then x=14 end;
	-- local levelstr = GetGameVar("C55_Level_"..heroname);
	-- local level = tonumber(levelstr);
	-- local amount = math.floor((level/power)*level);
	-- if amount == 0 then amount = 1 end;
	-- SummonCreature(side,elemental,amount,x,y);
	-- sleep(1);
-- end;

-- function C55_FreeSpellPreCheck(side,heroname,faction,tier)	
	-- local creatures = GetUnits(side,CREATURE);
	-- local check = 0;
	-- for i,cr in creatures do
		-- if GetCreatureNumber(cr) >= 2 then
			-- if GetCreatureType(cr) == C55_Creatures[faction][tier][1] or 
			   -- GetCreatureType(cr) == C55_Creatures[faction][tier][2] or 
			   -- GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
			   -- check = 1;
			-- end;
		-- end;
	-- end;
	-- return check;
-- end;

function C55_ActFirst(unitName,side,heroname,hero_id)
	local value = math.random(1,10);
	local atb = C55_MediumATB[value];
	if heroname == "Ash" or heroname == "Cyrus" then atb = C55_WeakATB[value] end;
	if heroname == "Nur" or heroname == "Bart" then atb = C55_StrongATB[value] end;
	-- if GetGameVar("C55_Swift_"..heroname) == "On" then atb = atb + 0.25 end;
	-- if GetGameVar("C55_Chill_"..heroname) == "On" then C55_ChillingSummon(unitName,side,heroname,15)
	-- else
	if heroname == "Isabell" 		then C55_BoostATB(unitName,side,1,3,1,1,1);	
	elseif heroname == "Gillion"   	then C55_FreeSummon(side,heroname,2,2,4);
	elseif heroname == "Gem" 		then C55_FreeSpell(unitName,side,hero_id,25,atb,2,1);
	elseif heroname == "Mephala" 	then C55_BoostATB(unitName,side,2,6,1,1,1);
	elseif heroname == "Vaniel"   	then C55_ElementalSummon(side,hero_id,1500);

	elseif heroname == "Nymus" 		then C55_BoostATB(unitName,side,3,2,1,1,1);
	elseif heroname == "Malustar" 	then C55_BoostATB(unitName,side,3,6,0,0,1);
	elseif heroname == "Ash" 		then C55_FreeSpell(unitName,side,hero_id,278,atb,3,5);

	elseif heroname == "Nimbus"   	then C55_FreeSummon(side,heroname,4,1,4);
	elseif heroname == "Nemor" 		then C55_BoostATB(unitName,side,4,3,1,1,1);

	elseif heroname == "Isher" 		then C55_BoostATB(unitName,side,5,3,1,1,1);
	--elseif heroname == "Rissa" 	then C55_FreeSpell(unitName,side,hero_id,23,atb,5,7);
	--elseif heroname == "Davius" 	then C55_FreeSpell(unitName,side,hero_id,280,atb,5,6);
	elseif heroname == "Davius" 	then C55_BoostATB(unitName,side,5,6,1,1,1);
	elseif heroname == "Nur"		then C55_FreeMines(unitName,side,hero_id,atb,5,2);
	elseif heroname == "Cyrus" 		then C55_FreeSpell(unitName,side,hero_id,278,atb,5,5);
	elseif heroname == "Zehir"   	then C55_ElementalSummon(side,hero_id,1500);
	elseif heroname == "Gurvilin"   then C55_FreeSummon(side,heroname,5,2,4);

	elseif heroname == "Ohtarig"   	then C55_FreeSummon(side,heroname,6,1,4);
	elseif heroname == "Darkstorm" 	then C55_BoostATB(unitName,side,6,3,1,1,1);
	-- elseif heroname == "ThralsaiMP" then C55_BoostATB(unitName,side,6,5,1,1,1); 

	elseif heroname == "Maximus"   	then C55_FreeSummon(side,heroname,7,4,4);
	elseif heroname == "Bersy" 		then C55_BoostATB(unitName,side,7,3,1,1,1);
	elseif heroname == "Ufretin" 	then C55_FreeSpell(unitName,side,hero_id,28,atb,7,6);
	elseif heroname == "Hangvul2" 	then C55_BoostATB(unitName,side,7,7,1,1,1);
	elseif heroname == "Bart" 		then C55_FreeMines(unitName,side,hero_id,atb,7,1);

	elseif heroname == "Hero8" 		then C55_BoostATB(unitName,side,8,3,1,1,1);
	elseif heroname == "Hero9" 		then C55_BoostATB(unitName,side,8,1,1,1,0);
	elseif heroname == "GottaiMP" 	then C55_BoostATB(unitName,side,8,7,1,1,1);
	--elseif heroname == "Gottai" 		then C55_FreeSpell(unitName,side,hero_id,291,atb,8,3) 
	end;
	-- end;
end;

function C55_CombatPrepare()
	-- if GetHero(ATTACKER) then
	-- 	local attacker = GetHeroName(GetAttackerHero())
	-- 	C55_FirstMover[attacker] = 0;
	-- 	--C55_BallistaMover[attacker] = 0;
	-- 	--C55_TankMover[attacker] = 0;
	-- 	print("C55 Combat prepared for "..attacker);
	-- end;	
	-- if GetHero(DEFENDER) then
	-- 	local defender = GetHeroName(GetDefenderHero())
	-- 	C55_FirstMover[defender] = 0;
	-- 	--C55_BallistaMover[defender] = 0;
	-- 	--C55_TankMover[defender] = 0;
	-- 	print("C55 Combat prepared for "..defender);
	-- end;
end;

C55_StackSize = {}
function C55_CombatStart()
	for _, unit in GetUnits(ATTACKER, CREATURE) do
		C55_StackSize[unit] = GetCreatureNumber(unit)
	end
	for _, unit in GetUnits(DEFENDER, CREATURE) do
		C55_StackSize[unit] = GetCreatureNumber(unit)
	end
	-- if GetHero(ATTACKER) then
	-- 	local attacker_id = GetAttackerHero();
	-- 	local attacker = GetHeroName(attacker_id);
	-- 	C55_ManaSpecialists(ATTACKER,attacker);
	-- 	if attacker == "Straker" then C55_FreeSpecial(ATTACKER,176,4,2) end;
	-- 	if attacker == "ThralsaiMP" then C55_FreeSpecial(ATTACKER,176,6,5) end;	
	-- 	if attacker == "Mardigo" then C55_FreeSpecial(ATTACKER,176,1,3) end;
	-- 	if attacker == "Laszlo" then C55_FreeSpecial(ATTACKER,176,1,3) end;
	-- 	if attacker == "Nathaniel" then C55_FreeSpecial(ATTACKER,176,1,1) end;
	-- 	-- if GetGameVar("C55_Cart_"..attacker) == "On" and GetWarMachine(ATTACKER,WAR_MACHINE_AMMO_CART) then
	-- 		-- C55_ManaCart(attacker_id);
	-- 	-- end;			
	-- end;
	-- if GetHero(DEFENDER) then
	-- 	local defender_id = GetDefenderHero(); 
	-- 	local defender = GetHeroName(defender_id);
	-- 	C55_ManaSpecialists(DEFENDER,defender);
	-- 	if defender == "Straker" then C55_FreeSpecial(DEFENDER,176,4,2) end;
	-- 	if defender == "ThralsaiMP" then C55_FreeSpecial(DEFENDER,176,6,5) end;	
	-- 	if defender == "Mardigo" then C55_FreeSpecial(DEFENDER,176,1,3) end;
	-- 	if defender == "Laszlo" then C55_FreeSpecial(DEFENDER,176,1,3) end;
	-- 	if defender == "Nathaniel" then C55_FreeSpecial(DEFENDER,176,1,1) end;		
	-- 	-- if GetGameVar("C55_Cart_"..attacker) == "On" and GetWarMachine(DEFENDER,WAR_MACHINE_AMMO_CART) then
	-- 		-- C55_ManaCart(defender_id);
	-- 	-- end;
	-- end;
end;

C55_Skip = 'None'
function C55_Combat(unit)
	-- if GetHero(ATTACKER) and GetHero(DEFENDER) then
	-- 	local attacker_id = GetAttackerHero();
	-- 	local defender_id = GetDefenderHero(); 
	-- 	local attacker = GetHeroName(attacker_id);
	-- 	local defender = GetHeroName(defender_id);
	-- 	if C55_FirstMover[attacker] == 0 or C55_FirstMover[defender] == 0 then
	-- 		local pushed = 0;
	-- 		C55_FirstMover[attacker] = 0;
	-- 		C55_FirstMover[defender] = 0;
	-- 		if C55_FastActors[attacker] == 1 then --or GetGameVar("C55_Chill_"..attacker) == "On" 
	-- 			--setATB(unitName,0.99);
	-- 			pushed = 1;
	-- 			C55_ActFirst(unitName,ATTACKER,attacker,attacker_id);
	-- 		end;
	-- 		if C55_FastActors[defender] == 1 then --or GetGameVar("C55_Chill_"..defender) == "On"
	-- 			if pushed == 1 then sleep(1) end;
	-- 			C55_ActFirst(unitName,DEFENDER,defender,defender_id);
	-- 		end;
	-- 		C55_FirstMover[attacker] = 1;
	-- 		C55_FirstMover[defender] = 1;
	-- 		print("C55 Combat started between "..attacker.." and "..defender);
	-- 	end;	
	-- elseif GetHero(ATTACKER) then
	-- 	local attacker_id = GetAttackerHero();
	-- 	local attacker = GetHeroName(attacker_id);
	-- 	if C55_FirstMover[attacker] == 0 then
	-- 		if C55_FastActors[attacker] == 1 then --or GetGameVar("C55_Chill_"..attacker) == "On"
	-- 			setATB(unitName,0.99);
	-- 			C55_ActFirst(unitName,ATTACKER,attacker,attacker_id);
	-- 		end;
	-- 		C55_FirstMover[attacker] = 1;	
	-- 		print("C55 Combat started for "..attacker); 			
	-- 	end;
	-- elseif GetHero(DEFENDER) then
	-- 	local defender_id = GetDefenderHero();
	-- 	local defender = GetHeroName(defender_id);
	-- 	if C55_FirstMover[defender] == 0 then
	-- 		if C55_FastActors[defender] == 1 then --or GetGameVar("C55_Chill_"..defender) == "On" 
	-- 			setATB(unitName,0.99);
	-- 			C55_ActFirst(unitName,DEFENDER,defender,defender_id);
	-- 		end;
	-- 		C55_FirstMover[defender] = 1;
	-- 		print("C55 Combat started for "..defender);	
	-- 	end;		
	-- end;

	print(unit)

	local attacker  = IsAttacker(unit)
	local ammo_cart = exist((attacker and 'attacker' or 'defender')..'-warmachine-WAR_MACHINE_AMMO_CART')
	
	if C55_Skip ~= 'None' then
		C55_Skip = 'None'
		return 
	end

	if IsCreature(unit) then
		if GetUnitMaxManaPoints(unit) > 0 then
			local mana = GetUnitMaxManaPoints(unit) * 0.1 * (ammo_cart and 2 or 1)
			SetUnitManaPoints(unit, GetUnitManaPoints(unit) + mana)
			-- playAnimation(unit, 'happy')
			C55_Skip = unit
		end
	end
end

function C55_CombatOnDeath(unit)
	local side = GetUnitSide(unit)
	local hero = GetHero(side) and GetHeroName(GetHero(side)) or 'None'
	
	if IsCreature(unit) then
		local unitType = GetCreatureType(unit)
		local x, y = GetUnitPosition(unit)
		if C55_StackSize[unit] then
			--- MASTER OF ELEMENTS ---
			if C55_MasterOfElements[hero] then
				local type = H55_CreaturesInv[unitType]
				local size = 0.2 * C55_StackSize[unit] * H55_CreaturesGrowthReal[type[1]][type[2]] / H55_CreaturesGrowthReal[9][1]
				DelayedSummonCreature(side, 85 + math.random(4), size, x, y, 50)
			end

			--- MASTER OF DEATH ---
			if C55_MasterOfDeath[hero] then
				local type = H55_CreaturesInv[unitType]
				local size = 0.2 * C55_StackSize[unit]
				DelayedSummonCreature(side, unitType, size, x, y, 50)
			end

			--- FRENZY ---
			if C55_Frenzy[hero] then
				setATB(C55_LastPlayed[1-side], 1)
			end

			--- SOUL EATER ---
			local ghosts = 0
			for _, u in GetUnits(1 - side, CREATURE) do
				if GetCreatureType(u) == CREATURE_POLTERGEIST and C55_StackSize[u] then
					ghosts = ghosts + 0.2 * GetCreatureNumber(u)
				end
			end
			DelayedSummonCreature(1 - side, CREATURE_POLTERGEIST, ghosts, x, y, 50)

			--- ENRAGE ---
			for _, u in GetUnits(1 - side, CREATURE) do
				if C55_Enrage[GetCreatureType(u)] then
					setATB(u, 1)
				end
			end

		else
			if unitType == CREATURE_BLACK_KNIGHT then
				UseCombatAbility(GetHero(side), SPELL_ABILITY_AVATAR_OF_DEATH)
			end
			if unitType == CREATURE_PHOENIX and GetUnitManaPoints(GetHero(side)) >= 10 then
				SetUnitManaPoints(GetHero(side), GetUnitManaPoints(GetHero(side)) + 10)
				sleep(1)
				UnitCastGlobalSpell(HetHero(side), SPELL_CONJURE_PHOENIX)
			end
		end
	end

	C55_StackSize[unit] = nil
end

