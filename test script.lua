local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("FunHub (test)", "Default")

local tab = DrRayLibrary.newTab("scripts lawl", "9180622670")
tab.newButton("launch", "this is will make you a rocket xD", function()
   -- Place this script in a ServerScript or LocalScript in Roblox Studio

-- Variables
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local launchForce = 100 -- How much force to apply for launching

-- Function to launch the player upwards
local function launchPlayer()
    -- Create a BodyVelocity instance
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000) -- Ensure the force is applied
    bodyVelocity.Velocity = Vector3.new(0, launchForce, 0) -- Apply force upwards
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")
    
    -- Clean up the BodyVelocity after 0.5 seconds so it doesn't affect the player forever
    game.Debris:AddItem(bodyVelocity, 0.5)
end

-- Function to handle when the player touches the ground
local function onGroundTouch()
    humanoid.Health = 0 -- Kill the player by setting their health to 0
end

-- Launch the player immediately
launchPlayer()

-- Detect when the player touches the ground
character:WaitForChild("HumanoidRootPart").Touched:Connect(function(hit)
    -- You can modify this part if needed, e.g., checking if the hit part is the ground or a specific part
    if hit and hit:IsA("BasePart") and hit.Position.Y < character.HumanoidRootPart.Position.Y then
        onGroundTouch()
    end
end)
end)
tab.newButton("touch fling", "works only if collisons enabled game or hats used", function()
  -- Touch fling gui

-- Gui to Lua (VIP VERSION)
-- Version: 6.9

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
print("sub to DuplexScripts")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.388539821, 0, 0.427821517, 0)
Frame.Size = UDim2.new(0, 158, 0, 110)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 158, 0, 25)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.112792775, 0, -0.0151660154, 0)
TextLabel.Size = UDim2.new(0, 121, 0, 26)
TextLabel.Font = Enum.Font.Sarpanch
TextLabel.Text = "Touch Fling"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 25.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.113924049, 0, 0.418181807, 0)
TextButton.Size = UDim2.new(0, 121, 0, 37)
TextButton.Font = Enum.Font.SourceSansItalic
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 20.000

-- Scripts:

local function IIMAWH_fake_script() -- TextButton.LocalScript 
    local script = Instance.new('LocalScript', TextButton)

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    
    local toggleButton = script.Parent
    local hiddenfling = false
    local flingThread 
    if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
        local detection = Instance.new("Decal")
        detection.Name = "juisdfj0i32i0eidsuf0iok"
        detection.Parent = ReplicatedStorage
    end
    
    local function fling()
        local lp = Players.LocalPlayer
        local c, hrp, vel, movel = nil, nil, nil, 0.1
    
        while hiddenfling do
            RunService.Heartbeat:Wait()
            c = lp.Character
            hrp = c and c:FindFirstChild("HumanoidRootPart")
    
            if hrp then
                vel = hrp.Velocity
                hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
                RunService.RenderStepped:Wait()
                hrp.Velocity = vel
                RunService.Stepped:Wait()
                hrp.Velocity = vel + Vector3.new(0, movel, 0)
                movel = -movel
            end
        end
    end
    
    toggleButton.MouseButton1Click:Connect(function()
        hiddenfling = not hiddenfling
        toggleButton.Text = hiddenfling and "ON" or "OFF"
    
        if hiddenfling then
            flingThread = coroutine.create(fling)
            coroutine.resume(flingThread)
        else
            hiddenfling = false
        end
    end)
    
end
coroutine.wrap(IIMAWH_fake_script)()
local function QCJQJL_fake_script() -- Frame.LocalScript 
    local script = Instance.new('LocalScript', Frame)

    script.Parent.Active = true
    script.Parent.Draggable = true
end
coroutine.wrap(QCJQJL_fake_script)()
end)

