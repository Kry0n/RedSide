Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(624265933518667776)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('logo_bluevinity_-_copie')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('RedSide')
       
        --Here you will have to put the image name for the "small" icon.
        --SetDiscordRichPresenceAssetSmall('discord-icon-7')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('https://discord.gg/V2n2h8')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1500)
		players = {}
		for _, player in ipairs(GetActivePlayers()) do
			if NetworkIsPlayerActive( player ) then
				table.insert( players, player )
			end
		end
		SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. " joueur(s) en ligne")
	end
end)