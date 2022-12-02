local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Doors Script", HidePremium = false, SaveConfig = true, ConfigFolder = "Doors Spawn"})
local TargetWalkspeed = 0

if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "WARNING!",
        Content = "Do NOT execute Doors in the lobby as it could get you permanently banned!",
        Time = 30
    })
    return
end

local time = Window:MakeTab({
    Name = "Entity Timer",
    Icon = "rbxassetid://11372950109",
    PremiumOnly = false
})

time:AddButton({
    Name = "Screech Every 15 Secs",
    Callback = function ()
    local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

while true do -- Will run the script forever
  coroutine.wrap(function() require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(Data) end)() -- Coroutines prevent the script from yielding.
task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
end

end
})

time:AddButton({
    Name = "Halt Every 15 Secs",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])          end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddButton({
    Name = "Glitch Every 15 Secs",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]) end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddButton({
    Name = "Heartbeat Minigame Every 15 Secs",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)  end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddButton({
    Name = "Timothy Every 15 Secs",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.SpiderJumpscare)(Data.workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:WaitForChild("Dresser").DrawerContainer, 0.2)  end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddParagraph("Bug", "it crashes when i click on spawn rush")

time:AddButton({
    Name = "Spawn Rush Every 15 Secs",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        
        while true do
            coroutine.wrap(function() local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity) end)()
        
    end
    end
})


local customTab = Window:MakeTab({
    Name = "Custom Entites",
    Icon = "rbxassetid://11372950109",
    PremiumOnly = false
})

customTab:AddButton({
    Name = "Spawn A-60", 
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/A-60.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 1, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11394048190", -- Image1 url
            Image2 = "rbxassetid://11394048190", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"You died to A-60", "It can Apear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    
    
    end
    
    
    
    })


customTab:AddButton({
    Name = "Spawn Firebrand",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Firebrand", -- Custom name of your entity
    Model = "https://github.com/fnaclol/sussy-bois/raw/main/FireBrand3.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to whom you call FireBrand", "FireBrand will spawn only on your will", "When you hear him spawn you only have 2 seconds to hide", "Vents do not save you aswell"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

        
    end
})

customTab:AddButton({
    Name = "Spawn Null",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Null", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Null.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to whom you call FireBrand", "FireBrand will spawn only on your will", "When you hear him spawn you only have 2 seconds to hide", "Vents do not save you aswell"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

        
    end
})


customTab:AddButton({
    Name = "Spawn Rebound",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rebound", -- Custom name of your entity
            Model = "rbxassetid://11401769490", -- Can be GitHub file or rbxassetid
            Speed = 300, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = false,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2.5, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 6,
                WaitTime = 7,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11372489796", -- Image1 url
                    Image2 = "rbxassetid://11372489796", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You died to Rebound...", "The lights flicker upon its scream.", "It is also tricky, as it rebounds.", "You need to hide to around 6 times."}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
    end
})



customTab:AddButton({
    Name = "Spawn Angry Munci",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Angry Munci", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/AngryMunci.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 3, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
    end
})


customTab:AddButton({
    Name = "Spawn BigGames",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "BigGames", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/BIGGAMES.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 5,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 1, 2}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})


customTab:AddButton({
    Name = "Spawn Bonnie",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Bonnie", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Bonnie.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Capybara",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Capybara", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Capybara.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Chica",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Chica", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Chica.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Depth",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Depth", -- Custom name of your entity
            Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Depth.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 300, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2, -- Time (seconds)
            },
            Cycles = {
                Min = 2,
                Max = 4,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {10, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 255, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
        
    end
})

customTab:AddButton({
    Name = "Spawn Doge",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Doge", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Doge.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 5,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {4.9, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Eater",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Eater", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Eater.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Elgato",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Elgato", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Elgato.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 230, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Flamingo",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Flamingo", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Flamingo.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

customTab:AddButton({
    Name = "Spawn Foxy",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Foxy", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Foxy.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.9, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Freddy Fazbear",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Freddy Fazbear", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/FreddyFazbear.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5.5, 20, 1.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Greed",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Greed.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Greed RF",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/GreedRF.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Happy Muchi",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Happy Munci", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/HappyMuchi.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Hehehehaw",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Hehehehaw", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Hehehehaw.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Kardin", -- subscribe
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Kardin", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Kardin.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn LSPLASH",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "LSPLASH", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/LSPLASH.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Movong Eyes",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Moving Eyes", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/MovingEyes.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Obunga",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Obunga", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Obunga.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 6,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Old Ambush",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/OldAmbush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Orange",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Orange", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Orange.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Peter Griffin",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Peter Griffin", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/PeterGriffin.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Pikachu",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Pikachu.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Sanic",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Sanic", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Sanic.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 450, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 4,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Saul",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Saul", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Saul.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn Wise Mystical Tree",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Wise Mystical Tree.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "Spawn plamen6789", -- like
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/plamen6789.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})


local everyTab = Window:MakeTab({
    Name = "Entity Every Door",
    Icon = "rbxassetid://11372950109",
    PremiumOnly = false
})

everyTab:AddParagraph("Warning!","High performance required!")

everyTab:AddButton({
    Name = "Screech Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(Data)
        end)
        
    end
})

everyTab:AddButton({
    Name = "Spawn Eyes Every Door",
    Callback = function ()
	    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11388700077")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)
        
        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        ts = game:GetService("TweenService")
        
        wait(3)
        
        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        
        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};
        
            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end
        
        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                wait(1)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "You died to the Eyes...",
                                "They don't like to be stared at.",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end
        end)
            end,
})

everyTab:AddButton({
    Name = "Jack Hallway Every Door",
    Callback = function ()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
            local shadow=game:GetObjects("rbxassetid://11446576619")[1]
            firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
            shadow:PivotTo(currentLoadedRoom.RoomStart.CFrame)
            wait(0.2)
            shadow.Parent=workspace
            shadow.Sound:Play()
            task.wait(0.3)
            shadow:Destroy()
            firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 10)
            end)
    end
})

everyTab:AddButton({
    Name = "Halt Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
        end)
    end    
})


everyTab:AddButton({
    Name = "Break Lights Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60) 
        end)
    end    
})

everyTab:AddButton({
    Name = "Spawn Eyes Every Door",
    Callback = function ()
	    game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11388700077")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)
        
        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        ts = game:GetService("TweenService")
        
        wait(3)
        
        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        
        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};
        
            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end
        
        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                wait(1)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "You died to the Eyes...",
                                "They don't like to be stared at.",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end
        end)
            end,
        })
everyTab:AddButton({
    Name = "Flicker Lights Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1) 
        end)
    end    
})


everyTab:AddButton({
    Name = "Seek Eyes Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms:WaitForChild(game.ReplicatedStorage.GameData.LatestRoom.Value), 14, 1665596753, true)
        end)
    end    
})

everyTab:AddButton({
    Name = "Heartbeat Minigame Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent) 
        end)
    end    
})

everyTab:AddButton({
    Name = "Red Room Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
        local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
        local seconds = 1000000
        v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
        end)
    end
})

everyTab:AddButton({
    Name = "A-60 Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "A-60", -- Custom name of your entity
            Model = "https://github.com/fnaclol/sussy-bois/blob/main/A-60V2.rbxm", -- Can be GitHub file or rbxassetid
            Speed = 200, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 2,
                WaitTime = 0.05,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
                50, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11394048190", -- Image1 url
                    Image2 = "rbxassetid://11394048190", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        false, -- Enabled/Disabled
                        Min = 1,
                        Max = 1,
                    },
                },
            },
            CustomDialog = {"You died to A-60", "It can Apear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        end)
    end
})

everyTab:AddButton({
    Name = "Rebound Every Door",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rebound", -- Custom name of your entity
            Model = "rbxassetid://11401769490", -- Can be GitHub file or rbxassetid
            Speed = 150, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = false,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2.5, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 6,
                WaitTime = 7,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11372489796", -- Image1 url
                    Image2 = "rbxassetid://11372489796", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You died to Rebound...", "The lights flicker upon its scream.", "It is also tricky, as it rebounds.", "You need to hide to around 6 times."}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
        end)
    end
})



local Tab = Window:MakeTab({
    Name = "Spawn Entity",
    Icon = "rbxassetid://11372950109",
    PremiumOnly = false
})


Tab:AddButton({
    Name = "Spawn Screech",
    Callback = function ()
        require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
    workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
    
    end
})


Tab:AddButton({
    Name = "Spawn Ambush",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
        local Configuration = {
            Kill = false, 
            Speed = 160,
            Time = 3 
        }
        
        EntitySpawner:Spawn("Ambush", Configuration)
    end
})

Tab:AddButton({
    Name = "Spawn Ambush [Killable]",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
        local Configuration = {
            Kill = true,
            Speed = 160, 
            Time = 3
        }
        
        EntitySpawner:Spawn("Ambush", Configuration)
    end
})

Tab:AddButton({
    Name = "Spawn Seek",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/EntitySpawner.lua"))()
        local Configuration = {}
        
        EntitySpawner:Spawn("Seek", unpack(Configuration))    
    end
})

Tab:AddButton({
    Name = "Spawn Eyes",
    Callback = function ()
        local enableDamage = false
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11488518082")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)
        
        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(10,30,0.7,0.1)
        ts = game:GetService("TweenService")
        wait(0.2)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(2,30,5,2)
        wait(3)
        
        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        
        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};
        
            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end
        
        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        
        camShake:ShakeOnce(5,50,0.7,0.2)
                wait(0.7)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "You died to the Eyes...",
                                "They don't like to be stared at.",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end
        
                       
    end
})