tab.newButton("floating", "float FE!", function()
     -- Place this script in a LocalScript inside StarterPlayerScripts

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- Create ScreenGui
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "FloatControlGui"

-- Create Main Frame (Draggable)
local controlFrame = Instance.new("Frame", gui)
controlFrame.Size = UDim2.new(0, 160, 0, 90)
controlFrame.Position = UDim2.new(0.5, -80, 0.7, 0)
controlFrame.BackgroundTransparency = 0.2
controlFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
controlFrame.Active = true
controlFrame.Draggable = true

-- Create Title Bar for dragging
local titleBar = Instance.new("TextLabel", controlFrame)
titleBar.Size = UDim2.new(1, 0, 0.3, 0)
titleBar.Text = "Made by Mineogo"
titleBar.TextColor3 = Color3.new(1, 1, 1)
titleBar.BackgroundTransparency = 0.3
titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleBar.Font = Enum.Font.SourceSans
titleBar.TextSize = 16

-- Create Up Button
local upButton = Instance.new("TextButton", controlFrame)
upButton.Size = UDim2.new(0.3, 0, 0.7, 0)
upButton.Position = UDim2.new(0, 0, 0.3, 0)
upButton.Text = "⬆"
upButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

-- Create Down Button
local downButton = Instance.new("TextButton", controlFrame)
downButton.Size = UDim2.new(0.3, 0, 0.7, 0)
downButton.Position = UDim2.new(0.7, 0, 0.3, 0)
downButton.Text = "⬇"
downButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

-- Create Stop Button
local stopButton = Instance.new("TextButton", controlFrame)
stopButton.Size = UDim2.new(0.4, 0, 0.7, 0)
stopButton.Position = UDim2.new(0.3, 0, 0.3, 0)
stopButton.Text = "STOP"
stopButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)

-- Floating mechanics
local floatForce = 5
local bodyPosition

local function createBodyPosition()
    bodyPosition = Instance.new("BodyPosition")
    bodyPosition.MaxForce = Vector3.new(0, math.huge, 0)
    bodyPosition.Position = rootPart.Position
    bodyPosition.Parent = rootPart
end

local function startFloating()
    if not bodyPosition then
        createBodyPosition()
    end
end

local function stopFloating()
    if bodyPosition then
        bodyPosition:Destroy()
        bodyPosition = nil
    end
end

-- Button Actions
upButton.MouseButton1Down:Connect(function()
    startFloating()
    bodyPosition.Position = rootPart.Position + Vector3.new(0, floatForce, 0)
end)

downButton.MouseButton1Down:Connect(function()
    startFloating()
    bodyPosition.Position = rootPart.Position - Vector3.new(0, floatForce, 0)
end)

stopButton.MouseButton1Click:Connect(function()
    stopFloating()
end)

-- Reset when character respawns
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    rootPart = character:WaitForChild("HumanoidRootPart")
    humanoid = character:WaitForChild("Humanoid")
    stopFloating()
end)

-- Keep hands down (Removed SetStateEnabled line to fix mobile jump button)
-- humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false) -- Removed to prevent interference
end)

tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
Tab:CreateToggle({
    Name = "slick back",
    Callback = function(Value)
        local jumpConnection = nil
        local originalWalkSpeed = 16
        local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
        
        if Value then
            humanoid.WalkSpeed = 160  -- Set high walk speed
            jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                humanoid:ChangeState("Jumping")
            end)
        else
            humanoid.WalkSpeed = originalWalkSpeed
            if jumpConnection then
                jumpConnection:Disconnect()
                jumpConnection = nil
            end
        end
    end,
})

-- Toggle for Speed and Infinite Jump
tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    local jumpConnection = nil
    local originalWalkSpeed = 16
    local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    
    if toggleState then
        humanoid.WalkSpeed = 160  -- Set high walk speed
        jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
            humanoid:ChangeState("Jumping")
        end)
        print("On")
    else
        humanoid.WalkSpeed = originalWalkSpeed
        if jumpConnection then
            jumpConnection:Disconnect()
            jumpConnection = nil
        end
        print("Off")
    end
