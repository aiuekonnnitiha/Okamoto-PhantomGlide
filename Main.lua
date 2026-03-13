local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner_Main = Instance.new("UICorner")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local plus = Instance.new("TextButton")
local mine = Instance.new("TextButton")
local speedBox = Instance.new("TextBox")
local onof = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ResetOnSpawn = false 

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.1
Frame.Position = UDim2.new(0.1, 0, 0.4, 0)
Frame.Size = UDim2.new(0, 170, 0, 80) 
Frame.Active = true
Frame.Draggable = true 

UICorner_Main.Parent = Frame
UICorner_Main.CornerRadius = UDim.new(0, 15)

local function StyleButton(btn, pos, size, text, color, tsize)
    btn.Parent = Frame
    btn.BackgroundColor3 = color or Color3.fromRGB(15, 15, 15)
    btn.BorderSizePixel = 0
    btn.Position = pos
    btn.Size = size
    btn.Font = Enum.Font.SourceSansBold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = tsize or 14
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
end

StyleButton(closebutton, UDim2.new(0, 0, 0, -32), UDim2.new(0, 42, 0, 32), "X", Color3.fromRGB(160, 35, 25), 20)
StyleButton(mini, UDim2.new(0, 42, 0, -32), UDim2.new(0, 42, 0, 32), "-", Color3.fromRGB(10, 10, 10), 25)

StyleButton(up, UDim2.new(0, 5, 0, 5), UDim2.new(0, 35, 0, 35), "UP", Color3.fromRGB(10, 10, 10), 12)
StyleButton(plus, UDim2.new(0, 40, 0, 5), UDim2.new(0, 35, 0, 35), "+", Color3.fromRGB(35, 35, 35), 18)
StyleButton(down, UDim2.new(0, 5, 0, 40), UDim2.new(0, 35, 0, 35), "DOWN", Color3.fromRGB(35, 35, 35), 12)
StyleButton(mine, UDim2.new(0, 40, 0, 40), UDim2.new(0, 35, 0, 35), "-", Color3.fromRGB(35, 35, 35), 18)

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 80, 0, 5)
TextLabel.Size = UDim2.new(0, 85, 0, 35)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "♡岡本ふらい♡"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 13

speedBox.Parent = Frame
speedBox.BackgroundTransparency = 1
speedBox.Position = UDim2.new(0, 85, 0, 40)
speedBox.Size = UDim2.new(0, 35, 0, 35)
speedBox.Font = Enum.Font.SourceSansBold
speedBox.Text = "1"
speedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
speedBox.TextSize = 22

StyleButton(onof, UDim2.new(0, 125, 0, 40), UDim2.new(0, 40, 0, 35), "fly", Color3.fromRGB(10, 10, 10), 14)

StyleButton(closebutton, UDim2.new(0, 0, 0, -32), UDim2.new(0, 42, 0, 32), "X", Color3.fromRGB(160, 35, 25), 20)
StyleButton(mini, UDim2.new(0, 42, 0, -32), UDim2.new(0, 42, 0, 32), "-", Color3.fromRGB(10, 10, 10), 25)

mini2.Parent = main
mini2.Visible = false
mini2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mini2.TextColor3 = Color3.fromRGB(255, 255, 255)
mini2.Font = Enum.Font.GothamBold
mini2.Text = "♡"
local mini2Corner = Instance.new("UICorner")
mini2Corner.CornerRadius = UDim.new(0, 8)
mini2Corner.Parent = mini2
mini2.Visible = false

speeds = 1 

local function syncSpeed()
    if nowe then
        tpwalking = false
        task.wait(0.01)
        tpwalking = true
    end
end

local speaker = game:GetService("Players").LocalPlayer 

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid") 

nowe = false 

