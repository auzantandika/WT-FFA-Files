fx_version 'adamant'

game 'gta5'

description 'Skin Changer'

version '1.0.3'

client_scripts {
	'@es_extended/locale.lua',
	'locale.lua',
	'locales/br.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'locales/tr.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/es.lua',
	'locales/tr.lua',
	'config.lua',
	'server/main.lua'
}