end)

-- Toggle for Speed and Infinite Jump
tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    local jumpConnection = nil
    local originalWalkSpeed = 16
    local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    
    if toggleState then
        humanoid.WalkSpeed = 160  -- Set high walk speed
        jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
            humanoid:ChangeState("Jumping")
        end)
        print("On")
    else
        humanoid.WalkSpeed = originalWalkSpeed
        if jumpConnection then
            jumpConnection:Disconnect()
            jumpConnection = nil
        end
        print("Off")
    end
end)
-- Toggle for Speed and Infinite Jump
tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    local jumpConnection = nil
    local originalWalkSpeed = 16
    local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    
    if toggleState then
        humanoid.WalkSpeed = 160  -- Set high walk speed
        jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
            humanoid:ChangeState("Jumping")
        end)
        print("On")
    else
        humanoid.WalkSpeed = originalWalkSpeed
        if jumpConnection then
            jumpConnection:Disconnect()
            jumpConnection = nil
        end
        print("Off")
    end
end)

-- Floating GUI with Controls
Tab:CreateButton({
    Name = "Floating",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")

        local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
        gui.Name = "FloatControlGui"

        local controlFrame = Instance.new("Frame", gui)
        controlFrame.Size = UDim2.new(0, 160, 0, 90)
        controlFrame.Position = UDim2.new(0.5, -80, 0.7, 0)
        controlFrame.BackgroundTransparency = 0.2
        controlFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        controlFrame.Active = true
        controlFrame.Draggable = true

        local titleBar = Instance.new("TextLabel", controlFrame)
        titleBar.Size = UDim2.new(1, 0, 0.3, 0)
        titleBar.Text = "Made by Mineogo"
        titleBar.TextColor3 = Color3.new(1, 1, 1)
        titleBar.BackgroundTransparency = 0.3
        titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        titleBar.Font = Enum.Font.SourceSans
        titleBar.TextSize = 16

        local upButton = Instance.new("TextButton", controlFrame)
        upButton.Size = UDim2.new(0.3, 0, 0.7, 0)
        upButton.Position = UDim2.new(0, 0, 0.3, 0)
        upButton.Text = "⬆"
        upButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

        local downButton = Instance.new("TextButton", controlFrame)
        downButton.Size = UDim2.new(0.3, 0, 0.7, 0)
        downButton.Position = UDim2.new(0.7, 0, 0.3, 0)
        downButton.Text = "⬇"
        downButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

        local stopButton = Instance.new("TextButton", controlFrame)
        stopButton.Size = UDim2.new(0.4, 0, 0.7, 0)
        stopButton.Position = UDim2.new(0.3, 0, 0.3, 0)
        stopButton.Text = "STOP"
        stopButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)

        local bodyPosition

        local function createBodyPosition()
            bodyPosition = Instance.new("BodyPosition")
            bodyPosition.MaxForce = Vector3.new(0, math.huge, 0)
            bodyPosition.Position = rootPart.Position
            bodyPosition.Parent = rootPart
        end

        local function startFloating()
            if not bodyPosition then createBodyPosition() end
        end

        local function stopFloating()
            if bodyPosition then
                bodyPosition:Destroy()
                bodyPosition = nil
            end
        end

        upButton.MouseButton1Down:Connect(function()
            startFloating()
            bodyPosition.Position = rootPart.Position + Vector3.new(0, 5, 0)
        end)

        downButton.MouseButton1Down:Connect(function()
            startFloating()
            bodyPosition.Position = rootPart.Position - Vector3.new(0, 5, 0)
        end)

        stopButton.MouseButton1Click:Connect(function()
            stopFloating()
        end)

        player.CharacterAdded:Connect(function(newCharacter)
            character = newCharacter
            rootPart = character:WaitForChild("HumanoidRootPart")
            stopFloating()
        end)
    end,
})
tab.newInput("kick yourself", "with custom message best for trolling.", function(text)
  local player = game.Players.LocalPlayer

-- Custom kick message
local kickMessage = "You have been kicked from the game."

-- Kick the player with the custom message
player:Kick(text)

end)
tab.newButton("Button", "Prints Hello!", function()
 local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local camera = workspace.CurrentCamera
local gui = Instance.new("ScreenGui", player.PlayerGui)
local frame = Instance.new("Frame", gui)
local titleLabel = Instance.new("TextLabel", frame)
local recordButton = Instance.new("TextButton", frame)
local replayButton = Instance.new("TextButton", frame)
local stopButton = Instance.new("TextButton", frame)
local loopButton = Instance.new("TextButton", frame)
local minimizeButton = Instance.new("TextButton", frame)
local actions = {}
local recording = false
local looping = false
local minimized = false

-- Set up the GUI frame (smaller size)
frame.Size = UDim2.new(0, 220, 0, 160)  -- Adjusted size to fit two columns
frame.Position = UDim2.new(0.5, -110, 0.5, -80)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Active = true
frame.Draggable = true

-- Set up the title label
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Text = "by mineogo"
titleLabel.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextScaled = true

-- Set up the GUI buttons (arranged side by side in two columns)
recordButton.Size = UDim2.new(0.45, 0, 0.3, 0)  -- Made the record button bigger
recordButton.Position = UDim2.new(0, 0, 0.2, 0)
recordButton.Text = "Record"
recordButton.BackgroundColor3 = Color3.new(1, 0, 0)

replayButton.Size = UDim2.new(0.45, 0, 0.3, 0)
replayButton.Position = UDim2.new(0.55, 0, 0.2, 0)
replayButton.Text = "Replay"
replayButton.BackgroundColor3 = Color3.new(0, 1, 0)

loopButton.Size = UDim2.new(0.45, 0, 0.3, 0)
loopButton.Position = UDim2.new(0, 0, 0.55, 0)
loopButton.Text = "Loop"
loopButton.BackgroundColor3 = Color3.new(0, 0, 1)

stopButton.Size = UDim2.new(0.45, 0, 0.3, 0)
stopButton.Position = UDim2.new(0.55, 0, 0.55, 0)
stopButton.Text = "Stop"
stopButton.BackgroundColor3 = Color3.new(1, 1, 0)

minimizeButton.Size = UDim2.new(1, 0, 0.2, 0)
minimizeButton.Position = UDim2.new(0, 0, 0.95, 0)
minimizeButton.Text = "Minimize"
minimizeButton.BackgroundColor3 = Color3.new(0, 1, 1)

-- Function to record player actions
local function recordAction()
    recording = true
    actions = {}
    
    -- Record the position and orientation every 0.1 seconds
    while recording do
        table.insert(actions, {
            Position = humanoidRootPart.Position,
            Orientation = humanoidRootPart.Orientation
        })
        wait(0.1)
    end
end

-- Function to replay recorded actions
local function replayActions()
    if #actions > 0 then
        repeat
            -- Move to the starting position
            humanoidRootPart.CFrame = CFrame.new(actions[1].Position) * CFrame.Angles(0, math.rad(actions[1].Orientation.Y), 0)
            
            for _, action in ipairs(actions) do
                humanoidRootPart.CFrame = CFrame.new(action.Position) * CFrame.Angles(0, math.rad(action.Orientation.Y), 0)
                wait(0.1) -- Replay speed
            end
        until not looping
    end
end

-- Button events
recordButton.MouseButton1Click:Connect(function()
    if not recording then
        recordAction()
    end
end)

stopButton.MouseButton1Click:Connect(function()
    recording = false
    looping = false
end)

loopButton.MouseButton1Click:Connect(function()
    looping = not looping
    if looping then
        replayActions()
    end
end)

replayButton.MouseButton1Click:Connect(replayActions)

minimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        frame.Size = UDim2.new(0, 220, 0, 40) -- Minimized size
        recordButton.Visible = false
        replayButton.Visible = false
        loopButton.Visible = false
        stopButton.Visible = false
        minimizeButton.Text = "Maximize"
    else
        frame.Size = UDim2.new(0, 220, 0, 160) -- Normal size
        recordButton.Visible = true
        replayButton.Visible = true
        loopButton.Visible = true
        stopButton.Visible = true
        minimizeButton.Text = "Minimize"
    end
end)

