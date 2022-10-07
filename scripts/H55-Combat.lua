------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - COMBAT MAP
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus

------------------------------------------------------------------------------------------------------------------------------------------------
--TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

C55_Acted = {};
C55_FirstMover = {};
--C55_BallistaMover = {};
--C55_TankMover = {};
C55_Pounding = {};
C55_ThreadedAimedSpellDone = {};
C55_ThreadedAreaSpellDone = {};

C55_FastActors = {
["Isabell"]=1,["OrlandoMP"]=1,["Mephala"]=1,["Vaniel"]=1,["Nymus"]=1,["Malustar"]=1,["Ash"]=1,
["Muscip"]=1,["Isher"]=1,["Cyrus"]=1,["Davius"]=1,["Gurvilin"]=1,["Zehir"]=1,
["Nur"]=1,["Darkstorm"]=1,["Bersy"]=1,["Ufretin"]=1,["Hangvul2"]=1,["Bart"]=1,["Maximus"]=1,
["Hero8"]=1,["Hero9"]=1,["GottaiMP"]=1,["Hero1"]=1
}; 

--["Nathaniel"]=1,["Laszlo"]=1,["Mardigo"]=1,["ThralsaiMP"]=1,["Ohtarig"]=1,["Rissa"]=1,["RedHeavenHero05"]=1,["Heam"]=1,["Jazaz"]=1,["Gillion"]=1,["Nimbus"]=1,["Gem"]=1};

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
{{117,118,173},{119,120,174},{121,122,175},{123,124,176},{125,126,177},{127,128,178},{129,130,179}} --Stronghold
};

------------------------------------------------------------------------------------------------------------------------------------------------
--FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------

function C55_PoundEnemy(side)
    SetControlMode(side,MODE_AUTO);
    sleep(1);
    SetControlMode(side,MODE_MANUAL);
    SetControlMode(side,MODE_NORMAL);
end;

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
		if qty >= 2 and GetHero(C55_Reverse[side]) and GetHost(C55_Reverse[side]) == HUMAN then
			qty = math.ceil(qty/2);
		end;
		if qty > 0 then
			SummonCreature(side,C55_Creatures[faction][tier][1],qty,x,y);
		end;
	end;
end;

function C55_ElementalSummon(side,hero_id,heroname)
	local x,y = 3,7;
	local elemental = 88;
	if side == 1 then x=14 end;
	if side == 1 then elemental = 85 end;
	local maxmana = GetUnitMaxManaPoints(hero_id);
	local amount = 1+ math.floor(math.sqrt(maxmana)*(maxmana/200)); 
	--local amount = 1 + math.floor((maxmana/2500)*maxmana);
	if amount >= 2 and GetHost(C55_Reverse[side]) == HUMAN then --and GetHero(C55_Reverse[side])
		amount = math.ceil(amount/2);
	end;
	SummonCreature(side,elemental,amount,x,y);
end;

function C55_CastersMana(side,faction,tier,qty1,qty2,qty3)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if qty1 ~= 0 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][1] then
				local mana = GetUnitMaxManaPoints(cr)+qty1;
				SetUnitManaPoints(cr,mana);
			end;
		end;
		if qty2 ~= 0 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][2] then
				local mana = GetUnitMaxManaPoints(cr)+qty2;
				SetUnitManaPoints(cr,mana);
			end;
		end;
		if qty3 ~= 0 then
			if GetCreatureType(cr) == C55_Creatures[faction][tier][3] then
				local mana = GetUnitMaxManaPoints(cr)+qty3;
				SetUnitManaPoints(cr,mana);
			end;
		end;
	end;
end;

function C55_StalkerMana(side)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if GetCreatureType(cr) == C55_Creatures[6][1][3] then
			local amount = GetCreatureNumber(cr);
			if amount < 7 then
				SetUnitManaPoints(cr,0);
			end;
		end;
	end;
end;

function C55_GremlinMana(side)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if GetCreatureType(cr) == C55_Creatures[5][1][2] then
			local amount = GetCreatureNumber(cr);
			if amount < 20 then
				SetUnitManaPoints(cr,0);
			end;
		end;
	end;
end;