Tab:AddButton({
    Name = "Spawn Eyes [Killable]",
    Callback = function ()
        local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11488518082")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)
        
        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(10,30,0.7,0.1)
        ts = game:GetService("TweenService")
        wait(0.2)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(2,30,5,2)
        wait(3)
        
        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        
        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};
        
            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end
        
        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        
        camShake:ShakeOnce(5,50,0.7,0.2)
                wait(0.7)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "You died to the Eyes...",
                                "They don't like to be stared at.",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end
        
                       
    end
})



Tab:AddButton({
    Name = "Spawn Halt",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
    
    end
})

Tab:AddButton({
    Name = "Spawn Glitch",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
    
    end
})

Tab:AddButton({
    Name = "Spawn Rush",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
    end
})



Tab:AddButton({
    Name = "Spawn Rush [Killable]",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = true,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
    end
})

local itemsTab = Window:MakeTab({
    Name = "Items",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

itemsTab:AddParagraph("Warning!","Only works on entites spawned by script!")

itemsTab:AddButton({
    Name = "Give Crucifix",
    Callback = function ()
--[[   shit     local shadow=game:GetObjects("rbxassetid://11480603603")[1]
        shadow.Parent = game.Players.LocalPlayer.Backpack
        local anim = Instance.new("Animation")
        anim.AnimationId = 'https://www.roblox.com/Assest?ID=9982615727'
        local track
         
        shadow.Equipped:Connect(function()
            track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim) 
                track.Priority = Enum.AnimationPriority.Action
                track:Play()
                track.Looped = true
         
        end)
         
        shadow.Unequipped:Connect(function()
            if track then
                track:Stop()
            end
        end)
            end,
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo"))()
        end
})

itemsTab:AddButton({
    Name = "Give Skeleton Key",
    Callback = function ()
        function skelly()
            local DoorReplication = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Door%20Replication/Source.lua"))()
        
        
        -- Get current room
        local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        
        
        -- Replicate door
        local replicatedDoor = DoorReplication.ReplicateDoor(room, {
            CustomKeyName = "Skeleton Key",
            DestroyKey = false,
        })
        
        
        -- Debug features [advanced]
        replicatedDoor.Debug.OnDoorOpened = function(doorTable)
            warn("Door", doorTable.Model, "has opened")
        end
        end
        local DoorReplication = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Door%20Replication/Source.lua"))()
        
        
        -- Get current room
        local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        
        
        -- Replicate door
        local replicatedDoor = DoorReplication.ReplicateDoor(room, {
            CustomKeyName = "Skeleton Key",
            DestroyKey = false,
        })
        
        
        -- Debug features [advanced]
        replicatedDoor.Debug.OnDoorOpened = function(doorTable)
            warn("Door", doorTable.Model, "has opened")
        end
                local shadow=game:GetObjects("rbxassetid://11491147151")[1]
        shadow.Parent = game.Players.LocalPlayer.Backpack
        local anim = Instance.new("Animation")
        local anim2 = Instance.new("Animation")
        anim.AnimationId = 'https://www.roblox.com/Assest?ID=6525854363'
        anim2.AnimationId = 'https://www.roblox.com/Assest?ID=10526835827'
        local track
         
        shadow.Equipped:Connect(function()
            track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim) 
                track.Priority = Enum.AnimationPriority.Action
                track:Play()
                track.Looped = false
                wait(1.4)
            track2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim2) 
                track2.Priority = Enum.AnimationPriority.Action
                track2:Play()
                track2.Looped = false
         
        end)
         
        shadow.Unequipped:Connect(function()
            if track then
                track:Stop()
                track2:Stop()
            end
        end)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door:FindFirstChild("Lock") then
                print("YES KEY")
           skelly()
           else
               print("no.")
        end
        end)
    end
})

itemsTab:AddButton({
    Name = "crucifix itemshop",
    Callback = function ()
    --// Crucifix (Execute in prerun shop)
function FullVersion() do
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
    local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
    
    
    -- Create your tool here
    local exampleTool = game:GetObjects("rbxassetid://11556599019")[1]
    
    -- Create custom shop item
    CustomShop.CreateItem(exampleTool, {
        Title = "Crucifix",
        Desc = "Single use, blocks most attacks",
        Image = "https://static.wikia.nocookie.net/doors-game/images/8/88/Icon_crucifix2.png/revision/latest?cb=20220728033038",
        Price = 200,
        Stack = 1,
    })
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local tool = exampleTool
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local RightArm = Char:WaitForChild("RightUpperArm")
    local LeftArm = Char:WaitForChild("LeftUpperArm")
    local RightC1 = RightArm.RightShoulder.C1
    local LeftC1 = LeftArm.LeftShoulder.C1
            local function setupCrucifix(tool)
            RightArm.Name = "R_Arm"
            LeftArm.Name = "L_Arm"
           
            RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
            LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            for _, v in next, Hum:GetPlayingAnimationTracks() do
                v:Stop()
            end
            end
    tool.Equipped:Connect(function()
        setupCrucifix(exampleTool)
        game.Players.LocalPlayer:SetAttribute("Hidden", true)
    UIS.InputBegan:Connect(function(input)
       if input.UserInputType == Enum.UserInputType.MouseButton1 then
       if tool.Parent == game.Players.LocalPlayer.Character then
                       if game.Workspace:FindFirstChild("Lookman") then
                          local eyes = game.Workspace:FindFirstChild("Lookman").Core
                          local crucifixed = Instance.new("BoolValue")
                          crucifixed.Parent = eyes
                          crucifixed.Name = "GettingCrucifixed"
                          eyes.Ambience.Playing = false
                          eyes.Repent.Looped = true
                          eyes.Repent:Play()
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
                          wait(1.2)
                          local ClonedMesh = tool.NewOneBro:Clone()
                          ClonedMesh.Parent = game.Workspace
                          ClonedMesh.Anchored = true
                          tool:Destroy()
                          eyes.Repent.Playing = false
                          eyes.Scream:Play()
                          eyes.PointLight.Enabled = false
                          eyes.PointLight.Enabled = false
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(6, 10, 0.1, 4.5)
                          loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()
                          wait(0.3)
                          game.Workspace:FindFirstChild("Lookman"):Destroy()
                   end
                   end
                  end
    end)
        end)
    tool.Unequipped:Connect(function()
        game.Players.LocalPlayer:SetAttribute("Hidden", false)
            RightArm.Name = "RightUpperArm"
            LeftArm.Name = "LeftUpperArm"
           
            RightArm.RightShoulder.C1 = RightC1
            LeftArm.LeftShoulder.C1 = LeftC1
    end)
    
    local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    local Achievements = debug.getupvalue(Unlock, 1)
    
    local custom = {
        Title = "Unlock The Crucifix",
        Desc = "How did you..",  --first line
        Reason = "Somehow.. You Obtained the Crucifix..", --change this for second line of the badgs desc
        BadgeId = 2127965910, --change badge id for image
        Category = 0,
    }
    
    local old = {}
    for i, v in next, Achievements.Join do
        old[i] = v
    end
    
    for i, v in next, custom do
        Achievements.Join[i] = v
    end
    
    Unlock(nil, "Join")
    
    for i, v in next, old do
        Achievements.Join[i] = v
    end
    end
    end
    FullVersion()
    end
})

itemsTab:AddButton({
    Name = "Give Grinny manaasdasdasd(shop)",
    Callback = function ()
    --// Grinning Man (Execute in prerun shop)
function FullVersion() do
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
    local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
    
    
    -- Create your tool here
    local exampleTool = game:GetObjects("rbxassetid://11605259044")[1]
    
    -- Create custom shop item
    CustomShop.CreateItem(exampleTool, {
        Title = "grinning man",
        Desc = "=)",
        Image = "https://cdn.discordapp.com/attachments/1041861318128443412/1043508594508832838/a431681a8959450db7db24b813400494.jpg",
        Price = 6218332192310894341,
        Stack = 100,
    })
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local tool = exampleTool
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local RightArm = Char:WaitForChild("RightUpperArm")
    local LeftArm = Char:WaitForChild("LeftUpperArm")
    local RightC1 = RightArm.RightShoulder.C1
    local LeftC1 = LeftArm.LeftShoulder.C1
            local function setupCrucifix(tool)
            RightArm.Name = "R_Arm"
            LeftArm.Name = "L_Arm"
            
            RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
            LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            for _, v in next, Hum:GetPlayingAnimationTracks() do
                v:Stop()
            end
            end
    tool.Equipped:Connect(function()
        setupCrucifix(exampleTool)
        game.Players.LocalPlayer:SetAttribute("Hidden", true)
        UIS.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                if tool.Parent == game.Players.LocalPlayer.Character then
                       if game.Workspace:FindFirstChild("Lookman") then
                          local eyes = game.Workspace:FindFirstChild("Lookman").Core
                          local crucifixed = Instance.new("BoolValue")
                          crucifixed.Parent = eyes
                          crucifixed.Name = "GettingCrucifixed"
                          eyes.Ambience.Playing = false
                          eyes.Repent.Looped = true
                          eyes.Repent:Play()
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
                          wait(1.2)
                          local ClonedMesh = tool.NewOneBro:Clone()
                          ClonedMesh.Parent = game.Workspace
                          ClonedMesh.Anchored = true
                          tool:Destroy()
                          eyes.Repent.Playing = false
                          eyes.Scream:Play()
                          eyes.PointLight.Enabled = false
                          eyes.PointLight.Enabled = false
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(6, 10, 0.1, 4.5)
                          loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()
                          wait(0.3)
                          game.Workspace:FindFirstChild("Lookman"):Destroy()
                   end
                   end
                  end
        end)
        end)
    tool.Unequipped:Connect(function()
        game.Players.LocalPlayer:SetAttribute("Hidden", false)
            RightArm.Name = "RightUpperArm"
            LeftArm.Name = "LeftUpperArm"
            
            RightArm.RightShoulder.C1 = RightC1
            LeftArm.LeftShoulder.C1 = LeftC1
    end)
    
    local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    local Achievements = debug.getupvalue(Unlock, 1)
    
    local custom = {
        Title = "Unlock The Crucifix", 
        Desc = "How did you..",  --first line
        Reason = "Somehow.. You Obtained the Crucifix..", --change this for second line of the badgs desc
        BadgeId = 2127965910, --change badge id for image
        Category = 0,
    }
    
    local old = {}
    for i, v in next, Achievements.Join do
        old[i] = v
    end
    
    for i, v in next, custom do
        Achievements.Join[i] = v
    end
    
    Unlock(nil, "Join")
    
    for i, v in next, old do
        Achievements.Join[i] = v
    end
    end
    end
    FullVersion()
    end
})

