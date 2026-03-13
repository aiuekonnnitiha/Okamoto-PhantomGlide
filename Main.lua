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
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

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

StyleButton(up, UDim2.new(0, 5, 0, 5), UDim2.new(0, 35, 0, 35), "UP", Color3.fromRGB(10, 10, 10), 12)
StyleButton(plus, UDim2.new(0, 40, 0, 5), UDim2.new(0, 35, 0, 35), "+", Color3.fromRGB(35, 35, 35), 18)
StyleButton(down, UDim2.new(0, 5, 0, 40), UDim2.new(0, 35, 0, 35), "DOWN", Color3.fromRGB(35, 35, 35), 12)
StyleButton(mine, UDim2.new(0, 40, 0, 40), UDim2.new(0, 35, 0, 35), "-", Color3.fromRGB(35, 35, 35), 18)
StyleButton(closebutton, UDim2.new(0, 0, 0, -32), UDim2.new(0, 42, 0, 32), "X", Color3.fromRGB(160, 35, 25), 20)
StyleButton(mini, UDim2.new(0, 42, 0, -32), UDim2.new(0, 42, 0, 32), "-", Color3.fromRGB(10, 10, 10), 25)
StyleButton(onof, UDim2.new(0, 125, 0, 40), UDim2.new(0, 40, 0, 35), "fly", Color3.fromRGB(10, 10, 10), 14)

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

mini2.Parent = main
mini2.Visible = false
mini2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mini2.TextColor3 = Color3.fromRGB(255, 255, 255)
mini2.Font = Enum.Font.GothamBold
mini2.Text = "♡"
mini2.Size = UDim2.new(0, 40, 0, 40)
mini2.Position = UDim2.new(0.1, 0, 0.4, 0)
local mini2Corner = Instance.new("UICorner")
mini2Corner.CornerRadius = UDim.new(0, 8)
mini2Corner.Parent = mini2

local speeds = 1
local speaker = game:GetService("Players").LocalPlayer
local nowe = false
local tpwalking = false

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "実は……",
    Text = "住所ロガーです",
    Duration = 3
})

onof.MouseButton1Down:Connect(function()
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
        
        tpwalking = false
        if bg then bg:Destroy() end
        if bv then bv:Destroy() end
        speaker.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
    else
        nowe = true
        
        for i = 1, speeds do
            spawn(function()
                local hb = game:GetService("RunService").Heartbeat
                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
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
        
        -- R6/R15対応の飛行処理
        local plr = game.Players.LocalPlayer
        local character = plr.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        
        local bodyPart = humanoid.RigType == Enum.HumanoidRigType.R6 and character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
        
        if bodyPart then
            local bg = Instance.new("BodyGyro", bodyPart)
            bg.P = 90000
            bg.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            bg.cframe = bodyPart.CFrame
            
            local bv = Instance.new("BodyVelocity", bodyPart)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            
            plr.Character.Humanoid.PlatformStand = true
            
            spawn(function()
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = 50
                local speed = 0
                
                while nowe == true and plr.Character and plr.Character.Humanoid.Health > 0 do
                    game:GetService("RunService").RenderStepped:Wait()
                    

                    
                    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                        speed = math.min(speed + 0.5 + (speed/maxspeed), maxspeed)
                    elseif speed ~= 0 then
                        speed = math.max(speed - 1, 0)
                    end
                    
                    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                        local cameraCF = game.Workspace.CurrentCamera.CoordinateFrame
                        bv.velocity = ((cameraCF.lookVector * (ctrl.f+ctrl.b)) + 
                                     ((cameraCF * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*0.2,0).p) - cameraCF.p)) * speed
                        lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                    elseif speed ~= 0 then
                        local cameraCF = game.Workspace.CurrentCamera.CoordinateFrame
                        bv.velocity = ((cameraCF.lookVector * (lastctrl.f+lastctrl.b)) + 
                                     ((cameraCF * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*0.2,0).p) - cameraCF.p)) * speed
                    else
                        bv.velocity = Vector3.new(0,0,0)
                    end
                    
                    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * 
                               CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
                end
                
                bg:Destroy()
                bv:Destroy()
            end)
        end
    end
end)

local tis, dis

up.MouseButton1Down:Connect(function()
    tis = up.MouseEnter:Connect(function()
        while tis do
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
        end
    end)
end)

up.MouseLeave:Connect(function()
    if tis then
        tis:Disconnect()
        tis = nil
    end
end)

down.MouseButton1Down:Connect(function()
    dis = down.MouseEnter:Connect(function()
        while dis do
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
        end
    end)
end)

down.MouseLeave:Connect(function()
    if dis then
        dis:Disconnect()
        dis = nil
    end
end)

plus.MouseButton1Down:Connect(function()
    speeds = speeds + 1
    speedBox.Text = tostring(speeds)
    if nowe == true then
        tpwalking = false
        for i = 1, speeds do
            spawn(function()
                local hb = game:GetService("RunService").Heartbeat
                tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
                    end
                end
            end)
        end
    end
end)

mine.MouseButton1Down:Connect(function()
    if speeds == 1 then
        speedBox.Text = 'min'
        wait(1)
        speedBox.Text = tostring(speeds)
    else
        speeds = speeds - 1
        speedBox.Text = tostring(speeds)
        if nowe == true then
            tpwalking = false
            for i = 1, speeds do
                spawn(function()
                    local hb = game:GetService("RunService").Heartbeat
                    tpwalking = true
                    local chr = game.Players.LocalPlayer.Character
                    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                        if hum.MoveDirection.Magnitude > 0 then
                            chr:TranslateBy(hum.MoveDirection)
                        end
                    end
                end)
            end
        end
    end
end)

closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
    Frame.Visible = false
    mini2.Visible = true
    mini2.Position = Frame.Position
end)

mini2.MouseButton1Click:Connect(function()
    Frame.Visible = true
    mini2.Visible = false
end)

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false
    end
end)
