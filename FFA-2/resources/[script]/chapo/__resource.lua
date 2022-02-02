client_script 'client.lua'
server_script 'server.lua'

ui_page 'html/index.html'


client_scripts {
	'tpm-c/main.lua',
	'base-c/jongkok.lua',
	'base-c/point.lua',
	'base-c/recoil.lua',
	'npc-c/main.lua',
	'nodriveby-c/client.lua',
	'pvp-c/pvp.lua',
	'zone1-c/client.lua',
	'zone2-c/client.lua',
	'zone2-c/config.lua',
	'delveh-c/client.lua',
	'delveh-c/entityiter.lua',
	'reticle-c/client.lua',
	'tp-c/client.lua',
	'loadout-c/client.lua',
	'vdm-c/client.lua',
	'delveh-c/config.lua',
	'map-c/client.lua',
	'co-c/client.lua',
	'kenda-c/client.lua',
	'die-c/client.lua',
	'weapon-dmg.lua',
}
  
server_scripts {
	'tpm-s/main.lua',
	'delveh-s/server.lua',
}

files {
	'html/index.html',
	'html/jquery.js',
	'html/init.js',
}
