local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("JJCM | https://discord.gg/yjnZrKttU6 | Join For Updates ", "Midnight")
local Tab = Window:NewTab("auto farm")
local Section = Tab:NewSection("farm")


Section:NewButton("Teleport Behind Dummy", "Teleports behind the dummy", function()
    local player = game.Players.LocalPlayer
    local dummy = workspace:WaitForChild("Dummy") 
    local dummyHumanoidRootPart = dummy:WaitForChild("HumanoidRootPart")

    local offset = CFrame.new(0, 0, 2) 

    local function teleportBehindDummy()
        while true do
            local playerCharacter = player.Character
            local playerHumanoidRootPart = playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart")

            if playerHumanoidRootPart then
                playerHumanoidRootPart.CFrame = dummyHumanoidRootPart.CFrame * offset
            end

            wait(0.1)
        end
    end

    player.CharacterAdded:Connect(function()
        teleportBehindDummy()
    end)

    teleportBehindDummy()
end)

Section:NewButton("Attack Dummy", "Attacks the dummy", function()
    while true do
        wait(0)

        local args = {
            [1] = {
                ["Character"] = game:GetService("Players").LocalPlayer.Character,
                ["Action"] = "M1",
                ["Combo"] = 1,
                ["Target"] = workspace.Dummy,
                ["BehindPlayer"] = true
            }
        }

        game:GetService("ReplicatedStorage").Events.CombatEvent:FireServer(unpack(args))
    end
end)

Section:NewButton("Auto Stamina", "ButtonInfo", function()
    while true do
        wait(0)
game:GetService("Players").LocalPlayer.Character.Client.Server.RewardStamina:FireServer()

end
end)



Section:NewButton("Auto skill 1 Kashimo", "ButtonInfo", function()
    while true do
    wait(1)
local args = {
    [1] = {
        ["Character"] = game:GetService("Players").LocalPlayer.Character,
        ["Action"] = "CursedTechnique",
        ["MiscData"] = game:GetService("Players").LocalPlayer.UIStats,
        ["Technique"] = "KashimoVessel",
        ["Skill"] = "ThunderStrike",
        ["Aim"] = CFrame.new(359.52093505859375, 15.388955116271973, 699.6347045898438) * CFrame.Angles(-0, 0, -0)
    }
}

game:GetService("ReplicatedStorage").Events.CombatEvent:FireServer(unpack(args))
end
end)




Section:NewButton("Auto Skill 2 Kashimo", "ButtonInfo", function()
    while true do
        wait(1)
local args = {
    [1] = {
        ["Character"] = game:GetService("Players").LocalPlayer.Character,
        ["Action"] = "CursedTechnique",
        ["MiscData"] = game:GetService("Players").LocalPlayer.UIStats,
        ["Technique"] = "KashimoVessel",
        ["Skill"] = "ThunderFlash",
        ["Aim"] = CFrame.new(359.52093505859375, 15.388955116271973, 699.6347045898438) * CFrame.Angles(-0, 0, -0)
    }
}

game:GetService("ReplicatedStorage").Events.CombatEvent:FireServer(unpack(args))
    end
end)




Section:NewButton("Auto Curse Farm", "Put the skills on Z,X,C,V.B.N", function()
    while true do
        wait(0.1)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Z,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.X,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.C,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.V,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.B,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.N,false,game)
    end
end)


Section:NewButton("Auto Train", "ButtonInfo", function()
    while true do
        wait(0)

local args = {
    [1] = {
        ["Character"] = game:GetService("Players").LocalPlayer.Character,
        ["Action"] = "Endurance",
        ["MiscData"] = game:GetService("Players").LocalPlayer.UIStats
    }
}

game:GetService("ReplicatedStorage").Events.CombatEvent:FireServer(unpack(args))

    end
end)


local Tab3 = Window:NewTab("KashimoVessel")
local Section = Tab3:NewSection("KashimoVessel")

