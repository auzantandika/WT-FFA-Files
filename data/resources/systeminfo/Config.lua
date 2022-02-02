DiscordWebhookSystemInfos = 'https://discord.com/api/webhooks/938039065985568778/ASRk7GB4pD7AA_S-q8rWZE5OJkO2pJVNF81FOm4ksFLP8dZPPAgFsq_N8kz-jej-cfR0'
DiscordWebhookKillinglogs = 'https://discord.com/api/webhooks/938039260689334332/u_GrbLe42Fd0zPl_tPl4dukklgbMfWijHwwCr9YuLOiDUsG3fIYTd7efaLURJf8r53Hz'
DiscordWebhookChat = 'https://discord.com/api/webhooks/938039386891776090/DzYM3CZOIOFZgjO6XhvnnZ54nhX_Ir-SkuFBgCLFRuvZ5MDyvdGWskkbnze7KXBAMlzj'
SystemAvatar = 'https://wiki.fivem.net/w/images/d/db/FiveM-Wiki.png'

UserAvatar = 'https://i.imgur.com/KIcqSYs.png'

SystemName = 'WhiteTiger Slave'

--[[ Special Commands formatting
		 *YOUR_TEXT*			--> Make Text Italics in Discord
		**YOUR_TEXT**			--> Make Text Bold in Discord
	   ***YOUR_TEXT***			--> Make Text Italics & Bold in Discord
		__YOUR_TEXT__			--> Underline Text in Discord
	   __*YOUR_TEXT*__			--> Underline Text and make it Italics in Discord
	  __**YOUR_TEXT**__			--> Underline Text and make it Bold in Discord
	 __***YOUR_TEXT***__		--> Underline Text and make it Italics & Bold in Discord
		~~YOUR_TEXT~~			--> Strikethrough Text in Discord
]]
-- Use 'USERNAME_NEEDED_HERE' without the quotes if you need a Users Name in a special command
-- Use 'USERID_NEEDED_HERE' without the quotes if you need a Users ID in a special command


-- These special commands will be printed differently in discord, depending on what you set it to
SpecialCommands = {
				   {'/911E', '**[EMS]: (CALLER ID: [ USERNAME_NEEDED_HERE | USERID_NEEDED_HERE ])**'},
				   {'/911P', '**[POLICE]: (CALLER ID: [ USERNAME_NEEDED_HERE | USERID_NEEDED_HERE ])**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'/ooc', ''},
					  {'/setaccountmoney', ''},
					  {'/twt', ''},
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '/Whatever',
			   '/Whatever2',
			  }