-- Prevent camera movement
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        return Enum.UserInputType.None
    end
end)

-- Allow dragging the GUI by holding the title label
local dragStart, startPos
titleLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStart = input.Position
        startPos = frame.Position

        local function updateInput(input)
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        local function endDrag()
            game:GetService("UserInputService").InputChanged:Disconnect(updateInput)
            game:GetService("UserInputService").InputEnded:Disconnect(endDrag)
        end

        game:GetService("UserInputService").InputChanged:Connect(updateInput)
        game:GetService("UserInputService").InputEnded:Connect(endDrag)
    end
end)
end)
tab.newButton("minion", "Prints Hello!", function()
-- Initialize services and variables
local player = l
local Character = player.Character or player.CharacterAdded:Wait()

local screenGui = Instance.new("ScreenGui", player.PlayerGui)
local buttonSize = UDim2.new(0, 150, 0, 50)
local minions = {}

-- UI Button Creation
local function createButton(text, position, color)
    local button = Instance.new("TextButton", screenGui)
    button.Size = buttonSize
    button.Position = position
    button.BackgroundColor3 = color
    button.Text = text
    return button
end

local spawnButton = createButton("Spawn Minion", UDim2.new(0, 10, 0, 10), Color3.new(0, 0.5, 1))
local attackButton = createButton("Attack", UDim2.new(0, 10, 0, 70), Color3.new(1, 0.5, 0))
local callButton = createButton("Call Minions", UDim2.new(0, 10, 0, 130), Color3.new(0, 1, 0.5))
local clearButton = createButton("Clear Minions", UDim2.new(0, 10, 0, 190), Color3.new(1, 0, 0))

-- Function to spawn a minion
local function spawnMinion()
    local minion = Instance.new("Model", workspace)
    minion.Name = "Minion"
    
    local humanoid = Instance.new("Humanoid", minion)
    
    -- Create the torso
    local torso = Instance.new("Part", minion)
    torso.Name = "Torso"
    torso.Size = Vector3.new(2, 2, 2)
    torso.Position = Character.PrimaryPart.Position + Vector3.new(0, 5, 0)
    torso.Anchored = false
    torso.BrickColor = BrickColor.new("Bright blue")
    
    -- Create the head
    local head = Instance.new("Part", minion)
    head.Name = "Head"
    head.Size = Vector3.new(2, 2, 2)
    head.Position = torso.Position + Vector3.new(0, 2, 0)
    head.Anchored = false
    head.BrickColor = BrickColor.new("Bright yellow")
    
    -- Weld the head to the torso
    local weld = Instance.new("Weld", head)
    weld.Part0 = torso
    weld.Part1 = head
    weld.C0 = CFrame.new(0, 2, 0)
    
    -- Create eyes (optional, cosmetic)
    local leftEye = Instance.new("Part", minion)
    leftEye.Size = Vector3.new(0.5, 0.5, 0.5)
    leftEye.Position = head.Position + Vector3.new(-0.5, 0.5, -1)
    leftEye.Anchored = false
    leftEye.BrickColor = BrickColor.new("White")
    
    local rightEye = Instance.new("Part", minion)
    rightEye.Size = Vector3.new(0.5, 0.5, 0.5)
    rightEye.Position = head.Position + Vector3.new(0.5, 0.5, -1)
    rightEye.Anchored = false
    rightEye.BrickColor = BrickColor.new("White")
    
    -- Weld eyes to the head
    local leftEyeWeld = Instance.new("Weld", leftEye)
    leftEyeWeld.Part0 = head
    leftEyeWeld.Part1 = leftEye
    leftEyeWeld.C0 = CFrame.new(-0.5, 0.5, -1)

    local rightEyeWeld = Instance.new("Weld", rightEye)
    rightEyeWeld.Part0 = head
    rightEyeWeld.Part1 = rightEye
    rightEyeWeld.C0 = CFrame.new(0.5, 0.5, -1)
    
    -- Make the torso the PrimaryPart for movement control
    minion.PrimaryPart = torso

    table.insert(minions, minion)
end

-- Function for random idle chats
local idleChats = {"Banana!", "Me want banana!", "HAHA!", "Bello!","YEAAAAAHHH!"}
local function randomChat(minion)
    local head = minion:FindFirstChild("Head")
    if head then
        local chat = idleChats[math.random(1, #idleChats)]
        game:GetService("Chat"):Chat(head, chat)
    end
end

-- Function to make the minions walk freely
local function minionsWalkFreely()
    for _, minion in ipairs(minions) do
        local humanoid = minion:FindFirstChild("Humanoid")
        if humanoid then
            humanoid:MoveTo(minion.PrimaryPart.Position + Vector3.new(math.random(-10, 10), 0, math.random(-10, 10)))
        end
    end
end

-- Function to find the closest player (for the minion to attack)
local function findClosestPlayer(minion)
    local closestPlayer = nil
    local closestDistance = math.huge -- Set a very high initial distance
    
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local distance = (minion.PrimaryPart.Position - targetPosition).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = targetPlayer
            end
        end
    end
    return closestPlayer
end

-- Function to make the minions attack players
local function attackPlayers()
    for _, minion in ipairs(minions) do
        local humanoid = minion:FindFirstChild("Humanoid")
        if humanoid then
            local targetPlayer = findClosestPlayer(minion)
            if targetPlayer and targetPlayer.Character then
                local targetPosition = targetPlayer.Character.PrimaryPart.Position
                humanoid:MoveTo(targetPosition)

                -- Attack logic when close to the target
                humanoid.MoveToFinished:Wait() -- Wait until the minion reaches the target
                if (minion.PrimaryPart.Position - targetPosition).Magnitude < 5 then
                    -- If the minion is close enough to the player, "attack"
                    local targetHumanoid = targetPlayer.Character:FindFirstChild("Humanoid")
                    if targetHumanoid then
                        targetHumanoid:TakeDamage(100) -- Deals 100 damage
                    end
                end
            end
        end
    end
end

-- Function to call all minions to the player and make them say "Yes, Gru!"
local function callMinions()
    for _, minion in ipairs(minions) do
        local humanoid = minion:FindFirstChild("Humanoid")
        local head = minion:FindFirstChild("Head")
        if humanoid and head then
            humanoid:MoveTo(Character.PrimaryPart.Position + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)))
            game:GetService("Chat"):Chat(head, "Yes, Gru!")
        end
    end
end

-- Clear all minions
local function clearMinions()
    for _, minion in ipairs(minions) do
        minion:Destroy()
    end
    minions = {}
end

-- Button functionality
spawnButton.MouseButton1Click:Connect(spawnMinion)
attackButton.MouseButton1Click:Connect(attackPlayers)  -- Normal attack mode, no toggle
callButton.MouseButton1Click:Connect(callMinions)
clearButton.MouseButton1Click:Connect(clearMinions)

-- Random idle chats every 10 seconds
while true do
    wait(10)
    for _, minion in ipairs(minions) do
        randomChat(minion)
        minionsWalkFreely()  -- Minions freely walk when not attacking
    end
end
end)