Section:NewButton("Press here First If You Want To get kashimo Skills", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hasKashimoVessel = character:WaitForChild("Has_KashimoVessel")
hasKashimoVessel.Value = "Yes"

Section:NewButton("this will replace skill z", "ButtonInfo", function()
    local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()
local newProperty = character:WaitForChild("Z")
newProperty.Value = "ThunderGod"

end)

Section:NewButton("this will replace skill x", "ButtonInfo", function()
    local character = player.Character or player.CharacterAdded:Wait()
local newProperty = character:WaitForChild("X")
newProperty.Value = "ThunderStrike"

end)


Section:NewButton("this will replace skill c", "ButtonInfo", function()
    local character = player.Character or player.CharacterAdded:Wait()
local newProperty = character:WaitForChild("C")
newProperty.Value = "ThunderFlash"

end)

end)

local Tab5 = Window:NewTab("Orbs")
local Section = Tab5:NewSection("Orbs Farm")

Section:NewButton("Tp to CurseOrb", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local workspace = game.Workspace

local CurseSpinOrb = workspace:FindFirstChild("CurseSpinOrb")

if CurseSpinOrb then
    local finger = CurseSpinOrb:FindFirstChild("CurseSpinOrb")

    if finger then
        
        player.Character:SetPrimaryPartCFrame(finger.CFrame)

        
        local UserInputService = game:GetService("UserInputService")
        local key = Enum.KeyCode.C

        local keyDownEvent = Instance.new("InputObjectEvent")
        keyDownEvent.Name = "InputBegan"
        keyDownEvent.Parent = game

        keyDownEvent.InputBegan:Connect(function(input)
            if input.KeyCode == key then
                wait(8)  
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)
    else
        print("CurseSpinOrb not found.")
    end
else
    print("CurseSpinOrb not found.")
end

end)




Section:NewButton("Sukuna Wessel", "ButtonInfo", function()
    while true do
        wait(1)
local args = {
    [1] = {
        ["Object"] = "Vessel_Finger",
     ["Action"] = "Use"
    }
}

game:GetServices("Players").LocalPlayer.PlayerGui.Main_UI.Handle.Server.Inv:FireServer(unpack(args))
    end
end)




Section:NewButton("Tp to ClanOrb", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local workspace = game.Workspace

local ClanSpinOrb = workspace:FindFirstChild("ClanSpinOrb")

if CurseSpinOrb then
    local ClanSpinOrb = ClanSpinOrb:FindFirstChild("ClanSpinOrb")

    if ClanSpinOrb then
        
        player.Character:SetPrimaryPartCFrame(ClanSpinOrb.CFrame)

        
        local UserInputService = game:GetService("UserInputService")
        local key = Enum.KeyCode.C

        local keyDownEvent = Instance.new("InputObjectEvent")
        keyDownEvent.Name = "InputBegan"
        keyDownEvent.Parent = game

        keyDownEvent.InputBegan:Connect(function(input)
            if input.KeyCode == key then
                wait(8)  
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)
    else
        print("ClanSpinOrb not found.")
    end
else
    print("ClanSpinOrb not found.")
end

end)


Section:NewButton("Tp to MiscOrb", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local workspace = game.Workspace

local MiscOrb = workspace:FindFirstChild("MiscOrb")

if MiscOrb then
    local MiscOrb = MiscOrb:FindFirstChild("MiscOrb")

    if MiscOrb then
        
        player.Character:SetPrimaryPartCFrame(MiscOrb.CFrame)

        
        local UserInputService = game:GetService("UserInputService")
        local key = Enum.KeyCode.C

        local keyDownEvent = Instance.new("InputObjectEvent")
        keyDownEvent.Name = "InputBegan"
        keyDownEvent.Parent = game

        keyDownEvent.InputBegan:Connect(function(input)
            if input.KeyCode == key then
                wait(8)  
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)
    else
        print("MiscOrb not found.")
    end
else
    print("MiscOrb not found.")
end

end)



local Tab6 = Window:NewTab("Items")
local Section = Tab6:NewSection("Items")