itemsTab:AddButton({
    Name = "BloxyCola",
    Callback = function ()
   --[[  // -------------------------------- \\
      |  --      Bloxy Cola Script     --  |
      \\ -------------------------------- //
--]] 
 
local player = game:GetService("Players").LocalPlayer
local bp = player:FindFirstChildOfClass("Backpack")
--------------------------------------------------------------------|
tl=Instance.new("Tool")                                           --|
tl.Name = 'BloxyCola'                                             --|
tl.Parent = bp                                                    --|
--------------------------------------------------------------------|
part=Instance.new("Part",tl)                                      --|
part.Name = 'Handle'                                              --|
--------------------------------------------------------------------|
sound1=Instance.new("Sound",part)                                 --|
sound1.Name = 'DrinkSound'                                        --|
sound1.SoundId = 'http://www.roblox.com/asset/?id=10722059'       --|
--------------------------------------------------------------------|
sound2=Instance.new("Sound",part)                                 --|
sound2.Name = 'OpenSound'                                         --|
sound2.SoundId = 'http://www.roblox.com/asset/?id=10721950'       --|
--------------------------------------------------------------------|
mesh=Instance.new("SpecialMesh",part)                             --|
mesh.MeshId = 'http://www.roblox.com/asset/?id=10470609'          --|
mesh.Scale = Vector3.new(1.2, 1.2, 1.2)                           --|
mesh.TextureId = 'http://www.roblox.com/asset/?id=10470600'       --|
mesh.Name = 'mesh'  -- :v                                         --|
--------------------------------------------------------------------|
 
print("Bloxy Cola Script - Loading...")
wait(0.00000000000000000000000000000000000000000000000000000000000001)
-- let's go
 
 
local Tool = tl;
 
enabled = true
 
 
 
 
function onActivated()
    if not enabled  then
        return
    end
 
    enabled = false
    Tool.GripForward = Vector3.new(0,-.759,-.651)
    Tool.GripPos = Vector3.new(1.5,-.5,.3)
    Tool.GripRight = Vector3.new(1,0,0)
    Tool.GripUp = Vector3.new(0,.651,-.759)
 
 
    Tool.Handle.DrinkSound:Play()
 
    wait(3)
    
    local h = Tool.Parent:FindFirstChild("Humanoid")
    if (h ~= nil) then
        if (h.MaxHealth > h.Health + 5) then
            h.Health = h.Health + 5
        else    
            h.Health = h.MaxHealth
        end
    end
 
    Tool.GripForward = Vector3.new(-.976,0,-0.217)
    Tool.GripPos = Vector3.new(0.03,0,0)
    Tool.GripRight = Vector3.new(.217,0,-.976)
    Tool.GripUp = Vector3.new(0,1,0)
 
    enabled = true
 
end
 
function onEquipped()
    Tool.Handle.OpenSound:play()
end
 
tl.Activated:Connect(onActivated)
tl.Equipped:Connect(onEquipped)
wait(0.0000000000000000000000000000000000000000000000000000001)
warn('Bloxy Cola Script - Loaded!')
    end
})

itemsTab:AddButton({
    Name = "Flashlight(shop)",
    Callback = function ()
    --// Flash light (Execute in prerun shop)
function FullVersion() do
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
    local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
    
    
    -- Create your tool here
    local exampleTool = game:GetObjects("rbxassetid://11475447684")[1]
    
    -- Create custom shop item
    CustomShop.CreateItem(exampleTool, {
        Title = "Flash light",
        Desc = "---",
        Image = "https://static.wikia.nocookie.net/doors-game/images/8/88/Icon_crucifix2.png/revision/latest?cb=20220728033038",
        Price = 65,
        Stack = 0,
    })
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local tool = exampleTool
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local RightArm = Char:WaitForChild("RightUpperArm")
    local LeftArm = Char:WaitForChild("LeftUpperArm")
    local RightC1 = RightArm.RightShoulder.C1
    local LeftC1 = LeftArm.LeftShoulder.C1
            local function setupCrucifix(tool)
            RightArm.Name = "R_Arm"
            LeftArm.Name = "L_Arm"
            
            RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
            LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            for _, v in next, Hum:GetPlayingAnimationTracks() do
                v:Stop()
            end
            end
    tool.Equipped:Connect(function()
        setupCrucifix(exampleTool)
        game.Players.LocalPlayer:SetAttribute("Hidden", true)
        UIS.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                if tool.Parent == game.Players.LocalPlayer.Character then
                       if game.Workspace:FindFirstChild("Lookman") then
                          local eyes = game.Workspace:FindFirstChild("Lookman").Core
                          local crucifixed = Instance.new("BoolValue")
                          crucifixed.Parent = eyes
                          crucifixed.Name = "GettingCrucifixed"
                          eyes.Ambience.Playing = false
                          eyes.Repent.Looped = true
                          eyes.Repent:Play()
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
                          wait(1.2)
                          local ClonedMesh = tool.NewOneBro:Clone()
                          ClonedMesh.Parent = game.Workspace
                          ClonedMesh.Anchored = true
                          tool:Destroy()
                          eyes.Repent.Playing = false
                          eyes.Scream:Play()
                          eyes.PointLight.Enabled = false
                          eyes.PointLight.Enabled = false
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(6, 10, 0.1, 4.5)
                          loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()
                          wait(0.3)
                          game.Workspace:FindFirstChild("Lookman"):Destroy()
                   end
                   end
                  end
        end)
        end)
    tool.Unequipped:Connect(function()
        game.Players.LocalPlayer:SetAttribute("Hidden", false)
            RightArm.Name = "RightUpperArm"
            LeftArm.Name = "LeftUpperArm"
            
            RightArm.RightShoulder.C1 = RightC1
            LeftArm.LeftShoulder.C1 = LeftC1
    end)
    
    local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    local Achievements = debug.getupvalue(Unlock, 1)
    
    local custom = {
        Title = "Flash light", 
        Desc = "tool",  --first line
        Reason = "---", --change this for second line of the badgs desc
        BadgeId = 2127965910, --change badge id for image
        Category = 0,
    }
    
    local old = {}
    for i, v in next, Achievements.Join do
        old[i] = v
    end
    
    for i, v in next, custom do
        Achievements.Join[i] = v
    end
    
    Unlock(nil, "Join")
    
    for i, v in next, old do
        Achievements.Join[i] = v
    end
    end
    end
    FullVersion()
    end
})

