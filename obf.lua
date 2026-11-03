--!strict
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

if CoreGui:FindFirstChild("RnD_SerializerGUI") then
	CoreGui.RnD_SerializerGUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RnD_SerializerGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local successParent = pcall(function()
	ScreenGui.Parent = CoreGui
end)
if not successParent then
	local players = game:GetService("Players")
	local localPlayer = players.LocalPlayer
	if localPlayer then
		ScreenGui.Parent = localPlayer:WaitForChild("PlayerGui")
	else
		ScreenGui.Parent = CoreGui
	end
end

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 540, 0, 440)
MainFrame.Position = UDim2.new(0.5, -270, 0.5, -220)
MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 8)
TitleCorner.Parent = TitleBar

local FixCorner = Instance.new("Frame")
FixCorner.Size = UDim2.new(1, 0, 0, 10)
FixCorner.Position = UDim2.new(0, 0, 1, -10)
FixCorner.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
FixCorner.BorderSizePixel = 0
FixCorner.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -20, 1, 0)
TitleLabel.Position = UDim2.new(0, 12, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Font = Enum.Font.Code
TitleLabel.Text = "R&D SERIALIZER // OPTIMIZED"
TitleLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
TitleLabel.TextSize = 13
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0.5, -15)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 18
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 6)
CloseCorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

local RunButton = Instance.new("TextButton")
RunButton.Name = "RunButton"
RunButton.Size = UDim2.new(1, -24, 0, 45)
RunButton.Position = UDim2.new(0, 12, 0, 55)
RunButton.BackgroundColor3 = Color3.fromRGB(0, 170, 120)
RunButton.Font = Enum.Font.Code
RunButton.Text = "ЗАПУСТИТЬ СЕРИАЛИЗАЦИЮ (FIXED)"
RunButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RunButton.TextSize = 13
RunButton.Parent = MainFrame

local RunCorner = Instance.new("UICorner")
RunCorner.CornerRadius = UDim.new(0, 6)
RunCorner.Parent = RunButton

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -24, 0, 20)
StatusLabel.Position = UDim2.new(0, 12, 0, 110)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Font = Enum.Font.Code
StatusLabel.Text = "Статус: Ожидание запуска..."
StatusLabel.TextColor3 = Color3.fromRGB(180, 180, 190)
StatusLabel.TextSize = 12
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.Parent = MainFrame

local ScrollingTextBox = Instance.new("ScrollingFrame")
ScrollingTextBox.Size = UDim2.new(1, -24, 1, -145)
ScrollingTextBox.Position = UDim2.new(0, 12, 0, 135)
ScrollingTextBox.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
ScrollingTextBox.BorderSizePixel = 0
ScrollingTextBox.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingTextBox.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollingTextBox.ScrollBarThickness = 6
ScrollingTextBox.Parent = MainFrame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 6)
BoxCorner.Parent = ScrollingTextBox

local JsonOutputBox = Instance.new("TextBox")
JsonOutputBox.Size = UDim2.new(1, -10, 1, 0)
JsonOutputBox.Position = UDim2.new(0, 5, 0, 0)
JsonOutputBox.BackgroundTransparency = 1
JsonOutputBox.MultiLine = true
JsonOutputBox.ClearTextOnFocus = false
JsonOutputBox.TextEditable = true
JsonOutputBox.Font = Enum.Font.Code
JsonOutputBox.Text = "// Нажми кнопку, чтобы собрать дамп без зависаний..."
JsonOutputBox.TextColor3 = Color3.fromRGB(210, 210, 220)
JsonOutputBox.TextSize = 11
JsonOutputBox.TextXAlignment = Enum.TextXAlignment.Left
JsonOutputBox.TextYAlignment = Enum.TextYAlignment.Top
JsonOutputBox.Parent = ScrollingTextBox


-- --- ОПТИМИЗИРОВАННОЕ ЯДРО ---

export type SerializedNode = {
	Name: string,
	ClassName: string,
	Properties: { [string]: any },
	Children: { SerializedNode },
}

local PROPERTY_MAP: { [string]: { string } } = {
	BasePart = { "CFrame", "Size", "Color", "Transparency", "Material", "Anchored", "CanCollide" },
	MeshPart = { "MeshId", "TextureID" },
	Model = { "WorldPivot" },
	Sound = { "SoundId", "Volume", "Playing" },
	Light = { "Brightness", "Color", "Enabled" },
}

local MAX_DEPTH: number = 6 -- Оптимальная глубина для предотвращения перегрузки

local function serializeValue(val: any): any
	local t = typeof(val)
	if t == "Vector3" then
		return { X = val.X, Y = val.Y, Z = val.Z }
	elseif t == "CFrame" then
		local comps = { val:GetComponents() }
		return { Position = { X = val.Position.X, Y = val.Position.Y, Z = val.Position.Z }, Matrix = comps }
	elseif t == "Color3" then
		return { R = val.R, G = val.G, B = val.B }
	elseif t == "EnumItem" then
		return tostring(val)
	elseif t == "boolean" or t == "number" or t == "string" then
		return val
	else
		return tostring(val)
	end
end

local function safeReadProperty(instance: Instance, propName: string): (boolean, any)
	return pcall(function()
		return (instance :: any)[propName]
	end)
end

local function extractProperties(instance: Instance): { [string]: any }
	local props = {}
	for className, propList in pairs(PROPERTY_MAP) do
		if instance:IsA(className) then
			for _, propName in ipairs(propList) do
				local ok, rawValue = safeReadProperty(instance, propName)
				if ok and rawValue ~= nil then
					props[propName] = serializeValue(rawValue)
				end
			end
		end
	end
	return props
end

local function serializeTree(root: Instance, currentDepth: number?): SerializedNode?
	local depth = currentDepth or 0
	if depth > MAX_DEPTH then
		return nil
	end

	if root == Workspace.Terrain or root.Name == "CoreGui" or root.Name == "PlayerGui" then
		return nil
	end

	local node: SerializedNode = {
		Name = root.Name,
		ClassName = root.ClassName,
		Properties = extractProperties(root),
		Children = {},
	}

	local children = root:GetChildren()
	for i = 1, #children do
		if i % 50 == 0 then
			task.wait()
		end
		
		local childNode = serializeTree(children[i], depth + 1)
		if childNode then
			table.insert(node.Children, childNode)
		end
	end

	return node
end

RunButton.MouseButton1Click:Connect(function()
	RunButton.Active = false
	RunButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	StatusLabel.Text = "Статус: Сканирование..."
	
	task.spawn(function()
		local startTime = os.clock()

		local wsData = nil
		local repData = nil

		local okWs = pcall(function()
			wsData = serializeTree(Workspace, 0)
		end)
		
		task.wait()

		local okRep = pcall(function()
			repData = serializeTree(ReplicatedStorage, 0)
		end)

		local dumpData = {
			Timestamp = os.time(),
			Workspace = wsData,
			ReplicatedStorage = repData,
		}

		local okJson, jsonOutput = pcall(function()
			return HttpService:JSONEncode(dumpData)
		end)

		local elapsed = os.clock() - startTime

		if okJson then
			JsonOutputBox.Text = jsonOutput
			StatusLabel.Text = string.format("Статус: Готово за %.2f сек! (Длина: %d)", elapsed, #jsonOutput)
		else
			JsonOutputBox.Text = "Ошибка JSONEncode: " .. tostring(jsonOutput)
			StatusLabel.Text = "Статус: Ошибка сериализации!"
		end

		RunButton.Active = true
		RunButton.BackgroundColor3 = Color3.fromRGB(0, 170, 120)
	end)
end)
