local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local TOGGLE_KEY = Enum.KeyCode.RightShift
local UNLOAD_KEY = Enum.KeyCode.KeypadThree

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ModernPanelGui_Light"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

local connections = {}

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 340, 0, 300)
mainFrame.Position = UDim2.new(0.5, -170, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(245, 247, 250)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Active = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(220, 225, 235)
mainStroke.Thickness = 1.2
mainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
mainStroke.Parent = mainFrame

local bgGradient = Instance.new("UIGradient")
bgGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 242, 248))
})
bgGradient.Rotation = 45
bgGradient.Parent = mainFrame

local header = Instance.new("Frame")
header.Name = "Header"
header.Size = UDim2.new(1, 0, 0, 42)
header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header.BackgroundTransparency = 0.3
header.BorderSizePixel = 0
header.Active = true
header.Parent = mainFrame

local headerDivider = Instance.new("Frame")
headerDivider.Name = "Divider"
headerDivider.Size = UDim2.new(1, 0, 0, 1)
headerDivider.Position = UDim2.new(0, 0, 1, -1)
headerDivider.BackgroundColor3 = Color3.fromRGB(225, 230, 240)
headerDivider.BorderSizePixel = 0
headerDivider.Parent = header

local accentPill = Instance.new("Frame")
accentPill.Size = UDim2.new(0, 3, 0, 16)
accentPill.Position = UDim2.new(0, 14, 0.5, -8)
accentPill.BackgroundColor3 = Color3.fromRGB(0, 210, 235)
accentPill.BorderSizePixel = 0
accentPill.Parent = header

