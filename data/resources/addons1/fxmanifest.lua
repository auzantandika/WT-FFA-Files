--------------------------------------
------Created By Whit3Xlightning------
--https://github.com/Whit3XLightning--
--------------------------------------

fx_version 'bodacious'
game 'gta5'

server_script {
    '@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
    'config.lua',
    'locales/en.lua',
    'server/*.lua'
}
client_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'locales/en.lua',
    'NativeUI.lua',
    'client/*.lua'
}