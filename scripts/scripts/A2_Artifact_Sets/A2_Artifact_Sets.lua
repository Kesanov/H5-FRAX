-- Interface

-- InitAllSetArtifacts();
-- SaveHeroAllSetArtifacts(hero); -- Loads all set artifacts for defined hero
-- LoadHeroAllSetArtifacts(hero); -- Saves all set artifacts for defined hero

-- Implemetation
function AddArtifactToAllSetArtefacts(artefactID)	
	AllSetArtifacts[AllSetArtifactsCount] = artefactID;
	AllSetArtifactsCount = AllSetArtifactsCount + 1;
end;

function InitAllSetArtifacts( missionName, heroName1, heroName2, heroName3, heroName4, heroName5, heroName6, heroName7, heroName8 )
	AllSetArtifacts = {};
	AllSetArtifactsCount = 0;
	
	AddArtifactToAllSetArtefacts(ARTIFACT_SWORD_OF_RUINS);
	AddArtifactToAllSetArtefacts(ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING);
	--AddArtifactToAllSetArtefacts(ARTIFACT_WAND_OF_X);
	AddArtifactToAllSetArtefacts(ARTIFACT_UNICORN_HORN_BOW);
	AddArtifactToAllSetArtefacts(ARTIFACT_TITANS_TRIDENT);
	AddArtifactToAllSetArtefacts(ARTIFACT_STAFF_OF_VEXINGS);
	--AddArtifactToAllSetArtefacts(ARTIFACT_SHACKLES_OF_WAR);
	AddArtifactToAllSetArtefacts(ARTIFACT_FOUR_LEAF_CLOVER);
	AddArtifactToAllSetArtefacts(ARTIFACT_ICEBERG_SHIELD);
	AddArtifactToAllSetArtefacts(ARTIFACT_GOLDEN_SEXTANT);
	AddArtifactToAllSetArtefacts(ARTIFACT_CROWN_OF_COURAGE);
	AddArtifactToAllSetArtefacts(ARTIFACT_CROWN_OF_MANY_EYES);
	AddArtifactToAllSetArtefacts(ARTIFACT_PLATE_MAIL_OF_STABILITY);
	AddArtifactToAllSetArtefacts(ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD);
	AddArtifactToAllSetArtefacts(ARTIFACT_PEDANT_OF_MASTERY);
	AddArtifactToAllSetArtefacts(ARTIFACT_NECKLACE_OF_BRAVERY);
	AddArtifactToAllSetArtefacts(ARTIFACT_WEREWOLF_CLAW_NECKLACE);
	AddArtifactToAllSetArtefacts(ARTIFACT_EVERCOLD_ICICLE);
	AddArtifactToAllSetArtefacts(ARTIFACT_NECKLACE_OF_POWER);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_LIGHTING_PROTECTION);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_LIFE);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_HASTE);
	AddArtifactToAllSetArtefacts(ARTIFACT_NIGHTMARISH_RING);
	--AddArtifactToAllSetArtefacts(ARTIFACT_BOOTS_OF_SPEED);
	AddArtifactToAllSetArtefacts(ARTIFACT_GOLDEN_HORSESHOE);
	AddArtifactToAllSetArtefacts(ARTIFACT_WAYFARER_BOOTS);
	AddArtifactToAllSetArtefacts(ARTIFACT_BOOTS_OF_INTERFERENCE);
	--AddArtifactToAllSetArtefacts(ARTIFACT_ENDLESS_SACK_OF_GOLD);
	--AddArtifactToAllSetArtefacts(ARTIFACT_ENDLESS_BAG_OF_GOLD);
	--AddArtifactToAllSetArtefacts(ARTIFACT_ANGEL_WINGS);
	AddArtifactToAllSetArtefacts(ARTIFACT_LION_HIDE_CAPE);
	AddArtifactToAllSetArtefacts(ARTIFACT_PHOENIX_FEATHER_CAPE);
	AddArtifactToAllSetArtefacts(ARTIFACT_CLOAK_OF_MOURNING);
	AddArtifactToAllSetArtefacts(ARTIFACT_HELM_OF_ENLIGHTMENT);
	AddArtifactToAllSetArtefacts(ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_SCALE_ARMOR);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_SCALE_SHIELD);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_BONE_GRAVES);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_WING_MANTLE);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_TEETH_NECKLACE);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_TALON_CROWN);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_EYE_RING);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_FLAME_TONGUE);
	AddArtifactToAllSetArtefacts(ARTIFACT_ROBE_OF_MAGI);
	AddArtifactToAllSetArtefacts(ARTIFACT_STAFF_OF_MAGI);
	AddArtifactToAllSetArtefacts(ARTIFACT_CROWN_OF_MAGI);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_MAGI);
	AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_CUIRASS);
	AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_GREAVES);
	AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_HELMET);
	AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_SHIELD);
	--AddArtifactToAllSetArtefacts(ARTIFACT_SCROLL_OF_SPELL_X);
	--AddArtifactToAllSetArtefacts(ARTIFACT_GRAAL);
	--AddArtifactToAllSetArtefacts(ARTIFACT_BOOTS_OF_LEVITATION);
	AddArtifactToAllSetArtefacts(ARTIFACT_SKULL_HELMET);
	AddArtifactToAllSetArtefacts(ARTIFACT_VALORIOUS_ARMOR);
	AddArtifactToAllSetArtefacts(ARTIFACT_BOOTS_OF_SWIFTNESS);
	AddArtifactToAllSetArtefacts(ARTIFACT_MOONBLADE);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_CELERITY);
	AddArtifactToAllSetArtefacts(ARTIFACT_BAND_OF_CONJURER);
	AddArtifactToAllSetArtefacts(ARTIFACT_EARTHSLIDERS);
	AddArtifactToAllSetArtefacts(ARTIFACT_RIGID_MANTLE);
	AddArtifactToAllSetArtefacts(ARTIFACT_JINXING_BAND);
	AddArtifactToAllSetArtefacts(ARTIFACT_BONESTUDDED_LEATHER);
	AddArtifactToAllSetArtefacts(ARTIFACT_WISPERING_RING);
	AddArtifactToAllSetArtefacts(ARTIFACT_HELM_OF_CHAOS);
	AddArtifactToAllSetArtefacts(ARTIFACT_TWISTING_NEITHER);
	AddArtifactToAllSetArtefacts(ARTIFACT_SANDALS_OF_THE_SAINT);
	AddArtifactToAllSetArtefacts(ARTIFACT_SHAWL_OF_GREAT_LICH);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_DEATH);
	AddArtifactToAllSetArtefacts(ARTIFACT_NECROMANCER_PENDANT);
	--AddArtifactToAllSetArtefacts(ARTIFACT_FREIDA);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_THE_SHADOWBRAND);
	AddArtifactToAllSetArtefacts(ARTIFACT_OGRE_CLUB);
	AddArtifactToAllSetArtefacts(ARTIFACT_OGRE_SHIELD);
	AddArtifactToAllSetArtefacts(ARTIFACT_TOME_OF_DESTRUCTION);
	AddArtifactToAllSetArtefacts(ARTIFACT_TOME_OF_LIGHT_MAGIC);
	AddArtifactToAllSetArtefacts(ARTIFACT_TOME_OF_DARK_MAGIC);
	AddArtifactToAllSetArtefacts(ARTIFACT_TOME_OF_SUMMONING_MAGIC);
	AddArtifactToAllSetArtefacts(ARTIFACT_BEGINNER_MAGIC_STICK);
	AddArtifactToAllSetArtefacts(ARTIFACT_RUNIC_WAR_AXE);
	AddArtifactToAllSetArtefacts(ARTIFACT_RUNIC_WAR_HARNESS);
	AddArtifactToAllSetArtefacts(ARTIFACT_SKULL_OF_MARKAL);
	AddArtifactToAllSetArtefacts(ARTIFACT_BEARHIDE_WRAPS);
	AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_SMITHY_HUMMER);
	AddArtifactToAllSetArtefacts(ARTIFACT_RUNE_OF_FLAME);
	AddArtifactToAllSetArtefacts(ARTIFACT_TAROT_DECK);
	AddArtifactToAllSetArtefacts(ARTIFACT_CROWN_OF_LEADER);
	AddArtifactToAllSetArtefacts(ARTIFACT_EDGE_OF_BALANCE);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_MACHINE_AFFINITY);
	--AddArtifactToAllSetArtefacts(ARTIFACT_HORN_OF_PLENTY);
	AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_UNSUMMONING);
	AddArtifactToAllSetArtefacts(ARTIFACT_BOOK_OF_POWER);
	AddArtifactToAllSetArtefacts(ARTIFACT_TREEBORN_QUIVER);
	--AddArtifactToAllSetArtefacts(ARTIFACT_PRINCESS);
	AddArtifactToAllSetArtefacts(ARTIFACT_RES_WOOD);
	AddArtifactToAllSetArtefacts(ARTIFACT_RES_ORE);
	AddArtifactToAllSetArtefacts(ARTIFACT_RES_SULPHUR);
	AddArtifactToAllSetArtefacts(ARTIFACT_RES_CRYSTAL);
	AddArtifactToAllSetArtefacts(ARTIFACT_RES_GEM);
	AddArtifactToAllSetArtefacts(ARTIFACT_RES_MERCURY);	
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T1);
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T2);
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T3);
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T4);
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T5);
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T6);
	AddArtifactToAllSetArtefacts(ARTIFACT_LEGION_T7);	
	AddArtifactToAllSetArtefacts(ARTIFACT_STEADFAST);	
	AddArtifactToAllSetArtefacts(ARTIFACT_BUCKLER);	
	AddArtifactToAllSetArtefacts(ARTIFACT_LIFE_01);
	AddArtifactToAllSetArtefacts(ARTIFACT_LIFE_02);
	AddArtifactToAllSetArtefacts(ARTIFACT_LIFE_03);
	AddArtifactToAllSetArtefacts(ARTIFACT_LIFE_04);
	AddArtifactToAllSetArtefacts(ARTIFACT_MONK_01);
	AddArtifactToAllSetArtefacts(ARTIFACT_MONK_02);
	AddArtifactToAllSetArtefacts(ARTIFACT_MONK_03);	
	AddArtifactToAllSetArtefacts(ARTIFACT_MONK_04);	
	AddArtifactToAllSetArtefacts(ARTIFACT_GUARDIAN_01);					
	AddArtifactToAllSetArtefacts(ARTIFACT_GUARDIAN_02);
	AddArtifactToAllSetArtefacts(ARTIFACT_GUARDIAN_03);
	AddArtifactToAllSetArtefacts(ARTIFACT_DRACONIC);
	AddArtifactToAllSetArtefacts(ARTIFACT_SENTINEL);
	AddArtifactToAllSetArtefacts(ARTIFACT_EIGHTFOLD);	
	AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE01);
	AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE02);
	AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE03);
	AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE04);
	AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE05);	
	AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE06);		
	AddArtifactToAllSetArtefacts(ARTIFACT_MEDICAL01);	
	AddArtifactToAllSetArtefacts(ARTIFACT_MEDICAL02);
	--AddArtifactToAllSetArtefacts(ARTIFACT_MEDICAL03);	
	AddArtifactToAllSetArtefacts(ARTIFACT_MEDICAL04);	
	AddArtifactToAllSetArtefacts(ARTIFACT_POTION01);	
	AddArtifactToAllSetArtefacts(ARTIFACT_POTION02);
	AddArtifactToAllSetArtefacts(ARTIFACT_POTION03);		
	AddArtifactToAllSetArtefacts(ARTIFACT_SHANTIRI_05);	
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_AR1);	
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_AR2);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_AR3);	
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_HM1);	
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_HM2);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_HM3);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_ST1);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_ST2);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_ST3);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_SW1);	
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_SW2);
	AddArtifactToAllSetArtefacts(ARTIFACT_UPG_SW3);				
	AddArtifactToAllSetArtefacts(ARTIFACT_URGASH_01);	
	AddArtifactToAllSetArtefacts(ARTIFACT_URGASH_02);
	--AddArtifactToAllSetArtefacts(ARTIFACT_ELRATH_01);		
	AddArtifactToAllSetArtefacts(ARTIFACT_ELRATH_02);	
	AddArtifactToAllSetArtefacts(ARTIFACT_GOVERNOR_01);
	AddArtifactToAllSetArtefacts(ARTIFACT_GOVERNOR_02);				
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_01);
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_02);
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_03);
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_04);
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_05);	
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_06);	
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_07);	
	AddArtifactToAllSetArtefacts(ARTIFACT_GEAR_08);	
	AddArtifactToAllSetArtefacts(ARTIFACT_ORB_01);
	AddArtifactToAllSetArtefacts(ARTIFACT_ORB_02);
	AddArtifactToAllSetArtefacts(ARTIFACT_ORB_03);	
	AddArtifactToAllSetArtefacts(ARTIFACT_ORB_04);	
		
	-- -- Power of Dragons
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_SCALE_ARMOR);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_SCALE_SHIELD);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_BONE_GRAVES);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_WING_MANTLE);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_TEETH_NECKLACE);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_TALON_CROWN);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_EYE_RING);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DRAGON_FLAME_TONGUE);

	-- -- Armor of Dwarven Kings
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_CUIRASS);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_GREAVES);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_HELMET);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_DWARVEN_MITHRAL_SHIELD);

	-- -- Lion's Spirit
	-- AddArtifactToAllSetArtefacts(ARTIFACT_CROWN_OF_COURAGE);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_LION_HIDE_CAPE);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_NECKLACE_OF_BRAVERY);

	-- -- Sar-Issus Regalia
	-- AddArtifactToAllSetArtefacts(ARTIFACT_ROBE_OF_MAGI);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_HASTE);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_CROWN_OF_MAGI);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_MAGI);

	-- -- Death's Embrace
	-- AddArtifactToAllSetArtefacts(ARTIFACT_CLOAK_OF_MOURNING);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_STAFF_OF_VEXINGS);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_DEATH);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_NECROMANCER_PENDANT);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_SKULL_HELMET);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_RING_OF_DEATH);
	
	-- -- Vestment of Enlightnment
	-- -- AddArtifactToAllSetArtefacts(ARTIFACT_HELM_OF_ENLIGHTMENT);
	-- -- AddArtifactToAllSetArtefacts(ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT);
	
	-- -- Pirate's Apparel
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE01);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE02);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE03);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE04);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE05);
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PIRATE06);
	
	-- -- Forgotten Hero
	-- AddArtifactToAllSetArtefacts(ARTIFACT_GUARDIAN_01);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_GUARDIAN_02);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_GUARDIAN_03);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_PLATE_MAIL_OF_STABILITY);
	
	-- -- Prophet
	-- AddArtifactToAllSetArtefacts(ARTIFACT_MONK_01);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_MONK_02);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_MONK_03);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_MONK_04);	
	-- AddArtifactToAllSetArtefacts(ARTIFACT_UPG_ST3);	
	
	-- Archer's Dream
	--AddArtifactToAllSetArtefacts(ARTIFACT_UNICORN_HORN_BOW);
	--AddArtifactToAllSetArtefacts(ARTIFACT_TREEBORN_QUIVER);

	-- Weapons of Might
	--AddArtifactToAllSetArtefacts(ARTIFACT_OGRE_CLUB);
	--AddArtifactToAllSetArtefacts(ARTIFACT_OGRE_SHIELD);

	-- Runeforce
	--AddArtifactToAllSetArtefacts(ARTIFACT_RUNIC_WAR_AXE);
	--AddArtifactToAllSetArtefacts(ARTIFACT_RUNIC_WAR_HARNESS);

	-- Will of Urgash
	--AddArtifactToAllSetArtefacts(ARTIFACT_HELM_OF_CHAOS);
	--AddArtifactToAllSetArtefacts(ARTIFACT_NIGHTMARISH_RING);

	--Reset Artifact's sets for heroes
	ResetArtifactsSetForHero( heroName1, missionName );
	ResetArtifactsSetForHero( heroName2, missionName );
	ResetArtifactsSetForHero( heroName3, missionName );
	ResetArtifactsSetForHero( heroName4, missionName );
	ResetArtifactsSetForHero( heroName5, missionName );
	ResetArtifactsSetForHero( heroName6, missionName );
	ResetArtifactsSetForHero( heroName7, missionName );
	ResetArtifactsSetForHero( heroName8, missionName );
