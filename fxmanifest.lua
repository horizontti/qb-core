fx_version 'cerulean'
game 'gta5'

server_scripts {
	'server/main.lua',
	'server/functions.lua',
	'server/player.lua',
	'server/events.lua',
	'server/commands.lua',
	'server/debug.lua',
	'connect/connectqueue.lua',
}

shared_scripts {
        'config.lua',
	'shared.lua',
        'connect/shared/sh_queue.lua',
        'connect/server/sv_queue_config.lua',
}

client_scripts {
	'client/main.lua',
	'client/functions.lua',
	'client/loops.lua',
	'client/events.lua',
	'client/debug.lua',
}

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
}