itemsTab:AddButton({
    Name = "Give M4A1(shop)",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fazedrab/EntitySpawner/main/M4A1.lua"))()
    end
})
itemsTab:AddButton({
    Name = "Give Gun(not reversable)",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/DOORSFpsGun.lua?token=GHSAT0AAAAAAB2POHILOXMAHBQ2GN2QD2MQY3SXTCQ"))()
    end
})
itemsTab:AddButton({
    Name = "Give Square Crucifix",
    Callback = function ()
       --// Crucifix (Execute in prerun shop)
function FullVersion() do
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
    local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
    
    
    -- Create your tool here
    local exampleTool = game:GetObjects("rbxassetid://11535001574")[1]
    
    -- Create custom shop item
    CustomShop.CreateItem(exampleTool, {
        Title = "Crucifix",
        Desc = "Single use, blocks most attacks",
        Image = "https://static.wikia.nocookie.net/doors-game/images/8/88/Icon_crucifix2.png/revision/latest?cb=20220728033038",
        Price = 1,
        Stack = 0,
    })
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local tool = exampleTool
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local RightArm = Char:WaitForChild("RightUpperArm")
    local LeftArm = Char:WaitForChild("LeftUpperArm")
    local RightC1 = RightArm.RightShoulder.C1
    local LeftC1 = LeftArm.LeftShoulder.C1
            local function setupCrucifix(tool)
            RightArm.Name = "R_Arm"
            LeftArm.Name = "L_Arm"
            
            RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
            LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            for _, v in next, Hum:GetPlayingAnimationTracks() do
                v:Stop()
            end
            end
    tool.Equipped:Connect(function()
        setupCrucifix(exampleTool)
        game.Players.LocalPlayer:SetAttribute("Hidden", true)
        UIS.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                if tool.Parent == game.Players.LocalPlayer.Character then
                       if game.Workspace:FindFirstChild("Lookman") then
                          local eyes = game.Workspace:FindFirstChild("Lookman").Core
                          local crucifixed = Instance.new("BoolValue")
                          crucifixed.Parent = eyes
                          crucifixed.Name = "GettingCrucifixed"
                          eyes.Ambience.Playing = false
                          eyes.Repent.Looped = true
                          eyes.Repent:Play()
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
                          wait(1.2)
                          local ClonedMesh = tool.NewOneBro:Clone()
                          ClonedMesh.Parent = game.Workspace
                          ClonedMesh.Anchored = true
                          tool:Destroy()
                          eyes.Repent.Playing = false
                          eyes.Scream:Play()
                          eyes.PointLight.Enabled = false
                          eyes.PointLight.Enabled = false
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()
    
    camShake:ShakeOnce(6, 10, 0.1, 4.5)
                          loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()
                          wait(0.3)
                          game.Workspace:FindFirstChild("Lookman"):Destroy()
                   end
                   end
                  end
        end)
        end)
    tool.Unequipped:Connect(function()
        game.Players.LocalPlayer:SetAttribute("Hidden", false)
            RightArm.Name = "RightUpperArm"
            LeftArm.Name = "LeftUpperArm"
            
            RightArm.RightShoulder.C1 = RightC1
            LeftArm.LeftShoulder.C1 = LeftC1
    end)
    
    local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    local Achievements = debug.getupvalue(Unlock, 1)
    
    local custom = {
        Title = "Unlock The Crucifix", 
        Desc = "How did you..",  --first line
        Reason = "Somehow.. You Obtained the Crucifix..", --change this for second line of the badgs desc
        BadgeId = 2127965910, --change badge id for image
        Category = 0,
    }
    
    local old = {}
    for i, v in next, Achievements.Join do
        old[i] = v
    end
    
    for i, v in next, custom do
        Achievements.Join[i] = v
    end
    
    Unlock(nil, "Join")
    
    for i, v in next, old do
        Achievements.Join[i] = v
    end
    end
    end
    FullVersion()
    end
})
itemsTab:AddButton({
    Name = "Give Gravity Gun",
    Callback = function ()
        function sandbox(var,func)
            local env = getfenv(func)
            local newenv = setmetatable({},{
                __index = function(self,k)
                    if k=="script" then
                        return var
                    else
                        return env[k]
                    end
                end,
            })
            setfenv(func,newenv)
            return func
        end
        cors = {}
        mas = Instance.new("Model",game:GetService("Lighting"))
        Tool0 = Instance.new("Tool")
        Part1 = Instance.new("Part")
        CylinderMesh2 = Instance.new("CylinderMesh")
        Part3 = Instance.new("Part")
        LocalScript4 = Instance.new("LocalScript")
        Script5 = Instance.new("Script")
        LocalScript6 = Instance.new("LocalScript")
        Script7 = Instance.new("Script")
        LocalScript8 = Instance.new("LocalScript")
        Part9 = Instance.new("Part")
        Script10 = Instance.new("Script")
        Part11 = Instance.new("Part")
        Script12 = Instance.new("Script")
        Part13 = Instance.new("Part")
        Script14 = Instance.new("Script")
        Tool0.Name = "Telekinesis Gun"
        Tool0.Parent = mas
        Tool0.CanBeDropped = false
        Part1.Name = "Handle"
        Part1.Parent = Tool0
        Part1.Material = Enum.Material.Neon
        Part1.BrickColor = BrickColor.new("Cyan")
        Part1.Transparency = 1
        Part1.Rotation = Vector3.new(0, 15.4200001, 0)
        Part1.CanCollide = false
        Part1.FormFactor = Enum.FormFactor.Custom
        Part1.Size = Vector3.new(1, 0.400000036, 0.300000012)
        Part1.CFrame = CFrame.new(-55.2695465, 0.696546972, 0.383156985, 0.96399641, -4.98074878e-05, 0.265921414, 4.79998416e-05, 1, 1.32960558e-05, -0.265921414, -5.30653779e-08, 0.96399641)
        Part1.BottomSurface = Enum.SurfaceType.Smooth
        Part1.TopSurface = Enum.SurfaceType.Smooth
        Part1.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Part1.Position = Vector3.new(-55.2695465, 0.696546972, 0.383156985)
        Part1.Orientation = Vector3.new(0, 15.4200001, 0)
        Part1.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        CylinderMesh2.Parent = Part1
        CylinderMesh2.Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001)
        CylinderMesh2.Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001)
        Part3.Name = "Shoot"
        Part3.Parent = Tool0
        Part3.Material = Enum.Material.Neon
        Part3.BrickColor = BrickColor.new("Cyan")
        Part3.Reflectance = 0.30000001192093
        Part3.Transparency = 1
        Part3.Rotation = Vector3.new(90.9799957, 0.25999999, -91.409996)
        Part3.CanCollide = false
        Part3.FormFactor = Enum.FormFactor.Custom
        Part3.Size = Vector3.new(0.200000003, 0.25, 0.310000032)
        Part3.CFrame = CFrame.new(-54.7998123, 0.774299085, -0.757350147, -0.0245519895, 0.99968797, 0.00460194098, 0.0169109926, 0.00501798885, -0.999844491, -0.999555528, -0.0244703442, -0.0170289185)
        Part3.BottomSurface = Enum.SurfaceType.Smooth
        Part3.TopSurface = Enum.SurfaceType.Smooth
        Part3.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Part3.Position = Vector3.new(-54.7998123, 0.774299085, -0.757350147)
        Part3.Orientation = Vector3.new(88.9899979, 164.87999, 73.4700012)
        Part3.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        LocalScript4.Parent = Tool0
        table.insert(cors,sandbox(LocalScript4,function()
        -- Variables for services
        local render = game:GetService("RunService").RenderStepped
        local contextActionService = game:GetService("ContextActionService")
        local userInputService = game:GetService("UserInputService")
        
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        local Tool = script.Parent
        
        -- Variables for Module Scripts
        local screenSpace = require(Tool:WaitForChild("ScreenSpace"))
        
        local connection
        -- Variables for character joints
        
        local neck, shoulder, oldNeckC0, oldShoulderC0 
        
        local mobileShouldTrack = true
        
        -- Thourough check to see if a character is sitting
        local function amISitting(character)
            local t = character.Torso
            for _, part in pairs(t:GetConnectedParts(true)) do
                if part:IsA("Seat") or part:IsA("VehicleSeat") then
                    return true
                end
            end
        end
        
        -- Function to call on renderstepped. Orients the character so it is facing towards
        -- the player mouse's position in world space. If character is sitting then the torso
        -- should not track
        local function frame(mousePosition)
            -- Special mobile consideration. We don't want to track if the user was touching a ui
            -- element such as the movement controls. Just return out of function if so to make sure
            -- character doesn't track
            if not mobileShouldTrack then return end
            
            -- Make sure character isn't swiming. If the character is swimming the following code will
            -- not work well; the character will not swim correctly. Besides, who shoots underwater?
            if player.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Swimming then
                local torso = player.Character.Torso
                local head = player.Character.Head
                
                local toMouse = (mousePosition - head.Position).unit
                local angle = math.acos(toMouse:Dot(Vector3.new(0,1,0)))
                
                local neckAngle = angle
            
                -- Limit how much the head can tilt down. Too far and the head looks unnatural
                if math.deg(neckAngle) > 110 then
                    neckAngle = math.rad(110)
                end
                neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.pi - neckAngle,math.pi,0)
                
                -- Calculate horizontal rotation
                local arm = player.Character:FindFirstChild("Right Arm")
                local fromArmPos = torso.Position + torso.CFrame:vectorToWorldSpace(Vector3.new(
                    torso.Size.X/2 + arm.Size.X/2, torso.Size.Y/2 - arm.Size.Z/2, 0))
                local toMouseArm = ((mousePosition - fromArmPos) * Vector3.new(1,0,1)).unit
                local look = (torso.CFrame.lookVector * Vector3.new(1,0,1)).unit
                local lateralAngle = math.acos(toMouseArm:Dot(look))		
                
                -- Check for rogue math
                if tostring(lateralAngle) == "-1.#IND" then
                    lateralAngle = 0
                end		
                
                -- Handle case where character is sitting down
                if player.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then			
                    
                    local cross = torso.CFrame.lookVector:Cross(toMouseArm)
                    if lateralAngle > math.pi/2 then
                        lateralAngle = math.pi/2
                    end
                    if cross.Y < 0 then
                        lateralAngle = -lateralAngle
                    end
                end	
                
                -- Turn shoulder to point to mouse
                shoulder.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(math.pi/2 - angle,math.pi/2 + lateralAngle,0)	
                
                -- If not sitting then aim torso laterally towards mouse
                if not amISitting(player.Character) then
                    torso.CFrame = CFrame.new(torso.Position, torso.Position + (Vector3.new(
                        mousePosition.X, torso.Position.Y, mousePosition.Z)-torso.Position).unit)
                else
                    --print("sitting")		
                end	
            end
        end
        
        -- Function to bind to render stepped if player is on PC
        local function pcFrame()
            frame(mouse.Hit.p)
        end
        
        -- Function to bind to touch moved if player is on mobile
        local function mobileFrame(touch, processed)
            -- Check to see if the touch was on a UI element. If so, we don't want to update anything
            if not processed then
                -- Calculate touch position in world space. Uses Stravant's ScreenSpace Module script
                -- to create a ray from the camera.
                local test = screenSpace.ScreenToWorld(touch.Position.X, touch.Position.Y, 1)
                local nearPos = game.Workspace.CurrentCamera.CoordinateFrame:vectorToWorldSpace(screenSpace.ScreenToWorld(touch.Position.X, touch.Position.Y, 1))
                nearPos = game.Workspace.CurrentCamera.CoordinateFrame.p - nearPos
                local farPos = screenSpace.ScreenToWorld(touch.Position.X, touch.Position.Y,50) 
                farPos = game.Workspace.CurrentCamera.CoordinateFrame:vectorToWorldSpace(farPos) * -1
                if farPos.magnitude > 900 then
                    farPos = farPos.unit * 900
                end
                local ray = Ray.new(nearPos, farPos)
                local part, pos = game.Workspace:FindPartOnRay(ray, player.Character)
                
                -- if a position was found on the ray then update the character's rotation
                if pos then
                    frame(pos)
                end
            end
        end
        
        local oldIcon = nil
        -- Function to bind to equip event
        local function equip()
            local torso = player.Character.Torso
            
            -- Setup joint variables
            neck = torso.Neck	
            oldNeckC0 = neck.C0
            shoulder = torso:FindFirstChild("Right Shoulder")
            oldShoulderC0 = shoulder.C0
            
            -- Remember old mouse icon and update current
            oldIcon = mouse.Icon
            mouse.Icon = "rbxassetid:// 2184939409"
            
            -- Bind TouchMoved event if on mobile. Otherwise connect to renderstepped
            if userInputService.TouchEnabled then
                connection = userInputService.TouchMoved:connect(mobileFrame)
            else
                connection = render:connect(pcFrame)
            end
            
            -- Bind TouchStarted and TouchEnded. Used to determine if character should rotate
            -- during touch input
            userInputService.TouchStarted:connect(function(touch, processed)
                mobileShouldTrack = not processed
            end)	
            userInputService.TouchEnded:connect(function(touch, processed)
                mobileShouldTrack = false
            end)
            
            -- Fire server's equip event
            game.ReplicatedStorage.ROBLOX_PistolEquipEvent:FireServer()
            
            -- Bind event for when mouse is clicked to fire server's fire event
            mouse.Button1Down:connect(function()
                game.ReplicatedStorage.ROBLOX_PistolFireEvent:FireServer(mouse.Hit.p)
            end)
            
            -- Bind reload event to mobile button and r key
            contextActionService:BindActionToInputTypes("Reload", function() 
                game.ReplicatedStorage.ROBLOX_PistolReloadEvent:FireServer()		
            end, true, "")
            
            -- If game uses filtering enabled then need to update server while tool is
            -- held by character.
            if workspace.FilteringEnabled then
                while connection do
                    wait()
                    game.ReplicatedStorage.ROBLOX_PistolUpdateEvent:FireServer(neck.C0, shoulder.C0)
                end
            end
        end
        
        -- Function to bind to Unequip event
        local function unequip()
            if connection then connection:disconnect() end
            contextActionService:UnbindAction("Reload")
            game.ReplicatedStorage.ROBLOX_PistolUnequipEvent:FireServer()
            mouse.Icon = oldIcon
            neck.C0 = oldNeckC0
            shoulder.C0 = oldShoulderC0
        end
        
        -- Bind tool events
        Tool.Equipped:connect(equip)
        Tool.Unequipped:connect(unequip)
        end))
        Script5.Name = "qPerfectionWeld"
        Script5.Parent = Tool0
        table.insert(cors,sandbox(Script5,function()
        -- Created by Quenty (@Quenty, follow me on twitter).
        -- Should work with only ONE copy, seamlessly with weapons, trains, et cetera.
        -- Parts should be ANCHORED before use. It will, however, store relatives values and so when tools are reparented, it'll fix them.
        
        --[[ INSTRUCTIONS
        - Place in the model
        - Make sure model is anchored
        - That's it. It will weld the model and all children. 
        
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
        
        This script is designed to be used is a regular script. In a local script it will weld, but it will not attempt to handle ancestory changes. 
        ]]
        
        --[[ DOCUMENTATION
        - Will work in tools. If ran more than once it will not create more than one weld.  This is especially useful for tools that are dropped and then picked up again.
        - Will work in PBS servers
        - Will work as long as it starts out with the part anchored
        - Stores the relative CFrame as a CFrame value
        - Takes careful measure to reduce lag by not having a joint set off or affected by the parts offset from origin
        - Utilizes a recursive algorith to find all parts in the model
        - Will reweld on script reparent if the script is initially parented to a tool.
        - Welds as fast as possible
        ]]
        
        -- qPerfectionWeld.lua
        -- Created 10/6/2014
        -- Author: Quenty
        -- Version 1.0.3
        
        -- Updated 10/14/2014 - Updated to 1.0.1
        --- Bug fix with existing ROBLOX welds ? Repro by asimo3089
        
        -- Updated 10/14/2014 - Updated to 1.0.2
        --- Fixed bug fix. 
        
        -- Updated 10/14/2014 - Updated to 1.0.3
        --- Now handles joints semi-acceptably. May be rather hacky with some joints. :/
        
        local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).
        
        
        local function CallOnChildren(Instance, FunctionToCall)
            -- Calls a function on each of the children of a certain object, using recursion.  
        
            FunctionToCall(Instance)
        
            for _, Child in next, Instance:GetChildren() do
                CallOnChildren(Child, FunctionToCall)
            end
        end
        
        local function GetNearestParent(Instance, ClassName)
            -- Returns the nearest parent of a certain class, or returns nil
        
            local Ancestor = Instance
            repeat
                Ancestor = Ancestor.Parent
                if Ancestor == nil then
                    return nil
                end
            until Ancestor:IsA(ClassName)
        
            return Ancestor
        end
        
        local function GetBricks(StartInstance)
            local List = {}
        
            -- if StartInstance:IsA("BasePart") then
            -- 	List[#List+1] = StartInstance
            -- end
        
            CallOnChildren(StartInstance, function(Item)
                if Item:IsA("BasePart") then
                    List[#List+1] = Item;
                end
            end)
        
            return List
        end
        
        local function Modify(Instance, Values)
            -- Modifies an Instance by using a table.  
        
            assert(type(Values) == "table", "Values is not a table");
        
            for Index, Value in next, Values do
                if type(Index) == "number" then
                    Value.Parent = Instance
                else
                    Instance[Index] = Value
                end
            end
            return Instance
        end
        
        local function Make(ClassType, Properties)
            -- Using a syntax hack to create a nice way to Make new items.  
        
            return Modify(Instance.new(ClassType), Properties)
        end
        
        local Surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
        local HingSurfaces = {"Hinge", "Motor", "SteppingMotor"}
        
        local function HasWheelJoint(Part)
            for _, SurfaceName in pairs(Surfaces) do
                for _, HingSurfaceName in pairs(HingSurfaces) do
                    if Part[SurfaceName].Name == HingSurfaceName then
                        return true
                    end
                end
            end
            
            return false
        end
        
        local function ShouldBreakJoints(Part)
            --- We do not want to break joints of wheels/hinges. This takes the utmost care to not do this. There are
            --  definitely some edge cases. 
        
            if NEVER_BREAK_JOINTS then
                return false
            end
            
            if HasWheelJoint(Part) then
                return false
            end
            
            local Connected = Part:GetConnectedParts()
            
            if #Connected == 1 then
                return false
            end
            
            for _, Item in pairs(Connected) do
                if HasWheelJoint(Item) then
                    return false
                elseif not Item:IsDescendantOf(script.Parent) then
                    return false
                end
            end
            
            return true
        end
        
        local function WeldTogether(Part0, Part1, JointType, WeldParent)
            --- Weld's 2 parts together
            -- @param Part0 The first part
            -- @param Part1 The second part (Dependent part most of the time).
            -- @param [JointType] The type of joint. Defaults to weld.
            -- @param [WeldParent] Parent of the weld, Defaults to Part0 (so GC is better).
            -- @return The weld created.
        
            JointType = JointType or "Weld"
            local RelativeValue = Part1:FindFirstChild("qRelativeCFrameWeldValue")
            
            local NewWeld = Part1:FindFirstChild("qCFrameWeldThingy") or Instance.new(JointType)
            Modify(NewWeld, {
                Name = "qCFrameWeldThingy";
                Part0  = Part0;
                Part1  = Part1;
                C0     = CFrame.new();--Part0.CFrame:inverse();
                C1     = RelativeValue and RelativeValue.Value or Part1.CFrame:toObjectSpace(Part0.CFrame); --Part1.CFrame:inverse() * Part0.CFrame;-- Part1.CFrame:inverse();
                Parent = Part1;
            })
        
            if not RelativeValue then
                RelativeValue = Make("CFrameValue", {
                    Parent     = Part1;
                    Name       = "qRelativeCFrameWeldValue";
                    Archivable = true;
                    Value      = NewWeld.C1;
                })
            end
        
            return NewWeld
        end
        
        local function WeldParts(Parts, MainPart, JointType, DoNotUnanchor)
            -- @param Parts The Parts to weld. Should be anchored to prevent really horrible results.
            -- @param MainPart The part to weld the model to (can be in the model).
            -- @param [JointType] The type of joint. Defaults to weld. 
            -- @parm DoNotUnanchor Boolean, if true, will not unachor the model after cmopletion.
            
            for _, Part in pairs(Parts) do
                if ShouldBreakJoints(Part) then
                    Part:BreakJoints()
                end
            end
            
            for _, Part in pairs(Parts) do
                if Part ~= MainPart then
                    WeldTogether(MainPart, Part, JointType, MainPart)
                end
            end
        
            if not DoNotUnanchor then
                for _, Part in pairs(Parts) do
                    Part.Anchored = false
                end
                MainPart.Anchored = false
            end
        end
        
        local function PerfectionWeld()	
            local Tool = GetNearestParent(script, "Tool")
        
            local Parts = GetBricks(script.Parent)
            local PrimaryPart = Tool and Tool:FindFirstChild("Handle") and Tool.Handle:IsA("BasePart") and Tool.Handle or script.Parent:IsA("Model") and script.Parent.PrimaryPart or Parts[1]
        
            if PrimaryPart then
                WeldParts(Parts, PrimaryPart, "Weld", false)
            else
                warn("qWeld - Unable to weld part")
            end
            
            return Tool
        end
        
        local Tool = PerfectionWeld()
        
        
        if Tool and script.ClassName == "Script" then
            --- Don't bother with local scripts
        
            script.Parent.AncestryChanged:connect(function()
                PerfectionWeld()
            end)
        end
        
        -- Created by Quenty (@Quenty, follow me on twitter).
        
        end))
        LocalScript6.Name = "Animate"
        LocalScript6.Parent = Tool0
        table.insert(cors,sandbox(LocalScript6,function()
        local arms = nil
        local torso = nil
        local welds = {}
        local Tool = script.Parent
        local neck = nil
        local orginalC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
        
        function Equip(mouse)
        wait(0.01)
        arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
        head = Tool.Parent:FindFirstChild("Head") 
        torso = Tool.Parent:FindFirstChild("Torso")
        if neck == nil then 
        neck = Tool.Parent:FindFirstChild("Torso").Neck
        end 
        if arms ~= nil and torso ~= nil then
        local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
        if sh ~= nil then
        local yes = true
        if yes then
        yes = false
        sh[1].Part1 = nil
        sh[2].Part1 = nil
        local weld1 = Instance.new("Weld")
        weld1.Part0 = head
        weld1.Parent = head
        weld1.Part1 = arms[1]
        welds[1] = weld1
        local weld2 = Instance.new("Weld")
        weld2.Part0 = head
        weld2.Parent = head
        weld2.Part1 = arms[2]
        welds[2] = weld2
        -------------------------here
        weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
        weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
            mouse.Move:connect(function ()
                --local Direction = Tool.Direction.Value 
                local Direction = mouse.Hit.p
                local b = head.Position.Y-Direction.Y
                local dist = (head.Position-Direction).magnitude
                local answer = math.asin(b/dist)
                neck.C0=orginalC0*CFrame.fromEulerAnglesXYZ(answer,0,0)
                wait(0.1)
            end)end
        else
        print("sh")
        end
        else
        print("arms")
        end
        end
        
        function Unequip(mouse)
        if arms ~= nil and torso ~= nil then
        local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
        if sh ~= nil then
        local yes = true
        if yes then
        yes = false
            neck.C0 = orginalC0
        
        sh[1].Part1 = arms[1]
        sh[2].Part1 = arms[2]
        welds[1].Parent = nil
        welds[2].Parent = nil
        end
        else
        print("sh")
        end
        else
        print("arms")
        end
        end
        Tool.Equipped:connect(Equip)
        Tool.Unequipped:connect(Unequip)
        
        function Animate()
        arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
            if Tool.AnimateValue.Value == "Shoot" then 
                local weld1 = welds[1]
                local weld2 = welds[2]
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
                wait(0.00001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.05, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
                wait(0.00001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.1, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-15), 0)
                wait(0.00001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.3, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15), 0)
                wait(0.00001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.35, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-115), math.rad(-15), 0)
                wait(0.00001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.00001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)	
                Tool.AnimateValue.Value = "None"
            end 
            if Tool.AnimateValue.Value == "Reload" then 
                local weld1 = welds[1]
                local weld2 = welds[2]
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-100), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-105), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-115), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.45, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.9, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.5, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 1, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.55, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 1.1, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.57, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 1.2, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.6, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 1.3, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0.6, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-120), math.rad(-15), 0)
                wait(0.0001)
                weld1.C1 = CFrame.new(-0.5+1.5, 0.8, .9)* CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
                weld2.C1 = CFrame.new(-1, 0.8, 0.5-1.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)	
                Tool.AnimateValue.Value = "None"
            end 
        end 
        
        Tool.AnimateValue.Changed:connect(Animate)
        
        end))
        Script7.Name = "LineConnect"
        Script7.Parent = Tool0
        Script7.Disabled = true
        table.insert(cors,sandbox(Script7,function()
        wait()
        local check = script.Part2
        local part1 = script.Part1.Value
        local part2 = script.Part2.Value
        local parent = script.Par.Value
        local color = script.Color
        local line = Instance.new("Part")
        line.TopSurface = 0
        line.BottomSurface = 0
        line.Reflectance = .5
        line.Name = "Laser"
        line.Transparency = 0.6
        line.Locked = true
        line.CanCollide = false
        line.Anchored = true
        line.formFactor = 0
        line.Size = Vector3.new(0.4,0.4,1)
        local mesh = Instance.new("BlockMesh")
        mesh.Parent = line
        while true do
            if (check.Value==nil) then break end
            if (part1==nil or part2==nil or parent==nil) then break end
            if (part1.Parent==nil or part2.Parent==nil) then break end
            if (parent.Parent==nil) then break end
            local lv = CFrame.new(part1.Position,part2.Position)
            local dist = (part1.Position-part2.Position).magnitude
            line.Parent = parent
            line.Material = "Neon"
            line.BrickColor = color.Value.BrickColor
            line.Reflectance = color.Value.Reflectance
            line.Transparency = "0.2"
            line.CFrame = CFrame.new(part1.Position+lv.lookVector*dist/2)
            line.CFrame = CFrame.new(line.Position,part2.Position)
            mesh.Scale = Vector3.new(.25,.25,dist)
            wait()
        end
        line:remove()
        script:remove() 
        end))
        LocalScript8.Name = "MainScript"
        LocalScript8.Parent = Tool0
        table.insert(cors,sandbox(LocalScript8,function()
        --Physics gun created by Killersoldier45
        wait() 
        tool = script.Parent
        lineconnect = tool.LineConnect
        object = nil
        mousedown = false
        found = false
        BP = Instance.new("BodyPosition")
        BP.maxForce = Vector3.new(math.huge*math.huge,math.huge*math.huge,math.huge*math.huge) --pwns everyone elses bodyposition
        BP.P = BP.P*10 --faster movement. less bounceback.
        dist = nil
        point = Instance.new("Part")
        point.Locked = true
        point.Anchored = true
        point.formFactor = 0
        point.Shape = 0
        point.Material = 'Neon'
        point.BrickColor = BrickColor.new("Toothpaste")
        point.Size = Vector3.new(1,1,1)
        point.CanCollide = false
        local mesh = Instance.new("SpecialMesh")
        mesh.MeshType = "Sphere"
        mesh.Scale = Vector3.new(.2,.2,.2)
        mesh.Parent = point
        handle = tool.Shoot
        front = tool.Shoot
        color = tool.Shoot
        objval = nil
        local hooked = false 
        local hookBP = BP:clone() 
        hookBP.maxForce = Vector3.new(30000,30000,30000) 
        
        function LineConnect(part1,part2,parent)
            local p1 = Instance.new("ObjectValue")
            p1.Value = part1
            p1.Name = "Part1"
            local p2 = Instance.new("ObjectValue")
            p2.Value = part2
            p2.Name = "Part2"
            local par = Instance.new("ObjectValue")
            par.Value = parent
            par.Name = "Par"
            local col = Instance.new("ObjectValue")
            col.Value = color
            col.Name = "Color"
            local s = lineconnect:clone()
            s.Disabled = false
            p1.Parent = s
            p2.Parent = s
            par.Parent = s
            col.Parent = s
            s.Parent = workspace
            if (part2==object) then
                objval = p2
            end
        end
        
        function onButton1Down(mouse)
            if (mousedown==true) then return end
            mousedown = true
            coroutine.resume(coroutine.create(function()
                local p = point:clone()
                p.Parent = tool
                LineConnect(front,p,workspace)
                while (mousedown==true) do
                    p.Parent = tool
                    if (object==nil) then
                        if (mouse.Target==nil) then
                            local lv = CFrame.new(front.Position,mouse.Hit.p)
                            p.CFrame = CFrame.new(front.Position+(lv.lookVector*1000))
                        else
                            p.CFrame = CFrame.new(mouse.Hit.p)
                        end
                    else
                        LineConnect(front,object,workspace)
                        break
                    end
                    wait()
                end
                p:remove()
            end))
            while (mousedown==true) do
                if (mouse.Target~=nil) then
                    local t = mouse.Target
                    if (t.Anchored==false) then
                        object = t
                        dist = (object.Position-front.Position).magnitude
                        break
                    end
                end
                wait()
            end
            while (mousedown==true) do
                if (object.Parent==nil) then break end
                local lv = CFrame.new(front.Position,mouse.Hit.p)
                BP.Parent = object
                BP.position = front.Position+lv.lookVector*dist
                wait()
            end
            BP:remove()
            object = nil
            objval.Value = nil
        end
        
        function onKeyDown(key,mouse) 
            local key = key:lower() 
            local yesh = false 
            if (key=="q") then 
                if (dist>=5) then 
                    dist = dist-5 
                end 
            end 
            if key == "t" then 
            if (object==nil) then return end 
            for _,v in pairs(object:children()) do 
            if v.className == "BodyGyro" then 
            return nil 
            end 
            end 
            BG = Instance.new("BodyGyro") 
            BG.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
            BG.cframe = CFrame.new(object.CFrame.p) 
            BG.Parent = object 
            repeat wait() until(object.CFrame == CFrame.new(object.CFrame.p)) 
            BG.Parent = nil 
            if (object==nil) then return end 
            for _,v in pairs(object:children()) do 
            if v.className == "BodyGyro" then 
            v.Parent = nil 
            end 
            end 
            object.Velocity = Vector3.new(0,0,0) 
            object.RotVelocity = Vector3.new(0,0,0) 
            end 
            if (key=="e") then
                dist = dist+5
            end
            if (string.byte(key)==27) then 
                if (object==nil) then return end
                local e = Instance.new("Explosion")
                e.Parent = workspace
                e.Position = object.Position
                color.BrickColor = BrickColor.Black()
                point.BrickColor = BrickColor.White() 
                wait(.48)
                color.BrickColor = BrickColor.White() 
                point.BrickColor = BrickColor.Black() 
            end
            if (key=="") then 
                if not hooked then 
                if (object==nil) then return end 
                hooked = true 
                hookBP.position = object.Position 
                if tool.Parent:findFirstChild("Torso") then 
                hookBP.Parent = tool.Parent.Torso 
                if dist ~= (object.Size.x+object.Size.y+object.Size.z)+5 then 
                dist = (object.Size.x+object.Size.y+object.Size.z)+5 
                end 
                end 
                else 
                hooked = false 
                hookBP.Parent = nil 
                end 
            end 
            if (key=="r") then 
                if (object==nil) then return end 
                color.BrickColor = BrickColor.new("Toothpaste") 
                point.BrickColor = BrickColor.new("Toothpaste") 
                object.Parent = nil 
                wait(.48) 
                color.BrickColor = BrickColor.new("Toothpaste")
                point.BrickColor = BrickColor.new("Toothpaste")
            end 
            if (key=="x") then 
            if (object==nil) then return end 
            local New = object:clone() 
            New.Parent = object.Parent 
            for _,v in pairs(New:children()) do 
            if v.className == "BodyPosition" or v.className == "BodyGyro" then 
            v.Parent = nil 
            end 
            end 
            object = New 
            mousedown = false 
            mousedown = true 
            LineConnect(front,object,workspace) 
                while (mousedown==true) do
                if (object.Parent==nil) then break end
                local lv = CFrame.new(front.Position,mouse.Hit.p)
                BP.Parent = object
                BP.position = front.Position+lv.lookVector*dist
                wait()
            end
            BP:remove()
            object = nil
            objval.Value = nil
            end 
            if (key=="c") then 
                local Cube = Instance.new("Part") 
                Cube.Locked = true 
                Cube.Size = Vector3.new(4,4,4) 
                Cube.formFactor = 0 
                Cube.TopSurface = 0 
                Cube.BottomSurface = 0 
                Cube.Name = "WeightedStorageCube" 
                Cube.Parent = workspace 
                Cube.CFrame = CFrame.new(mouse.Hit.p) + Vector3.new(0,2,0) 
                for i = 0,5 do 
                    local Decal = Instance.new("Decal") 
                    Decal.Texture = "http://www.roblox.com/asset/?id=2662260" 
                    Decal.Face = i 
                    Decal.Name = "WeightedStorageCubeDecal" 
                    Decal.Parent = Cube 
                end 
            end 
            if (key=="") then 
                if dist ~= 15 then 
                    dist = 15 
                end 
            end 
        end
        
        function onEquipped(mouse)
            keymouse = mouse
            local char = tool.Parent
            human = char.Humanoid
            human.Changed:connect(function() if (human.Health==0) then mousedown = false BP:remove() point:remove() tool:remove() end end)
            mouse.Button1Down:connect(function() onButton1Down(mouse) end)
            mouse.Button1Up:connect(function() mousedown = false end)
            mouse.KeyDown:connect(function(key) onKeyDown(key,mouse) end)
            mouse.Icon = "rbxassetid://2184939409"
        end
        
        tool.Equipped:connect(onEquipped)
        end))
        Part9.Name = "GlowPart"
        Part9.Parent = Tool0
        Part9.Material = Enum.Material.Neon
        Part9.BrickColor = BrickColor.new("Cyan")
        Part9.Transparency = 0.5
        Part9.Rotation = Vector3.new(0, -89.5899963, 0)
        Part9.Shape = Enum.PartType.Cylinder
        Part9.Size = Vector3.new(1.20000005, 0.649999976, 2)
        Part9.CFrame = CFrame.new(-54.8191681, 0.773548007, -0.0522949994, 0.00736002205, 4.68389771e-11, -0.999974668, 4.72937245e-11, 1, 1.41590961e-10, 0.999974668, 5.09317033e-11, 0.00736002252)
        Part9.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Part9.Position = Vector3.new(-54.8191681, 0.773548007, -0.0522949994)
        Part9.Orientation = Vector3.new(0, -89.5799942, 0)
        Part9.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Script10.Name = "Glow Script"
        Script10.Parent = Part9
        table.insert(cors,sandbox(Script10,function()
        while true do
        wait(0.05)
        script.Parent.Transparency = .5
        wait(0.05)
        script.Parent.Transparency = .6
        wait(0.05)
        script.Parent.Transparency = .7
        wait(0.05)
        script.Parent.Transparency = .8
        wait(0.05)
        script.Parent.Transparency = .9
        wait(0.05)
        script.Parent.Transparency = .8
        wait(0.05)
        script.Parent.Transparency = .7
        wait(0.05)
        script.Parent.Transparency = .6
        wait(0.05)
        script.Parent.Transparency = .5
        end
        
        end))
        Part11.Name = "GlowPart"
        Part11.Parent = Tool0
        Part11.Material = Enum.Material.Neon
        Part11.BrickColor = BrickColor.new("Cyan")
        Part11.Transparency = 0.5
        Part11.Rotation = Vector3.new(-89.3799973, -55.7399979, -89.25)
        Part11.Size = Vector3.new(0.280000001, 0.25999999, 0.200000003)
        Part11.CFrame = CFrame.new(-54.9808807, 0.99843204, 0.799362957, 0.00736002205, 0.562958956, -0.826454222, 4.72937245e-11, 0.826475084, 0.56297338, 0.999974668, -0.00414349511, 0.00608287565)
        Part11.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Part11.Position = Vector3.new(-54.9808807, 0.99843204, 0.799362957)
        Part11.Orientation = Vector3.new(-34.2599983, -89.5799942, 0)
        Part11.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Script12.Name = "Glow Script"
        Script12.Parent = Part11
        table.insert(cors,sandbox(Script12,function()
        while true do
        wait(0.05)
        script.Parent.Transparency = .5
        wait(0.05)
        script.Parent.Transparency = .6
        wait(0.05)
        script.Parent.Transparency = .7
        wait(0.05)
        script.Parent.Transparency = .8
        wait(0.05)
        script.Parent.Transparency = .9
        wait(0.05)
        script.Parent.Transparency = .8
        wait(0.05)
        script.Parent.Transparency = .7
        wait(0.05)
        script.Parent.Transparency = .6
        wait(0.05)
        script.Parent.Transparency = .5
        end
        
        end))
        Part13.Name = "GlowPart"
        Part13.Parent = Tool0
        Part13.Material = Enum.Material.Neon
        Part13.BrickColor = BrickColor.new("Cyan")
        Part13.Transparency = 0.5
        Part13.Rotation = Vector3.new(95.1500015, -53.8199997, 98.0799942)
        Part13.Size = Vector3.new(0.280000001, 0.25999999, 0.200000003)
        Part13.CFrame = CFrame.new(-54.5909271, 0.978429973, 0.799362957, -0.0830051303, -0.584483683, -0.807150841, 0.0241250042, 0.808528602, -0.58796227, 0.996258855, -0.0682764053, -0.0530113392)
        Part13.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Part13.Position = Vector3.new(-54.5909271, 0.978429973, 0.799362957)
        Part13.Orientation = Vector3.new(36.0099983, -93.7599945, 1.70999992)
        Part13.Color = Color3.new(0.0156863, 0.686275, 0.92549)
        Script14.Name = "Glow Script"
        Script14.Parent = Part13
        table.insert(cors,sandbox(Script14,function()
        while true do
        wait(0.05)
        script.Parent.Transparency = .5
        wait(0.05)
        script.Parent.Transparency = .6
        wait(0.05)
        script.Parent.Transparency = .7
        wait(0.05)
        script.Parent.Transparency = .8
        wait(0.05)
        script.Parent.Transparency = .9
        wait(0.05)
        script.Parent.Transparency = .8
        wait(0.05)
        script.Parent.Transparency = .7
        wait(0.05)
        script.Parent.Transparency = .6
        wait(0.05)
        script.Parent.Transparency = .5
        end
        
        end))
        for i,v in pairs(mas:GetChildren()) do
            v.Parent = game:GetService("Players").LocalPlayer.Backpack
            pcall(function() v:MakeJoints() end)
        end
        mas:Destroy()
        for i,v in pairs(cors) do
            spawn(function()
                pcall(v)
            end)
        end
    end
})

