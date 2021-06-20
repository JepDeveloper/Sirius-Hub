if game.PlaceId == 1962086868 then --tower of hell
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PandaCyphy/Sirius-Hub/main/games/TowerOfHell.lua"))()
elseif game.PlaceId == 155615604 then --prison life
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PandaCyphy/Sirius-Hub/main/games/PrisonLife.lua"))()
else
	local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

spawn(function()
  Notification.Notify("Sirius Hub", "Game not supported!", "rbxassetid://4914902889");
end)
end