game:GetService("StarterGui"):SetCore("SendNotification", { 
Title = "実は……";
Text = "住所ロガーです！";
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5; 

Frame.Active = true -- main = gui
Frame.Draggable = true 

onof.MouseButton1Down:connect(function() 

if nowe == true then
nowe = false 

speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

    else 
        nowe = true
        local Hum = speaker.Character:FindFirstChildOfClass("Humanoid")
        
        Hum:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
        Hum:ChangeState(Enum.HumanoidStateType.Swimming)

        for i = 1, speeds do
            spawn(function() 
                local hb = game:GetService("RunService").Heartbeat
                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum:GetState() ~= Enum.HumanoidStateType.Swimming then
                        hum:ChangeState(Enum.HumanoidStateType.Swimming)
                    end

if hum.MoveDirection.Magnitude > 0 then
    chr:TranslateBy(hum.MoveDirection * speeds)
end
                end 
            end)
        end
        game.Players.LocalPlayer.Character.Animate.Disabled = true

local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController") 

for i,v in next, Hum:GetPlayingAnimationTracks() do
v:AdjustSpeed(0)
end
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
end




if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0


local bg = Instance.new("BodyGyro", torso)
bg.P = 90000
bg.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
if nowe == true then
plr.Character.Humanoid.PlatformStand = true
end
while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
game:GetService("RunService").RenderStepped:Wait() 

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+0.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*0.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*0.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0,0)
end
--game.Players.LocalPlayer.Character.Animate.Disabled = true
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
end
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false
tpwalking = false




else
local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0


local bg = Instance.new("BodyGyro", UpperTorso)
bg.P = 90000
bg.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
bg.cframe = UpperTorso.CFrame
local bv = Instance.new("BodyVelocity", UpperTorso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
if nowe == true then
plr.Character.Humanoid.PlatformStand = true
end
while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
wait() 

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+0.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*0.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*0.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0,0)
end 

bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
end
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false
tpwalking = false



end





end) 

local tis 

up.MouseButton1Down:connect(function()
tis = up.MouseEnter:connect(function()
while tis do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
end
end)
end) 

up.MouseLeave:connect(function()
if tis then
tis:Disconnect()
tis = nil
end
end) 

local dis 

down.MouseButton1Down:connect(function()
dis = down.MouseEnter:connect(function()
while dis do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
end
end)
end) 

down.MouseLeave:connect(function()
if dis then
dis:Disconnect()
dis = nil
end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
wait(0.7)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false 

end)


plus.MouseButton1Down:connect(function()
    speeds = speeds + 1
    speedBox.Text = tostring(speeds)
    syncSpeed()
end)

mine.MouseButton1Down:connect(function()
    speeds = math.max(1, speeds - 1)
    speedBox.Text = tostring(speeds)
end)

speedBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local newSpeed = tonumber(speedBox.Text)
        if newSpeed and newSpeed > 0 then speeds = newSpeed else speedBox.Text = tostring(speeds) end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.1)
        if nowe == true then
            tpwalking = false
            task.wait(0.01)
            tpwalking = true
        end

        repeat task.wait(0.5) until nowe == false or main == nil
    end
end)

local TweenService = game:GetService("TweenService")

mini2.Text = "♡"
mini2.TextColor3 = Color3.fromRGB(255, 105, 180)
mini2.Size = UDim2.new(0, 40, 0, 40)
mini2.Active = true
mini2.Draggable = true 

local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

mini.MouseButton1Click:Connect(function()
    local currentPos = Frame.Position
    mini2.Position = UDim2.new(currentPos.X.Scale, currentPos.X.Offset + 42, currentPos.Y.Scale, currentPos.Y.Offset - 32)
    
    for _, child in pairs(Frame:GetChildren()) do
        if child:IsA("GuiObject") then
            TweenService:Create(child, tweenInfo, {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        end
    end

    local shrink = TweenService:Create(Frame, tweenInfo, {
        Size = UDim2.new(0, 0, 0, 0),
        Position = mini2.Position,
        BackgroundTransparency = 1
    })
    
    shrink:Play()
    shrink.Completed:Connect(function()
        Frame.Visible = false
        mini2.Visible = true
    end)
end)

mini2.MouseButton1Click:Connect(function()
    local originalSize = UDim2.new(0, 170, 0, 80)
    local currentHeart = mini2.Position
    local targetPos = UDim2.new(currentHeart.X.Scale, currentHeart.X.Offset - 42, currentHeart.Y.Scale, currentHeart.Y.Offset + 32)
    
    Frame.Position = targetPos
    Frame.Visible = true
    
    for _, child in pairs(Frame:GetChildren()) do
        if child:IsA("GuiObject") then
            local textT = 0
            local bgT = (child == speedBox or child == TextLabel) and 1 or 0
            TweenService:Create(child, tweenInfo, {TextTransparency = textT, BackgroundTransparency = bgT}):Play()
        end
    end

    local expand = TweenService:Create(Frame, tweenInfo, {
        Size = originalSize,
        BackgroundTransparency = 0.1
    })
    
    mini2.Visible = false
    expand:Play()
end)

closebutton.MouseButton1Click:Connect(function()
    for _, child in pairs(Frame:GetChildren()) do
        if child:IsA("GuiObject") then
            TweenService:Create(child, TweenInfo.new(0.3), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        end
    end
    
    local fadeOut = TweenService:Create(Frame, TweenInfo.new(0.5), {
        Size = UDim2.new(0, 170, 0, 0),
        BackgroundTransparency = 1
    })
    fadeOut:Play()
    fadeOut.Completed:Connect(function()
        main:Destroy()
    end)
end)