itemsTab:AddButton({
    Name = "Give Halloween Crucifix (shop",
    Callback = function ()
    -- Create your tool here
local exampleTool = game:GetObjects("rbxassetid://11476486356")[1]
exampleTool.Parent = game.Players.LocalPlayer.Backpack
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local tool = exampleTool
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1
        local function setupCrucifix(tool)
        RightArm.Name = "R_Arm"
        LeftArm.Name = "L_Arm"
        
        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
        LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
        for _, v in next, Hum:GetPlayingAnimationTracks() do
            v:Stop()
        end
        end
tool.Equipped:Connect(function()
    setupCrucifix(exampleTool)
    game.Players.LocalPlayer:SetAttribute("Hidden", true)
	UIS.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 then
		    if tool.Parent == game.Players.LocalPlayer.Character then
                   if game.Workspace:FindFirstChild("Lookman") then
                      local eyes = game.Workspace:FindFirstChild("Lookman").Core
                      local crucifixed = Instance.new("BoolValue")
                      crucifixed.Parent = eyes
                      crucifixed.Name = "GettingCrucifixed"
                      eyes.Ambience.Playing = false
                      eyes.Repent.Looped = true
                      eyes.Repent:Play()
                      local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
wait(1.2)
                      local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
wait(1.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
wait(1.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
                      wait(1.2)
                      local ClonedMesh = tool.NewOneBro:Clone()
                      ClonedMesh.Parent = game.Workspace
                      ClonedMesh.Anchored = true
                      tool:Destroy()
                      eyes.Repent.Playing = false
                      eyes.Scream:Play()
                      eyes.PointLight.Enabled = false
                      eyes.PointLight.Enabled = false
                      local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(6, 10, 0.1, 4.5)
                      loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()
                      wait(0.3)
                      game.Workspace:FindFirstChild("Lookman"):Destroy()
               end
               end
              end
	end)
    end)
tool.Unequipped:Connect(function()
    game.Players.LocalPlayer:SetAttribute("Hidden", false)
        RightArm.Name = "RightUpperArm"
        LeftArm.Name = "LeftUpperArm"
        
        RightArm.RightShoulder.C1 = RightC1
        LeftArm.LeftShoulder.C1 = LeftC1
end)

local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
local Achievements = debug.getupvalue(Unlock, 1)

local custom = {
    Title = "Unlock The Halloween Crucifix Christmas", 
    Desc = "How did you..",  --first line
    Reason = "Somehow.. You Obtained the Halloween Crucifix of Christmas", --change this for second line of the badgs desc
    BadgeId = 2127965910, --change badge id for image
    Category = 0,
}

local old = {}
for i, v in next, Achievements.Join do
    old[i] = v
end

for i, v in next, custom do
    Achievements.Join[i] = v
end

Unlock(nil, "Join")

for i, v in next, old do
    Achievements.Join[i] = v



end
end
end
FullVersion()
    end
})

local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local FullHealth = 100

PlayerTab:AddButton({
    Name = "100 HP",
    Callback = function ()
        FullHealth = 100
        game.Players.LocalPlayer.Character.Humanoid.Health = FullHealth

    end
})

PlayerTab:AddSlider({
    Name = "WalkSpeed",
    Min = 0, 
    Max = 200,
    Increment = 1,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    CurrentValue = 5,
    ValueName = "",
    Callback = function(Value)
        TargetWalkspeed = Value
    end
})



local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false


PlayerTab:AddToggle({
	Name = "HeadLight",
	Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
    end
})
local VisualsTab = Window:MakeTab({
    Name = "Visuals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

VisualsTab:AddButton({
    Name = "Get All Achievements",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        for i,v in pairs(require(game.ReplicatedStorage.Achievements)) do
            spawn(function()
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)(nil, i)
            end)
        end
    end
})

local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local KeyChams = {}
VisualsTab:AddToggle({
	Name = "Key Chams",
	Default = false,
    Flag = "KeyToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
	end    
})

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
	Name = "Book Chams",
	Default = false,
    Flag = "BookToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
	end    
})

