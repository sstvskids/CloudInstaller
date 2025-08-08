local cloneref = cloneref or function(obj)
    return obj
end

local Player = cloneref(game:GetService('Players')).LocalPlayer
local HttpService = cloneref(game:GetService('HttpService'))
local StarterGui = cloneref(game:GetService('StarterGui'))
local userInputService = cloneref(game:GetService('UserInputService'))
local Lighting = cloneref(game:GetService('Lighting'))

local api = loadstring(game:HttpGet('https://raw.githubusercontent.com/sstvskids/CloudInstaller/refs/heads/main/helper/uiapi.lua'))()
local PlayerGui = Player.PlayerGui

local blur = Instance.new('BlurEffect')
blur.Size = 24
blur.Parent = Lighting

local ScreenGui = Instance.new('ScreenGui')
ScreenGui.Parent = PlayerGui

local Frame = Instance.new('Frame')
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
Frame.Position = UDim2.new(0.25, 0, 0.18, 0)
Frame.Size = UDim2.new(0, 550, 0, 350)
Frame.Active = true
Frame.Selectable = true
Frame.BackgroundTransparency = 1
Frame.Visible = false

local UICorner = Instance.new('UICorner')
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 38)

local TitleBox = Instance.new('Frame')
TitleBox.Parent = Frame
TitleBox.BackgroundColor3 = Color3.fromRGB(36, 36, 42)
TitleBox.Position = UDim2.new(0.17, 0, 0.04, 0)
TitleBox.Size = UDim2.new(0.66, 0, 0.18, 0)

local TitleBoxCorner = Instance.new('UICorner')
TitleBoxCorner.Parent = TitleBox
TitleBoxCorner.CornerRadius = UDim.new(0, 18)

local Title = Instance.new('TextLabel')
Title.Parent = TitleBox
Title.Text = 'Config Installer'
Title.Font = Enum.Font.GothamBold
Title.TextSize = 40
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.TextScaled = true
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.TextYAlignment = Enum.TextYAlignment.Center

local CloudLogo = Instance.new('ImageLabel')
CloudLogo.Parent = Frame
CloudLogo.BackgroundTransparency = 1
CloudLogo.Size = UDim2.new(0, 110, 0, 110)
CloudLogo.Position = UDim2.new(0.5, -55, 0.34, 0)
CloudLogo.Image = 'rbxassetid://1095708'

local BlatantButton = Instance.new('TextButton')
BlatantButton.Parent = Frame
BlatantButton.Text = 'Blatant Config'
BlatantButton.Font = Enum.Font.GothamBold
BlatantButton.TextSize = 28
BlatantButton.TextColor3 = Color3.fromRGB(255,255,255)
BlatantButton.BackgroundColor3 = Color3.fromRGB(128, 38, 196)
BlatantButton.Position = UDim2.new(0.5, -110, 0.62, 0)
BlatantButton.Size = UDim2.new(0, 220, 0, 54)
BlatantButton.AutoButtonColor = true

local BlatantButtonCorner = Instance.new('UICorner')
BlatantButtonCorner.Parent = BlatantButton
BlatantButtonCorner.CornerRadius = UDim.new(0, 14)

local MoreText = Instance.new('TextLabel')
MoreText.Parent = Frame
MoreText.Text = '(more coming soon)'
MoreText.Font = Enum.Font.Gotham
MoreText.TextSize = 18
MoreText.TextColor3 = Color3.fromRGB(220,220,220)
MoreText.BackgroundTransparency = 1
MoreText.Position = UDim2.new(0.5, -75, 0.78, 0)
MoreText.Size = UDim2.new(0, 150, 0, 24)
MoreText.TextXAlignment = Enum.TextXAlignment.Center

local Overlay = Instance.new('Frame')
Overlay.Parent = ScreenGui
Overlay.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Overlay.BackgroundTransparency = 1
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.Position = UDim2.new(0, 0, 0, 0)
Overlay.Visible = false
Overlay.ZIndex = 100

local OverlayMessage = Instance.new('TextLabel')
OverlayMessage.Parent = Overlay
OverlayMessage.Text = 'CloudWare installing'
OverlayMessage.Font = Enum.Font.GothamBold
OverlayMessage.TextSize = 38
OverlayMessage.TextColor3 = Color3.new(1,1,1)
OverlayMessage.BackgroundTransparency = 0.3
OverlayMessage.BackgroundColor3 = Color3.fromRGB(48,48,48)
OverlayMessage.AnchorPoint = Vector2.new(0.5,0.5)
OverlayMessage.Position = UDim2.new(0.5, 0, 0.5, 0)
OverlayMessage.Size = UDim2.new(0, 400, 0, 90)
OverlayMessage.ZIndex = 101

local OverlayMessageCorner = Instance.new('UICorner')
OverlayMessageCorner.Parent = OverlayMessage
OverlayMessageCorner.CornerRadius = UDim.new(0, 14)

local ProgressFrame = Instance.new('Frame')
ProgressFrame.Parent = Overlay
ProgressFrame.BackgroundColor3 = Color3.fromRGB(60,60,60)
ProgressFrame.Size = UDim2.new(0, 400, 0, 36)
ProgressFrame.Position = UDim2.new(0.5, -200, 0.5, 60)
ProgressFrame.Visible = false
ProgressFrame.BackgroundTransparency = 1
ProgressFrame.ZIndex = 102

local ProgressBar = Instance.new('Frame')
ProgressBar.Parent = ProgressFrame
ProgressBar.BackgroundColor3 = Color3.fromRGB(128, 38, 196)
ProgressBar.Size = UDim2.new(0, 0, 1, 0)
ProgressBar.Position = UDim2.new(0,0,0,0)
ProgressBar.ZIndex = 103