local pillCorner = Instance.new("UICorner")
pillCorner.CornerRadius = UDim.new(1, 0)
pillCorner.Parent = accentPill

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0.5, 0, 1, 0)
titleLabel.Position = UDim2.new(0, 26, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "Terminal"
titleLabel.TextColor3 = Color3.fromRGB(30, 32, 40)
titleLabel.TextSize = 14
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Active = false
titleLabel.Parent = header

local isTouchDevice = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

local keybindBadge = Instance.new("TextLabel")
keybindBadge.Size = UDim2.new(0, 58, 0, 22)
keybindBadge.Position = UDim2.new(1, -90, 0.5, -11)
keybindBadge.BackgroundColor3 = Color3.fromRGB(235, 240, 248)
keybindBadge.Font = Enum.Font.GothamMedium
keybindBadge.Text = isTouchDevice and "MOBILE" or "R-SHIFT"
keybindBadge.TextColor3 = Color3.fromRGB(100, 110, 130)
keybindBadge.TextSize = 10
keybindBadge.Active = false
keybindBadge.Parent = header

local badgeCorner = Instance.new("UICorner")
badgeCorner.CornerRadius = UDim.new(0, 5)
badgeCorner.Parent = keybindBadge

local badgeStroke = Instance.new("UIStroke")
badgeStroke.Color = Color3.fromRGB(215, 225, 240)
badgeStroke.Thickness = 1
badgeStroke.Parent = keybindBadge

local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Name = "MinimizeBtn"
minimizeBtn.Size = UDim2.new(0, 24, 0, 22)
minimizeBtn.Position = UDim2.new(1, -28, 0.5, -11)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(235, 240, 248)
minimizeBtn.AutoButtonColor = false
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.Text = "-"
minimizeBtn.TextColor3 = Color3.fromRGB(100, 110, 130)
minimizeBtn.TextSize = 14
minimizeBtn.Parent = header

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(0, 5)
minCorner.Parent = minimizeBtn

local minStroke = Instance.new("UIStroke")
minStroke.Color = Color3.fromRGB(215, 225, 240)
minStroke.Thickness = 1
minStroke.Parent = minimizeBtn

local contentArea = Instance.new("Frame")
contentArea.Name = "ContentArea"
contentArea.Size = UDim2.new(1, -28, 1, -56)
contentArea.Position = UDim2.new(0, 14, 0, 50)
contentArea.BackgroundTransparency = 1
contentArea.Parent = mainFrame

local sectionLabel = Instance.new("TextLabel")
sectionLabel.Size = UDim2.new(1, 0, 0, 18)
sectionLabel.Position = UDim2.new(0, 2, 0, 0)
sectionLabel.BackgroundTransparency = 1
sectionLabel.Font = Enum.Font.GothamSemibold
sectionLabel.Text = "TRANSFORMATIONS"
sectionLabel.TextColor3 = Color3.fromRGB(130, 140, 160)
sectionLabel.TextSize = 11
sectionLabel.TextXAlignment = Enum.TextXAlignment.Left
sectionLabel.Parent = contentArea

-- Вспомогательная функция для создания двух неоновых cyan глаз
local function createCyanEyes(parentObj: Instance, posX: number, posY: number)
    local eyesContainer = Instance.new("Frame")
    eyesContainer.Name = "CyanEyes"
    eyesContainer.Size = UDim2.new(0, 22, 0, 12)
    eyesContainer.Position = UDim2.new(0, posX, 0.5, posY)
    eyesContainer.BackgroundTransparency = 1
    eyesContainer.Parent = parentObj

    local leftEye = Instance.new("Frame")
    leftEye.Name = "LeftEye"
    leftEye.Size = UDim2.new(0, 7, 0, 10)
    leftEye.Position = UDim2.new(0, 1, 0.5, -5)
    leftEye.BackgroundColor3 = Color3.fromRGB(0, 225, 255)
    leftEye.BorderSizePixel = 0
    leftEye.Parent = eyesContainer

    local leftCorner = Instance.new("UICorner")
    leftCorner.CornerRadius = UDim.new(1, 0)
    leftCorner.Parent = leftEye

    local leftPupil = Instance.new("Frame")
    leftPupil.Size = UDim2.new(0, 2, 0, 5)
    leftPupil.Position = UDim2.new(0.5, -1, 0.5, -2)
    leftPupil.BackgroundColor3 = Color3.fromRGB(240, 255, 255)
    leftPupil.BorderSizePixel = 0
    leftPupil.Parent = leftEye

    local leftPupilCorner = Instance.new("UICorner")
    leftPupilCorner.CornerRadius = UDim.new(1, 0)
    leftPupilCorner.Parent = leftPupil

    local rightEye = Instance.new("Frame")
    rightEye.Name = "RightEye"
    rightEye.Size = UDim2.new(0, 7, 0, 10)
    rightEye.Position = UDim2.new(0, 14, 0.5, -5)
    rightEye.BackgroundColor3 = Color3.fromRGB(0, 225, 255)
    rightEye.BorderSizePixel = 0
    rightEye.Parent = eyesContainer

    local rightCorner = Instance.new("UICorner")
    rightCorner.CornerRadius = UDim.new(1, 0)
    rightCorner.Parent = rightEye

    local rightPupil = Instance.new("Frame")
    rightPupil.Size = UDim2.new(0, 2, 0, 5)
    rightPupil.Position = UDim2.new(0.5, -1, 0.5, -2)
    rightPupil.BackgroundColor3 = Color3.fromRGB(240, 255, 255)
    rightPupil.BorderSizePixel = 0
    rightPupil.Parent = rightEye

    local rightPupilCorner = Instance.new("UICorner")
    rightPupilCorner.CornerRadius = UDim.new(1, 0)
    rightPupilCorner.Parent = rightPupil

    return eyesContainer, leftEye, rightEye
end

local foxCard = Instance.new("TextButton")
foxCard.Name = "ClassicFoxCard"
foxCard.Size = UDim2.new(1, 0, 0, 46)
foxCard.Position = UDim2.new(0, 0, 0, 24)
foxCard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
foxCard.AutoButtonColor = false
foxCard.Text = ""
foxCard.Parent = contentArea

local cardCorner = Instance.new("UICorner")
cardCorner.CornerRadius = UDim.new(0, 8)
cardCorner.Parent = foxCard

local cardStroke = Instance.new("UIStroke")
cardStroke.Color = Color3.fromRGB(225, 230, 240)
cardStroke.Thickness = 1
cardStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
cardStroke.Parent = foxCard

local eyesBox, eyeLeft, eyeRight = createCyanEyes(foxCard, 12, -6)

local cardTitle = Instance.new("TextLabel")
cardTitle.Size = UDim2.new(1, -120, 1, 0)
cardTitle.Position = UDim2.new(0, 44, 0, 0)
cardTitle.BackgroundTransparency = 1
cardTitle.Font = Enum.Font.GothamSemibold
cardTitle.Text = "Classic Fox Form"
cardTitle.TextColor3 = Color3.fromRGB(30, 32, 40)
cardTitle.TextSize = 13
cardTitle.TextXAlignment = Enum.TextXAlignment.Left
cardTitle.Parent = foxCard

local switchTrack = Instance.new("Frame")
switchTrack.Size = UDim2.new(0, 40, 0, 22)
switchTrack.Position = UDim2.new(1, -54, 0.5, -11)
switchTrack.BackgroundColor3 = Color3.fromRGB(215, 220, 230)
switchTrack.BorderSizePixel = 0
switchTrack.Parent = foxCard

local trackCorner = Instance.new("UICorner")
trackCorner.CornerRadius = UDim.new(1, 0)
trackCorner.Parent = switchTrack

local trackStroke = Instance.new("UIStroke")
trackStroke.Color = Color3.fromRGB(195, 205, 220)
trackStroke.Thickness = 1
trackStroke.Parent = switchTrack

local switchKnob = Instance.new("Frame")
switchKnob.Size = UDim2.new(0, 16, 0, 16)
switchKnob.Position = UDim2.new(0, 3, 0.5, -8)
switchKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
switchKnob.BorderSizePixel = 0
switchKnob.Parent = switchTrack

local knobCorner = Instance.new("UICorner")
knobCorner.CornerRadius = UDim.new(1, 0)
knobCorner.Parent = switchKnob

local scarabCard = Instance.new("TextButton")
scarabCard.Name = "ScarabellaCard"
scarabCard.Size = UDim2.new(1, 0, 0, 46)
scarabCard.Position = UDim2.new(0, 0, 0, 76)
scarabCard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scarabCard.AutoButtonColor = false
scarabCard.Text = ""
scarabCard.Parent = contentArea

local scarabCorner = Instance.new("UICorner")
scarabCorner.CornerRadius = UDim.new(0, 8)
scarabCorner.Parent = scarabCard

local scarabStroke = Instance.new("UIStroke")
scarabStroke.Color = Color3.fromRGB(225, 230, 240)
scarabStroke.Thickness = 1
scarabStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
scarabStroke.Parent = scarabCard

local scarabIcon = Instance.new("ImageLabel")
scarabIcon.Size = UDim2.new(0, 22, 0, 22)
scarabIcon.Position = UDim2.new(0, 12, 0.5, -11)
scarabIcon.BackgroundTransparency = 1
scarabIcon.Image = "rbxassetid://7490013082"
scarabIcon.ImageColor3 = Color3.fromRGB(230, 120, 30)
scarabIcon.Parent = scarabCard

local scarabTitle = Instance.new("TextLabel")
scarabTitle.Size = UDim2.new(1, -120, 1, 0)
scarabTitle.Position = UDim2.new(0, 44, 0, 0)
scarabTitle.BackgroundTransparency = 1
scarabTitle.Font = Enum.Font.GothamSemibold
scarabTitle.Text = "Scarabella"
scarabTitle.TextColor3 = Color3.fromRGB(30, 32, 40)
scarabTitle.TextSize = 13
scarabTitle.TextXAlignment = Enum.TextXAlignment.Left
scarabTitle.Parent = scarabCard

local scarabTrack = Instance.new("Frame")
scarabTrack.Size = UDim2.new(0, 40, 0, 22)
scarabTrack.Position = UDim2.new(1, -54, 0.5, -11)
scarabTrack.BackgroundColor3 = Color3.fromRGB(215, 220, 230)
scarabTrack.BorderSizePixel = 0
scarabTrack.Parent = scarabCard

local scarabTrackCorner = Instance.new("UICorner")
scarabTrackCorner.CornerRadius = UDim.new(1, 0)
scarabTrackCorner.Parent = scarabTrack

local scarabTrackStroke = Instance.new("UIStroke")
scarabTrackStroke.Color = Color3.fromRGB(195, 205, 220)
scarabTrackStroke.Thickness = 1
scarabTrackStroke.Parent = scarabTrack

local scarabKnob = Instance.new("Frame")
scarabKnob.Size = UDim2.new(0, 16, 0, 16)
scarabKnob.Position = UDim2.new(0, 3, 0.5, -8)
scarabKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scarabKnob.BorderSizePixel = 0
scarabKnob.Parent = scarabTrack

local scarabKnobCorner = Instance.new("UICorner")
scarabKnobCorner.CornerRadius = UDim.new(1, 0)
scarabKnobCorner.Parent = scarabKnob

local dogCard = Instance.new("TextButton")
dogCard.Name = "ClassicDogCard"
dogCard.Size = UDim2.new(1, 0, 0, 46)
dogCard.Position = UDim2.new(0, 0, 0, 128)
dogCard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dogCard.AutoButtonColor = false
dogCard.Text = ""
dogCard.Parent = contentArea

local dogCorner = Instance.new("UICorner")
dogCorner.CornerRadius = UDim.new(0, 8)
dogCorner.Parent = dogCard

local dogStroke = Instance.new("UIStroke")
dogStroke.Color = Color3.fromRGB(225, 230, 240)
dogStroke.Thickness = 1
dogStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
dogStroke.Parent = dogCard

local dogIcon = Instance.new("ImageLabel")
dogIcon.Size = UDim2.new(0, 22, 0, 22)
dogIcon.Position = UDim2.new(0, 12, 0.5, -11)
dogIcon.BackgroundTransparency = 1
dogIcon.Image = "rbxassetid://7490013082"
dogIcon.ImageColor3 = Color3.fromRGB(50, 150, 230)
dogIcon.Parent = dogCard

local dogTitle = Instance.new("TextLabel")
dogTitle.Size = UDim2.new(1, -120, 1, 0)
dogTitle.Position = UDim2.new(0, 44, 0, 0)
dogTitle.BackgroundTransparency = 1
dogTitle.Font = Enum.Font.GothamSemibold
dogTitle.Text = "Classic Dog"
dogTitle.TextColor3 = Color3.fromRGB(30, 32, 40)
dogTitle.TextSize = 13
dogTitle.TextXAlignment = Enum.TextXAlignment.Left
dogTitle.Parent = dogCard

local dogTrack = Instance.new("Frame")
dogTrack.Size = UDim2.new(0, 40, 0, 22)
dogTrack.Position = UDim2.new(1, -54, 0.5, -11)
dogTrack.BackgroundColor3 = Color3.fromRGB(215, 220, 230)
dogTrack.BorderSizePixel = 0
dogTrack.Parent = dogCard

local dogTrackCorner = Instance.new("UICorner")
dogTrackCorner.CornerRadius = UDim.new(1, 0)
dogTrackCorner.Parent = dogTrack

local dogTrackStroke = Instance.new("UIStroke")
dogTrackStroke.Color = Color3.fromRGB(195, 205, 220)
dogTrackStroke.Thickness = 1
dogTrackStroke.Parent = dogTrack

local dogKnob = Instance.new("Frame")
dogKnob.Size = UDim2.new(0, 16, 0, 16)
dogKnob.Position = UDim2.new(0, 3, 0.5, -8)
dogKnob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dogKnob.BorderSizePixel = 0
dogKnob.Parent = dogTrack

local dogKnobCorner = Instance.new("UICorner")
dogKnobCorner.CornerRadius = UDim.new(1, 0)
dogKnobCorner.Parent = dogKnob

local iconButton = Instance.new("TextButton")
iconButton.Name = "FloatingIcon"
iconButton.Size = UDim2.new(0, 48, 0, 48)
iconButton.Position = UDim2.new(0, 20, 0.5, -24)
iconButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iconButton.AutoButtonColor = false
iconButton.Font = Enum.Font.GothamBold
iconButton.Text = ""
iconButton.Visible = isTouchDevice
iconButton.Active = true
iconButton.Parent = screenGui

local iconCorner = Instance.new("UICorner")
iconCorner.CornerRadius = UDim.new(0, 12)
iconCorner.Parent = iconButton

local iconStroke = Instance.new("UIStroke")
iconStroke.Color = Color3.fromRGB(220, 225, 235)
iconStroke.Thickness = 1.4
iconStroke.Parent = iconButton

local _, btnEyeLeft, btnEyeRight = createCyanEyes(iconButton, 13, -6)

local isFoxActive = false
foxCard.MouseButton1Click:Connect(function()
    isFoxActive = not isFoxActive
    local tweenInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    if isFoxActive then
        TweenService:Create(switchTrack, tweenInfo, {BackgroundColor3 = Color3.fromRGB(0, 210, 235)}):Play()
        TweenService:Create(trackStroke, tweenInfo, {Color = Color3.fromRGB(80, 235, 255)}):Play()
        TweenService:Create(switchKnob, tweenInfo, {
            Position = UDim2.new(1, -19, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    else
        TweenService:Create(switchTrack, tweenInfo, {BackgroundColor3 = Color3.fromRGB(215, 220, 230)}):Play()
        TweenService:Create(trackStroke, tweenInfo, {Color = Color3.fromRGB(195, 205, 220)}):Play()
        TweenService:Create(switchKnob, tweenInfo, {
            Position = UDim2.new(0, 3, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    end

    task.spawn(function()
        if isFoxActive then
            pcall(function()
                ReplicatedStorage.Core.Remotes.System.GiveJewel:InvokeServer("Fox", "None", "None", "None", "None", player.Character)
            end)
            task.wait(0.1)
            pcall(function()
                ReplicatedStorage.Core.Remotes.Abilities.Transform:FireServer("Fox", "None", "Classic", "None")
            end)
        else
            pcall(function()
                ReplicatedStorage.Core.Remotes.Abilities.Transform:FireServer("Fox", "None", "Classic", "None")
            end)
        end
    end)
end)

local isScarabActive = false
scarabCard.MouseButton1Click:Connect(function()
    isScarabActive = not isScarabActive
    local tweenInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    if isScarabActive then
        TweenService:Create(scarabTrack, tweenInfo, {BackgroundColor3 = Color3.fromRGB(230, 120, 30)}):Play()
        TweenService:Create(scarabTrackStroke, tweenInfo, {Color = Color3.fromRGB(250, 140, 50)}):Play()
        TweenService:Create(scarabKnob, tweenInfo, {
            Position = UDim2.new(1, -19, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    else
        TweenService:Create(scarabTrack, tweenInfo, {BackgroundColor3 = Color3.fromRGB(215, 220, 230)}):Play()
        TweenService:Create(scarabTrackStroke, tweenInfo, {Color = Color3.fromRGB(195, 205, 220)}):Play()
        TweenService:Create(scarabKnob, tweenInfo, {
            Position = UDim2.new(0, 3, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    end

    task.spawn(function()
        if isScarabActive then
            pcall(function()
                ReplicatedStorage.Core.Remotes.System.GiveJewel:InvokeServer("Ladybug", "None", "None", "None", "None", player.Character)
            end)
            task.wait(0.1)
            pcall(function()
                ReplicatedStorage.Core.Remotes.Abilities.Transform:FireServer("Ladybug", "None", "Scarabella", "None", true)
            end)
        else
            pcall(function()
                ReplicatedStorage.Core.Remotes.Abilities.Transform:FireServer("Ladybug", "None", "Scarabella", "None")
            end)
        end
    end)
end)

local isDogActive = false
dogCard.MouseButton1Click:Connect(function()
    isDogActive = not isDogActive
    local tweenInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    if isDogActive then
        TweenService:Create(dogTrack, tweenInfo, {BackgroundColor3 = Color3.fromRGB(50, 150, 230)}):Play()
        TweenService:Create(dogTrackStroke, tweenInfo, {Color = Color3.fromRGB(70, 170, 250)}):Play()
        TweenService:Create(dogKnob, tweenInfo, {
            Position = UDim2.new(1, -19, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    else
        TweenService:Create(dogTrack, tweenInfo, {BackgroundColor3 = Color3.fromRGB(215, 220, 230)}):Play()
        TweenService:Create(dogTrackStroke, tweenInfo, {Color = Color3.fromRGB(195, 205, 220)}):Play()
        TweenService:Create(dogKnob, tweenInfo, {
            Position = UDim2.new(0, 3, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    end

    task.spawn(function()
        if isDogActive then
            pcall(function()
                ReplicatedStorage.Core.Remotes.System.GiveJewel:InvokeServer("Dog", "None", "Reimagined", "None", "None", player.Character)
            end)
            task.wait(0.1)
            pcall(function()
                ReplicatedStorage.Core.Remotes.Abilities.Transform:FireServer("Dog", "None", "Classic", "None")
            end)
        else
            pcall(function()
                ReplicatedStorage.Core.Remotes.Abilities.Transform:FireServer("Dog", "None", "Classic", "None")
            end)
        end
    end)
end)

local function enableTouchDrag(targetObj: GuiObject)
    local isDragging = false
    local dragStart = Vector2.zero
    local startPos = UDim2.new()
    local dragInput

    table.insert(connections, targetObj.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            dragStart = input.Position
            startPos = targetObj.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    isDragging = false
                end
            end)
        end
    end))

    table.insert(connections, targetObj.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end))

    table.insert(connections, UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and isDragging then
            local delta = input.Position - dragStart
            targetObj.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end))
end

enableTouchDrag(mainFrame)
enableTouchDrag(iconButton)

local isVisible = true
local isTweening = false

local function toggleGui()
    if isTweening or not screenGui.Parent then return end
    isTweening = true

    isVisible = not isVisible
    local tweenInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    if not isVisible then
        mainFrame.Visible = false
        iconButton.Visible = true
    else
        mainFrame.Visible = true
        if not isTouchDevice then
            iconButton.Visible = false
        end
    end

    isTweening = false
end

table.insert(connections, iconButton.MouseButton1Click:Connect(toggleGui))
table.insert(connections, minimizeBtn.MouseButton1Click:Connect(toggleGui))

local isUnloaded = false
local function unloadGui()
    if isUnloaded then return end
    isUnloaded = true

    for _, conn in ipairs(connections) do
        if conn.Connected then conn:Disconnect() end
    end
    table.clear(connections)

    if screenGui then screenGui:Destroy() end
end

table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == TOGGLE_KEY then
        task.spawn(toggleGui)
    elseif input.KeyCode == UNLOAD_KEY then
        unloadGui()
    end
end))
