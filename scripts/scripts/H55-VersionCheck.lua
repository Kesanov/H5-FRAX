if H55_Version ~= "15b5" then
    for player = 1,8 do
		startThread(MessageBoxForPlayers, GetPlayerFilter(player), "/Text/Game/Scripts/WrongVersion.txt", "")
	end
    sleep(10)
end