local FigureChams = {}
VisualsTab:AddToggle({
	Name = "Figure Chams",
	Default = false,
    Flag = "FigureToggle",
    Save = true,
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 0.5
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)

local GameTab = Window:MakeTab({
    Name = "Game",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

GameTab:AddToggle({
	Name = "Instant Interact",
	Default = false,
    Flag = "InstantToggle",
    Save = true
})
GameTab:AddButton({
	Name = "Skip Door",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
})

GameTab:AddToggle({
	Name = "Auto skip door",
	Default = false,
    Save = false,
    Flag = "AutoSkip"
})

local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

GameTab:AddButton({
	Name = "No jumpscares",
	Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
  	end    
})
GameTab:AddToggle({
	Name = "Avoid Rush/Ambush",
	Default = false,
    Flag = "AvoidRushToggle",
    Save = true
})
GameTab:AddToggle({
	Name = "No Screech",
	Default = false,
    Flag = "ScreechToggle",
    Save = true
})

GameTab:AddToggle({
	Name = "Always win heartbeat",
	Default = false,
    Flag = "HeartbeatWin",
    Save = true
})

GameTab:AddToggle({
	Name = "Predict chases",
	Default = false,
    Flag = "PredictToggle" ,
    Save = true
})
GameTab:AddToggle({
	Name = "Notify when mob spawns",
	Default = false,
    Flag = "MobToggle" ,
    Save = true
})
GameTab:AddButton({
	Name = "Complete breaker box minigame",
	Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
  	end    
})
GameTab:AddButton({
	Name = "Skip Door 50",
	Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
  	end    
})




game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/50)
        end
    end)
end)

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if tostring(self) == 'Screech' and method == "FireServer" and OrionLib.Flags["ScreechToggle"].Value == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and OrionLib.Flags["HeartbeatWin"].Value == true then
        args[2] = true
        return old(self,unpack(args)).infiniteyield
    end
    
    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and OrionLib.Flags["ScreechToggle"].Value == true then
        child:Destroy()
    end
