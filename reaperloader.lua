if game.PlaceId == 155615604 then
    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

    local UI = Material.Load({
        Title = "Reaper hub - Prison life",
        Style = 1,
        SizeX = 500,
        SizeY = 350,
        Theme = "Light",
        ColorOverrides = {
            MainFrame = Color3.fromRGB(0, 1, 33)
        }
    })

local M = UI.New({
    Title = "Main"
})

local P = UI.New({
    Title = "Player"
})


M.Button({
    Text = "Give character all guns",
    Callback = function()
       Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
       Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
       Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "Psst! This won't give all of the guns only few guns like AK-47 , Remington & M9, Sorry for this!"            
            })
        end,
        Test = function(self) 
            table.foreach(self, print)
        end
    }
})

M.Button({
    Text = "Infinite Jump",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/V3DKCQTT"))()
    end
})

M.Button({
    Text = "Infinite Stamina",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/fMRmipWy"))()
    end
})

M.Button({
    Text = "Super punch",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/aKWJMuuP"))()
    end,
    Menu = {
        Information = function(self)
           UI.Banner({
                Text = "This will kill the player in 1 punch."            
            })
        end,
        Test = function(self) 
            table.foreach(self, print)
        end
    }
})

M.Button({
    Text = "No-clip (CHECK INFORMATION)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/YVmprjsf"))()
    end,
    Menu = {
        Information = function(self)
           UI.Banner({
                Text = "The prefix is E to disable & enable, Thank you for using Reaper Hub! Enjoy this no-clip!"            
            })
        end,
        Test = function(self) 
            table.foreach(self, print)
        end
    }
})

P.Slider({
    Text = "Walk speed",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end,
    Min = 0,
    Max = 10,
    Def = 4
})

P.Slider({
    Text = "Jump power",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end,
    Min = 0,
    Max = 10,
    Def = 4
})
end    
