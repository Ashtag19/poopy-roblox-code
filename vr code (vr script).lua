local UserInputService = game:GetService("UserInputService")

if UserInputService.VREnabled then

wait(4)
	end

workspace.CurrentCamera.CameraType = "Scriptable"
wait()
workspace.CurrentCamera.CFrame = CFrame.new()
--Cam = game.Workspace.Camera
--Legs = game.Workspace.Legs
--ogY = Cam.CFrame.Y
--HeadOrientation = VRService:GetUserCFrame(Enum.UserCFrame.Head) - (VRService:GetUserCFrame(Enum.UserCFrame.Head).p)

--Cam.CFrame = Legs.CFrame * CFrame.new(0, -ogY, 0) * (HeadOrientation)
local VRService = game:GetService("VRService")
VRService.UserCFrameChanged:Connect(function()
	local LeftHand = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
	local RightHand = VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
	local Head = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	workspace.THINGSHAPPEN.STUFF2HAPPEN:FireServer(RightHand,LeftHand,Head)
	
	local Setting = "Disabled" -- Can be one of: Disabled, Pointer, Navigation or Hidden
	game:GetService('StarterGui'):SetCore('VRLaserPointerMode',Setting)
	
end) 



    local VRService = game:GetService("VRService")
     
    VRService.NavigationRequested:Connect(function(pad, mode)
    	print(pad.Name + "Touchpad changed to state: " + mode.Name)
	
	
end)




