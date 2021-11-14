fx_version 'cerulean'
game 'gta5'

server_scripts {
	'config.lua',
	'shared.lua',
	'server/main.lua',
	'server/functions.lua',
	'server/player.lua',
	'server/events.lua',
	'server/commands.lua',
	'server/debug.lua',
	'connect/server/sv_queue_config.lua',
	'connect/connectqueue.lua',
	'connect/shared/sh_queue.lua',
}

client_scripts {
	'config.lua',
	'shared.lua',
	'client/main.lua',
	'client/functions.lua',
	'client/loops.lua',
	'client/events.lua',
	'client/debug.lua',
	'connect/shared/sh_queue.lua',
}

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
}