local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Test by eprettymf",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Stworzone przez twojego pana",
    LoadingSubtitle = "Twoj pan smieciu",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Tab = Window:CreateTab("Zabawa wartosciami", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Sekcja 1")

 local Slider = Tab:CreateSlider({
    Name = "Speed",
    Range = {10, 100},
    Increment = 1,
    Suffix = "predkosci",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "JupmpPower",
    Range = {10, 100},
    Increment = 1,
    Suffix = "skoku",
    CurrentValue = 10,
    Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "Health",
    Range = {1, 100},
    Increment = 1,
    Suffix = "HP",
    CurrentValue = 10,
    Flag = "Slider3",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.Health = Value
    end,
})

local Slider = Tab:CreateSlider({
    Name = "JumpHeight",
    Range = {1, 100},
    Increment = 1,
    Suffix = "Power",
    CurrentValue = 10,
    Flag = "Slider4",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Speed simulator auto hoop farm",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
       Value = coroutine.wrap(function()
            while true do
                local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        rootPart.CFrame = workspace.Hoops:GetChildren()[13].CFrame
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
                wait(0.5)
            end
        end)()
        
        
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })