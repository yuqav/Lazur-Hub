local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Lazur Hub - Go Fishing", "LightTheme")

local Tab = Window:NewTab("Main")
local Tab1 = Window:NewTab("Teleport")

local Section = Tab:NewSection("Auto Function")
local Section1 = Tab1:NewSection("Teleports")

local player = game.Players.LocalPlayer

local function antiafk()
    local VirtualUser = game:GetService("VirtualUser")
        player.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end

    task.spawn(antiafk)

Section:NewToggle("Auto Fish", "Auto Fishing", function(v)
    if v then
        game:GetService("Players").LocalPlayer.gui.autofishing.Value = v
    end
end)

Section1:NewButton("Default Isle", "TP to Default Isle", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(779, 125, -216))
end)

Section1:NewButton("Vulcano Isle", "TP to Vulcano Isle", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(230, 126, 911))
end)

Section1:NewButton("Snowy Biome", "TP to Snowy Biome", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(2304, 127, 358))
end)

Section1:NewButton("Deep Waters", "TP to Deep Waters", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(-987, 124, -1564))
end)

Section1:NewButton("Ancient Ocean", "TP to Ancient Ocean", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(566, 125, -2889))
end)

Section1:NewButton("High Field", "TP to High Field", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(2596, 123, -3445))
end)

Section1:NewButton("Toxic Zone", "TP to Toxic Zone", function()
    player.Character:SetPrimaryPartCFrame(CFrame.new(4692, 128, -2471))
end)