function C55_NeutralsMana(side)
	local creatures = GetUnits(side,CREATURE);
	for i,cr in creatures do
		if GetCreatureType(cr) == C55_Creatures[1][5][1] or 
		   GetCreatureType(cr) == C55_Creatures[1][5][2] or
		   GetCreatureType(cr) == C55_Creatures[1][5][3] then
		   SetUnitManaPoints(cr,0);
		end;
		if GetCreatureType(cr) == C55_Creatures[3][4][1] or 
		   GetCreatureType(cr) == C55_Creatures[3][4][2] then
		   SetUnitManaPoints(cr,0);
		end;
		if GetCreatureType(cr) == C55_Creatures[4][5][1] then
		   SetUnitManaPoints(cr,0);
		end;
		if GetCreatureType(cr) == C55_Creatures[6][6][1] or 
		   GetCreatureType(cr) == C55_Creatures[6][6][2] then
		   SetUnitManaPoints(cr,0);
		end;
		if GetCreatureType(cr) == C55_Creatures[7][5][1] then
		   SetUnitManaPoints(cr,0);
		end;
		if GetCreatureType(cr) == C55_Creatures[8][4][1] then
		   SetUnitManaPoints(cr,0);
		end;
	end;
end;

function C55_ManaSpecialists(side,heroname)
	if heroname == "GodricMP" 	then C55_CastersMana(side,1,5,6,14,7) end;
	if heroname == "Ildar" 		then C55_CastersMana(side,2,4,6,12,0) end; --C55_IldarMana(side,2,4,6,14,8)   end;	
	if heroname == "Malustar" 	then C55_CastersMana(side,3,6,0,14,0) end;
	if heroname == "Vidomina" 	then C55_CastersMana(side,4,5,7,6,14) end;
	if heroname == "Razzak" 	then C55_CastersMana(side,5,4,1,12,7) end;
	if heroname == "ShadwynMP" 	then C55_CastersMana(side,6,6,7,13,6) end;
	if heroname == "Hero9" 		then C55_CastersMana(side,8,1,0,0,20) end;
end;

function C55_CombatPrepare()
	--if GetUnits(ATTACKER,HERO) then
	if GetHero(ATTACKER) then
		local attacker = GetHeroName(GetAttackerHero())
		C55_FirstMover[attacker] = 0;
		C55_Pounding[attacker] = 0;
		C55_Acted[attacker] = 0;
		--C55_BallistaMover[attacker] = 0;
		--C55_TankMover[attacker] = 0;
		print("C55 Combat prepared for "..attacker);
	end;
	--if GetUnits(DEFENDER,HERO) then
	if GetHero(DEFENDER) then
		local defender = GetHeroName(GetDefenderHero())
		C55_FirstMover[defender] = 0;
		C55_Pounding[defender] = 0;
		C55_Acted[defender] = 0;
		--C55_BallistaMover[defender] = 0;
		--C55_TankMover[defender] = 0;
		print("C55 Combat prepared for "..defender);
	end;
end;
	
function C55_CombatStart()
	--if GetUnits(ATTACKER,HERO) then
	if GetHero(ATTACKER) then
		local attacker_id = GetAttackerHero();
		local attacker = GetHeroName(attacker_id);
		C55_ManaSpecialists(ATTACKER,attacker);
		C55_StalkerMana(ATTACKER);
		C55_GremlinMana(ATTACKER);
		
		if attacker == "Gillion" then startThread(C55_FreeSummon,ATTACKER,attacker,2,2,4) end;
		if attacker == "Gem" 	 then startThread(C55_FreeSummon,ATTACKER,attacker,2,1,4) end;
		if attacker == "Nimbus"  then startThread(C55_FreeSummon,ATTACKER,attacker,4,1,4) end;
		if attacker == "Muscip"  then startThread(C55_FreeSummon,ATTACKER,attacker,4,3,4) end;
		if attacker == "Maximus" then startThread(C55_FreeSummon,ATTACKER,attacker,7,4,4) end;
		if attacker == "Gurvilin" then startThread(C55_FreeSummon,ATTACKER,attacker,5,2,4) end;
		if attacker == "Ohtarig" then startThread(C55_FreeSummon,ATTACKER,attacker,6,1,4) end;
		if attacker == "Zehir"   then startThread(C55_ElementalSummon,ATTACKER,attacker_id,attacker) end;
		if attacker == "Vaniel"  then startThread(C55_ElementalSummon,ATTACKER,attacker_id,attacker) end;
		
		if attacker == "Straker" then C55_FreeSpecial(ATTACKER,176,4,2) end;
		if attacker == "ThralsaiMP" then C55_FreeSpecial(ATTACKER,176,6,5) end;	
		if attacker == "Mardigo" then C55_FreeSpecial(ATTACKER,176,1,3) end;
		if attacker == "Laszlo" then C55_FreeSpecial(ATTACKER,176,1,3) end;
		if attacker == "Nathaniel" then C55_FreeSpecial(ATTACKER,176,1,1) end;
		
		-- if GetGameVar("C55_Cart_"..attacker) == "On" and GetWarMachine(ATTACKER,WAR_MACHINE_AMMO_CART) then
			-- C55_ManaCart(attacker_id);
		-- end;
	else
		C55_StalkerMana(ATTACKER);
		C55_GremlinMana(ATTACKER);
		-- if GetHost(ATTACKER) ~= HUMAN then
			-- C55_NeutralsMana(ATTACKER);
		-- end;
	end;
	
	--if GetUnits(DEFENDER,HERO) then
	if GetHero(DEFENDER) then
		local defender_id = GetDefenderHero(); 
		local defender = GetHeroName(defender_id);
		C55_ManaSpecialists(DEFENDER,defender);
		C55_StalkerMana(DEFENDER);
		C55_GremlinMana(DEFENDER);
		
		if defender == "Gillion" then startThread(C55_FreeSummon,DEFENDER,defender,2,2,4) end;
		if defender == "Gem"	 then startThread(C55_FreeSummon,DEFENDER,defender,2,1,4) end;
		if defender == "Nimbus"  then startThread(C55_FreeSummon,DEFENDER,defender,4,1,4) end;
		if defender == "Muscip"  then startThread(C55_FreeSummon,DEFENDER,defender,4,3,4) end;
		if defender == "Maximus" then startThread(C55_FreeSummon,DEFENDER,defender,7,4,4) end;
		if defender == "Gurvilin" then startThread(C55_FreeSummon,DEFENDER,defender,5,2,4) end;
		if defender == "Ohtarig" then startThread(C55_FreeSummon,DEFENDER,defender,6,1,4) end;
		if defender == "Vaniel"  then startThread(C55_ElementalSummon,DEFENDER,defender_id,defender) end;
		if defender == "Zehir"   then startThread(C55_ElementalSummon,DEFENDER,defender_id,defender) end;
		
		if defender == "Straker" then C55_FreeSpecial(DEFENDER,176,4,2) end;
		if defender == "ThralsaiMP" then C55_FreeSpecial(DEFENDER,176,6,5) end;	
		if defender == "Mardigo" then C55_FreeSpecial(DEFENDER,176,1,3) end;
		if defender == "Laszlo" then C55_FreeSpecial(DEFENDER,176,1,3) end;
		if defender == "Nathaniel" then C55_FreeSpecial(DEFENDER,176,1,1) end;
		
		-- if GetGameVar("C55_Cart_"..attacker) == "On" and GetWarMachine(DEFENDER,WAR_MACHINE_AMMO_CART) then
			-- C55_ManaCart(defender_id);
		-- end;
	else
		C55_StalkerMana(DEFENDER);
		C55_GremlinMana(DEFENDER);
		if GetHost(DEFENDER) ~= HUMAN then
			C55_NeutralsMana(DEFENDER);
		end;
	end;
end;
		
function C55_ActFirst(unitName,side,heroname,hero_id)
	if C55_Acted[heroname] == 0 then
		C55_Acted[heroname] = 1;
		local value = math.random(1,10);
		local atb = C55_MediumATB[value];
		--if heroname == "Ash" or heroname == "Cyrus" then atb = C55_WeakATB[value] end;
		if heroname == "Ufretin" or heroname == "Nur" or heroname == "Bart" then atb = C55_StrongATB[value] end;
		-- if GetGameVar("C55_Swift_"..heroname) == "On" then atb = atb + 0.25 end;
		-- if GetGameVar("C55_Chill_"..heroname) == "On" then C55_ChillingSummon(unitName,side,heroname,15);
		
		if 	   heroname == "Hero1" 		then if unitName == hero_id then C55_PoundEnemy(side) end;
		elseif heroname == "Isabell" 	then C55_BoostATB(unitName,side,1,3,1,1,1);
		elseif heroname == "OrlandoMP" 	then C55_FreeSpell(unitName,side,hero_id,278,atb,1,4);
		--elseif heroname == "Gem" 		then C55_FreeSpell(unitName,side,hero_id,25,atb,2,1);
		elseif heroname == "Mephala" 	then C55_BoostATB(unitName,side,2,6,1,1,1);
		elseif heroname == "Nymus" 		then C55_BoostATB(unitName,side,3,2,1,1,1);
		elseif heroname == "Malustar" 	then C55_BoostATB(unitName,side,3,6,0,0,1);
		elseif heroname == "Ash" 		then C55_FreeSpell(unitName,side,hero_id,278,atb,3,5);
		elseif heroname == "Isher" 		then C55_BoostATB(unitName,side,5,3,1,1,1);
		--elseif heroname == "Rissa" 	then C55_FreeSpell(unitName,side,hero_id,23,atb,5,7);
		--elseif heroname == "Davius" 	then C55_FreeSpell(unitName,side,hero_id,280,atb,5,6);
		elseif heroname == "Davius" 	then C55_BoostATB(unitName,side,5,6,1,1,1);
		elseif heroname == "Nur"		then C55_FreeMines(unitName,side,hero_id,atb,5,2);
		elseif heroname == "Cyrus" 		then C55_FreeSpell(unitName,side,hero_id,278,atb,5,5);
		elseif heroname == "Darkstorm" 	then C55_BoostATB(unitName,side,6,3,1,1,1);
		elseif heroname == "Bersy" 		then C55_BoostATB(unitName,side,7,3,1,1,1);
		elseif heroname == "Ufretin" 	then C55_FreeSpell(unitName,side,hero_id,28,atb,7,6);
		elseif heroname == "Hangvul2" 	then C55_BoostATB(unitName,side,7,7,1,1,1);
		elseif heroname == "Bart" 		then C55_FreeMines(unitName,side,hero_id,atb,7,1);
		elseif heroname == "Hero8" 		then C55_BoostATB(unitName,side,8,3,1,1,1);
		elseif heroname == "Hero9" 		then C55_BoostATB(unitName,side,8,1,1,1,0);
		elseif heroname == "GottaiMP" 	then C55_BoostATB(unitName,side,8,7,1,1,1);
		--elseif heroname == "Gottai" 	then C55_FreeSpell(unitName,side,hero_id,291,atb,8,3) 
		end;
		-- end;
	end;
