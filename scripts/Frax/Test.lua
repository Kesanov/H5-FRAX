hero1 = GetPlayerHeroes(1)[0]

function Fx_GiveAllArtefacts(hero)
	for i = 1,200 do
		GiveArtefact(hero, i)
	end
end

function Fx_GiveSkills(hero, skill, perk)
    for i = skill,skill+4 do
        local s = Fx_Skills[i]
        GiveHeroSkill(hero, s)
        GiveHeroSkill(hero, s)
        GiveHeroSkill(hero, s)
        sleep(1)
        GiveHeroSkill(hero, Fx_Perks[s][perk*2-1])
        sleep(1)
        GiveHeroSkill(hero, Fx_Perks[s][perk*2])
    end
end

function Fx_FakeBoth()
		Fx_FakeMastery()
		Fx_FakeArtefacts()
end

function Fx_FakeMastery()
		_HasHeroSkill = HasHeroSkill
		_GetHeroSkillMastery = GetHeroSkillMastery

    HasHeroSkill = function (hero, skill)
        return 1
    end
    GetHeroSkillMastery = function (hero, skill)
        return Fx_Perks[skill] and 3 or 1
    end
end

function Fx_FakeArtefacts()
		_HasArtefact = HasArtefact
		_RemoveArtefact = RemoveArtefact

	  HasArtefact = function (hero, artifact, equip)
			return 1
		end
		RemoveArtefact = function (hero, artifact)
			if _HasArtefact(hero, artifact) then
				_RemoveArtefact(hero, artifact)
			end
		end
end

function Fx_InitTestMap()
    local heroes = GetPlayerHeroes(1) or {}
    for skill = 0,1 do
        for perk = 1,3 do
            startThread(Fx_GiveSkills, heroes[skill*3 + perk - 1], (skill+2)*6 + 1, perk)
        end
    end
    Fx_GiveAllArtefacts(heroes[1])
end