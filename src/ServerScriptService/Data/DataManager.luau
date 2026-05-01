local DataManager = {}

DataManager.Profiles = {}

function DataManager.AddMoney(player, money)
	print(player, money)
	local profile = DataManager.Profiles[player]
	print(profile)
	if not profile then
		return
	end
	local data = profile.Data
	print(data)
	data.Money += money
	player.leaderstats.Money.Value = data.Money
end

return DataManager