end;

function C55_Combat(unitName)
	-- if GetUnits(ATTACKER,HERO) and GetUnits(DEFENDER,HERO) then	
	if GetHero(ATTACKER) and GetHero(DEFENDER) then
		local attacker_id = GetAttackerHero();
		local defender_id = GetDefenderHero(); 
		local attacker = GetHeroName(attacker_id);
		local defender = GetHeroName(defender_id);
		if C55_FirstMover[attacker] == 0 or C55_FirstMover[defender] == 0 then
			C55_FirstMover[attacker] = 0;
			C55_FirstMover[defender] = 0;
			if C55_FastActors[attacker] == 1 then
				C55_ActFirst(unitName,ATTACKER,attacker,attacker_id);
			end;		
			if C55_FastActors[defender] == 1 then
				C55_ActFirst(unitName,DEFENDER,defender,defender_id);
			end;
			C55_FirstMover[attacker] = 1;
			C55_FirstMover[defender] = 1;
			print("C55 Combat started between "..attacker.." and "..defender);
		end;
	--elseif GetUnits(ATTACKER,HERO) then	
	elseif GetHero(ATTACKER) then
		local attacker_id = GetAttackerHero();
		local attacker = GetHeroName(attacker_id);
		if C55_FirstMover[attacker] == 0 then
			if C55_FastActors[attacker] == 1 then
				C55_ActFirst(unitName,ATTACKER,attacker,attacker_id);
			end;
			C55_FirstMover[attacker] = 1;	
			print("C55 Combat started for "..attacker); 			
		end;
	elseif GetHero(DEFENDER) then
		local defender_id = GetDefenderHero();
		local defender = GetHeroName(defender_id);
		if C55_FirstMover[defender] == 0 then
			if C55_FastActors[defender] == 1 then
				C55_ActFirst(unitName,DEFENDER,defender,defender_id);
			end;
			C55_FirstMover[defender] = 1;
			print("C55 Combat started for "..defender);	
		end;		
	end;
end;

---------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
---------------------------------------------------------------------------------------------------------------------------------------------

-- function C55_ManaCart(hero_id)
	-- local mana = GetUnitManaPoints(hero_id);
	-- local managoal = mana + 6
	-- local maxmana = GetUnitMaxManaPoints(hero_id);
	-- if (maxmana-mana) > 5 then
		-- SetUnitManaPoints(hero_id,managoal);
		-- sleep(1);
	-- else
		-- SetUnitManaPoints(hero_id,maxmana);
		-- sleep(1);
	-- end;
-- end;

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

-- C55_LargeCreatures = {
-- 7,8,109,11,12,111,13,14,112, --Haven
-- 51,52,149,53,54,150,55,56,151, --Sylvan
-- 23,24,135,25,26,136,27,28,137, --Inferno
-- 37,38,156,39,40,157,41,42,158, --Necropolis
-- 65,66,163,67,68,164,69,70,165, --Academy
-- 77,78,141,79,80,142,83,84,144, --Dungeon
-- 96,97,168,102,103,171,104,105,172, --Fortress
-- 119,120,174,127,128,178,129,130,179 --Stronghold
-- };

---------------------------------------------------------------------------------------------------------------------------------------------