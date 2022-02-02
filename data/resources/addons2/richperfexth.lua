Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(937986090005041162)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('
        picsart_22-02-01_13-36-16-687')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('WHITETIGER FFA')
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('picsart_22-02-01_13-36-16-687')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('Join Our Discord https://discord.gg/VKZV64AAXM')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)