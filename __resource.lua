resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

author 'CookieSan#5805'
description 'Annonce pour les entreprises'
version '1.2.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'client/main.lua',
	'@bulletin/client.lua'
}

dependency 'es_extended'
shared_script '@es_extended/imports.lua'