ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/ShotgunMod/files/actions.lua")

function OnPlayerSpawned() 
    if not GameHasFlagRun("someunique_name_initialized") then
        GameAddFlagRun("someunique_name_initialized")
        dofile_once("mods/ShotgunMod/files/shotgun.lua")
    end
end

--thanks _horscht for the code that makes the shotgun not respawn itself when reloading the game and flooding the world with infinite shotguns