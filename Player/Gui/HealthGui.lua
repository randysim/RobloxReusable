local player = game.Players.LocalPlayer or game.Players.PlayerAdded:Wait()
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local healthGui = script.Parent
-- Humanoid on take damage event
humanoid:GetPropertyChangedSignal("Health"):Connect(function () 
	local healthColor = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(85, 255, 0), humanoid.Health/humanoid.MaxHealth)	
	local healthChange = humanoid.Health/humanoid.MaxHealth
  -- TweenSize for the animation
	healthGui.Health.Meter:TweenSize(UDim2.new(healthChange, 0, 1, 0), "In", "Linear", 1)
	healthGui.Health.Meter.BackgroundColor3 = healthColor
	print("HEALTH CHANGED!")
end)
