-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main frame with a greyish transparent background and curved edges
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.25, 0, 0.35, 0)  -- Smaller and more compact size
frame.Position = UDim2.new(0.375, 0, 0.3, 0)  -- Centered
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Dark grey background
frame.BackgroundTransparency = 0.3 -- Slight transparency (greyish)
frame.BorderSizePixel = 0 -- No border
frame.ClipsDescendants = true -- Ensures no overlap inside
frame.Parent = screenGui

-- Add curved edges to the frame
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12) -- Curved edges (rounded corners)
uiCorner.Parent = frame

-- Add bright cyan UI stroke around the frame
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(0, 255, 255) -- Bright cyan color for stroke
uiStroke.Thickness = 3
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.Parent = frame

-- Create the title label with white text, slightly moved down
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.1, 0)
title.Position = UDim2.new(0, 0, 0.05, 0)  -- Slightly moved down from the top
title.Text = "Blox Fruits Auto Farm"
title.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
title.TextSize = 24
title.Font = Enum.Font.SourceSansBold
title.TextStrokeTransparency = 0.4 -- Black outline transparency
title.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Black outline
title.BackgroundTransparency = 1
title.Parent = frame

-- Create the thin grey line
local line = Instance.new("Frame")
line.Size = UDim2.new(1, 0, 0, 2)
line.Position = UDim2.new(0, 0, 0.15, 0)
line.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- Grey color for the line
line.BorderSizePixel = 0
line.Parent = frame

-- Create the text box-like area (slightly less transparent than the background)
local textBoxBackground = Instance.new("Frame")
textBoxBackground.Size = UDim2.new(0.9, 0, 0.3, 0)
textBoxBackground.Position = UDim2.new(0.05, 0, 0.3, 0) -- Moved the text box area down
textBoxBackground.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Darker background for text box
textBoxBackground.BackgroundTransparency = 0.4 -- Less transparent
textBoxBackground.BorderSizePixel = 0
textBoxBackground.Parent = frame

-- Add curved edges to the text box background
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8) -- Rounded corners for text box
textBoxCorner.Parent = textBoxBackground

-- Create the "Welcome" label inside the text box
local welcomeText = Instance.new("TextLabel")
welcomeText.Size = UDim2.new(1, 0, 0.5, 0)
welcomeText.Position = UDim2.new(0, 0, 0.1, 0)
welcomeText.Text = "Welcome To Blox Zilla AutoFarm Script..."
welcomeText.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
welcomeText.TextSize = 18
welcomeText.Font = Enum.Font.SourceSansBold
welcomeText.TextStrokeTransparency = 0.4 -- Black outline transparency
welcomeText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Black outline
welcomeText.BackgroundTransparency = 1
welcomeText.Parent = textBoxBackground

-- Create the cyan button with bold text inside the text box
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.6, 0, 0.3, 0)
button.Position = UDim2.new(0.2, 0, 0.6, 0)
button.Text = "Activate"
button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
button.TextSize = 24
button.Font = Enum.Font.SourceSansBold
button.TextStrokeTransparency = 0.4 -- Black outline transparency
button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Black outline
button.BackgroundColor3 = Color3.fromRGB(0, 255, 255) -- Cyan color for button
button.BackgroundTransparency = 0 -- Opaque background
button.BorderSizePixel = 0 -- No border
button.Parent = textBoxBackground

-- Add rounded corners to the button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10) -- Rounded corners
buttonCorner.Parent = button

-- Button action
button.MouseButton1Click:Connect(function()
    print("Activate Button Clicked!")
end)

-- Add the [bulb emoji] text below the button
local activateText = Instance.new("TextLabel")
activateText.Size = UDim2.new(1, 0, 0.1, 0)
activateText.Position = UDim2.new(0, 0, 0.75, 0)
activateText.Text = "💡 Activate The Script To Start Farming"
activateText.TextColor3 = Color3.fromRGB(255, 255, 0) -- Bright yellow text
activateText.TextSize = 18
activateText.Font = Enum.Font.SourceSansBold
activateText.TextStrokeTransparency = 0.4 -- Black outline transparency
activateText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Black outline
activateText.BackgroundTransparency = 1
activateText.Parent = frame

-- Create the [boom emoji] text after
local creatorText = Instance.new("TextLabel")
creatorText.Size = UDim2.new(1, 0, 0.1, 0)
creatorText.Position = UDim2.new(0, 0, 0.85, 0)
creatorText.Text = "💥 Created By Blox Zilla"
creatorText.TextColor3 = Color3.fromRGB(0, 255, 255) -- Cyan text color
creatorText.TextSize = 18
creatorText.Font = Enum.Font.SourceSansBold
creatorText.TextStrokeTransparency = 0.4 -- Black outline transparency
creatorText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Black outline
creatorText.BackgroundTransparency = 1
creatorText.Parent = frame

-- Create a bright cyan effect for the UI stroke (bright cyan to less bright cyan)
while true do
    for i = 1, 0.5, -0.05 do
        uiStroke.Color = Color3.fromHSV(180/360, 1, i) -- Switching from bright cyan to less bright cyan
        wait(0.1)
    end
    for i = 0.5, 1, 0.05 do
        uiStroke.Color = Color3.fromHSV(180/360, 1, i) -- Back to bright cyan
        wait(0.1)
    end
end

-- Draggable functionality
local dragging = false
local dragInput, mousePos, framePos

-- Function to start dragging
frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragInput = input
        mousePos = input.Position
        framePos = frame.Position
    end
end)

-- Function to stop dragging
frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Function to move the frame while dragging
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging then
        local delta = input.Position - mousePos
        frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
    end
end)