Section:NewButton("Tp To Sukuna Finger", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local workspace = game.Workspace

local vesselFinger = workspace:FindFirstChild("Vessel_Finger")

if vesselFinger then
    local finger = vesselFinger:FindFirstChild("Finger")

    if finger then
        
        player.Character:SetPrimaryPartCFrame(finger.CFrame)

        
        local UserInputService = game:GetService("UserInputService")
        local key = Enum.KeyCode.C

        local keyDownEvent = Instance.new("InputObjectEvent")
        keyDownEvent.Name = "InputBegan"
        keyDownEvent.Parent = game

        keyDownEvent.InputBegan:Connect(function(input)
            if input.KeyCode == key then
                wait(8)  
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)
    else
        print("Finger not found inside Vessel_Finger.")
    end
else
    print("Vessel_Finger not found in workspace.")
end
end)



Section:NewButton("Tp to Kashimo Scroll ", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local workspace = game.Workspace

local Kashimo_Scroll = workspace:FindFirstChild("Kashimo_Scroll")

if Kashimo_Scroll then
    local Center = Kashimo_Scroll:FindFirstChild("Center")

    if Center then
        
        player.Character:SetPrimaryPartCFrame(Center.CFrame)

        local UserInputService = game:GetService("UserInputService")
        local key = Enum.KeyCode.C

        local keyDownEvent = Instance.new("InputObjectEvent")
        keyDownEvent.Name = "InputBegan"
        keyDownEvent.Parent = game

        keyDownEvent.InputBegan:Connect(function(input)
            if input.KeyCode == key then
                wait(8)
            end
        end)

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == key then
                keyDownEvent.InputBegan:Fire(input)
            end
        end)
    else
        print("scroll not found .")
    end
else
    print("scroll not found .")
end
end)


Section:NewButton("Tp to Yuta Ring", "ButtonInfo", function()
    local player = game.Players.LocalPlayer
local workspace = game.Workspace


local engagementRingPath = "Engagement_Ring"
local invisiblePartName = "InvisiblePart"


local engagementRing = workspace:FindFirstChild(engagementRingPath)
if engagementRing and engagementRing:IsA("Model") then
    local invisiblePart = engagementRing:FindFirstChild(invisiblePartName)
    if not invisiblePart then
        invisiblePart = Instance.new("Part")
        invisiblePart.Name = invisiblePartName
        invisiblePart.Size = Vector3.new(5, 5, 5)  
        invisiblePart.Transparency = 1  
        invisiblePart.Anchored = true
        invisiblePart.CanCollide = false

        
        invisiblePart.Position = engagementRing.PrimaryPart.Position + Vector3.new(0, 10, 0) -- Adjust the Y offset as needed

        invisiblePart.Parent = engagementRing

        
        player.Character:SetPrimaryPartCFrame(invisiblePart.CFrame)

        
        wait(1)
        invisiblePart:Destroy()
    else
        warn(invisiblePartName .. " already exists inside " .. engagementRingPath .. ".")
    end
else
    warn(engagementRingPath .. " not found or not a Model in workspace.")
end
end)


local Tab4 = Window:NewTab("Server")
local Section = Tab4:NewSection("Server")

Section:NewButton("server hop", "ButtonInfo", function()
    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

module:Teleport(game.PlaceId)
end)


Section:NewButton("Redeem Codes", "ButtonInfo", function()
    local args = {
        [1] = "Visits7M"
    }
    
    game:GetService("Players").LocalPlayer.PlayerGui.Main_UI.Codes.Enter.CheckCode.EnterCode.RemoteEvent:FireServer(unpack(args))
    
    local args = {
        [1] = "Rework2"
    }
    
    game:GetService("Players").LocalPlayer.PlayerGui.Main_UI.Codes.Enter.CheckCode.EnterCode.RemoteEvent:FireServer(unpack(args))

    local args = {
        [1] = "Favs44K"
    }
    
    game:GetService("Players").LocalPlayer.PlayerGui.Main_UI.Codes.Enter.CheckCode.EnterCode.RemoteEvent:FireServer(unpack(args))
    
end)


Section:NewButton("Anti AFK", "ButtonInfo", function()
    wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="by a9eal "
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="discord .a9l"wait(2)ab.Text="Status : Active"end)
end)
