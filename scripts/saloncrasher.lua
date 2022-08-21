--cords dupe
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-214.19198608398438, 9.650596618652344, -53.703819274902344)
wait(.7)
--why no
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true


local descendants = game:GetService("Workspace")["Tomar pastel"]:GetDescendants()

--gui

if not getgenv().Config.Crashgui then

--no gui

end

if getgenv().Config.Crashgui then

 loadstring(game:HttpGet("https://raw.githubusercontent.com/martinelcrac/fe-random/main/crashgui.lua"))();

end

while true do
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character
         task.wait() --/ si no lo pongo se bugea y tira error de que la Handle no se a encontrado
         tool.Handle.CanCollide = true
    end
end
task.wait()
fireproximityprompt(game:GetService("Workspace")["Tomar bebida"].Part["Prompt Attachment"].ProximityPrompt, 1)  
for index, descendant in pairs(descendants) do
    if descendant:IsA("ProximityPrompt") then
	fireproximityprompt(descendant, 1)
	task.wait()
	fireproximityprompt(descendant, 0)
end
end
--fireproximityprompt(game:GetService("Workspace")["Tomar pastel"].Part["Prompt Attachment"].ProximityPrompt, 1)

   local var = 0
    for i,v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
       var += 1
    end
    end
    if var == getgenv().Config.Tools_max then break end
end

if not getgenv().Config.Ezcrash then
--drop normal
end

if  getgenv().Config.Ezcrash then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169.52651977539062, 36.003570556640625, 15.457282066345215)
wait(.3)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand"):Destroy() 
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-217.14930725097656, 5.150440692901611, -48.373226165771484)
end

if getgenv().Config.Notoolanimation then
wait(1)
 for _, v in next, game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
end

end
if not getgenv().Config.Notoolanimation then
 --/no pasara nada
end