local ProgressCorner = Instance.new('UICorner')
ProgressCorner.Parent = ProgressFrame
ProgressCorner.CornerRadius = UDim.new(0, 10)

local ProgressBarCorner = Instance.new('UICorner')
ProgressBarCorner.Parent = ProgressBar
ProgressBarCorner.CornerRadius = UDim.new(0, 10)

local ProgressLabel = Instance.new('TextLabel')
ProgressLabel.Parent = ProgressFrame
ProgressLabel.Size = UDim2.new(1, 0, 1, 0)
ProgressLabel.Position = UDim2.new(0, 0, 0, 0)
ProgressLabel.BackgroundTransparency = 1
ProgressLabel.Font = Enum.Font.Gotham
ProgressLabel.TextSize = 18
ProgressLabel.TextColor3 = Color3.new(1,1,1)
ProgressLabel.Text = 'Downloading: 0/0'
ProgressLabel.ZIndex = 104

Frame.Visible = true
for i = 1, 24 do
    Frame.BackgroundTransparency = 1 - (i * 0.04)
    TitleBox.BackgroundTransparency = 1 - (i * 0.04)
    BlatantButton.BackgroundTransparency = 1 - (i * 0.04)
    wait(0.03)
end
Frame.BackgroundTransparency = 0
TitleBox.BackgroundTransparency = 0
BlatantButton.BackgroundTransparency = 0

local dragging = false
local dragStart, startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        if dragging then
            updateInput(input)
        end
    end
end)

userInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateInput(input)
    end
end)

local ProfileFolder = 'newvape/profiles'

local function sendNotification(title, text)
	pcall(function()
		StarterGui:SetCore('SendNotification', {
			Title = title,
			Text = text,
			Duration = 4
		})
	end)
end

--[[local function downloadAndReplace(progressCallback)
	if not isfolder('newvape') then makefolder('newvape') end
	if not isfolder(ProfileFolder) then makefolder(ProfileFolder) end
	local total = 0
	for _ in pairs(FileSources) do total = total + 1 end
	local downloaded = 0
	for name, data in pairs(FileSources) do
		local success, content = pcall(function()
			return game:HttpGet(data.url)
		end)
		if success and content then
			local filepath = ProfileFolder .. '/' .. data.filename
			local isJson = data.filename:sub(-5) == '.json'
			if isJson then
				local ok, parsed = pcall(function()
					return HttpService:JSONDecode(content)
				end)
				if ok then
					writefile(filepath, HttpService:JSONEncode(parsed))
				end
			else
				writefile(filepath, content)
			end
		end
		downloaded = downloaded + 1
		if progressCallback then
			progressCallback(downloaded, total, data.filename)
		end
	end
end]]

local function downloadAndReplace(progressCallback)
	for _, v in {'newvape', ProfileFolder} do
		if not isfolder(v) then makefolder(v) end
    end
    local downloaded = 0 -- 6
    local url = api.getURL('CloudwareV2', 'Configloader')

    local folders = {}
    api.getFolders(url, folders)

    for i,v in folders do
        local suc, res = pcall(function()
            return api.downloadURLs(url, 'newvape/profiles', v)
        end)
        if suc then
            downloaded = downloaded + 1
            if progressCallback then
                progressCallback(downloaded, 6, 'Doing sum magic')
            end
        else
            downloaded = downloaded
            progressCallback(downloaded, 6, 'Failed :(')
            writefile('clouderr.lua', res)
            task.wait(2)
            ScreenGui:Destroy()
            blur:Destroy()
        end
    end
end

local function fadeIn(obj, prop, from, to, step, delayTime)
	obj[prop] = from
	for t = from, to, step do
		obj[prop] = t
		wait(delayTime)
	end
	obj[prop] = to
end

local function fadeOut(obj, prop, from, to, step, delayTime)
	obj[prop] = from
	for t = from, to, step do
		obj[prop] = t
		wait(delayTime)
	end
	obj[prop] = to
end

BlatantButton.MouseButton1Click:Connect(function()
    Overlay.Visible = true
    OverlayMessage.Visible = true
    ProgressFrame.Visible = false
    Overlay.BackgroundTransparency = 1
    fadeIn(Overlay, 'BackgroundTransparency', 1, 0.2, -0.08, 0.02)
    wait(3)
    OverlayMessage.Visible = false
    ProgressFrame.Visible = true
    ProgressFrame.BackgroundTransparency = 1
    fadeIn(ProgressFrame, 'BackgroundTransparency', 1, 0, -0.12, 0.015)
    ProgressBar.Size = UDim2.new(0,0,1,0)
    local total = 0
    for _ in pairs(FileSources) do total = total + 1 end
    ProgressLabel.Text = 'Downloading: 0/'..tostring(total)
    local function updateProgress(downloaded, total, filename)
        ProgressBar.Size = UDim2.new(downloaded/total,0,1,0)
        ProgressLabel.Text = 'Downloading: '..downloaded..'/'..total..' ('..filename..')'
    end
    downloadAndReplace(updateProgress)
    wait(0.5)
    fadeOut(ProgressFrame, 'BackgroundTransparency', 0, 1, 0.12, 0.015)
    ProgressFrame.Visible = false
    fadeOut(Overlay, 'BackgroundTransparency', 0.2, 1, 0.08, 0.02)
    Overlay.Visible = false
    ProgressFrame.Visible = false
    sendNotification('CloudWare', 'CloudWare has been installed')
    wait(0.7)
    ScreenGui:Destroy()
    blur:Destroy()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudwareV2/CloudV4ForRoblox/main/NewMainScript.lua', true))()
end)