end;

function ResetArtifactsSetForHero( heroName, missionName )
	if heroName ~= nil then
		for i = 0, AllSetArtifactsCount - 1 do
			local artefactIdString = '_'..AllSetArtifacts[i];
			SetGameVar(missionName..'_'..heroName..artefactIdString, "0");		
		end;	
	end;
end;

function SaveHeroAllSetArtifacts( hero, missionName )
	for i = 0, AllSetArtifactsCount - 1 do
		if HasArtefact(hero, AllSetArtifacts[i]) then
			local artefactIdString = '_'..AllSetArtifacts[i];
			SetGameVar(missionName..'_'..hero..artefactIdString, "1");
			print('Artifact '..artefactIdString..' was saved in '..missionName..'_'..hero..artefactIdString );
		end;
	end;
end;

function SaveHeroAllSetArtifactsEquipped( hero, missionName )
	if IsObjectExists(hero) == not nil then
		for i = 0, AllSetArtifactsCount - 1 do
			if HasArtefact(hero, AllSetArtifacts[i],1) then
				local artefactIdString = '_'..AllSetArtifacts[i];
				SetGameVar(missionName..'_'..hero..artefactIdString, "1");
				print('Artifact '..artefactIdString..' was saved in '..missionName..'_'..hero..artefactIdString );
			end;
		end;
	else
		print("H55 Artifacts couldn't be saved, hero isn't on the map.");
	end;
end;

function LoadHeroAllSetArtifacts( hero, loadFromMissionName )
	if IsObjectExists(hero) == not nil then
		for i = 0, AllSetArtifactsCount - 1 do
			local artefactIdString = '_'..AllSetArtifacts[i];
			if GetGameVar(loadFromMissionName..'_'..hero..artefactIdString) == "1" then
				GiveArtefact(hero, AllSetArtifacts[i]);
			end;
		end;
	else
		print("H55 Artifacts couldn't carry over, hero isn't on the map.");
	end;
end;
