local lp = game.Players.LocalPlayer



for i,v in pairs(getgc(true)) do
   if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
       v.OpenEgg = function()
           return
       end
   end
end

local v = coroutine.wrap(function()

local args = {[1] = {[1] = "Titanum Egg", [2] = true}}
local args2 = {[1] = {[1] = "Golden Titanum Egg", [2] = true}}

while true do
task.wait(.13)
pcall(function()
workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))

task.wait(.13)

workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args2))

end)
end
end)

v()



loadstring(game:HttpGet("https://raw.githubusercontent.com/Emcept/Scripts/main/WebhookScript_PSX.lua"))()

discordMessagePSX("<@&987797253869686804>", "Script executed!", lp.DisplayName.." has executed the script.")

local amount = 0
local old = amount
local text = 'a EXCLUSIVE'
local text2 = 'opened an EXCLUSIVE'

local f = coroutine.wrap(function()
while true do
task.wait()
local temp = 0

for i, v in pairs(lp.PlayerGui:GetDescendants()) do

if v:IsA'TextLabel' and not v:FindFirstChild'TextButton' and v.Text:split(' ')[1] == lp.DisplayName then
if string.find(v.Text:lower(), text:lower()) or string.find(v.Text:lower(), text2:lower()) then

if temp > old then
temp = temp+1
discordMsgPSX("<@&987797253869686804>", "Someone hatched an exclusive or a huge pet!", '_'..v.Text..'_')
end

end
end
end

if temp > old then
old = temp
end
if old > temp then
old = temp
end

old = temp
end
end)

f()


game.Players.PlayerRemoving:Connect(function(plr)
if plr == lp then
discordMessagePSX("<@&987797253869686804>", game.Players.LocalPlayer.DisplayName.." has left the game.", "Either got kicked or crashed (or just left lmao).")
end
end)


local Dir = game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay") 	Dir.DescendantAdded:Connect(function(Err) 		if Err.Name == "ErrorTitle" then 			Err:GetPropertyChangedSignal("Text"):Connect(function() 				if Err.Text:sub(0, 12) == "Disconnected" then 					if #game.Players:GetPlayers() <= 1 then 						lp:Kick("\nRejoining...") 						wait() 						TeleportService:Teleport(game.PlaceId, lp) 					else 						TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, lp) 					end 				end 			end) 		end 	end)



local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)		if State == Enum.TeleportState.Started then			queueteleport("loadstring(game:HttpGet'https://raw.githubusercontent.com/Emcept/Scripts/main/PSX_AFK.lua')()")		end	end)	