end)

local NotificationCoroutine = coroutine.create(function()
    LatestRoom.Changed:Connect(function()
        if OrionLib.Flags["PredictToggle"].Value == true then
            local n = ChaseStart.Value - LatestRoom.Value
            if 0 < n and n < 4 then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Event in " .. tostring(n) .. " rooms.",
                    Time = 5
                })
            end
        end
        if OrionLib.Flags["BookToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(BookCoroutine)
            end
        end
        if OrionLib.Flags["FigureToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(EntityCoroutine)
            end
        end
    end)
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "RushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Avoiding Rush. Please wait.",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Rush has spawned, hide!",
                    Time = 5
                })
            end
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Avoiding Ambush. Please wait.",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()
                
                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Ambush has spawned, hide!",
                    Time = 5
                })
            end
        end
    end)
end)


local ExtraTab = Window:MakeTab({
    Name = "Extra",
    Icon = "rbxassetid://7734042071",
    PremiumOnly = false
})

ExtraTab:AddParagraph("Warning!","these scripts are not mine!")

ExtraTab:AddButton({
    Name = "Break Lights",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60) 
    end
})


ExtraTab:AddButton({
    Name = "Flicker Lights",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1) 
    end
})


ExtraTab:AddButton({
    Name = "Seek's Eyes",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms:WaitForChild(game.ReplicatedStorage.GameData.LatestRoom.Value), 14, 1665596753, true)
    end
})


