fx_version 'adamant'

game 'gta5'

description 'ESX Accessories'

version '1.1.0'

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/ru.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/cs.lua',
	'locales/pl.lua',
	'locales/id.lua',
	'config.lua',
	'server/*.lua'
}

client_scripts {
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/ru.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/cs.lua',
	'locales/pl.lua',
	'locales/id.lua',
	'config.lua',
	'client/*.lua'
}
