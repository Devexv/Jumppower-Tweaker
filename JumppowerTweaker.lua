-- Attach this script to a suitable object in your game, such as the UISlider or a separate script object.

-- References to GUI elements
local jumpPowerLabel = script.Parent:WaitForChild("JumpPowerLabel")
local jumpPowerSlider = script.Parent:WaitForChild("JumpPowerSlider")
local player = game.Players.LocalPlayer

-- Function to update jump power value based on slider position
local function updateJumpPower()
    local jumpPower = math.floor(jumpPowerSlider.Value) -- Clamp the value to an integer between 1 and 1000
    jumpPowerLabel.Text = "Jump Power: " .. tostring(jumpPower)
    player.Character.Humanoid.JumpPower = jumpPower
    
    -- Print jump power value to output
    print("Jump Power set to: " .. jumpPower)
    
    -- Store jump power value in a variable if needed
    -- You can access this variable from other scripts
    _G.jumpPowerValue = jumpPower
end

-- Connect slider's "Changed" event to update jump power value
jumpPowerSlider.Changed:Connect(updateJumpPower)

-- Initial update
updateJumpPower()