ExtraTab:AddButton({
    Name = "Red Room",
    Callback = function ()
        local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
        local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
        local seconds = 1000000
        v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
    end
})

ExtraTab:AddButton({
    Name = "Heartbeat Minigame",
    Callback = function ()
        firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent) 
    end
})


ExtraTab:AddButton({
    Name = "Infinite Yield",
    Callback = function ()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()
        
    end
})

ExtraTab:AddDropdown({
    Name = "Next Room Actions",
    Options = {"Hallway Jack","Shadow","Eyes"},
    CurretOption = "Input",
    Flag = "Dropdown1",
    Callback = function(Option)
        if Option == "Hallway Jack" then
                 game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
 local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local shadow=game:GetObjects("rbxassetid://11499539790")[1]
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
shadow:PivotTo(currentLoadedRoom.RoomStart.CFrame)
wait(0.2)
shadow.Parent=workspace
shadow.Sound:Play()
task.wait(0.3)
shadow:Destroy()
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 10)
            elseif Option == "Shadow" then
                            game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
wait(0.2)
local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local shadow=game:GetObjects("rbxassetid://11454656473")[1]
local num=math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
shadow.CFrame=(
 num==0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]
).CFrame+Vector3.new(0,4,0)
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
wait(0.2)
shadow.Parent=workspace
shadow.Initiate:Play()
task.wait(0.3)
shadow:Destroy()
elseif Option == "Eyes" then
 game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
  local enableDamage = true
repenttimes = 0
local deadeyescrucifix = false
local repentcomplete = false
local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes = game:GetObjects("rbxassetid://11488518082")[1]
local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

eyes.Parent = workspace
eyes.Initiate:Play()
task.wait(0.5)
eyes.Attachment.Eyes.Enabled = true
eyes.whisper:Play()
eyes.whisper.Looped = true
function EyesHell()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,30,0.7,0.1)
ts = game:GetService("TweenService")
wait(0.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(2,30,5,2)
wait(3)

eyes.Scream:Play()
ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
wait(7)
eyes:Destroy()
end
local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local function IsVisible(part)
 local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
 local onscreen = found and vec.Z > 0
 local cfg = RaycastParams.new();
 cfg.FilterType = Enum.RaycastFilterType.Blacklist
 cfg.FilterDescendantsInstances = {part};

 local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
 return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
end

while true do
 if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
     enableDamage = false
     task.wait(0.2)
     eyes:Destroy()
 end
 if enableDamage then
     if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
     game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
     wait(0.2)
     elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
     print("GET THAT AWAY FROM ME")
     eyes.Repent:Play()
     eyes.Attachment.Angry.Enabled = true
     local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(5,50,0.7,0.2)
     wait(0.7)
     repenttimes = repenttimes + 1
     print(repenttimes)
     eyes.Attachment.Angry.Enabled = false
     wait(0.4)
     elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
     local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
     hi.Anchored = true
     hi.Parent = workspace
     hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
     game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
     EyesHell()
     enableDamage = false
         if hum.Health <= 0 then
             game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                 "Eyes"
             debug.setupvalue(
                 getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                 1,
                 {
                     "You died to the Eyes...",
                     "They don't like to be stared at.",
                 }
             )
         end
     end
 end
 task.wait(0.2)
end
end
end
})

ExtraTab:AddButton({
    Name = "Doors Speedrun Mode",
    Callback = function ()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/DoorsModes/DoorSpeedRun%20Mode'))()
    end
})

local InfoTab = Window:MakeTab({
    Name = "Info",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
InfoTab:AddParagraph("how can I be contacted","My Discord: ur, My Roblox Account: mom")
InfoTab:AddParagraph("Changelog","")
InfoTab:AddParagraph("30.11.2022","1.Keybinds for EVERYTHING. 2. Deleted function spawn 100 screechs 3. Credits deleted 4. Update Log renamed to Info 5. Some changes in Extra. 6. Added function spawn ambush, seek.")
InfoTab:AddParagraph("Soon...","this script will change the library from OrionLib to RayField (because it is outdated), within a week I will remake this script!!")
InfoTab:AddParagraph("Bugs","1. Skeleton key doesn't exist at the moment 2. You're uncontrollably fast and its hard to get out of closets")
InfoTab:AddParagraph("Notes","within 3 days I will supplement the timer, every door, keybinds tab, because there are a lot of custom entites")
OrionLib:Init()