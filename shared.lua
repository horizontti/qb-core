QBShared = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end

QBShared.RandomStr = function(length)
	if length > 0 then
		return QBShared.RandomStr(length-1) .. StringCharset[math.random(1, #StringCharset)]
	else
		return ''
	end
end

QBShared.RandomInt = function(length)
	if length > 0 then
		return QBShared.RandomInt(length-1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

QBShared.SplitStr = function(str, delimiter)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( str, delimiter, from  )
	while delim_from do
		table.insert( result, string.sub( str, from , delim_from-1 ) )
		from  = delim_to + 1
		delim_from, delim_to = string.find( str, delimiter, from  )
	end
	table.insert( result, string.sub( str, from  ) )
	return result
end

QBShared.Items = {
	["weapon_unarmed"] 				 = {["name"] = "weapon_unarmed", 		 	  	["label"] = "Hands", 					["weight"] = 1000, 		["type"] = "weapon",	["ammotype"] = nil, 					["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_flashlight"] 			 = {["name"] = "weapon_flashlight", 		 	["label"] = "Flashlight", 					["weight"] = 1000, 		["type"] = "weapon",	["ammotype"] = nil, 					["image"] = "flashlight.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_knife"] 				 = {["name"] = "weapon_knife", 			 	  	["label"] = "Knife", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "knife.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_nightstick"] 			 = {["name"] = "weapon_nightstick", 		 	["label"] = "Nightstick", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "nightstick.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_hammer"] 				 = {["name"] = "weapon_hammer", 			 	["label"] = "Hammer", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_hammer.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bat"] 					 = {["name"] = "weapon_bat", 			 	  	["label"] = "Bat", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "baseballbat.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_golfclub"] 			 = {["name"] = "weapon_golfclub", 		 	  	["label"] = "Golfclub", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_crowbar"] 				 = {["name"] = "weapon_crowbar", 		 	  	["label"] = "Crowbar", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pistol"] 				 = {["name"] = "weapon_pistol", 			 	["label"] = "Walther P99", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "pistol.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pistol_mk2"] 			 = {["name"] = "weapon_pistol_mk2", 			["label"] = "Pistol Mk II", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "pistolmk2.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_combatpistol"] 		 = {["name"] = "weapon_combatpistol", 	 	  	["label"] = "Combat Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "combatpistol.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_appistol"] 			 = {["name"] = "weapon_appistol", 		 	  	["label"] = "AP Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "appistol.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pistol50"] 			 = {["name"] = "weapon_pistol50", 		 	  	["label"] = "Pistol .50 Cal", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_microsmg"] 			 = {["name"] = "weapon_microsmg", 		 	  	["label"] = "Micro SMG", 				["weight"] = 2200, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "microsmg.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_smg"] 				 	 = {["name"] = "weapon_smg", 			 	  	["label"] = "SMG", 						["weight"] = 3000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "smg.png", 					["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_assaultsmg"] 			 = {["name"] = "weapon_assaultsmg", 		 	["label"] = "Assault SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_assaultrifle"] 		 = {["name"] = "weapon_assaultrifle", 	 	  	["label"] = "Assault Rifle", 			["weight"] = 5000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "assaultrifle.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_carbinerifle"] 		 = {["name"] = "weapon_carbinerifle", 	 	  	["label"] = "Carbine Rifle", 			["weight"] = 4000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "carbinerifle.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_advancedrifle"] 		 = {["name"] = "weapon_advancedrifle", 	 	  	["label"] = "Advanced Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_mg"] 					 = {["name"] = "weapon_mg", 				 	["label"] = "Machinegun", 				["weight"] = 20000, 	["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_combatmg"] 			 = {["name"] = "weapon_combatmg", 		 	  	["label"] = "Combat MG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pumpshotgun"] 			 = {["name"] = "weapon_pumpshotgun", 	 	  	["label"] = "Pump Shotgun", 			["weight"] = 3800, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "pumpshotgun.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_sawnoffshotgun"] 		 = {["name"] = "weapon_sawnoffshotgun", 	 	["label"] = "Sawn-off Shotgun", 		["weight"] = 2000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "sawoffshotgun.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_assaultshotgun"] 		 = {["name"] = "weapon_assaultshotgun", 	 	["label"] = "Assault Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bullpupshotgun"] 		 = {["name"] = "weapon_bullpupshotgun", 	 	["label"] = "Bullpup Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_stungun"] 				 = {["name"] = "weapon_stungun", 		 	  	["label"] = "Taser", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "stungun.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_sniperrifle"] 			 = {["name"] = "weapon_sniperrifle", 	 	  	["label"] = "Sniper Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_heavysniper"] 			 = {["name"] = "weapon_heavysniper", 	 	  	["label"] = "Heavy Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_remotesniper"] 		 = {["name"] = "weapon_remotesniper", 	 	  	["label"] = "Remote Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER_REMOTE",	["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_grenadelauncher"] 		 = {["name"] = "weapon_grenadelauncher", 	  	["label"] = "Grenade Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_grenadelauncher_smoke"] = {["name"] = "weapon_grenadelauncher_smoke", 	["label"] = "Smoke Grenade Launcher", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_rpg"] 					 = {["name"] = "weapon_rpg", 			      	["label"] = "RPG", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RPG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_minigun"] 				 = {["name"] = "weapon_minigun", 		      	["label"] = "Minigun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MINIGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_grenade"] 				 = {["name"] = "weapon_grenade", 		      	["label"] = "Grenade", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_stickybomb"] 			 = {["name"] = "weapon_stickybomb", 		    ["label"] = "C4", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "stickybomb.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_smokegrenade"] 		 = {["name"] = "weapon_smokegrenade", 	      	["label"] = "Smoke Grenade", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bzgas"] 				 = {["name"] = "weapon_bzgas", 			      	["label"] = "BZ Gas", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_molotov"] 				 = {["name"] = "weapon_molotov", 		      	["label"] = "Molotov", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_fireextinguisher"] 	 = {["name"] = "weapon_fireextinguisher",      	["label"] = "Fire Extinguisher", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "fireext.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_petrolcan"] 			 = {["name"] = "weapon_petrolcan", 		 	  	["label"] = "Petrol Can", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PETROLCAN",		["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_briefcase"] 			 = {["name"] = "weapon_briefcase", 		 	  	["label"] = "Briefcase", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_briefcase_02"] 		 = {["name"] = "weapon_briefcase_02", 	 	  	["label"] = "Briefcase", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_ball"] 				 = {["name"] = "weapon_ball", 			 	  	["label"] = "Bal", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_BALL",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_flare"] 				 = {["name"] = "weapon_flare", 			 	  	["label"] = "Flare pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_snspistol"] 			 = {["name"] = "weapon_snspistol", 		 	  	["label"] = "SNS Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_snspistol.png", 	["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bottle"] 				 = {["name"] = "weapon_bottle", 			 	["label"] = "Broken Bottle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_gusenberg"] 			 = {["name"] = "weapon_gusenberg", 		 	  	["label"] = "Thompson MG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_specialcarbine"] 		 = {["name"] = "weapon_specialcarbine", 	 	["label"] = "Special Carbine", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_heavypistol"] 			 = {["name"] = "weapon_heavypistol", 	 	  	["label"] = "Heavy Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bullpuprifle"] 		 = {["name"] = "weapon_bullpuprifle", 	 	  	["label"] = "Bullpup Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_dagger"] 				 = {["name"] = "weapon_dagger", 			 	["label"] = "Dagger", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_vintagepistol"] 		 = {["name"] = "weapon_vintagepistol", 	 	  	["label"] = "Vintage Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_vintagepistol.png", ["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_firework"] 			 = {["name"] = "weapon_firework", 		 	  	["label"] = "Firework Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_musket"] 			     = {["name"] = "weapon_musket", 			 	["label"] = "Musket", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_heavyshotgun"] 		 = {["name"] = "weapon_heavyshotgun", 	 	  	["label"] = "Heavy Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_marksmanrifle"] 		 = {["name"] = "weapon_marksmanrifle", 	 	  	["label"] = "Marksman Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_hominglauncher"] 		 = {["name"] = "weapon_hominglauncher", 	 	["label"] = "Homing Launcher", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_STINGER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_proxmine"] 			 = {["name"] = "weapon_proxmine", 		 	  	["label"] = "Proxmine Grenade", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_snowball"] 		     = {["name"] = "weapon_snowball", 		 	  	["label"] = "Snowball", 				["weight"] = 0, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "snowball.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_flaregun"] 			 = {["name"] = "weapon_flaregun", 		 	  	["label"] = "Flare Gun", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_garbagebag"] 			 = {["name"] = "weapon_garbagebag", 		 	["label"] = "Garbage Bag", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_handcuffs"] 			 = {["name"] = "weapon_handcuffs", 		 	  	["label"] = "Handcuffs", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_combatpdw"] 			 = {["name"] = "weapon_combatpdw", 		 	  	["label"] = "Combat PDW", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_marksmanpistol"] 		 = {["name"] = "weapon_marksmanpistol", 	 	["label"] = "Marksman Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_knuckle"] 				 = {["name"] = "weapon_knuckle", 		 	  	["label"] = "Knuckle", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_hatchet"] 				 = {["name"] = "weapon_hatchet", 		 	  	["label"] = "Hatchet", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_hatchet.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_railgun"] 				 = {["name"] = "weapon_railgun", 		 	  	["label"] = "Railgun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_machete"] 				 = {["name"] = "weapon_machete", 		 	  	["label"] = "Machete", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_machinepistol"] 		 = {["name"] = "weapon_machinepistol", 	 	  	["label"] = "Tec-9", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "tec9.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_switchblade"] 			 = {["name"] = "weapon_switchblade", 	 	  	["label"] = "Switchblade", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_switchblade.png",	["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_revolver"] 			 = {["name"] = "weapon_revolver", 		 	  	["label"] = "Revolver", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_dbshotgun"] 			 = {["name"] = "weapon_dbshotgun", 		 	  	["label"] = "Double-barrel Shotgun", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_compactrifle"] 		 = {["name"] = "weapon_compactrifle", 	 	  	["label"] = "Compact Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "weapon_compactrifle.png", 	["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_autoshotgun"] 			 = {["name"] = "weapon_autoshotgun", 	 	  	["label"] = "Auto Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_battleaxe"] 			 = {["name"] = "weapon_battleaxe", 		 	  	["label"] = "Battle Axe", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_compactlauncher"] 		 = {["name"] = "weapon_compactlauncher",  	  	["label"] = "Compact Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_minismg"] 				 = {["name"] = "weapon_minismg", 		 	  	["label"] = "Mini SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "weapon_minismg.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pipebomb"] 			 = {["name"] = "weapon_pipebomb", 		 	  	["label"] = "Pipe bom", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_poolcue"] 				 = {["name"] = "weapon_poolcue", 		 	  	["label"] = "Poolcue", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_poolcue.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_wrench"] 				 = {["name"] = "weapon_wrench", 			 	["label"] = "Wrench", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_wrench.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_autoshotgun"] 		 	 = {["name"] = "weapon_autoshotgun", 	 		["label"] = "Sweeper Shotgun", 			["weight"] = 3000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "sweepershotgun.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bread"] 				 = {["name"] = "weapon_bread", 		 			["label"] = "Baquette", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "baquette.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},

	["id_card"] 					 = {["name"] = "id_card", 			 	  	  	["label"] = "ID Card", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "id_card.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A card containing all your information to identify yourself."},
	["driver_license"] 				 = {["name"] = "driver_license", 			  	["label"] = "Drivers License", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "driver_license.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Permit to show you can drive a vehicle."},
	["lawyerpass"] 					 = {["name"] = "lawyerpass", 			 	  	["label"] = "Lawyer Pass", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "lawyerpass.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Pass exclusive to lawyers to show they can represent a suspect."},
	["tosti"] 						 = {["name"] = "tosti", 			 	  	  	["label"] = "Grilled Cheese Sandwich", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "tosti.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Nice to eat."},
	["water_bottle"] 				 = {["name"] = "water_bottle", 			  	  	["label"] = "Bottle of Water", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "water_bottle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["beer"] 				 		 = {["name"] = "beer", 			  	  			["label"] = "Beer", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "beer.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["whiskey"] 				 	 = {["name"] = "whiskey", 			  	  		["label"] = "Whiskey", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "whiskey.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["vodka"] 				 		 = {["name"] = "vodka", 			  	  		["label"] = "Vodka", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "vodka.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["coffee"] 				 		 = {["name"] = "coffee", 			  	  		["label"] = "Coffee", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "coffee.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Pump 4 Caffeine"},
	["kurkakola"] 				 	 = {["name"] = "kurkakola", 			  	  	["label"] = "Cola", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "cola.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["twerks_candy"] 				 = {["name"] = "twerks_candy", 			  	  	["label"] = "Twerks", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "twerks_candy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some delicious candy :O"},
	["snikkel_candy"] 				 = {["name"] = "snikkel_candy", 			  	["label"] = "Snikkel", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "snikkel_candy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some delicious candy :O"},
	["joint"] 						 = {["name"] = "joint", 			  	  		["label"] = "Joint", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "joint.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sidney would be very proud at you"},
	["cokebaggy"] 					 = {["name"] = "cokebaggy", 			  	  	["label"] = "Bag of Coke", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "cocaine_baggy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "To get happy real quick."},
	["crack_baggy"] 				 = {["name"] = "crack_baggy", 			  	  	["label"] = "Bag of Crack", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "crack_baggy.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "To get happy faster."},
	["xtcbaggy"] 					 = {["name"] = "xtcbaggy", 			  	  		["label"] = "Bag of XTC", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "xtc_baggy.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Pop those pills baby."},
	["plastic"] 					 = {["name"] = "plastic", 			  	  	  	["label"] = "Plastic", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "plastic.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "RECYCLE! - Greta Thunberg 2019"},
	["metalscrap"] 					 = {["name"] = "metalscrap", 			  	  	["label"] = "Metal Scrap", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "metalscrap.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "You can probably make something nice out of this."},
	["copper"] 					 	 = {["name"] = "copper", 			  	  		["label"] = "Copper", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "copper.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Nice piece of metal that you can probably use for something."},
	["aluminum"] 					 = {["name"] = "aluminum", 			  	  		["label"] = "Aluminium", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "aluminum.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Nice piece of metal that you can probably use for something."},
	["aluminumoxide"] 				 = {["name"] = "aluminumoxide", 			  	["label"] = "Aluminium Powder", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "aluminumoxide.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Some powder to mix with."},
	["iron"] 				 	     = {["name"] = "iron", 			  				["label"] = "Iron", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "ironplate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Handy piece of metal that you can probably use for something."},
	["ironoxide"] 				 	 = {["name"] = "ironoxide", 			  		["label"] = "Iron Powder", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ironoxide.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = {accept = {"aluminumoxide"}, reward = "thermite", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Mixing powder..", ["timeOut"] = 10000}},   ["description"] = "Some powder to mix with."},
	["steel"] 				 	 	 = {["name"] = "steel", 			  			["label"] = "Steel", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "steel.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Nice piece of metal that you can probably use for something."},
	["rubber"] 				 	 	 = {["name"] = "rubber", 			  			["label"] = "Rubber", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "rubber.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rubber, I believe you can make your own rubber ducky with it :D"},
	["glass"] 				 	 	 = {["name"] = "glass", 			  			["label"] = "Glass", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "glassplate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "It is very fragile, watch out."},
	["pistol_ammo"] 				 = {["name"] = "pistol_ammo", 			  	  	["label"] = "Pistol ammo", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pistol_ammo.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ammo for Pistols."},
	["rifle_ammo"] 				 	 = {["name"] = "rifle_ammo", 			  	  	["label"] = "Rifle ammo", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_ammo.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ammo for Rifles."},
	["smg_ammo"] 				 	 = {["name"] = "smg_ammo", 			  	  		["label"] = "SMG ammo", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "smg_ammo.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ammo for Sub Machine Guns."},
	["shotgun_ammo"] 				 = {["name"] = "shotgun_ammo", 			  	  	["label"] = "Shotgun ammo", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "shotgun_ammo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ammo for Shotguns."},
	["mg_ammo"] 				 	 = {["name"] = "mg_ammo", 			  	  		["label"] = "MG ammo", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "mg_ammo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ammo for Machine Guns."},
	["lockpick"] 					 = {["name"] = "lockpick", 			 	  	  	["label"] = "Lockpick", 				["weight"] = 300, 		["type"] = "item", 		["image"] = "lockpick.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = {accept = {"screwdriverset"}, reward = "advancedlockpick", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Crafting lockpick", ["timeOut"] = 7500,}},   ["description"] = "Very useful if you lose your keys a lot.. or if you want to use it for something else..."},
	["advancedlockpick"] 			 = {["name"] = "advancedlockpick", 			 	["label"] = "Advanced Lockpick", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "advancedlockpick.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "If you lose your keys a lot this is very useful.. Also useful to open your beers :)"},
	["repairkit"] 					 = {["name"] = "repairkit", 			 	  	["label"] = "Repairkit", 			["weight"] = 2500, 		["type"] = "item", 		["image"] = "repairkit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice toolbox with stuff to repair your vehicle."},
	["advancedrepairkit"] 			 = {["name"] = "advancedrepairkit", 			["label"] = "Advanced Repairkit", 		["weight"] = 4000, 		["type"] = "item", 		["image"] = "advancedkit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice toolbox with stuff to repair your vehicle.. a little better.."},
	["cleaningkit"] 				 = {["name"] = "cleaningkit", 			 	  	["label"] = "Cleaning Kit", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "cleaningkit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A microfiber cloth with some soap will let your car sparkle again!"},
	["screwdriverset"] 				 = {["name"] = "screwdriverset", 			    ["label"] = "Toolkit", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "screwdriverset.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Very useful to screw... screws.."},
	["drill"] 				 		 = {["name"] = "drill", 			    		["label"] = "Drill", 				["weight"] = 20000, 	["type"] = "item", 		["image"] = "drill.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "The real deal.."},
	["weed_white-widow"] 			 = {["name"] = "weed_white-widow", 			 	["label"] = "White Widow 2g", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g White Widow"},
	["weed_skunk"] 				  	 = {["name"] = "weed_skunk", 			 		["label"] = "Skunk 2g", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Skunk"},
	["weed_purple-haze"] 			 = {["name"] = "weed_purple-haze", 			 	["label"] = "Purple Haze 2g", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Purple Haze"},
	["weed_og-kush"] 				 = {["name"] = "weed_og-kush", 			 		["label"] = "OGKush 2g", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g OG Kush"},
	["weed_amnesia"] 				 = {["name"] = "weed_amnesia", 			 		["label"] = "Amnesia 2g", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Amnesia"},
	["weed_ak47"] 				     = {["name"] = "weed_ak47", 			 		["label"] = "AK47 2g", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g AK47"},
	["weed_white-widow_seed"] 		 = {["name"] = "weed_white-widow_seed", 		["label"] = "White Widow Seed", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed seed of White Widow"},
	["weed_skunk_seed"] 			 = {["name"] = "weed_skunk_seed", 			    ["label"] = "Skunk Seed", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Skunk"},
	["weed_purple-haze_seed"] 		 = {["name"] = "weed_purple-haze_seed", 		["label"] = "Purple Haze Seed", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Purple Haze"},
	["weed_og-kush_seed"] 			 = {["name"] = "weed_og-kush_seed", 			["label"] = "OGKush Seed", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of OG Kush"},
	["weed_amnesia_seed"] 			 = {["name"] = "weed_amnesia_seed", 			["label"] = "Amnesia Seed", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Amnesia"},
	["weed_ak47_seed"] 				 = {["name"] = "weed_ak47_seed", 			    ["label"] = "AK47 Seed", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of AK47"},
	["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 			    ["label"] = "Empty Weed Bag", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-empty-bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A empty bag for weed buds"},
	["weed_nutrition"] 				 = {["name"] = "weed_nutrition", 			    ["label"] = "Plant Fertilizer", 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "weed_nutrition.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Plant nutrition"},
	["handcuffs"] 				 	 = {["name"] = "handcuffs", 			    	["label"] = "Handcuffs", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "handcuffs.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Comes in handy when people misbehave. Maybe it can be used for something else?"},
	["tunerlaptop"] 				 = {["name"] = "tunerlaptop", 			    	["label"] = "Tunerchip", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "tunerlaptop.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "With this tunerchip you can get your car on steroids... If you know what you're doing lol"},
	["empty_evidence_bag"] 			 = {["name"] = "empty_evidence_bag", 			["label"] = "Empty Evidence Bag", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "evidence.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Used a lot to keep evidence. Think about DNA from blood, bullet shells etc."},
	["filled_evidence_bag"] 		 = {["name"] = "filled_evidence_bag", 			["label"] = "Evidence Bag", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "evidence.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A filled evidence bag to see who committed the crime >:("},
	["armor"] 		 				 = {["name"] = "armor", 						["label"] = "Armor", 					["weight"] = 5000, 	    ["type"] = "item", 		["image"] = "armor.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some protection won't hurt.. right? (One-time use)"},
	["heavyarmor"] 		 			 = {["name"] = "heavyarmor", 					["label"] = "Heavy Armor", 		["weight"] = 5000, 	    ["type"] = "item", 		["image"] = "armor.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some protection won't hurt.. right?"},
	["weed_brick"] 		 			 = {["name"] = "weed_brick", 					["label"] = "Weed Brick", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "weed_brick.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "1KG Weed Brick to sell to large customers."},
	["coke_brick"] 		 			 = {["name"] = "coke_brick", 					["label"] = "Coke Brick", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "coke_brick.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Heavy package of cocaine, mostly used for deals and takes a lot of space."},
	["coke_small_brick"] 		 	 = {["name"] = "coke_small_brick", 				["label"] = "Coke Package", 				["weight"] = 350, 		["type"] = "item", 		["image"] = "coke_small_brick.png", 	["unique"] = true, 		["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A lot of grams cocaine, mostly used for deals and takes a lot of space."},
	["sandwich"] 				 	 = {["name"] = "sandwich", 			  	  		["label"] = "Sandwich", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "sandwich.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Nice bread for your stomach."},
	["electronickit"] 				 = {["name"] = "electronickit", 			  	["label"] = "Electronic Kit", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "electronickit.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = {accept = {"gatecrack"}, reward = "trojan_usb", anim = nil}, ["description"] = "If you've always wanted to build a robot you can maybe start here.. Maybe you'll be.. The new Elon Musk?"},
	["gatecrack"] 				 	 = {["name"] = "gatecrack", 			  	  	["label"] = "Gatecrack", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "usb_device.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Handy software to tear down some fences."},
	["rolex"] 				 	 	 = {["name"] = "rolex", 			  	  		["label"] = "Golden Watch", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "rolex_watch.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A golden watch seems like the jackpot to me!"},
	["diamond_ring"] 				 = {["name"] = "diamond_ring", 			  	  	["label"] = "Diamond Ring", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "diamond_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A diamond ring seems like the jackpot to me!"},
	["goldchain"] 				 	 = {["name"] = "goldchain", 			  	  	["label"] = "Golden Chain", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "goldchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A golden chain seems like the jackpot to me!"},
	["10kgoldchain"] 				 = {["name"] = "10kgoldchain", 			  	  	["label"] = "10k Gold Chain", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "10kgoldchain.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "10 carat golden chain."},
	["trojan_usb"] 				 	 = {["name"] = "trojan_usb", 			  	  	["label"] = "Trojan USB", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "usb_device.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Handy software to shut down some systems."},
	["security_card_01"] 			 = {["name"] = "security_card_01", 			  	["label"] = "Security Card A", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "security_card_01.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security card belonging to the Blaine County Savings Bank."},
	["security_card_02"] 			 = {["name"] = "security_card_02", 			  	["label"] = "Security Card B", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "security_card_02.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security card belonging to the Pacific Savings Bank."},
	["police_stormram"] 			 = {["name"] = "police_stormram", 			  	["label"] = "Stormram", 				["weight"] = 18000, 	["type"] = "item", 		["image"] = "police_stormram.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice tool to break into doors."},
	["rolling_paper"] 			 	 = {["name"] = "rolling_paper", 			  	["label"] = "Rolling Paper", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rolling_paper.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = {accept = {"weed_white-widow", "weed_skunk", "weed_purple-haze", "weed_og-kush", "weed_amnesia", "weed_ak47"}, reward = "joint", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Rolling joint", ["timeOut"] = 5000,}},   ["description"] = "This is a placeholder description"},
	["radio"] 			 	 		 = {["name"] = "radio", 			  			["label"] = "Radio", 					["weight"] = 2000, 		["type"] = "item", 		["image"] = "radio.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "You can communicat with this through a signaal"},
	["stickynote"] 			 	 	 = {["name"] = "stickynote", 			  		["label"] = "Sticky note", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "stickynote.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sometimes handy to remember something :)"},
	["phone"] 			 	 	 	 = {["name"] = "phone", 			  			["label"] = "Phone", 				["weight"] = 700, 		["type"] = "item", 		["image"] = "phone.png", 				["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Neat phone ya got there"},
	["fitbit"] 			 	 	 	 = {["name"] = "fitbit", 			  			["label"] = "Fitbit", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "fitbit.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "I like fitbit"},
	["thermite"] 			 	 	 = {["name"] = "thermite", 			  			["label"] = "Thermite", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "thermite.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},
	["goldbar"] 			 	 	 = {["name"] = "goldbar", 			  			["label"] = "Gold Bar", 				["weight"] = 7000, 	    ["type"] = "item", 		["image"] = "goldbar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Looks expensive to me o.o"},
    ["cryptostick"] 			 	 = {["name"] = "cryptostick", 			  		["label"] = "Crypto Stick", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cryptostick.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Why would someone ever buy money that doesn't exist.. How many would it contain..?"},
    ["radioscanner"] 			 	 = {["name"] = "radioscanner", 			  		["label"] = "Radio Scanner", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "radioscanner.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "With this you can get some police alerts. Not 100% effective.."},
    ["dendrogyra_coral"] 			 = {["name"] = "dendrogyra_coral", 			  	["label"] = "Dendrogyra", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "dendrogyra_coral.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "#Coral yow"},
    ["antipatharia_coral"] 			 = {["name"] = "antipatharia_coral", 			["label"] = "Antipatharia", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "antipatharia_coral.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "#Coral yow"},
    ["jerry_can"] 			 		 = {["name"] = "jerry_can", 					["label"] = "Jerrycan 20L", 			["weight"] = 20000, 	["type"] = "item", 		["image"] = "jerry_can.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "#Fuel like #YOLO"},
	["moneybag"] 			 		 = {["name"] = "moneybag", 						["label"] = "Money Bag", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "moneybag.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A bag with cash."},
	["diving_gear"] 			     = {["name"] = "diving_gear", 					["label"] = "Diving Gear", 				["weight"] = 30000, 	["type"] = "item", 		["image"] = "diving_gear.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hmm lets dive lol yay."},
	["parachute"] 			   		 = {["name"] = "parachute", 					["label"] = "Parachute", 				["weight"] = 30000, 	["type"] = "item", 		["image"] = "parachute.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "The sky is the limit! Woohoo!"},
	["snspistol_part_1"] 			 = {["name"] = "snspistol_part_1", 				["label"] = "SNS Loop", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "snspistol_part_1.png", 	["unique"] = true, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Loop of a SNS Pistol"},
	["snspistol_part_2"] 			 = {["name"] = "snspistol_part_2", 				["label"] = "SNS Trigger", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "snspistol_part_2.png", 	["unique"] = true, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Trigger of a SNS Pistol"},
	["snspistol_part_3"] 			 = {["name"] = "snspistol_part_3", 				["label"] = "SNS Clip", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "snspistol_part_3.png", 	["unique"] = true, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = {accept = {"snspistol_part_1"}, reward = "snspistol_stage_1", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Atttaching attachments", ["timeOut"] = 15000,}},   ["description"] = "Clip of a SNS Pistol"},
	["snspistol_stage_1"] 			 = {["name"] = "snspistol_stage_1", 			["label"] = "SNS Body", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "snspistol_stage_1.png", 	["unique"] = true, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = {accept = {"snspistol_part_2"}, reward = "weapon_snspistol", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Attaching attachments", ["timeOut"] = 15000,}}, ["description"] = "SNS w/ Loop & Clip"},
	["bandage"] 			 		 = {["name"] = "bandage", 						["label"] = "Bandage", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "bandage.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "A bandage works every time"},
	["painkillers"] 			 	 = {["name"] = "painkillers", 					["label"] = "Painkillers", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "painkillers.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "For pain you can't stand anymore, take this pill that'd make you feel great again"},
	["binoculars"] 			 	 	 = {["name"] = "binoculars", 					["label"] = "Binoculars", 				["weight"] = 600, 		["type"] = "item", 		["image"] = "binoculars.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "Sneaky Breaky.."},
	["snowball"] 		     		 = {["name"] = "snowball", 		 	  			["label"] = "Snowball", 				["weight"] = 0, 		["type"] = "item", 	 	["image"] = "snowball.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "Should have catched it :D"},
	["firework1"] 				 	 = {["name"] = "firework1", 			  	  	["label"] = "2Brothers", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework1.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["firework2"] 				 	 = {["name"] = "firework2", 			  	  	["label"] = "Poppelers", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework2.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["firework3"] 				 	 = {["name"] = "firework3", 			  	  	["label"] = "WipeOut", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework3.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["firework4"] 				 	 = {["name"] = "firework4", 			  	  	["label"] = "Weeping Willow", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework4.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["iphone"] 				 	 	 = {["name"] = "iphone", 			  	  		["label"] = "iPhone", 				    ["weight"] = 1000, 		["type"] = "item", 		["image"] = "iphone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Very expensive phone"},
	["samsungphone"] 				 = {["name"] = "samsungphone", 			  	  	["label"] = "Samsung S10", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "samsungphone.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Very expensive phone"},
	["laptop"] 				 		 = {["name"] = "laptop", 			  	  		["label"] = "Laptop", 					["weight"] = 4000, 		["type"] = "item", 		["image"] = "laptop.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Expensive game right?"},
	["tablet"] 				 		 = {["name"] = "tablet", 			  	  		["label"] = "Tablet", 					["weight"] = 2000, 		["type"] = "item", 		["image"] = "tablet.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Expensive game right?"},
	["lighter"] 				 	 = {["name"] = "lighter", 			  	  		["label"] = "Lighter", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "On new years eve a nice fire to stand next to"},
	["certificate"] 				 = {["name"] = "certificate", 			  	  	["label"] = "Certificate", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "certificate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Certificate that proves you own certain stuff"},
	["nitrous"] 				 	 = {["name"] = "nitrous", 			  	  		["label"] = "Nitrous", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "nitrous.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Speed up, gas pedal! :D"},
	["walkstick"] 				 	 = {["name"] = "walkstick", 			  	  	["label"] = "Walk Stick", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "walkstick.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Walking stick for ya'll grannies out there.. HAHA"},
	["harness"] 				 	 = {["name"] = "harness", 			  	  		["label"] = "Race Harness", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "harness.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Racing Harness so no matter what you stay in the caaaaaaaaaaaaaar.."},
	["markedbills"] 				 = {["name"] = "markedbills", 			  	  	["label"] = "Marked Money", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "markedbills.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["pistol_suppressor"] 			 = {["name"] = "pistol_suppressor", 			["label"] = "Pistol Silencer", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "pistol_suppressor.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["pistol_extendedclip"] 		 = {["name"] = "pistol_extendedclip", 			["label"] = "Pistol EXT Clip", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "pistol_extendedclip.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_extendedclip"] 		 	 = {["name"] = "smg_extendedclip", 				["label"] = "SMG EXT Clip", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_extendedclip.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_flashlight"] 		 	 	 = {["name"] = "smg_flashlight", 				["label"] = "SMG Flashlight", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_flashlight.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_scope"] 		 	 		 = {["name"] = "smg_scope", 					["label"] = "SMG Scope", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_scope.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_suppressor"] 			 	 = {["name"] = "smg_suppressor", 				["label"] = "SMG Silencer", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_suppressor.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["rifle_extendedclip"] 		 	 = {["name"] = "rifle_extendedclip", 			["label"] = "Rifle EXT Clip", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_extendedclip.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["rifle_drummag"] 		 	 	 = {["name"] = "rifle_drummag", 				["label"] = "Rifle Drummag", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_drummag.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["rifle_suppressor"] 			 = {["name"] = "rifle_suppressor", 				["label"] = "Rifle Silencer", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_suppressor.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["labkey"] 			 			 = {["name"] = "labkey", 						["label"] = "Key", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "labkey.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Key for a lock..?"},
	["pinger"] 			 			 = {["name"] = "pinger", 						["label"] = "Pinger", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "pinger.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "With a pinger and your phone you can send out your location"},
	["firstaid"] 			 		 = {["name"] = "firstaid", 						["label"] = "First Aid", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "firstaid.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "You can use this First Aid kit to get people back on their feet."},
	["printerdocument"] 			 = {["name"] = "printerdocument", 				["label"] = "Document", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "printerdocument.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice document"},
	["weaponlicense"] 				 = {["name"] = "weaponlicense",				    ["label"] = "Weapon License",			["weight"] = 0,			["type"] = "item",		["image"] = "weapon_license.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,	["description"] = "Weapon License"},
	["oxy"] 				 			= {["name"] = "oxy",				    	["label"] = "Prescription Oxy",			["weight"] = 0,			["type"] = "item",		["image"] = "oxy.png",		["unique"] = false,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,				["description"] = "The Label Has Been Ripped Off"},
}

QBShared.Weapons = {
	[GetHashKey("weapon_unarmed")] 				 = {["name"] = "weapon_unarmed", 		 	  	["label"] = "Mãos", 					["weight"] = 1000, 		["type"] = "weapon",	["ammotype"] = nil, 					["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_knife")] 				 = {["name"] = "weapon_knife", 			 	  	["label"] = "Faca", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_nightstick")] 			 = {["name"] = "weapon_nightstick", 		 	["label"] = "Cassetete", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_hammer")] 				 = {["name"] = "weapon_hammer", 			 	["label"] = "Martelo", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_bat")] 					 = {["name"] = "weapon_bat", 			 	  	["label"] = "Taco", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_golfclub")] 			 = {["name"] = "weapon_golfclub", 		 	  	["label"] = "Taco Golf", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_crowbar")] 				 = {["name"] = "weapon_crowbar", 		 	  	["label"] = "Pé de cabra", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_pistol")] 				 = {["name"] = "weapon_pistol", 			 	["label"] = "Walther P99", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_pistol_mk2")] 			 = {["name"] = "weapon_pistol_mk2", 			["label"] = "Pistola Mk II", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "pistolmk2.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_combatpistol")] 		 = {["name"] = "weapon_combatpistol", 	 	  	["label"] = "Pistola de combate", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "combatpistol.png", 	["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_appistol")] 			 = {["name"] = "weapon_appistol", 		 	  	["label"] = "Glock-18", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_pistol50")] 			 = {["name"] = "weapon_pistol50", 		 	  	["label"] = "Desert Eagle .50 ", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_microsmg")] 			 = {["name"] = "weapon_microsmg", 		 	  	["label"] = "Micro SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_smg")] 				 	 = {["name"] = "weapon_smg", 			 	  	["label"] = "SMG", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_assaultsmg")] 			 = {["name"] = "weapon_assaultsmg", 		 	["label"] = "Assault SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_assaultrifle")] 		 = {["name"] = "weapon_assaultrifle", 	 	  	["label"] = "AK-47", 			        ["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_carbinerifle")] 		 = {["name"] = "weapon_carbinerifle", 	 	  	["label"] = "Carbine Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "carbinerifle.png", 	["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_advancedrifle")] 		 = {["name"] = "weapon_advancedrifle", 	 	  	["label"] = "Advanced Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_mg")] 					 = {["name"] = "weapon_mg", 				 	["label"] = "Machinegun", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_combatmg")] 			 = {["name"] = "weapon_combatmg", 		 	  	["label"] = "Combat MG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_pumpshotgun")] 			 = {["name"] = "weapon_pumpshotgun", 	 	  	["label"] = "Pump Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_sawnoffshotgun")] 		 = {["name"] = "weapon_sawnoffshotgun", 	 	["label"] = "Sawn-off Shotgun", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_assaultshotgun")] 		 = {["name"] = "weapon_assaultshotgun", 	 	["label"] = "Assault Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_bullpupshotgun")] 		 = {["name"] = "weapon_bullpupshotgun", 	 	["label"] = "Bullpup Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_stungun")] 				 = {["name"] = "weapon_stungun", 		 	  	["label"] = "Taser", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_sniperrifle")] 			 = {["name"] = "weapon_sniperrifle", 	 	  	["label"] = "Sniper", 			        ["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_heavysniper")] 			 = {["name"] = "weapon_heavysniper", 	 	  	["label"] = "Heavy Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_remotesniper")] 		 = {["name"] = "weapon_remotesniper", 	 	  	["label"] = "Remote Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER_REMOTE",	["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_grenadelauncher")] 		 = {["name"] = "weapon_grenadelauncher", 	  	["label"] = "Grenade Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_grenadelauncher_smoke")] = {["name"] = "weapon_grenadelauncher_smoke", 	["label"] = "Smoke Grenade Launcher", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_rpg")] 					 = {["name"] = "weapon_rpg", 			      	["label"] = "RPG", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RPG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_minigun")] 				 = {["name"] = "weapon_minigun", 		      	["label"] = "Minigun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MINIGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_grenade")] 				 = {["name"] = "weapon_grenade", 		      	["label"] = "Granada", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_stickybomb")] 			 = {["name"] = "weapon_stickybomb", 		    ["label"] = "C4", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "stickybomb.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_smokegrenade")] 		 = {["name"] = "weapon_smokegrenade", 	      	["label"] = "Granada de fumi", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_bzgas")] 				 = {["name"] = "weapon_bzgas", 			      	["label"] = "Gas lacrimogêneo", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_molotov")] 				 = {["name"] = "weapon_molotov", 		      	["label"] = "Molotov", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_fireextinguisher")] 	 = {["name"] = "weapon_fireextinguisher",      	["label"] = "Fire Extinguisher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_petrolcan")] 			 = {["name"] = "weapon_petrolcan", 		 	  	["label"] = "Jerrycan", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PETROLCAN",		["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_briefcase")] 			 = {["name"] = "weapon_briefcase", 		 	  	["label"] = "Pasta", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_briefcase_02")] 		 = {["name"] = "weapon_briefcase_02", 	 	  	["label"] = "Pasta2", 				    ["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_ball")] 				 = {["name"] = "weapon_ball", 			 	  	["label"] = "Bola", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_BALL",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_flare")] 				 = {["name"] = "weapon_flare", 			 	  	["label"] = "Sinalizador", 			    ["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_snspistol")] 			 = {["name"] = "weapon_snspistol", 		 	  	["label"] = "SNS Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_bottle")] 				 = {["name"] = "weapon_bottle", 			 	["label"] = "Garrafa partida", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_gusenberg")] 			 = {["name"] = "weapon_gusenberg", 		 	  	["label"] = "Thompson SMG", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_specialcarbine")] 		 = {["name"] = "weapon_specialcarbine", 	 	["label"] = "Special Carbine", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_heavypistol")] 			 = {["name"] = "weapon_heavypistol", 	 	  	["label"] = "Heavy Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_bullpuprifle")] 		 = {["name"] = "weapon_bullpuprifle", 	 	  	["label"] = "Bullpup Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_dagger")] 				 = {["name"] = "weapon_dagger", 			 	["label"] = "Dagger", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_vintagepistol")] 		 = {["name"] = "weapon_vintagepistol", 	 	  	["label"] = "Vintage Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_vintagepistol.png", ["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_firework")] 			 = {["name"] = "weapon_firework", 		 	  	["label"] = "Firework Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_musket")] 			     = {["name"] = "weapon_musket", 			 	["label"] = "Mosquete", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_heavyshotgun")] 		 = {["name"] = "weapon_heavyshotgun", 	 	  	["label"] = "Heavy Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_marksmanrifle")] 		 = {["name"] = "weapon_marksmanrifle", 	 	  	["label"] = "Marksman Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_hominglauncher")] 		 = {["name"] = "weapon_hominglauncher", 	 	["label"] = "Homing Launcher", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_STINGER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_proxmine")] 			 = {["name"] = "weapon_proxmine", 		 	  	["label"] = "Proxmine Grenade", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_snowball")] 		     = {["name"] = "weapon_snowball", 		 	  	["label"] = "Bola de neve", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_flaregun")] 			 = {["name"] = "weapon_flaregun", 		 	  	["label"] = "Pistola de sinalização", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_garbagebag")] 			 = {["name"] = "weapon_garbagebag", 		 	["label"] = "Saco do lixo", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_handcuffs")] 			 = {["name"] = "weapon_handcuffs", 		 	  	["label"] = "Algemas", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_combatpdw")] 			 = {["name"] = "weapon_combatpdw", 		 	  	["label"] = "Combat PDW", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_marksmanpistol")] 		 = {["name"] = "weapon_marksmanpistol", 	 	["label"] = "Marksman Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_knuckle")] 				 = {["name"] = "weapon_knuckle", 		 	  	["label"] = "Knuckle", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_hatchet")] 				 = {["name"] = "weapon_hatchet", 		 	  	["label"] = "Hatchet", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_railgun")] 				 = {["name"] = "weapon_railgun", 		 	  	["label"] = "Railgun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_machete")] 				 = {["name"] = "weapon_machete", 		 	  	["label"] = "Machete", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_machinepistol")] 		 = {["name"] = "weapon_machinepistol", 	 	  	["label"] = "Tec-9", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_switchblade")] 			 = {["name"] = "weapon_switchblade", 	 	  	["label"] = "Canivete", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_revolver")] 			 = {["name"] = "weapon_revolver", 		 	  	["label"] = "Revolver", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_dbshotgun")] 			 = {["name"] = "weapon_dbshotgun", 		 	  	["label"] = "Double-barrel Shotgun", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_compactrifle")] 		 = {["name"] = "weapon_compactrifle", 	 	  	["label"] = "Compact Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_autoshotgun")] 			 = {["name"] = "weapon_autoshotgun", 	 	  	["label"] = "Auto Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_battleaxe")] 			 = {["name"] = "weapon_battleaxe", 		 	  	["label"] = "Machado", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_compactlauncher")] 		 = {["name"] = "weapon_compactlauncher",  	  	["label"] = "Compact Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_minismg")] 				 = {["name"] = "weapon_minismg", 		 	  	["label"] = "Mini SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "weapon_minismg.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_pipebomb")] 			 = {["name"] = "weapon_pipebomb", 		 	  	["label"] = "Pipe bom", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_poolcue")] 				 = {["name"] = "weapon_poolcue", 		 	  	["label"] = "Taco de snooker", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_wrench")] 				 = {["name"] = "weapon_wrench", 			 	["label"] = "Wrench", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_autoshotgun")] 		 	 = {["name"] = "weapon_autoshotgun", 	 		["label"] = "Sweeper Shotgun", 			["weight"] = 3000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "sweepershotgun.png", 	["unique"] = true, 		["useable"] = false, 	["description"] = ""},
	[GetHashKey("weapon_bread")] 				 = {["name"] = "weapon_bread", 				 	["label"] = "Baquette", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "baquette.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = ""},
}

QBShared.Vehicles = {
	["revolter"]									= {["name"] = "Revolter",						["price"] = 195000,		["category"] = "sports",				["model"] = "revolter",			["brand"] = "Ubermacht",				["hash"] = "-410205223",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["blade"]										= {["name"] = "Blade",							["price"] = 21000,		["category"] = "muscle",				["model"] = "blade",			["brand"] = "Vapid",					["hash"] = "-1205801634",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["buccaneer"]									= {["name"] = "Buccaneer",						["price"] = 21000,		["category"] = "muscle",				["model"] = "buccaneer",		["brand"] = "Albany",					["hash"] = "-682211828",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["buccaneer2"]									= {["name"] = "Buccaneer Rider",				["price"] = 21000,		["category"] = "muscle",				["model"] = "buccaneer2",		["brand"] = "Albany",					["hash"] = "-1013450936",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["chino"]										= {["name"] = "Chino",							["price"] = 21000,		["category"] = "muscle",				["model"] = "chino",			["brand"] = "Vapid",					["hash"] = "349605904",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["chino2"]										= {["name"] = "Chino Luxe",						["price"] = 21000,		["category"] = "muscle",				["model"] = "chino2",			["brand"] = "Vapid",					["hash"] = "-1361687965",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["coquette3"]									= {["name"] = "Coquette BlackFin",				["price"] = 21000,		["category"] = "muscle",				["model"] = "coquette3",		["brand"] = "Invetero",					["hash"] = "784565758",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dominator"]									= {["name"] = "Dominator",						["price"] = 21000,		["category"] = "muscle",				["model"] = "dominator",		["brand"] = "Vapid",					["hash"] = "80636076",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dukes"]										= {["name"] = "Dukes",							["price"] = 21000,		["category"] = "muscle",				["model"] = "dukes",			["brand"] = "Imponte",					["hash"] = "723973206",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["gauntlet"]									= {["name"] = "Gauntlet",						["price"] = 21000,		["category"] = "muscle",				["model"] = "gauntlet",			["brand"] = "Bravado",					["hash"] = "-1800170043",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["hotknife"]									= {["name"] = "Hotknife",						["price"] = 21000,		["category"] = "muscle",				["model"] = "hotknife",			["brand"] = "Vapid",					["hash"] = "37348240",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["faction"]										= {["name"] = "Faction",						["price"] = 21000,		["category"] = "muscle",				["model"] = "faction",			["brand"] = "Willard",					["hash"] = "-2119578145",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["faction2"]									= {["name"] = "Faction Rider",					["price"] = 21000,		["category"] = "muscle",				["model"] = "faction2",			["brand"] = "Willard",					["hash"] = "-1790546981",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["nightshade"]									= {["name"] = "Nightshade",						["price"] = 21000,		["category"] = "muscle",				["model"] = "nightshade",		["brand"] = "Imponte",					["hash"] = "-1943285540",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["phoenix"]										= {["name"] = "Phoenix",						["price"] = 21000,		["category"] = "muscle",				["model"] = "phoenix",			["brand"] = "Imponte",					["hash"] = "-2095439403",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["picador"]										= {["name"] = "Picador",						["price"] = 21000,		["category"] = "muscle",				["model"] = "picador",			["brand"] = "Cheval",					["hash"] = "1507916787",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sabregt"]										= {["name"] = "Sabre Turbo",					["price"] = 21000,		["category"] = "muscle",				["model"] = "sabregt",			["brand"] = "Declasse",					["hash"] = "-1685021548",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sabregt2"]									= {["name"] = "Sabre GT",						["price"] = 21000,		["category"] = "muscle",				["model"] = "sabregt2",			["brand"] = "Declasse",					["hash"] = "223258115",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["slamvan3"]									= {["name"] = "Slam Van",						["price"] = 21000,		["category"] = "muscle",				["model"] = "slamvan3",			["brand"] = "Vapid",					["hash"] = "1119641113",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["tampa"]										= {["name"] = "Tampa",							["price"] = 21000,		["category"] = "muscle",				["model"] = "tampa",			["brand"] = "Declasse",					["hash"] = "972671128",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["tampa2"]										= {["name"] = "Drift Tampa",					["price"] = 21000,		["category"] = "muscle",				["model"] = "tampa2",			["brand"] = "Declasse",					["hash"] = GetHashKey("tampa2"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["virgo"]										= {["name"] = "Virgo",							["price"] = 21000,		["category"] = "muscle",				["model"] = "virgo",			["brand"] = "Albany",					["hash"] = "-498054846",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["vigero"]										= {["name"] = "Vigero",							["price"] = 21000,		["category"] = "muscle",				["model"] = "vigero",			["brand"] = "Declasse",					["hash"] = "-825837129",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["voodoo"]										= {["name"] = "Voodoo",							["price"] = 21000,		["category"] = "muscle",				["model"] = "voodoo",			["brand"] = "Declasse",					["hash"] = "523724515",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["blista"]										= {["name"] = "Blista",							["price"] = 15000,		["category"] = "compacts",				["model"] = "blista",			["brand"] = "Dinka",					["hash"] = "-344943009",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["brioso"]										= {["name"] = "Brioso R/A",						["price"] = 15000,		["category"] = "compacts",				["model"] = "brioso",			["brand"] = "Grotti",					["hash"] = "1549126457",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["issi2"]										= {["name"] = "Issi",							["price"] = 15000,		["category"] = "compacts",				["model"] = "issi2",			["brand"] = "Weeny",					["hash"] = "-1177863319",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["panto"]										= {["name"] = "Panto",							["price"] = 15000,		["category"] = "compacts",				["model"] = "panto",			["brand"] = "Benefactor",				["hash"] = "-431692672",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["prairie"]										= {["name"] = "Prairie",						["price"] = 15000,		["category"] = "compacts",				["model"] = "prairie",			["brand"] = "Bollokan",					["hash"] = "-1450650718",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bison"]										= {["name"] = "Bison",							["price"] = 30000,		["category"] = "vans",					["model"] = "bison",			["brand"] = "Bravado",					["hash"] = "-16948145",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bobcatxl"]									= {["name"] = "Bobcat XL Open",					["price"] = 30000,		["category"] = "vans",					["model"] = "bobcatxl",			["brand"] = "Vapid",					["hash"] = "1069929536",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bobcatxl2"]									= {["name"] = "Bobcat XL Closed",				["price"] = 30000,		["category"] = "vans",					["model"] = "bobcatxl2",		["brand"] = "Vapid",					["hash"] = "1712326151",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["burrito3"]									= {["name"] = "Burrito",						["price"] = 30000,		["category"] = "vans",					["model"] = "burrito3",			["brand"] = "Declasse",					["hash"] = "-1743316013",					["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["gburrito2"]									= {["name"] = "Burrito Custom",					["price"] = 30000,		["category"] = "vans",					["model"] = "gburrito2",		["brand"] = "Declasse",					["hash"] = "296357396",						["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["moonbeam"]									= {["name"] = "Moonbeam",						["price"] = 30000,		["category"] = "vans",					["model"] = "moonbeam",			["brand"] = "Declasse",					["hash"] = "525509695",						["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rumpo"]										= {["name"] = "Rumpo",							["price"] = 30000,		["category"] = "vans",					["model"] = "rumpo",			["brand"] = "Bravado",					["hash"] = "1162065741",					["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["asea"]										= {["name"] = "Asea",							["price"] = 45000,		["category"] = "sedans",				["model"] = "asea",				["brand"] = "Declasse",					["hash"] = "-1809822327",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["cognoscenti"]									= {["name"] = "Cognoscenti",					["price"] = 45000,		["category"] = "sedans",				["model"] = "cognoscenti",		["brand"] = "Enus",						["hash"] = "-2030171296",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["emperor"]										= {["name"] = "Emperor",						["price"] = 45000,		["category"] = "sedans",				["model"] = "emperor",			["brand"] = "Albany",					["hash"] = "-685276541",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["fugitive"]									= {["name"] = "Fugitive",						["price"] = 45000,		["category"] = "sedans",				["model"] = "fugitive",			["brand"] = "Cheval",					["hash"] = "1909141499",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["glendale"]									= {["name"] = "Glendale",						["price"] = 45000,		["category"] = "sedans",				["model"] = "glendale",			["brand"] = "Benefactor",				["hash"] = "75131841",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["intruder"]									= {["name"] = "Intruder",						["price"] = 45000,		["category"] = "sedans",				["model"] = "intruder",			["brand"] = "Karin",					["hash"] = "886934177",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["premier"]										= {["name"] = "Premier",						["price"] = 45000,		["category"] = "sedans",				["model"] = "premier",			["brand"] = "Declasse",					["hash"] = "-1883869285",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["primo2"]										= {["name"] = "Primo Custom",					["price"] = 45000,		["category"] = "sedans",				["model"] = "primo2",			["brand"] = "Albany",					["hash"] = "-2040426790",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["regina"]										= {["name"] = "Regina",							["price"] = 45000,		["category"] = "sedans",				["model"] = "regina",			["brand"] = "Dundreary",				["hash"] = "-14495224",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["schafter2"]									= {["name"] = "Schafter",						["price"] = 45000,		["category"] = "sedans",				["model"] = "schafter2",		["brand"] = "Benefactor",				["hash"] = "-1255452397",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["superd"]										= {["name"] = "Super Diamond",					["price"] = 45000,		["category"] = "sedans",				["model"] = "superd",			["brand"] = "Enus",						["hash"] = "1123216662",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["tailgater"]									= {["name"] = "Tailgater",						["price"] = 45000,		["category"] = "sedans",				["model"] = "tailgater",		["brand"] = "Obey",						["hash"] = "-1008861746",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["washington"]									= {["name"] = "Washington",						["price"] = 19000,		["category"] = "sedans",				["model"] = "washington",		["brand"] = "Albany",					["hash"] = "1777363799",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["baller2"]										= {["name"] = "Baller",							["price"] = 79000,		["category"] = "suvs",					["model"] = "baller2",			["brand"] = "Gallivanter",				["hash"] = "142944341",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["baller3"]										= {["name"] = "Baller LE",						["price"] = 90000,		["category"] = "suvs",					["model"] = "baller3",			["brand"] = "Gallivanter",				["hash"] = "1878062887",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["cavalcade2"]									= {["name"] = "Cavalcade",						["price"] = 75000,		["category"] = "suvs",					["model"] = "cavalcade2",		["brand"] = "Albany",					["hash"] = "-789894171",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dubsta2"]										= {["name"] = "Dubsta Luxuary",					["price"] = 75000,		["category"] = "suvs",					["model"] = "dubsta2",			["brand"] = "Benefactor",				["hash"] = "-394074634",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["fq2"]											= {["name"] = "FQ2",							["price"] = 75000,		["category"] = "suvs",					["model"] = "fq2",				["brand"] = "Fathom",					["hash"] = "-1137532101",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["granger"]										= {["name"] = "Granger",						["price"] = 75000,		["category"] = "suvs",					["model"] = "granger",			["brand"] = "Declasse",					["hash"] = "-1775728740",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["gresley"]										= {["name"] = "Gresley",						["price"] = 75000,		["category"] = "suvs",					["model"] = "gresley",			["brand"] = "Bravado",					["hash"] = "-1543762099",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["huntley"]										= {["name"] = "Huntley S",						["price"] = 75000,		["category"] = "suvs",					["model"] = "huntley",			["brand"] = "Enus",						["hash"] = "486987393",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["landstalker"]									= {["name"] = "Landstalker",					["price"] = 75000,		["category"] = "suvs",					["model"] = "landstalker",		["brand"] = "Dundreary",				["hash"] = "1269098716",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["patriot"]										= {["name"] = "Patriot",						["price"] = 75000,		["category"] = "suvs",					["model"] = "patriot",			["brand"] = "Mammoth",					["hash"] = "-808457413",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["radi"]										= {["name"] = "Radius",							["price"] = 75000,		["category"] = "suvs",					["model"] = "radi",				["brand"] = "Vapid",					["hash"] = "-1651067813",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rocoto"]										= {["name"] = "Rocoto",							["price"] = 75000,		["category"] = "suvs",					["model"] = "rocoto",			["brand"] = "Obey",						["hash"] = "2136773105",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["seminole"]									= {["name"] = "Seminole",						["price"] = 75000,		["category"] = "suvs",					["model"] = "seminole",			["brand"] = "Canis",					["hash"] = "1221512915",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["xls"]											= {["name"] = "XLS",							["price"] = 75000,		["category"] = "suvs",					["model"] = "xls",				["brand"] = "Benefactor",				["hash"] = "1203490606",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["btype"]										= {["name"] = "Roosevelt",						["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "btype",			["brand"] = "Albany",					["hash"] = "117401876",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["btype3"]										= {["name"] = "Roosevelt Valor",				["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "btype",			["brand"] = "Albany",					["hash"] = "-602287871",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["btype2"]										= {["name"] = "Franken Stange",					["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "btype2",			["brand"] = "Albany",					["hash"] = "-831834716",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["casco"]										= {["name"] = "Casco",							["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "casco",			["brand"] = "Lampadati",				["hash"] = "941800958",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["coquette2"]									= {["name"] = "Coquette Classic",				["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "coquette2",		["brand"] = "Invetero",					["hash"] = "1011753235",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["monroe"]										= {["name"] = "Monroe",							["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "monroe",			["brand"] = "Pegassi",					["hash"] = "-433375717",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["pigalle"]										= {["name"] = "Pigalle",						["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "pigalle",			["brand"] = "Lampadati",				["hash"] = "1078682497",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["stingergt"]									= {["name"] = "Stinger GT",						["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "stingergt",		["brand"] = "Grotti", 					["hash"] = "-2098947590",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["feltzer3"]									= {["name"] = "Stirling GT",					["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "feltzer3",			["brand"] = "Benefactor",				["hash"] = "-1566741232",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["ztype"]										= {["name"] = "Z-Type",							["price"] = 2500000,	["category"] = "sportsclassics",		["model"] = "ztype",			["brand"] = "Truffade",					["hash"] = "758895617",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["cogcabrio"]									= {["name"] = "Cognoscenti Cabrio",				["price"] = 20000,		["category"] = "coupes",				["model"] = "cogcabrio",		["brand"] = "Enus",						["hash"] = "330661258",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["exemplar"]									= {["name"] = "Exemplar",						["price"] = 20000,		["category"] = "coupes",				["model"] = "exemplar",			["brand"] = "Dewbauchee",				["hash"] = "-5153954",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["f620"]										= {["name"] = "F620",							["price"] = 20000,		["category"] = "coupes",				["model"] = "f620",				["brand"] = "Ocelot",					["hash"] = "-591610296",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["felon"]										= {["name"] = "Felon",							["price"] = 20000,		["category"] = "coupes",				["model"] = "felon",			["brand"] = "Lampadati",				["hash"] = "-391594584",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["felon2"]										= {["name"] = "Felon GT",						["price"] = 20000,		["category"] = "coupes",				["model"] = "felon2",			["brand"] = "Lampadati",				["hash"] = "-89291282",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["jackal"]										= {["name"] = "Jackal",							["price"] = 20000,		["category"] = "coupes",				["model"] = "jackal",			["brand"] = "Ocelot",					["hash"] = "-624529134",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["oracle2"]										= {["name"] = "Oracle XS",						["price"] = 20000,		["category"] = "coupes",				["model"] = "oracle2",			["brand"] = "Übermacht",				["hash"] = "-511601230",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sentinel"]									= {["name"] = "Sentinel",						["price"] = 20000,		["category"] = "coupes",				["model"] = "sentinel",			["brand"] = "Übermacht",				["hash"] = "1349725314",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sentinel2"]									= {["name"] = "Sentinel XS",					["price"] = 20000,		["category"] = "coupes",				["model"] = "sentinel2",		["brand"] = " Übermacht",				["hash"] = "873639469",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["windsor"]										= {["name"] = "Windsor",						["price"] = 20000,		["category"] = "coupes",				["model"] = "windsor",			["brand"] = "Enus",						["hash"] = "1581459400",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["windsor2"]									= {["name"] = "Windsor Drop",					["price"] = 20000,		["category"] = "coupes",				["model"] = "windsor2",			["brand"] = "Enus",						["hash"] = "-1930048799",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["zion"] 										= {["name"] = "Zion",							["price"] = 20000,		["category"] = "coupes",				["model"] = "zion",				["brand"] = "Übermacht",				["hash"] = "-1122289213",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["zion2"] 										= {["name"] = "Zion Cabrio",					["price"] = 20000,		["category"] = "coupes",				["model"] = "zion2",			["brand"] = "Übermacht",				["hash"] = "-1193103848",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["futo"]										= {["name"] = "Futo",							["price"] = 20000,		["category"] = "coupes",				["model"] = "futo",				["brand"] = "Karin",					["hash"] = "2016857647",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},	
	["ninef"] 										= {["name"] = "9F",								["price"] = 90500,		["category"] = "sports",				["model"] = "ninef",			["brand"] = "Obey",						["hash"] = "1032823388",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["ninef2"]										= {["name"] = "9F Cabrio",						["price"] = 90500,		["category"] = "sports",				["model"] = "ninef2",			["brand"] = "Obey",						["hash"] = "-1461482751",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["alpha"]										= {["name"] = "Alpha",							["price"] = 90500,		["category"] = "sports",				["model"] = "alpha",			["brand"] = "Albany",					["hash"] = "767087018",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["banshee"]										= {["name"] = "Banshee",						["price"] = 90500,		["category"] = "sports",				["model"] = "banshee",			["brand"] = "Bravado",					["hash"] = "-1041692462",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bestiagts"]									= {["name"] = "Bestia GTS",						["price"] = 90500,		["category"] = "sports",				["model"] = "bestiagts",		["brand"] = "Grotti",					["hash"] = "1274868363",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["buffalo"]										= {["name"] = "Buffalo",						["price"] = 90500,		["category"] = "sports",				["model"] = "buffalo",			["brand"] = "Bravado",					["hash"] = "-304802106",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["buffalo2"]									= {["name"] = "Buffalo S",						["price"] = 90500,		["category"] = "sports",				["model"] = "buffalo2",			["brand"] = "Bravado",					["hash"] = "736902334",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["carbonizzare"]								= {["name"] = "Carbonizzare",					["price"] = 90500,		["category"] = "sports",				["model"] = "carbonizzare",		["brand"] = "Grotti",					["hash"] = "2072687711",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["comet2"]										= {["name"] = "Comet",							["price"] = 90500,		["category"] = "sports",				["model"] = "comet2",			["brand"] = "Pfister",					["hash"] = "-1045541610",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["coquette"]									= {["name"] = "Coquette",						["price"] = 90500,		["category"] = "sports",				["model"] = "coquette",			["brand"] = "Invetero",					["hash"] = "108773431",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["elegy2"]										= {["name"] = "Elegy RH8",						["price"] = 90500,		["category"] = "sports",				["model"] = "elegy2",			["brand"] = "Annis",					["hash"] = "-566387422",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["feltzer2"]									= {["name"] = "Feltzer",						["price"] = 90500,		["category"] = "sports",				["model"] = "feltzer2",			["brand"] = "Benefactor",				["hash"] = "-1995326987",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["furoregt"]									= {["name"] = "Furore GT",						["price"] = 90500,		["category"] = "sports",				["model"] = "furoregt",			["brand"] = "Lampadati",				["hash"] = "-1089039904",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["fusilade"]									= {["name"] = "Fusilade",						["price"] = 90500,		["category"] = "sports",				["model"] = "fusilade",			["brand"] = "Schyster",					["hash"] = "499169875",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["jester"]										= {["name"] = "Jester",							["price"] = 90500,		["category"] = "sports",				["model"] = "jester",			["brand"] = "Dinka",					["hash"] = "-1297672541",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["khamelion"]									= {["name"] = "Khamelion",						["price"] = 90500,		["category"] = "sports",				["model"] = "khamelion",		["brand"] = "Hijak",					["hash"] = "544021352",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["kuruma"]										= {["name"] = "Kuruma",							["price"] = 90500,		["category"] = "sports",				["model"] = "kuruma",			["brand"] = "Karin",					["hash"] = "-1372848492",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["lynx"]										= {["name"] = "Lynx",							["price"] = 90500,		["category"] = "sports",				["model"] = "lynx",				["brand"] = "Ocelot",					["hash"] = "482197771",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["mamba"]										= {["name"] = "Mamba",							["price"] = 90500,		["category"] = "sports",				["model"] = "mamba",			["brand"] = "Declasse",					["hash"] = "-1660945322",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["massacro"]									= {["name"] = "Massacro",						["price"] = 90500,		["category"] = "sports",				["model"] = "massacro",			["brand"] = "Dewbauchee",				["hash"] = "-142942670",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rapidgt"]										= {["name"] = "Rapid GT",						["price"] = 90500,		["category"] = "sports",				["model"] = "rapidgt",			["brand"] = "Dewbauchee",				["hash"] = "-1934452204",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rapidgt2"]									= {["name"] = "Rapid GT Convertible",			["price"] = 90500,		["category"] = "sports",				["model"] = "rapidgt2",			["brand"] = "Dewbauchee",				["hash"] = "1737773231",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["schafter3"]									= {["name"] = "Schafter V12",					["price"] = 90500,		["category"] = "sports",				["model"] = "schafter3",		["brand"] = "Benefactor",				["hash"] = "-1485523546",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["seven70"]										= {["name"] = "Seven-70",						["price"] = 90500,		["category"] = "sports",				["model"] = "seven70",			["brand"] = "Dewbauchee",				["hash"] = "-1757836725",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sultan"]										= {["name"] = "Sultan",							["price"] = 90500,		["category"] = "sports",				["model"] = "sultan",			["brand"] = "Karin",					["hash"] = "970598228",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["surano"]										= {["name"] = "Surano",							["price"] = 90500,		["category"] = "sports",				["model"] = "surano",			["brand"] = " Benefactor",				["hash"] = "384071873",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["verlierer2"]									= {["name"] = "Verlierer",						["price"] = 90500,		["category"] = "sports",				["model"] = "verlierer2",		["brand"] = "Bravado",					["hash"] = "1102544804",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["adder"]										= {["name"] = "Adder",							["price"] = 1250000,	["category"] = "super",					["model"] = "adder",			["brand"] = "Truffade",					["hash"] = "-1216765807",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["banshee2"]									= {["name"] = "Banshee 900R",					["price"] = 1250000,	["category"] = "super",					["model"] = "banshee2",			["brand"] = "Bravado",					["hash"] = "633712403",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bullet"]										= {["name"] = "Bullet", 						["price"] = 1250000,	["category"] = "super",					["model"] = "bullet",			["brand"] = "Vapid",					["hash"] = "-1696146015",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["cheetah"]										= {["name"] = "Cheetah",						["price"] = 1250000,	["category"] = "super",					["model"] = "cheetah",			["brand"] = "Grotti",					["hash"] = "-1311154784",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["entityxf"]									= {["name"] = "Entity XF",						["price"] = 1250000,	["category"] = "super",					["model"] = "entityxf",			["brand"] = "Överflöd",					["hash"] = "-1291952903",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["fmj"]											= {["name"] = "FMJ",							["price"] = 1250000,	["category"] = "super",					["model"] = "fmj",				["brand"] = "Vapid",					["hash"] = "1426219628",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["infernus"]									= {["name"] = "Infernus",						["price"] = 1250000,	["category"] = "super",					["model"] = "infernus",			["brand"] = "Pegassi",					["hash"] = "418536135",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["pfister811"]									= {["name"] = "811",							["price"] = 1250000,	["category"] = "super",					["model"] = "pfister811",		["brand"] = "Pfister",					["hash"] = "-1829802492",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["reaper"]										= {["name"] = "Reaper",							["price"] = 1250000,	["category"] = "super",					["model"] = "reaper",			["brand"] = "Pegassi",					["hash"] = "234062309",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["t20"]											= {["name"] = "T20",							["price"] = 1250000,	["category"] = "super",					["model"] = "t20",				["brand"] = "Progen",					["hash"] = "1663218586",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["turismor"]									= {["name"] = "Turismo R",						["price"] = 1250000,	["category"] = "super",					["model"] = "turismor",			["brand"] = "Grotti",					["hash"] = "408192225",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["vacca"]										= {["name"] = "Vacca",							["price"] = 1250000,	["category"] = "super",					["model"] = "vacca",			["brand"] = "Pegassi",					["hash"] = "338562499",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["voltic"]										= {["name"] = "Voltic",							["price"] = 1250000,	["category"] = "super",					["model"] = "voltic",			["brand"] = "Coil",						["hash"] = "-1622444098",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["prototipo"]									= {["name"] = "X80 Proto",						["price"] = 1250000,	["category"] = "super",					["model"] = "prototipo",		["brand"] = "Grotti",					["hash"] = "2123327359",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["zentorno"]									= {["name"] = "Zentorno",						["price"] = 1250000,	["category"] = "super",					["model"] = "zentorno",			["brand"] = "Pegassi",					["hash"] = "-1403128555",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sultanrs"]									= {["name"] = "Sultan RS",						["price"] = 76500,		["category"] = "sports",				["model"] = "sultanrs",			["brand"] = "Karin",					["hash"] = "-295689028",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["avarus"]										= {["name"] = "Avarus",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "avarus",			["brand"] = "LCC",						["hash"] = "-2115793025",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bagger"]										= {["name"] = "Bagger",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "bagger",			["brand"] = "WMC",						["hash"] = "-2140431165",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sovereign"]									= {["name"] = "Sovereign",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "sovereign",		["brand"] = "WMC",						["hash"] = "743478836",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bati"]										= {["name"] = "Bati 801",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "bati",				["brand"] = "Pegassi",					["hash"] = "-114291515",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["chimera"]										= {["name"] = "Chimera",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "chimera",			["brand"] = "Nagasaki",					["hash"] = "6774487",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["daemon"]										= {["name"] = "Daemon",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "daemon",			["brand"] = "WMC",						["hash"] = "2006142190",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["defiler"]										= {["name"] = "Defiler",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "defiler",			["brand"] = "Shitzu",					["hash"] = "822018448",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["esskey"]										= {["name"] = "Esskey",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "esskey",			["brand"] = "Pegassi",					["hash"] = "2035069708",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["faggio"]										= {["name"] = "Faggio Sport",					["price"] = 16000,		["category"] = "motorcycles",			["model"] = "faggio",			["brand"] = "Pegassi",					["hash"] = "55628203",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["hakuchou"]									= {["name"] = "Hakuchou",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "hakuchou",			["brand"] = "Shitzu",					["hash"] = "1265391242",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["hexer"]										= {["name"] = "Hexer",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "hexer",			["brand"] = "LCC",						["hash"] = "301427732",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["nemesis"]										= {["name"] = "Nemesis",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "nemesis",			["brand"] = "WMC",						["hash"] = "-634879114",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["nightblade"]									= {["name"] = "Nightblade",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "nightblade",		["brand"] = "WMC",						["hash"] = "-1606187161",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["pcj"]											= {["name"] = "PCJ-600",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "pcj",				["brand"] = "Shitzu",					["hash"] = "-909201658",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["ruffian"]										= {["name"] = "Ruffian",						["price"] = 16000,		["category"] = "motorcycles",			["model"] = "ruffian",			["brand"] = "Pegassi",					["hash"] = "-893578776",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["thrust"]										= {["name"] = "Thrust",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "thrust",			["brand"] = "Dinka",					["hash"] = "1836027715",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["visione"]										= {["name"] = "Visione",						["price"] = 1750000,	["category"] = "sports",				["model"] = "visione",			["brand"] = "Grotti",					["hash"] = "-998177792",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["gt500"]										= {["name"] = "GT500",							["price"] = 255000,		["category"] = "sportsclassics",		["model"] = "gt500",			["brand"] = "Grotti",					["hash"] = "-2079788230",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["cyclone"]										= {["name"] = "Cyclone",						["price"] = 1400000,	["category"] = "super",					["model"] = "cyclone",			["brand"] = "Coil",						["hash"] = "1392481335",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["comet5"]										= {["name"] = "Comet SR",						["price"] = 252000,		["category"] = "sports",				["model"] = "comet5",			["brand"] = "Pfister",					["hash"] = "661493923",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rapidgt3"]									= {["name"] = "Rapid GT",						["price"] = 445000,		["category"] = "sportsclassics",		["model"] = "rapidgt3",			["brand"] = "Dewbauchee",				["hash"] = "2049897956",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["streiter"]									= {["name"] = "Streiter",						["price"] = 185000,		["category"] = "sports",				["model"] = "streiter",			["brand"] = "Benefactor",				["hash"] = "1741861769",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["pariah"]										= {["name"] = "Pariah",							["price"] = 185000,		["category"] = "sports",				["model"] = "pariah",			["brand"] = "Ocelot",					["hash"] = "867799010",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["raiden"]										= {["name"] = "Raiden",							["price"] = 23500,		["category"] = "muscle",				["model"] = "raiden",			["brand"] = "Coil",						["hash"] = "-1529242755",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["hustler"]										= {["name"] = "Hustler",						["price"] = 75500,		["category"] = "muscle",				["model"] = "hustler",			["brand"] = "Vapid",					["hash"] = "600450546",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["yosemite"]									= {["name"] = "Yosemite",						["price"] = 23500,		["category"] = "muscle",				["model"] = "yosemite",			["brand"] = "Declasse",					["hash"] = "1871995513",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sc1"]											= {["name"] = "SC1",							["price"] = 1400000,	["category"] = "super",					["model"] = "sc1",				["brand"] = "Übermacht",				["hash"] = "1352136073",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["z190"]										= {["name"] = "190Z",							["price"] = 330000,		["category"] = "sportsclassics",		["model"] = "z190",				["brand"] = "Karin",					["hash"] = "838982985",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["neon"]										= {["name"] = "Neon", 							["price"] = 185000,		["category"] = "sports",				["model"] = "neon",				["brand"] = "Pfister",					["hash"] = "-1848994066",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["autarch"]										= {["name"] = "Autarch",						["price"] = 1400000,	["category"] = "super",					["model"] = "autarch",			["brand"] = "Överflöd",					["hash"] = "-313185164",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["blista2"]										= {["name"] = "Blista Compact",					["price"] = 10000,		["category"] = "compacts",				["model"] = "blista2",			["brand"] = "Dinka",					["hash"] = "1039032026",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["issi3"]										= {["name"] = "Issi Classic",					["price"] = 10000,		["category"] = "compacts",				["model"] = "issi3",			["brand"] = "Weeny",					["hash"] = "931280609",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dilettante"]									= {["name"] = "Dilettante",						["price"] = 10000,		["category"] = "compacts",				["model"] = "dilettante",		["brand"] = "Karin",					["hash"] = "-1130810103",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rhapsody"]									= {["name"] = "Rhapsody",						["price"] = 10000,		["category"] = "compacts",				["model"] = "rhapsody",			["brand"] = "Declasse",					["hash"] = "841808271",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["stalion"]										= {["name"] = "Stallion",						["price"] = 23500,		["category"] = "muscle",				["model"] = "stalion",			["brand"] = "Declasse",					["hash"] = "1923400478",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["infernus2"]									= {["name"] = "Infernus Classic",				["price"] = 200000,		["category"] = "sportsclassics",		["model"] = "infernus2",		["brand"] = "Pegassi",					["hash"] = "-1405937764",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["ruston"]										= {["name"] = "Ruston",							["price"] = 165000,		["category"] = "sports",				["model"] = "ruston",			["brand"] = "Hijak",					["hash"] = "719660200",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["specter"]										= {["name"] = "Specter",						["price"] = 60000,		["category"] = "sports",				["model"] = "specter",			["brand"] = "Dewbauchee",				["hash"] = "1886268224",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["cheetah2"]									= {["name"] = "Cheetah Classic",				["price"] = 60000,		["category"] = "sports",				["model"] = "cheetah2",			["brand"] = "Grotti",					["hash"] = "223240013",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["torero"]										= {["name"] = "Torero",							["price"] = 285500,		["category"] = "sportsclassics",		["model"] = "torero",			["brand"] = "Pegassi",					["hash"] = "1504306544",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["gp1"]											= {["name"] = "GP1",							["price"] = 1400000,	["category"] = "super",					["model"] = "gp1",				["brand"] = "Progen",					["hash"] = "1234311532",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["penetrator"]									= {["name"] = "Penetrator",						["price"] = 1400000,	["category"] = "super",					["model"] = "penetrator",		["brand"] = "Ocelot",					["hash"] = "-1758137366",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["tempesta"]									= {["name"] = "Tempesta",						["price"] = 1400000,	["category"] = "super",					["model"] = "tempesta",			["brand"] = "Pegassi",					["hash"] = "272929391",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["vagner"]										= {["name"] = "Vagner",							["price"] = 1400000,	["category"] = "super",					["model"] = "vagner",			["brand"] = "Dewbauchee",				["hash"] = "1939284556",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["italigtb"]									= {["name"] = "Itali GTB",						["price"] = 1400000,	["category"] = "super",					["model"] = "italigtb",			["brand"] = "Progen",					["hash"] = "-482719877",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["xa21"]										= {["name"] = "XA-21",							["price"] = 1400000,	["category"] = "super",					["model"] = "xa21",				["brand"] = "Ocelot",					["hash"] = "917809321",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["jester3"]										= {["name"] = "Jester Classic",					["price"] = 60000,		["category"] = "sports",				["model"] = "jester3",			["brand"] = "Dinka",					["hash"] = "-214906006",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["elegy"]										= {["name"] = "Elegy Retro Custom",				["price"] = 60000,		["category"] = "sports",				["model"] = "elegy",			["brand"] = "Annis",					["hash"] = "196747873 ",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dominator3"]									= {["name"] = "Dominator GTX",					["price"] = 87500,		["category"] = "muscle",				["model"] = "dominator3",		["brand"] = "Vapid",					["hash"] = "-986944621",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["tezeract"]									= {["name"] = "Tezeract",						["price"] = 1400000,	["category"] = "super",					["model"] = "tezeract",			["brand"] = "Pegassi",					["hash"] = "1031562256",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["entity2"]										= {["name"] = "Entity XXR",						["price"] = 1400000,	["category"] = "super",					["model"] = "entity2",			["brand"] = "Överflöd",					["hash"] = "-2120700196",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["nero"]										= {["name"] = "Nero",							["price"] = 1400000,	["category"] = "super",					["model"] = "nero",				["brand"] = "Truffade",					["hash"] = "1034187331",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["comet3"]										= {["name"] = "Comet Retro Custom",				["price"] = 60000,		["category"] = "sports",				["model"] = "comet3",			["brand"] = "Pfister",					["hash"] = "-2022483795",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["taipan"]										= {["name"] = "Taipan",							["price"] = 1400000,	["category"] = "super",					["model"] = "taipan",			["brand"] = "Cheval",					["hash"] = "-1134706562",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["tyrant"]										= {["name"] = "Tyrant",							["price"] = 1400000,	["category"] = "super",					["model"] = "tyrant",			["brand"] = " Överflöd",				["hash"] = "-376434238",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["osiris"]										= {["name"] = "Osiris",							["price"] = 1400000,	["category"] = "super",					["model"] = "osiris",			["brand"] = "Pegassi",					["hash"] = "1987142870",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["flashgt"]										= {["name"] = "Flash GT",						["price"] = 111000,		["category"] = "sports",				["model"] = "flashgt",			["brand"] = "Vapid",					["hash"] = "-1259134696",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["specter2"]									= {["name"] = "Specter Custom",					["price"] = 111000,		["category"] = "sports",				["model"] = "specter2",			["brand"] = "Dewbauchee",				["hash"] = "1074745671",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["surge"] 										= {["name"] = "Surge",							["price"] = 28500,		["category"] = "sedans",				["model"] = "surge",			["brand"] = "Cheval",					["hash"] = "-1894894188",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["ellie"]										= {["name"] = "Ellie",							["price"] = 87500,		["category"] = "muscle",				["model"] = "ellie",			["brand"] = "Vapid",					["hash"] = "-1267543371",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bjxl"]										= {["name"] = "BeeJay XL",						["price"] = 47000,		["category"] = "suvs",					["model"] = "bjxl",				["brand"] = "Karin",					["hash"] = "850565707",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["faggio3"]										= {["name"] = "Faggio Mod",						["price"] = 900,		["category"] = "motorcycles",			["model"] = "faggio3",			["brand"] = "Pegassi",					["hash"] = "-1289178744",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sentinelc1"]									= {["name"] = "Sentinel Custom XR",				["price"] = 250000,		["category"] = "tuner",					["model"] = "sentinelc1",		["brand"] = "Ubermach",					["hash"] = GetHashKey("sentinelc1"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bifta"]										= {["name"] = 'Bifta',							["price"] = 60000,		["category"] = "offroad",				["model"] = "bifta",			["brand"] = "Annis",					["hash"] = GetHashKey("bifta"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["bfinjection"]									= {["name"] = 'Bf Injection',					["price"] = 60000,		["category"] = "offroad",				["model"] = "bfinjection",		["brand"] = "Annis",					["hash"] = GetHashKey("bfinjection"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["blazer"]										= {["name"] = 'Blazer',							["price"] = 60000,		["category"] = "offroad",				["model"] = "blazer",			["brand"] = "Annis",					["hash"] = GetHashKey("blazer"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["blazer4"]										= {["name"] = 'Blazer Sport',					["price"] = 60000,		["category"] = "offroad",				["model"] = "blazer4",			["brand"] = "Annis",					["hash"] = GetHashKey("blazer4"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["brawler"]										= {["name"] = 'Brawler',						["price"] = 60000,		["category"] = "offroad",				["model"] = "brawler",			["brand"] = "Annis",					["hash"] = GetHashKey("brawler"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dubsta3"]										= {["name"] = 'Bubsta 6x6',						["price"] = 60000,		["category"] = "offroad",				["model"] = "dubsta3",			["brand"] = "Annis",					["hash"] = GetHashKey("dubsta3"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["dune"]										= {["name"] = 'Dune Buggy',						["price"] = 60000,		["category"] = "offroad",				["model"] = "dune",				["brand"] = "Annis",					["hash"] = GetHashKey("dune"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["guardian"]									= {["name"] = 'Guardian',						["price"] = 60000,		["category"] = "offroad",				["model"] = "guardian",			["brand"] = "Annis",					["hash"] = GetHashKey("guardian"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["rebel2"]										= {["name"] = 'Rebel',							["price"] = 60000,		["category"] = "offroad",				["model"] = "rebel2",			["brand"] = "Annis",					["hash"] = GetHashKey("rebel2"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["sandking"]									= {["name"] = 'Sandking',						["price"] = 60000,		["category"] = "offroad",				["model"] = "sandking",			["brand"] = "Annis",					["hash"] = GetHashKey("sandking"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["trophytruck"]									= {["name"] = 'Trophy Truck',					["price"] = 60000,		["category"] = "offroad",				["model"] = "trophytruck",		["brand"] = "Annis",					["hash"] = GetHashKey("trophytruck"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["trophytruck2"]								= {["name"] = 'Trophy Truck Limited',			["price"] = 80000,		["category"] = "offroad",				["model"] = "trophytruck2",		["brand"] = "Annis",					["hash"] = GetHashKey("trophytruck2"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["kamacho"]										= {["name"] = 'Kamacho',						["price"] = 200000,		["category"] = "offroad",				["model"] = "kamacho",			["brand"] = "Annis",					["hash"] = GetHashKey("kamacho"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	["911r"]										= {["name"] = "911",							["price"] = 1, 			["category"] = "coupes",				["model"] = "911r",				["brand"] = "Porsche",					["hash"] = GetHashKey("911r"),				["trunkspace"] = 100000,	["trunkslots"] = 30,	["shop"] = "custom"},
	["bmci"]										= {["name"] = "M5",								["price"] = 1, 			["category"] = "coupes",				["model"] = "bmci",				["brand"] = "BMW",						["hash"] = GetHashKey("bmci"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	["750iL"]										= {["name"] = "750iL",							["price"] = 1, 			["category"] = "coupes",				["model"] = "750iL",			["brand"] = "BMW",						["hash"] = GetHashKey("750iL"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	["db11"]										= {["name"] = "DB11",							["price"] = 1, 			["category"] = "coupes",				["model"] = "db11",				["brand"] = "Aston Martin",				["hash"] = GetHashKey("db11"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	["lwgtr"]										= {["name"] = "GTR Liberty Walk",				["price"] = 1, 			["category"] = "coupes",				["model"] = "lwgtr",			["brand"] = "Nissan",					["hash"] = GetHashKey("lwgtr"),				["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	["tempesta2"]									= {["name"] = "Pegassi Tempesta",				["price"] = 1, 			["category"] = "coupes",				["model"] = "tempesta2",		["brand"] = "Pegassi",					["hash"] = GetHashKey("tempesta2"),			["trunkspace"] = 100000,	["trunkslots"] = 20,	["shop"] = "nfs"},
	["urus"]										= {["name"] = "Urus",							["price"] = 1, 			["category"] = "coupes",				["model"] = "urus",				["brand"] = "Lamborghini",				["hash"] = GetHashKey("urus"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	["f82"]											= {["name"] = "M4 F82 GTS",						["price"] = 1, 			["category"] = "coupes",				["model"] = "f82",				["brand"] = "BMW",						["hash"] = GetHashKey("f82"),				["trunkspace"] = 80000,		["trunkslots"] = 50,	["shop"] = "custom"},
	["16challenger"]								= {["name"] = "Challenger",						["price"] = 1, 			["category"] = "coupes",				["model"] = "16challenger",		["brand"] = "Dodge",					["hash"] = GetHashKey("16challenger"),		["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["mustang19"]									= {["name"] = "Mustang GT",						["price"] = 1, 			["category"] = "coupes",				["model"] = "mustang19",		["brand"] = "Ford",						["hash"] = GetHashKey("mustang19"),			["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "nfs"},
	["schwarzer2"]									= {["name"] = "Schwarzer Wide Body",			["price"] = 1, 			["category"] = "coupes",				["model"] = "schwarzer2",		["brand"] = "Schwarzer",				["hash"] = GetHashKey("schwarzer2"),		["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	["rijschool"]									= {["name"] = "Q5 Rijschool",					["price"] = 1, 			["category"] = "coupes",				["model"] = "rijschool",		["brand"] = "Audi",						["hash"] = GetHashKey("rijschool"),			["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["sentinel3"]									= {["name"] = "Sentinel Classic",				["price"] = 40000,		["category"] = "coupes",				["model"] = "sentinel3",		["brand"] = "Ubermacht",				["hash"] = GetHashKey("sentinel3"),			["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "pdm"},
	["oracle"]										= {["name"] = "Oracle",							["price"] = 45000,		["category"] = "sedans",				["model"] = "oracle",			["brand"] = "Ubermacht",				["hash"] = GetHashKey("oracle"),			["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "pdm"},		
	["ardent"]										= {["name"] = "Ardent",							["price"] = 35000,		["category"] = "sportsclassics",		["model"] = "ardent",			["brand"] = "Ocelot",					["hash"] = GetHashKey("ardent"),			["trunkspace"] = 40000,		["trunkslots"] = 30,	["shop"] = "pdm"},			
	["fagaloa"]										= {["name"] = "Fagaloa",						["price"] = 35000,		["category"] = "sportsclassics",		["model"] = "fagaloa",			["brand"] = "Vulcar",					["hash"] = GetHashKey("fagaloa"),			["trunkspace"] = 80000,		["trunkslots"] = 60,	["shop"] = "pdm"},				
	["stafford"]									= {["name"] = "Stafford",						["price"] = 45000,		["category"] = "sedans",				["model"] = "stafford",			["brand"] = "Enus",						["hash"] = GetHashKey("stafford"),			["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "pdm"},
	["stafford"]									= {["name"] = "Stafford",						["price"] = 45000,		["category"] = "sedans",				["model"] = "stafford",			["brand"] = "Enus",						["hash"] = GetHashKey("stafford"),			["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "pdm"},		
	["zombieb"]										= {["name"] = "Zombie Chopper",					["price"] = 17000,		["category"] = "motorcycles",			["model"] = "zombieb",			["brand"] = "Steel Horse",				["hash"] = GetHashKey("zombieb"),			["trunkspace"] = 20000,		["trunkslots"] = 20,	["shop"] = "pdm"},
	["subwrx"]										= {["name"] = "Impreza WRX STI",				["price"] = 230000,		["category"] = "coupes",				["model"] = "subwrx",			["brand"] = "Subaru",					["hash"] = GetHashKey("subwrx"),			["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["rx7rb"]										= {["name"] = "RX7",							["price"] = 230000,		["category"] = "coupes",				["model"] = "rx7rb",			["brand"] = "Mazda",					["hash"] = GetHashKey("rx7rb"),				["trunkspace"] = 20000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["ram2500"]										= {["name"] = "RAM 2500",						["price"] = 230000,		["category"] = "coupes",				["model"] = "ram2500",			["brand"] = "Dodge",					["hash"] = GetHashKey("ram2500"),			["trunkspace"] = 80000,		["trunkslots"] = 80,	["shop"] = "custom"},
	["evo9"]										= {["name"] = "Lancer Evo",						["price"] = 230000,		["category"] = "coupes",				["model"] = "evo9",				["brand"] = "Mitsubishi",				["hash"] = GetHashKey("evo9"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["omnis"]										= {["name"] = "Omnis", 							["price"] = 120000,		["category"] = "sports",				["model"] = "omnis",			["brand"] = "Wow",						["hash"] = GetHashKey("omnis"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "pdm"},	
	["a80"]											= {["name"] = "Supra",							["price"] = 230000,		["category"] = "coupes",				["model"] = "a80",				["brand"] = "Toyota",					["hash"] = GetHashKey("a80"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["fd"]											= {["name"] = "RX7 Tuning",						["price"] = 230000,		["category"] = "coupes",				["model"] = "fd",				["brand"] = "Mazda",					["hash"] = GetHashKey("fd"),				["trunkspace"] = 30000,		["trunkslots"] = 30,	["shop"] = "custom"},
	["r35"]											= {["name"] = "GTR R35",						["price"] = 230000,		["category"] = "coupes",				["model"] = "r35",				["brand"] = "Nissan",					["hash"] = GetHashKey("r35"),				["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	["tampa3"]										= {["name"] = "Tampa Drifting",					["price"] = 230000,		["category"] = "coupes",				["model"] = "tampa3",			["brand"] = "Tampa Drifting",			["hash"] = GetHashKey("tampa3"),			["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	["yosemite6str"]								= {["name"] = "Yosemite 6STR",					["price"] = 230000,		["category"] = "coupes",				["model"] = "yosemite6str",		["brand"] = "Yosemite 6STR",			["hash"] = GetHashKey("yosemite6str"),		["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	["c7"]											= {["name"] = "Chevrolet",						["price"] = 230000,		["category"] = "coupes",				["model"] = "c7",				["brand"] = "Corvette C7 Stingray",		["hash"] = GetHashKey("c7"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	["m3e46"]										= {["name"] = "BMW M3",							["price"] = 230000,		["category"] = "coupes",				["model"] = "m3e46",			["brand"] = "M3 E46",					["hash"] = GetHashKey("m3e46"),				["trunkspace"] = 50000,		["trunkslots"] = 50,	["shop"] = "custom"},
	["mgt"]											= {["name"] = "Mustang GT",						["price"] = 230000,		["category"] = "coupes",				["model"] = "mgt",				["brand"] = "Ford", 					["hash"] = GetHashKey("mgt"),				["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	["na1"]											= {["name"] = "Honda",							["price"] = 230000,		["category"] = "coupes",				["model"] = "na1",				["brand"] = "NSX",						["hash"] = GetHashKey("na1"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},	
	["rmodgt63"]									= {["name"] = "GT63 S Coupe",					["price"] = 230000,		["category"] = "coupes",				["model"] = "rmodgt63",			["brand"] = "Mercedes",					["hash"] = GetHashKey("rmodgt63"),			["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	["g65amg"]										= {["name"] = "G65 AMG",						["price"] = 230000,		["category"] = "coupes",				["model"] = "g65amg",			["brand"] = "Mercedes",					["hash"] = GetHashKey("g65amg"),			["trunkspace"] = 150000,	["trunkslots"] = 60,	["shop"] = "custom"},
	["s600w220"]									= {["name"] = "S600",							["price"] = 230000,		["category"] = "coupes",				["model"] = "s600w220",			["brand"] = "Mercedes",					["hash"] = GetHashKey("s600w220"),			["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	["skyline"]										= {["name"] = "Nissan Skyline",					["price"] = 230000,		["category"] = "coupes",				["model"] = "skyline",			["brand"] = "Skyline R34",				["hash"] = GetHashKey("skyline"),			["trunkspace"] = 50000,		["trunkslots"] = 50,	["shop"] = "custom"},
}

QBShared.VehicleModels = {
	[GetHashKey("c7")]								= {["name"] = "Chevrolet",						["price"] = 340000,		["category"] = "coupes",				["model"] = "c7",				["brand"] = "Corvette C7 Stingray",		["hash"] = GetHashKey("c7"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	[GetHashKey("m3e46")]							= {["name"] = "M3 E46",							["price"] = 240000,		["category"] = "coupes",				["model"] = "m3e46",			["brand"] = "BMW",						["hash"] = GetHashKey("m3e46"),				["trunkspace"] = 50000,		["trunkslots"] = 50,	["shop"] = "custom"},
	[GetHashKey("750iL")]							= {["name"] = "750iL",							["price"] = 150000,		["category"] = "coupes",				["model"] = "750iL",			["brand"] = "BMW",						["hash"] = GetHashKey("750iL"),				["trunkspace"] = 50000,		["trunkslots"] = 50,	["shop"] = "custom"},
	[GetHashKey("mgt")]								= {["name"] = "Ford",							["price"] = 210000,		["category"] = "coupes",				["model"] = "mgt",				["brand"] = "Mustang GT",				["hash"] = GetHashKey("mgt"),				["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("na1")]								= {["name"] = "Honda",							["price"] = 175000,		["category"] = "coupes",				["model"] = "na1",				["brand"] = "NSX",						["hash"] = GetHashKey("na1"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	[GetHashKey("rmodgt63")]						= {["name"] = "GT63 S Coupe",					["price"] = 410000,		["category"] = "coupes",				["model"] = "rmodgt63",			["brand"] = "Mercedes",					["hash"] = GetHashKey("rmodgt63"),			["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},	
	[GetHashKey("g65amg")]							= {["name"] = "G65 AMG",						["price"] = 375000,		["category"] = "coupes",				["model"] = "g65amg",			["brand"] = "Mercedes",					["hash"] = GetHashKey("g65amg"),			["trunkspace"] = 150000,	["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("s600w220")]						= {["name"] = "S600",							["price"] = 175000,		["category"] = "coupes",				["model"] = "s600w220",			["brand"] = "Mercedes",					["hash"] = GetHashKey("s600w220"),			["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("skyline")]							= {["name"] = "Nissan",							["price"] = 230000,		["category"] = "coupes",				["model"] = "skyline",			["brand"] = "Skyline R34",				["hash"] = GetHashKey("skyline"),			["trunkspace"] = 50000,		["trunkslots"] = 50,	["shop"] = "custom"},
	[GetHashKey("tampa3")]							= {["name"] = "G",								["price"] = 340000,		["category"] = "coupes",				["model"] = "tampa3",			["brand"] = "Tampa Drifting", 			["hash"] = GetHashKey("tampa3"),			["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("yosemite6str")]					= {["name"] = "G",								["price"] = 340000,		["category"] = "coupes",				["model"] = "yosemite6str",		["brand"] = "Yosemite 6STR",			["hash"] = GetHashKey("yosemite6str"),		["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},		
	[GetHashKey("r35")]								= {["name"] = "GTR R35",						["price"] = 340000,		["category"] = "coupes",				["model"] = "r35",				["brand"] = "Nissan",					["hash"] = GetHashKey("r35"),				["trunkspace"] = 60000,		["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("fd")]								= {["name"] = "RX7 Tuning",						["price"] = 145000,		["category"] = "coupes",				["model"] = "fd",				["brand"] = "Mazda",					["hash"] = GetHashKey("fd"),				["trunkspace"] = 30000,		["trunkslots"] = 30,	["shop"] = "custom"},
	[GetHashKey("a80")]								= {["name"] = "Supra",							["price"] = 160000,		["category"] = "coupes",				["model"] = "a80",				["brand"] = "Toyota",					["hash"] = GetHashKey("a80"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},	
	[GetHashKey("urus")]							= {["name"] = "Urus",							["price"] = 350000,		["category"] = "coupes",				["model"] = "urus",				["brand"] = "Lamborghini",				["hash"] = GetHashKey("urus"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	[GetHashKey("f82")]								= {["name"] = "M4 F82 GTS",						["price"] = 250000,		["category"] = "coupes",				["model"] = "f82",				["brand"] = "BMW",						["hash"] = GetHashKey("f82"),				["trunkspace"] = 80000,		["trunkslots"] = 50,	["shop"] = "custom"},
	[GetHashKey("16challenger")]					= {["name"] = "Challenger",						["price"] = 195000,		["category"] = "coupes",				["model"] = "16challenger",		["brand"] = "Dodge",					["hash"] = GetHashKey("16challenger"),		["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "custom"},
	[GetHashKey("subwrx")]							= {["name"] = "Impreza WRX STI",				["price"] = 130000,		["category"] = "coupes",				["model"] = "subwrx",			["brand"] = "Subaru",					["hash"] = GetHashKey("subwrx"),			["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	[GetHashKey("rx7rb")]							= {["name"] = "RX7",							["price"] = 110000,		["category"] = "coupes",				["model"] = "rx7rb",			["brand"] = "",							["hash"] = GetHashKey("rx7rb"),				["trunkspace"] = 20000,		["trunkslots"] = 40,	["shop"] = "custom"},	
	[GetHashKey("ram2500")]							= {["name"] = "RAM 2500",						["price"] = 140000,		["category"] = "coupes",				["model"] = "ram2500",			["brand"] = "",							["hash"] = GetHashKey("ram2500"),			["trunkspace"] = 80000,		["trunkslots"] = 80,	["shop"] = "custom"},		
	[GetHashKey("evo9")]							= {["name"] = "Lancer Evo",						["price"] = 125000,		["category"] = "coupes",				["model"] = "evo9",				["brand"] = "Mitsubishi",				["hash"] = GetHashKey("evo9"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "custom"},
	[GetHashKey("sentinel3")]						= {["name"] = "Sentinel Classic",				["price"] = 40000,		["category"] = "coupes",				["model"] = "sentinel3",		["brand"] = "",							["hash"] = GetHashKey("sentinel3"),			["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "pdm"},		
	[GetHashKey("oracle")]							= {["name"] = "Oracle",							["price"] = 25000,		["category"] = "sedans",				["model"] = "oracle",			["brand"] = "",							["hash"] = GetHashKey("oracle"),			["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "pdm"},		
	[GetHashKey("ardent")]							= {["name"] = "Ardent",							["price"] = 100000,		["category"] = "sportsclassics",		["model"] = "ardent",			["brand"] = "",							["hash"] = GetHashKey("ardent"),			["trunkspace"] = 40000,		["trunkslots"] = 30,	["shop"] = "pdm"},			
	[GetHashKey("fagaloa")]							= {["name"] = "Fagaloa",						["price"] = 35000,		["category"] = "sportsclassics",		["model"] = "fagaloa",			["brand"] = "",							["hash"] = GetHashKey("fagaloa"),			["trunkspace"] = 80000,		["trunkslots"] = 60,	["shop"] = "pdm"},				
	[GetHashKey("stafford")]						= {["name"] = "Stafford",						["price"] = 45000,		["category"] = "sedans",				["model"] = "stafford",			["brand"] = "",							["hash"] = GetHashKey("stafford"),			["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "pdm"},				
	[GetHashKey("stafford")]						= {["name"] = "Stafford",						["price"] = 45000,		["category"] = "sedans",				["model"] = "stafford",			["brand"] = "",							["hash"] = GetHashKey("stafford"),			["trunkspace"] = 60000,		["trunkslots"] = 40,	["shop"] = "pdm"},							
	[GetHashKey("zombieb")]							= {["name"] = "Zombie Chopper",					["price"] = 17000,		["category"] = "motorcycles",			["model"] = "zombieb",			["brand"] = "",							["hash"] = GetHashKey("zombieb"),			["trunkspace"] = 20000,		["trunkslots"] = 20,	["shop"] = "pdm"},	
	[GetHashKey("911r")]							= {["name"] = '911',							["price"] = 340000,		["category"] = "coupes",				["model"] = "911r",				["brand"] = "Porsche",					["hash"] = GetHashKey("911r"),				["trunkspace"] = 100000,	["trunkslots"] = 30,	["shop"] = "custom"},
	[GetHashKey("bmci")]							= {["name"] = 'M5',								["price"] = 280000,		["category"] = "coupes",				["model"] = "bmci",				["brand"] = "",							["hash"] = GetHashKey("bmci"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	[GetHashKey("db11")]							= {["name"] = 'DB11',							["price"] = 310000,		["category"] = "coupes",				["model"] = "db11",				["brand"] = "",							["hash"] = GetHashKey("db11"),				["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("lwgtr")]							= {["name"] = 'GTR Liberty Walk',				["price"] = 300000,		["category"] = "coupes",				["model"] = "lwgtr",			["brand"] = "",							["hash"] = GetHashKey("lwgtr"),				["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("tempesta2")]						= {["name"] = 'Tempesta',						["price"] = 320000,		["category"] = "coupes",				["model"] = "tempesta2",		["brand"] = "",							["hash"] = GetHashKey("tempesta2"),			["trunkspace"] = 100000,	["trunkslots"] = 30,	["shop"] = "nfs"},
	[GetHashKey("mustang19")]						= {["name"] = 'Mustang GT',						["price"] = 230000,		["category"] = "coupes",				["model"] = "mustang19",		["brand"] = "",							["hash"] = GetHashKey("mustang19"),			["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("schwarzer2")]						= {["name"] = 'Schwarzer',						["price"] = 270000,		["category"] = "coupes",				["model"] = "schwarzer2",		["brand"] = "",							["hash"] = GetHashKey("schwarzer2"),		["trunkspace"] = 100000,	["trunkslots"] = 60,	["shop"] = "custom"},
	[GetHashKey("kamacho")]							= {["name"] = 'Kamacho',						["price"] = 200000,		["category"] = "offroad",				["model"] = "kamacho",			["brand"] = "",							["hash"] = GetHashKey("kamacho"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bifta")]							= {["name"] = 'Bifta',							["price"] = 12000,		["category"] = "offroad",				["model"] = "bifta",			["brand"] = "Annis",					["hash"] = GetHashKey("bifta"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bfinjection")]						= {["name"] = 'Bf Injection',					["price"] = 16000,		["category"] = "offroad",				["model"] = "bfinjection",		["brand"] = "Annis",					["hash"] = GetHashKey("bfinjection"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("blazer")]							= {["name"] = 'Blazer',							["price"] = 6500,		["category"] = "offroad",				["model"] = "blazer",			["brand"] = "Annis",					["hash"] = GetHashKey("blazer"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("blazer4")]							= {["name"] = 'Blazer Sport',					["price"] = 8500,		["category"] = "offroad",				["model"] = "blazer4",			["brand"] = "Annis",					["hash"] = GetHashKey("blazer4"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("brawler")]							= {["name"] = 'Brawler',						["price"] = 45000,		["category"] = "offroad",				["model"] = "brawler",			["brand"] = "Annis",					["hash"] = GetHashKey("brawler"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dubsta3")]							= {["name"] = 'Bubsta 6x6', 					["price"] = 120000,		["category"] = "offroad",				["model"] = "dubsta3",			["brand"] = "Annis",					["hash"] = GetHashKey("dubsta3"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dune")]							= {["name"] = 'Dune Buggy',						["price"] = 8000,		["category"] = "offroad",				["model"] = "dune",				["brand"] = "Annis",					["hash"] = GetHashKey("dune"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("guardian")]						= {["name"] = 'Guardian',						["price"] = 45000,		["category"] = "offroad",				["model"] = "guardian",			["brand"] = "Annis",					["hash"] = GetHashKey("guardian"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rebel2")]							= {["name"] = 'Rebel',							["price"] = 35000,		["category"] = "offroad",				["model"] = "rebel2",			["brand"] = "Annis",					["hash"] = GetHashKey("rebel2"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sandking")]						= {["name"] = 'Sandking',						["price"] = 55000,		["category"] = "offroad",				["model"] = "sandking",			["brand"] = "Annis",					["hash"] = GetHashKey("sandking"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("trophytruck")]						= {["name"] = 'Trophy Truck',					["price"] = 60000,		["category"] = "offroad",				["model"] = "trophytruck",		["brand"] = "Annis",					["hash"] = GetHashKey("trophytruck"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("trophytruck2")]					= {["name"] = 'Trophy Truck Limited',			["price"] = 80000,		["category"] = "offroad",				["model"] = "trophytruck2",		["brand"] = "Annis",					["hash"] = GetHashKey("trophytruck2"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("revolter")]						= {["name"] = "Revolter",						["price"] = 195000,		["category"] = "sports",				["model"] = "revolter",			["brand"] = "Ubermacht",				["hash"] = "-410205223",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("blade")]							= {["name"] = "Blade",							["price"] = 19000,		["category"] = "muscle",				["model"] = "blade",			["brand"] = "Vapid",					["hash"] = "-1205801634",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("buccaneer")]						= {["name"] = "Buccaneer",						["price"] = 19500,		["category"] = "muscle",				["model"] = "buccaneer",		["brand"] = "Albany",					["hash"] = "-682211828",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("buccaneer2")]						= {["name"] = "Buccaneer Rider",				["price"] = 22500,		["category"] = "muscle",				["model"] = "buccaneer2",		["brand"] = "Albany",					["hash"] = "-1013450936",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("chino")]							= {["name"] = "Chino",							["price"] = 20000,		["category"] = "muscle",				["model"] = "chino",			["brand"] = "Vapid",					["hash"] = "349605904",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("chino2")]							= {["name"] = "Chino Luxe",						["price"] = 35000,		["category"] = "muscle",				["model"] = "chino2",			["brand"] = "Vapid",					["hash"] = "-1361687965",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("coquette3")]						= {["name"] = "Coquette BlackFin",				["price"] = 45000,		["category"] = "muscle",				["model"] = "coquette3",		["brand"] = "Invetero",					["hash"] = "784565758",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dominator")]						= {["name"] = "Dominator",						["price"] = 53000,		["category"] = "muscle", 				["model"] = "dominator",		["brand"] = "Vapid",					["hash"] = "80636076",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dukes")]							= {["name"] = "Dukes",							["price"] = 15000,		["category"] = "muscle",				["model"] = "dukes",			["brand"] = "Imponte",					["hash"] = "723973206",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("gauntlet")]						= {["name"] = "Gauntlet",						["price"] = 39500,		["category"] = "muscle",				["model"] = "gauntlet",			["brand"] = "Bravado",					["hash"] = "-1800170043",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("muscle")]							= {["name"] = "Hotknife",						["price"] = 39500,		["category"] = "muscle",				["model"] = "hotknife",			["brand"] = "Vapid",					["hash"] = "37348240",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("faction")]							= {["name"] = "Faction",						["price"] = 39500,		["category"] = "muscle",				["model"] = "faction",			["brand"] = "Willard",					["hash"] = "-2119578145",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("faction2")]						= {["name"] = "Faction Rider",					["price"] = 22500,		["category"] = "muscle",				["model"] = "faction2",			["brand"] = "Willard",					["hash"] = "-1790546981",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("nightshade")]						= {["name"] = "Nightshade",						["price"] = 22500,		["category"] = "muscle",				["model"] = "nightshade",		["brand"] = "Imponte",					["hash"] = "-1943285540",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("phoenix")]							= {["name"] = "Phoenix",						["price"] = 22500,		["category"] = "muscle",				["model"] = "phoenix",			["brand"] = "Imponte",					["hash"] = "-2095439403",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("picador")]							= {["name"] = "Picador",						["price"] = 22500,		["category"] = "muscle",				["model"] = "picador",			["brand"] = "Cheval",					["hash"] = "1507916787",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sabregt")]							= {["name"] = "Sabre Turbo",					["price"] = 22500,		["category"] = "muscle",				["model"] = "sabregt",			["brand"] = "Declasse",					["hash"] = "-1685021548",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sabregt2")]						= {["name"] = "Sabre GT",						["price"] = 22500,		["category"] = "muscle",				["model"] = "sabregt2",			["brand"] = "Declasse",					["hash"] = "223258115",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("slamvan3")]						= {["name"] = "Slam Van",						["price"] = 22500,		["category"] = "muscle",				["model"] = "slamvan3",			["brand"] = "Vapid",					["hash"] = "1119641113",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("tampa")]							= {["name"] = "Tampa",							["price"] = 22500,		["category"] = "muscle",				["model"] = "tampa",			["brand"] = "Declasse",					["hash"] = "972671128",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("tampa2")]							= {["name"] = "Drift Tampa",					["price"] = 22500,		["category"] = "muscle",				["model"] = "tampa2",			["brand"] = "Declasse",					["hash"] = GetHashKey("tampa2"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("virgo")]							= {["name"] = "Virgo",							["price"] = 22500,		["category"] = "muscle",				["model"] = "virgo",			["brand"] = "Albany",					["hash"] = "-498054846",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("vigero")]							= {["name"] = "Vigero",							["price"] = 21000,		["category"] = "muscle",				["model"] = "vigero",			["brand"] = "Declasse",					["hash"] = "-825837129",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("voodoo")]							= {["name"] = "Voodoo",							["price"] = 21000,		["category"] = "muscle",				["model"] = "voodoo",			["brand"] = "Declasse",					["hash"] = "523724515",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("blista")]							= {["name"] = "Blista",							["price"] = 21000,		["category"] = "compacts",				["model"] = "blista",			["brand"] = "Dinka",					["hash"] = "-344943009",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("brioso")]							= {["name"] = "Brioso R/A",						["price"] = 21000,		["category"] = "compacts",				["model"] = "brioso",			["brand"] = "Grotti",					["hash"] = "1549126457",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("issi2")]							= {["name"] = "Issi",							["price"] = 21000,		["category"] = "compacts",				["model"] = "issi2",			["brand"] = "Weeny",					["hash"] = "-1177863319",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("panto")]							= {["name"] = "Panto",							["price"] = 21000,		["category"] = "compacts",				["model"] = "panto",			["brand"] = "Benefactor",				["hash"] = "-431692672",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("prairie")]							= {["name"] = "Prairie",						["price"] = 21000,		["category"] = "compacts",				["model"] = "prairie",			["brand"] = "Bollokan",					["hash"] = "-1450650718",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bison")]							= {["name"] = "Bison",							["price"] = 30000,		["category"] = "vans",					["model"] = "bison",			["brand"] = "Bravado",					["hash"] = "-16948145",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bobcatxl")]						= {["name"] = "Bobcat XL",						["price"] = 30000,		["category"] = "vans",					["model"] = "bobcatxl",			["brand"] = "Vapid",					["hash"] = "1069929536",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bobcatxl2")]						= {["name"] = "Bobcat XL Closed",				["price"] = 30000,		["category"] = "vans",					["model"] = "bobcatxl2",		["brand"] = "Vapid",					["hash"] = "1712326151",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("burrito3")]						= {["name"] = "Burrito",						["price"] = 30000,		["category"] = "vans",					["model"] = "burrito3",			["brand"] = "Declasse",					["hash"] = "-1743316013",					["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("gburrito2")]						= {["name"] = "Burrito Custom",					["price"] = 30000,		["category"] = "vans",					["model"] = "gburrito2",		["brand"] = "Declasse",					["hash"] = "296357396",						["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("moonbeam")]						= {["name"] = "Moonbeam",						["price"] = 30000,		["category"] = "vans",					["model"] = "moonbeam",			["brand"] = "Declasse",					["hash"] = "525509695",						["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rumpo")]							= {["name"] = "Rumpo",							["price"] = 30000,		["category"] = "vans",					["model"] = "rumpo",			["brand"] = "Bravado",					["hash"] = "1162065741",					["trunkspace"] = 150000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("asea")]							= {["name"] = "Asea",							["price"] = 13000,		["category"] = "sedans",				["model"] = "asea",				["brand"] = "Declasse",					["hash"] = "-1809822327",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("cognoscenti")]						= {["name"] = "Cognoscenti",					["price"] = 13000,		["category"] = "sedans",				["model"] = "cognoscenti",		["brand"] = "Enus",						["hash"] = "-2030171296",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("emperor")]							= {["name"] = "Emperor",						["price"] = 13000,		["category"] = "sedans",				["model"] = "emperor",			["brand"] = "Albany",					["hash"] = "-685276541",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("fugitive")]						= {["name"] = "Fugitive",						["price"] = 13000,		["category"] = "sedans",				["model"] = "fugitive",			["brand"] = "Cheval",					["hash"] = "1909141499",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("glendale")]						= {["name"] = "Glendale",						["price"] = 13000,		["category"] = "sedans",				["model"] = "glendale",			["brand"] = "Benefactor",				["hash"] = "75131841",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("intruder")]						= {["name"] = "Intruder",						["price"] = 13000,		["category"] = "sedans",				["model"] = "intruder",			["brand"] = "Karin",					["hash"] = "886934177",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("premier")]							= {["name"] = "Premier",						["price"] = 13000,		["category"] = "sedans",				["model"] = "premier",			["brand"] = "Declasse",					["hash"] = "-1883869285",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("primo2")]							= {["name"] = "Primo Custom",					["price"] = 13000,		["category"] = "sedans",				["model"] = "primo2",			["brand"] = "Albany",					["hash"] = "-2040426790",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("regina")]							= {["name"] = "Regina",							["price"] = 13000,		["category"] = "sedans",				["model"] = "regina",			["brand"] = "Dundreary",				["hash"] = "-14495224",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("schafter2")]						= {["name"] = "Schafter",						["price"] = 13000,		["category"] = "sedans",				["model"] = "schafter2",		["brand"] = "Benefactor",				["hash"] = "-1255452397",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("superd")]							= {["name"] = "Super Diamond",					["price"] = 13000,		["category"] = "sedans",				["model"] = "superd",			["brand"] = "Enus",						["hash"] = "1123216662",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("tailgater")]						= {["name"] = "Tailgater",						["price"] = 13000,		["category"] = "sedans",				["model"] = "tailgater",		["brand"] = "Obey",						["hash"] = "-1008861746",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("washington")]						= {["name"] = "Washington",						["price"] = 13000,		["category"] = "sedans",				["model"] = "washington",		["brand"] = "Albany",					["hash"] = "1777363799",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("baller2")]							= {["name"] = "Baller",							["price"] = 79000,		["category"] = "suvs",					["model"] = "baller2",			["brand"] = "Gallivanter",				["hash"] = "142944341",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("baller3")]							= {["name"] = "Baller LE",						["price"] = 79000,		["category"] = "suvs",					["model"] = "baller3",			["brand"] = "Gallivanter",				["hash"] = "1878062887",					["trunkspace"] = 100000,	["trunkslots"] = 80, 	["shop"] = "pdm"},
	[GetHashKey("cavalcade2")]						= {["name"] = "Cavalcade",						["price"] = 79000,		["category"] = "suvs",					["model"] = "cavalcade2",		["brand"] = "Albany",					["hash"] = "-789894171",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dubsta2")]							= {["name"] = "Dubsta Luxuary",					["price"] = 79000,		["category"] = "suvs",					["model"] = "dubsta2",			["brand"] = "Benefactor",				["hash"] = "-394074634",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("fq2")]								= {["name"] = "FQ2",							["price"] = 79000,		["category"] = "suvs",					["model"] = "fq2",				["brand"] = "Fathom",					["hash"] = "-1137532101",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("granger")]							= {["name"] = "Granger",						["price"] = 79000,		["category"] = "suvs",					["model"] = "granger",			["brand"] = "Declasse",					["hash"] = "-1775728740",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("gresley")]							= {["name"] = "Gresley",						["price"] = 79000,		["category"] = "suvs",					["model"] = "gresley",			["brand"] = "Bravado",					["hash"] = "-1543762099",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("huntley")]							= {["name"] = "Huntley S",						["price"] = 79000,		["category"] = "suvs",					["model"] = "huntley",			["brand"] = "Enus",						["hash"] = "486987393",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("landstalker")]						= {["name"] = "Landstalker",					["price"] = 79000,		["category"] = "suvs",					["model"] = "landstalker",		["brand"] = "Dundreary",				["hash"] = "1269098716",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("patriot")]							= {["name"] = "Patriot",						["price"] = 79000,		["category"] = "suvs",					["model"] = "patriot",			["brand"] = "Mammoth",					["hash"] = "-808457413",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("radi")]							= {["name"] = "Radius",							["price"] = 79000,		["category"] = "suvs",					["model"] = "radi",				["brand"] = "Vapid",					["hash"] = "-1651067813",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rocoto")]							= {["name"] = "Rocoto",							["price"] = 79000,		["category"] = "suvs",					["model"] = "rocoto",			["brand"] = "Obey",						["hash"] = "2136773105",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("seminole")]						= {["name"] = "Seminole",						["price"] = 79000,		["category"] = "suvs",					["model"] = "seminole",			["brand"] = "Canis",					["hash"] = "1221512915",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("xls")]								= {["name"] = "XLS",							["price"] = 79000,		["category"] = "suvs",					["model"] = "xls",				["brand"] = "Benefactor",				["hash"] = "1203490606",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("btype")]							= {["name"] = "Roosevelt",						["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "btype",			["brand"] = "Albany",					["hash"] = "117401876",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("btype3")]							= {["name"] = "Roosevelt Valor",				["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "btype3",			["brand"] = "Albany",					["hash"] = "-602287871",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("btype2")]							= {["name"] = "Franken Stange",					["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "btype2",			["brand"] = "Albany",					["hash"] = "-831834716",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("casco")]							= {["name"] = "Casco",							["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "casco",			["brand"] = "Lampadati",				["hash"] = "941800958",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("coquette2")]						= {["name"] = "Coquette Classic",				["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "coquette2",		["brand"] = "Invetero",					["hash"] = "1011753235",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("monroe")]							= {["name"] = "Monroe",							["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "monroe",			["brand"] = "Pegassi",					["hash"] = "-433375717",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("pigalle")]							= {["name"] = "Pigalle",						["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "pigalle",			["brand"] = "Lampadati",				["hash"] = "1078682497",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("stingergt")]						= {["name"] = "Stinger GT",						["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "stingergt",		["brand"] = "Grotti",					["hash"] = "-2098947590",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("feltzer3")]						= {["name"] = "Stirling GT",					["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "feltzer3",			["brand"] = "Benefactor",				["hash"] = "-1566741232",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("ztype")]							= {["name"] = "Z-Type",							["price"] = 325000,		["category"] = "sportsclassics",		["model"] = "ztype",			["brand"] = "Truffade",					["hash"] = "758895617",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("coupes")]							= {["name"] = "Cognoscenti Cabrio",				["price"] = 45500,		["category"] = "coupes",				["model"] = "cogcabrio",		["brand"] = "Enus",						["hash"] = "330661258",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("exemplar")]						= {["name"] = "Exemplar",						["price"] = 45500,		["category"] = "coupes",				["model"] = "exemplar",			["brand"] = "Dewbauchee",				["hash"] = "-5153954",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("f620")]							= {["name"] = "F620",							["price"] = 45500,		["category"] = "coupes",				["model"] = "f620",				["brand"] = "Ocelot",					["hash"] = "-591610296",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("felon")]							= {["name"] = "Felon",							["price"] = 45500,		["category"] = "coupes",				["model"] = "felon",			["brand"] = "Lampadati",				["hash"] = "-391594584",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("felon2")]							= {["name"] = "Felon GT",						["price"] = 45500,		["category"] = "coupes",				["model"] = "felon2",			["brand"] = "Lampadati",				["hash"] = "-89291282",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("jackal")]							= {["name"] = "Jackal",							["price"] = 45500,		["category"] = "coupes",				["model"] = "jackal",			["brand"] = "Ocelot",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("oracle2")]							= {["name"] = "Oracle XS",						["price"] = 45500,		["category"] = "coupes",				["model"] = "oracle2",			["brand"] = "Übermacht",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sentinel")]						= {["name"] = "Sentinel",						["price"] = 45500,		["category"] = "coupes",				["model"] = "sentinel",			["brand"] = "Übermacht",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sentinel2")]						= {["name"] = "Sentinel XS",					["price"] = 45500,		["category"] = "coupes",				["model"] = "sentinel2",		["brand"] = " Übermacht",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("windsor")]							= {["name"] = "Windsor",						["price"] = 45500,		["category"] = "coupes",				["model"] = "windsor",			["brand"] = "Enus",						["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("windsor2")]						= {["name"] = "Windsor Drop",					["price"] = 45500,		["category"] = "coupes",				["model"] = "windsor2",			["brand"] = "Enus",						["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("zion")]							= {["name"] = "Zion",							["price"] = 45500,		["category"] = "coupes",				["model"] = "zion",				["brand"] = "Übermacht",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("zion2")]							= {["name"] = "Zion Cabrio",					["price"] = 45500,		["category"] = "coupes",				["model"] = "zion2",			["brand"] = "Übermacht",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("ninef")]							= {["name"] = "9F",								["price"] = 135000,		["category"] = "sports",				["model"] = "ninef",			["brand"] = "Obey",						["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("ninef2")]							= {["name"] = "9F Cabrio",						["price"] = 135000,		["category"] = "sports",				["model"] = "ninef2",			["brand"] = "Obey",						["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("alpha")]							= {["name"] = "Alpha",							["price"] = 135000,		["category"] = "sports",				["model"] = "alpha",			["brand"] = "Albany",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("banshee")]							= {["name"] = "Banshee",						["price"] = 135000,		["category"] = "sports",				["model"] = "banshee",			["brand"] = "Bravado",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bestiagts")]						= {["name"] = "Bestia GTS",						["price"] = 135000,		["category"] = "sports",				["model"] = "bestiagts",		["brand"] = "Grotti",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("buffalo")]							= {["name"] = "Buffalo",						["price"] = 135000,		["category"] = "sports",				["model"] = "buffalo",			["brand"] = "Bravado",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("buffalo2")]						= {["name"] = "Buffalo S",						["price"] = 135000,		["category"] = "sports",				["model"] = "buffalo2",			["brand"] = "Bravado",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("carbonizzare")]					= {["name"] = "Carbonizzare",					["price"] = 135000,		["category"] = "sports",				["model"] = "carbonizzare",		["brand"] = "Grotti",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("comet2")]							= {["name"] = "Comet",							["price"] = 135000,		["category"] = "sports",				["model"] = "comet2",			["brand"] = "Pfister",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("coquette")]						= {["name"] = "Coquette",						["price"] = 135000,		["category"] = "sports",				["model"] = "coquette",			["brand"] = "Invetero",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("elegy2")]							= {["name"] = "Elegy RH8",						["price"] = 135000,		["category"] = "sports",				["model"] = "elegy2",			["brand"] = "Annis",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("feltzer2")]						= {["name"] = "Feltzer",						["price"] = 135000,		["category"] = "sports",				["model"] = "feltzer2",			["brand"] = "Benefactor",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("furoregt")]						= {["name"] = "Furore GT",						["price"] = 135000,		["category"] = "sports",				["model"] = "furoregt",			["brand"] = "Lampadati",				["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("fusilade")]						= {["name"] = "Fusilade",						["price"] = 135000,		["category"] = "sports",				["model"] = "fusilade",			["brand"] = "Schyster",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("jester")]							= {["name"] = "Jester",							["price"] = 135000,		["category"] = "sports",				["model"] = "jester",			["brand"] = "Dinka",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("khamelion")]						= {["name"] = "Khamelion",						["price"] = 135000,		["category"] = "sports",				["model"] = "khamelion",		["brand"] = "Hijak",					["hash"] = "",								["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("kuruma")]							= {["name"] = "Kuruma",							["price"] = 135000,		["category"] = "sports",				["model"] = "kuruma",			["brand"] = "Karin",					["hash"] = "-1372848492",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("lynx")]							= {["name"] = "Lynx",							["price"] = 135000,		["category"] = "sports",				["model"] = "lynx",				["brand"] = "Ocelot",					["hash"] = "482197771",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("mamba")]							= {["name"] = "Mamba",							["price"] = 135000,		["category"] = "sports",				["model"] = "mamba",			["brand"] = "Declasse",					["hash"] = "-1660945322",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("massacro")]						= {["name"] = "Massacro",						["price"] = 135000,		["category"] = "sports",				["model"] = "massacro",			["brand"] = "Dewbauchee",				["hash"] = "-142942670",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rapidgt")]							= {["name"] = "Rapid GT", 						["price"] = 135000,		["category"] = "sports",				["model"] = "rapidgt",			["brand"] = "Dewbauchee",				["hash"] = "-1934452204",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rapidgt2")]						= {["name"] = "Rapid GT Convertible",			["price"] = 135000,		["category"] = "sports",				["model"] = "rapidgt2",			["brand"] = "Dewbauchee",				["hash"] = "1737773231",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("schafter3")]						= {["name"] = "Schafter V12",					["price"] = 135000,		["category"] = "sports",				["model"] = "schafter3",		["brand"] = "Benefactor",				["hash"] = "-1485523546",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("seven70")]							= {["name"] = "Seven-70",						["price"] = 135000,		["category"] = "sports",				["model"] = "seven70",			["brand"] = "Dewbauchee",				["hash"] = "-1757836725",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sultan")]							= {["name"] = "Sultan",							["price"] = 135000,		["category"] = "sports",				["model"] = "sultan",			["brand"] = "Karin",					["hash"] = "970598228",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("surano")]							= {["name"] = "Surano",							["price"] = 135000,		["category"] = "sports",				["model"] = "surano",			["brand"] = "Benefactor",				["hash"] = "384071873",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("verlierer2")]						= {["name"] = "Verlierer",						["price"] = 135000,		["category"] = "sports",				["model"] = "verlierer2",		["brand"] = "Bravado",					["hash"] = "1102544804",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("adder")]							= {["name"] = "Adder",							["price"] = 1000000,	["category"] = "super",					["model"] = "adder",			["brand"] = "Truffade",					["hash"] = "-1216765807",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("banshee2")]						= {["name"] = "Banshee 900R",					["price"] = 1000000,	["category"] = "super",					["model"] = "banshee2",			["brand"] = "Bravado",					["hash"] = "633712403",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bullet")]							= {["name"] = "Bullet",							["price"] = 1000000,	["category"] = "super",					["model"] = "bullet",			["brand"] = "Vapid",					["hash"] = "-1696146015",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("cheetah")]							= {["name"] = "Cheetah",						["price"] = 1000000,	["category"] = "super",					["model"] = "cheetah",			["brand"] = "Grotti",					["hash"] = "-1311154784",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("entityxf")]						= {["name"] = "Entity XF",						["price"] = 1000000,	["category"] = "super",					["model"] = "entityxf",			["brand"] = "Överflöd",					["hash"] = "-1291952903",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("fmj")]								= {["name"] = "FMJ",							["price"] = 1000000,	["category"] = "super",					["model"] = "fmj",				["brand"] = "Vapid",					["hash"] = "1426219628",					["trunkspace"] = 100000,	["trunkslots"] = 80, 	["shop"] = "pdm"},
	[GetHashKey("infernus")]						= {["name"] = "Infernus",						["price"] = 1000000,	["category"] = "super",					["model"] = "infernus",			["brand"] = "Pegassi",					["hash"] = "418536135",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("pfister811")]						= {["name"] = "811",							["price"] = 1000000,	["category"] = "super",					["model"] = "pfister811",		["brand"] = "Pfister",					["hash"] = "-1829802492",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("reaper")]							= {["name"] = "Reaper",							["price"] = 1000000,	["category"] = "super",					["model"] = "reaper",			["brand"] = "Pegassi",					["hash"] = "234062309",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("t20")]								= {["name"] = "T20",							["price"] = 1000000,	["category"] = "super",					["model"] = "t20",				["brand"] = "Progen",					["hash"] = "1663218586",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("turismor")]						= {["name"] = "Turismo R",						["price"] = 1000000,	["category"] = "super",					["model"] = "turismor",			["brand"] = "Grotti",					["hash"] = "408192225",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("vacca")]							= {["name"] = "Vacca",							["price"] = 1000000,	["category"] = "super",					["model"] = "vacca",			["brand"] = "Pegassi",					["hash"] = "338562499",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("voltic")]							= {["name"] = "Voltic",							["price"] = 1000000,	["category"] = "super",					["model"] = "voltic",			["brand"] = "Coil",						["hash"] = "-1622444098",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("prototipo")]						= {["name"] = "X80 Proto",						["price"] = 1000000,	["category"] = "super",					["model"] = "prototipo",		["brand"] = "Grotti",					["hash"] = "2123327359",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("zentorno")]						= {["name"] = "Zentorno",						["price"] = 1000000,	["category"] = "super",					["model"] = "zentorno",			["brand"] = "Pegassi",					["hash"] = "-1403128555",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("avarus")]							= {["name"] = "Avarus",							["price"] = 6500,		["category"] = "motorcycles",			["model"] = "avarus",			["brand"] = "LCC",						["hash"] = "-2115793025",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bagger")]							= {["name"] = "Bagger",							["price"] = 6500,		["category"] = "motorcycles",			["model"] = "bagger",			["brand"] = "WMC",						["hash"] = "-2140431165",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sovereign")]						= {["name"] = "Sovereign",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "bagger",			["brand"] = "WMC",						["hash"] = "743478836",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bati")]							= {["name"] = "Bati 801",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "bati",				["brand"] = "Pegassi",					["hash"] = "-114291515",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("carbonrs")]						= {["name"] = "Carbon RS",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "carbonrs",			["brand"] = "Nagasaki",					["hash"] = "11251904",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("chimera")]							= {["name"] = "Chimera",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "chimera",			["brand"] = "Nagasaki",					["hash"] = "6774487",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("daemon")]							= {["name"] = "Daemon",							["price"] = 6500,		["category"] = "motorcycles",			["model"] = "daemon",			["brand"] = "WMC",						["hash"] = "2006142190",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("defiler")]							= {["name"] = "Defiler",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "defiler",			["brand"] = "Shitzu",					["hash"] = "822018448", 					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("esskey")]							= {["name"] = "Esskey",							["price"] = 6500,		["category"] = "motorcycles",			["model"] = "esskey",			["brand"] = "Pegassi",					["hash"] = "2035069708",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("faggio")]							= {["name"] = "Faggio Sport",					["price"] = 6500,		["category"] = "motorcycles",			["model"] = "faggio",			["brand"] = "Pegassi",					["hash"] = "55628203",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("hakuchou")]						= {["name"] = "Hakuchou",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "hakuchou",			["brand"] = "Shitzu",					["hash"] = "1265391242",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("hexer")]							= {["name"] = "Hexer",							["price"] = 6500,		["category"] = "motorcycles",			["model"] = "hexer",			["brand"] = "LCC",						["hash"] = "301427732",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("nemesis")]							= {["name"] = "Nemesis",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "nemesis",			["brand"] = "Principe",					["hash"] = "-634879114",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("nightblade")]						= {["name"] = "Nightblade",						["price"] = 6500,		["category"] = "motorcycles",			["model"] = "nightblade",		["brand"] = "WMC",						["hash"] = "-1606187161",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("pcj")]								= {["name"] = "PCJ-600",						["price"] = 13500,		["category"] = "motorcycles",			["model"] = "pcj",				["brand"] = "Shitzu",					["hash"] = "-909201658",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("ruffian")]							= {["name"] = "Ruffian",						["price"] = 13500,		["category"] = "motorcycles",			["model"] = "ruffian",			["brand"] = "Pegassi",					["hash"] = "-893578776",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("thrust")]							= {["name"] = "Thrust",							["price"] = 16000,		["category"] = "motorcycles",			["model"] = "thrust",			["brand"] = "Dinka",					["hash"] = "1836027715",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("visione")]							= {["name"] = "Visione",						["price"] = 1750000,	["category"] = "sports",				["model"] = "visione",			["brand"] = "Grotti",					["hash"] = "-998177792",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("gt500")]							= {["name"] = "GT500",							["price"] = 255000,		["category"] = "sportsclassics",		["model"] = "gt500",			["brand"] = "Grotti",					["hash"] = "-2079788230",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("cyclone")]							= {["name"] = "Cyclone",						["price"] = 1200000,	["category"] = "super",					["model"] = "cyclone", 			["brand"] = "Coil",						["hash"] = "1392481335",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("comet5")]							= {["name"] = "Comet SR",						["price"] = 252000,		["category"] = "sports",				["model"] = "comet5",			["brand"] = "Pfister",					["hash"] = "661493923",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rapidgt3")]						= {["name"] = "Rapid GT",						["price"] = 445000,		["category"] = "sportsclassics",		["model"] = "rapidgt3",			["brand"] = "Dewbauchee",				["hash"] = "2049897956",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("streiter")]						= {["name"] = "Streiter",						["price"] = 98000,		["category"] = "sports",				["model"] = "streiter",			["brand"] = "Benefactor",				["hash"] = "1741861769",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("pariah")]							= {["name"] = "Pariah",							["price"] = 395000,		["category"] = "sports",				["model"] = "pariah",			["brand"] = "Ocelot",					["hash"] = "867799010",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("raiden")]							= {["name"] = "Raiden",							["price"] = 150000,		["category"] = "sports",				["model"] = "raiden",			["brand"] = "Coil",						["hash"] = "-1529242755",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("hustler")]							= {["name"] = "Hustler",						["price"] = 75500,		["category"] = "muscle",				["model"] = "hustler",			["brand"] = "Vapid",					["hash"] = "600450546",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("yosemite")]						= {["name"] = "Yosemite",						["price"] = 19500,		["category"] = "muscle",				["model"] = "yosemite",			["brand"] = "Declasse",					["hash"] = "1871995513",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sultanrs")]						= {["name"] = "Sultan RS",						["price"] = 76500,		["category"] = "sports",				["model"] = "sultanrs",			["brand"] = "Karin",					["hash"] = "-295689028",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sc1")]								= {["name"] = "SC1",							["price"] = 750000,		["category"] = "super",					["model"] = "sc1",				["brand"] = "Übermacht",				["hash"] = "1352136073",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("z190")]							= {["name"] = "190Z",							["price"] = 330000,		["category"] = "sportsclassics",		["model"] = "z190",				["brand"] = "Karin",					["hash"] = "838982985",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("neon")]							= {["name"] = "Neon",							["price"] = 185000,		["category"] = "sports",				["model"] = "neon",				["brand"] = "Pfister",					["hash"] = "-1848994066",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("autarch")]							= {["name"] = "Autarch",						["price"] = 1800000,	["category"] = "super",					["model"] = "autarch",			["brand"] = "Överflöd",					["hash"] = "-313185164",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("blista2")]							= {["name"] = "Blista Compact",					["price"] = 12500,		["category"] = "compacts",				["model"] = "blista2",			["brand"] = "Dinka",					["hash"] = "1039032026",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("issi3")]							= {["name"] = "Issi Classic",					["price"] = 10000,		["category"] = "compacts",				["model"] = "issi3",			["brand"] = "Weeny",					["hash"] = "931280609",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dilettante")]						= {["name"] = "Dilettante",						["price"] = 13000,		["category"] = "compacts",				["model"] = "dilettante",		["brand"] = "Karin",					["hash"] = "-1130810103",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("rhapsody")]						= {["name"] = "Rhapsody",						["price"] = 13000,		["category"] = "compacts",				["model"] = "rhapsody",			["brand"] = "Declasse",					["hash"] = "841808271",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("stalion")]							= {["name"] = "Stallion",						["price"] = 23500,		["category"] = "muscle",				["model"] = "stalion",			["brand"] = "Declasse",					["hash"] = "1923400478",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("infernus2")]						= {["name"] = "Infernus Classic",				["price"] = 200000,		["category"] = "sportsclassics",		["model"] = "infernus2",		["brand"] = "Pegassi",					["hash"] = "-1405937764",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("ruston")]							= {["name"] = "Ruston",							["price"] = 165000, 	["category"] = "sports",				["model"] = "ruston",			["brand"] = "Hijak",					["hash"] = "719660200",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("specter")]							= {["name"] = "Specter",						["price"] = 155000,		["category"] = "sports",				["model"] = "specter",			["brand"] = "Dewbauchee",				["hash"] = "1886268224",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("cheetah2")]						= {["name"] = "Cheetah Classic",				["price"] = 155000,		["category"] = "sports",				["model"] = "cheetah2",			["brand"] = "Grotti",					["hash"] = "223240013",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("torero")]							= {["name"] = "Torero",							["price"] = 285500,		["category"] = "sportsclassics",		["model"] = "torero",			["brand"] = "Pegassi",					["hash"] = "1504306544",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("gp1")]								= {["name"] = "GP1",							["price"] = 1400000,	["category"] = "super",					["model"] = "gp1",				["brand"] = "Progen",					["hash"] = "1234311532",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("penetrator")]						= {["name"] = "Penetrator",						["price"] = 1400000,	["category"] = "super",					["model"] = "penetrator",		["brand"] = "Ocelot",					["hash"] = "-1758137366",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("tempesta")]						= {["name"] = "Tempesta",						["price"] = 400000,		["category"] = "super",					["model"] = "tempesta",			["brand"] = "Pegassi",					["hash"] = "272929391",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("vagner")]							= {["name"] = "Vagner",							["price"] = 1400000,	["category"] = "super",					["model"] = "vagner",			["brand"] = "Dewbauchee",				["hash"] = "1939284556",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("italigtb")]						= {["name"] = "Itali GTB",						["price"] = 1400000,	["category"] = "super",					["model"] = "italigtb",			["brand"] = "Progen",					["hash"] = "-482719877",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("xa21")]							= {["name"] = "XA-21",							["price"] = 1400000,	["category"] = "super",					["model"] = "xa21",				["brand"] = "Ocelot",					["hash"] = "917809321",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("jester3")]							= {["name"] = "Jester Classic",					["price"] = 155000,		["category"] = "sports",				["model"] = "jester3",			["brand"] = "Dinka",					["hash"] = "-214906006",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("elegy")]							= {["name"] = "Elegy Retro Custom",				["price"] = 155000,		["category"] = "sports",				["model"] = "elegy",			["brand"] = "Annis",					["hash"] = "196747873 ",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("dominator3")]						= {["name"] = "Dominator GTX",					["price"] = 87500,		["category"] = "muscle",				["model"] = "dominator3",		["brand"] = "Vapid",					["hash"] = "-986944621",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("tezeract")]						= {["name"] = "Tezeract",						["price"] = 1400000,	["category"] = "super",					["model"] = "tezeract",			["brand"] = "Pegassi",					["hash"] = "1031562256",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("entity2")]							= {["name"] = "Entity XXR",						["price"] = 1400000,	["category"] = "super",					["model"] = "entity2",			["brand"] = "Överflöd",					["hash"] = "-2120700196",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("nero")]							= {["name"] = "Nero",							["price"] = 1400000,	["category"] = "super",					["model"] = "nero",				["brand"] = "Truffade",					["hash"] = "1034187331",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("comet3")]							= {["name"] = "Comet Retro Custom",				["price"] = 155000,		["category"] = "sports",				["model"] = "comet3",			["brand"] = "Pfister",					["hash"] = "-2022483795",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("taipan")]							= {["name"] = "Taipan", 						["price"] = 1400000,	["category"] = "super",					["model"] = "taipan",			["brand"] = "Cheval",					["hash"] = "-1134706562",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("tyrant")]							= {["name"] = "Tyrant",							["price"] = 1400000,	["category"] = "super",					["model"] = "tyrant",			["brand"] = "Överflöd",					["hash"] = "-376434238",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("osiris")]							= {["name"] = "Osiris",							["price"] = 1400000,	["category"] = "super",					["model"] = "osiris",			["brand"] = "Pegassi",					["hash"] = "1987142870",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("flashgt")]							= {["name"] = "Flash GT",						["price"] = 178000,		["category"] = "sports",				["model"] = "flashgt",			["brand"] = "Vapid",					["hash"] = "-1259134696",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("specter2")]						= {["name"] = "Specter Custom",					["price"] = 178000,		["category"] = "sports",				["model"] = "specter2",			["brand"] = "Dewbauchee",				["hash"] = "1074745671",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("surge")]							= {["name"] = "Surge",							["price"] = 28500,		["category"] = "sedans",				["model"] = "surge",			["brand"] = "Cheval",					["hash"] = "-1894894188",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("ellie")]							= {["name"] = "Ellie",							["price"] = 50000,		["category"] = "muscle",				["model"] = "ellie",			["brand"] = "Vapid",					["hash"] = "-1267543371",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("bjxl")]							= {["name"] = "BeeJay XL",						["price"] = 47000,		["category"] = "suvs",					["model"] = "bjxl",				["brand"] = "Karin",					["hash"] = "850565707",						["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("faggio3")]							= {["name"] = "Faggio Mod",						["price"] = 900,		["category"] = "motorcycles",			["model"] = "faggio3",			["brand"] = "Pegassi",					["hash"] = "-1289178744",					["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("schwarzer2")]						= {["name"] = "Schwarzer Custom",				["price"] = 315600,		["category"] = "tuner",					["model"] = "schwarzer2",		["brand"] = "Benefactor",				["hash"] = GetHashKey("schwarzer2"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "custom"},
	[GetHashKey("sgrx")]							= {["name"] = "SGRX",							["price"] = 315600,		["category"] = "tuner",					["model"] = "sgrx",				["brand"] = "Maibatsu",					["hash"] = GetHashKey("sgrx"),				["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("sentinelc1")]						= {["name"] = "Sentinel Custom XR",				["price"] = 315600,		["category"] = "tuner",					["model"] = "sentinelc1",		["brand"] = "Ubermach",					["hash"] = GetHashKey("sentinelc1"),		["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("zr3806str")]						= {["name"] = "ZR380 6STR",						["price"] = 315600,		["category"] = "tuner",					["model"] = "zr3806str",		["brand"] = "Annis",					["hash"] = GetHashKey("zr3806str"),			["trunkspace"] = 100000,	["trunkslots"] = 80,	["shop"] = "pdm"},
	[GetHashKey("omnis")]							= {["name"] = "omnis",							["price"] = 120000,		["category"] = "sports",				["model"] = "omnis",			["brand"] = "Annis",					["hash"] = GetHashKey("omnis"),				["trunkspace"] = 40000,		["trunkslots"] = 40,	["shop"] = "pdm"},
}

QBShared.Gangs = {
	["none"] = {
		label = "No Gang"
	},
	["ballas"] = {
		label = "Ballas"
	},
	["thefamily"] = {
		label = "The Family"
	},
	["vagos"] = {
		label = "Vagos"
	},
	["marabunta"] = {
		label = "marabunta"
	},
}

QBShared.Jobs = {
	["unemployed"] = { 
		label = "Työtön",
		bossmenu = vector3(451.95, -973.71, 30.69),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Koditon",
				payment = 0
			},
			['1'] = {
				name = "Työtön",
				payment = 5
			},
		},
	},
	["police"] = { 
		label = "Poliisi",
		bossmenu = vector3(451.95, -973.71, 30.69),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Cadet",
				payment = 7
			},
			['1'] = {
				name = "Trooper",
				payment = 8
			},
			['2'] = {
				name = "Senior Trooper",
				payment = 9
			},
			['3'] = {
				name = "Corporal",
				payment = 10
			},
			['4'] = {
				name = "Sergeant",
				payment = 11
			},
			['5'] = {
				name = "Lieutenant",
				isboss = true,
				payment = 12
			},
			['6'] = {
				name = "Captain",
				payment = 13
			},
			['7'] = {
				name = "Colonel",
				payment = 14
			},
			['8'] = {
				name = "Assistant Chief",
				isboss = true,
				payment = 15
			},
			['9'] = {
				name = "Chief",
				isboss = true,
				payment = 16
			},
		},
	},
	["doctor"] = { 
		label = "Sairaala",
		bossmenu = vector3(-1524.1, 843.64, 181.59),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Intern",
				payment = 7
			},
			['1'] = {
				name = "EMT",
				payment = 8
			},
			['2'] = {
				name = "Senior EMT",
				payment = 9
			},
			['3'] = {
				name = "Paramedic",
				payment = 10
			},
			['4'] = {
				name = "Doctor",
				payment = 11
			},
			['5'] = {
				name = "Lead Doctor",
				payment = 12
			},
			['6'] = {
				name = "Director of Medicine",
				payment = 13
			},
			['7'] = {
				name = "Director of Administration",
				payment = 14
			},
			['8'] = {
				name = "Assistant Dean",				
				isboss = true,
				payment = 15
			},
			['9'] = {
				name = "Dean of Medicine",
				isboss = true,
				payment = 16
			},
			
		},
	},
	["ambulance"] = { 
		label = "Terveyasema",
		bossmenu = vector3(-1524.1, 843.64, 181.59),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Intern",
				payment = 7
			},
			['1'] = {
				name = "Yoga Instructor",
				payment = 8
			},
			['2'] = {
				name = "Counselor",
				payment = 9
			},
			['3'] = {
				name = "Therapist",
				payment = 10
			},
			['4'] = {
				name = "Psychiatrist",
				payment = 11
			},
			['5'] = {
				name = "Head of Psychiatry",
				payment = 12
			},
			['6'] = {
				name = "Facility Warden",
				payment = 13
			},
			['7'] = {
				name = "Assistant Dean of Parsons'",
				isboss = true,
				payment = 14
			},
			['8'] = {
				name = "Dean of Parsons'",
				isboss = true,
				payment = 15
			},
			
		},
	},
	["trucker"] = { 
		label = "DHL",
		bossmenu = vector3(474.64, -1308.56, 29.21),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Tow Truck Driver",
				payment = 7
			},
			['1'] = {
				name = "Repo Driver",
				payment = 8
			},
			['2'] = {
				name = "Hayes Auto Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Hayes Auto Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["taxi"] = { 
		label = "Taksi",
		bossmenu = vector3(905.69, -150.45, 74.17),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Taxi Driver",
				payment = 7
			},
			['1'] = {
				name = "Tow Operator",
				payment = 8
			},
			['2'] = {
				name = "Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Downtown Taxi Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["taksike"] = { 
		label = "Taksi Keskusta",
		bossmenu = vector3(905.69, -150.45, 74.17),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Taxi Driver",
				payment = 7
			},
			['1'] = {
				name = "Tow Operator",
				payment = 8
			},
			['2'] = {
				name = "Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Downtown Taxi Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["taksike"] = { 
		label = "Taksi Keskimaa",
		bossmenu = vector3(905.69, -150.45, 74.17),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Taxi Driver",
				payment = 7
			},
			['1'] = {
				name = "Tow Operator",
				payment = 8
			},
			['2'] = {
				name = "Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Downtown Taxi Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["taksipo"] = { 
		label = "Taksi Pohjoinen",
		bossmenu = vector3(905.69, -150.45, 74.17),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Taxi Driver",
				payment = 7
			},
			['1'] = {
				name = "Tow Operator",
				payment = 8
			},
			['2'] = {
				name = "Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Downtown Taxi Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["lentotaksi"] = { 
		label = "Lentotaksi Oy",
		bossmenu = vector3(-1630.16, -3163.45, 13.99),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Harjoittelija",
				payment = 7
			},
			['1'] = {
				name = "Lentäjä",
				payment = 8
			},
			['2'] = {
				name = "Kokenut lentäjä",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Renki",
				isboss = true,
				payment = 10
			},
		},
	},
	["realestate"] = {
		label = "Kiinteistövälittäjä",
		bossmenu = vector3(-814.33, -1357.08, 5.23),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Secretary",
				payment = 7
			},
			['1'] = {
				name = "Real Estate Agent",
				payment = 8
			},
			['2'] = {
				name = "Dynasty 8 Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Dynasty 8 Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["tow"] = { 
		label = "Hinaus",
		bossmenu = vector3(474.64, -1308.56, 29.21),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Tow Truck Driver",
				payment = 7
			},
			['1'] = {
				name = "Repo Driver",
				payment = 8
			},
			['2'] = {
				name = "Hayes Auto Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Hayes Auto Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["reporter"] = { 
		label = "Aamupulu",
		bossmenu = vector3(-580.81, -936.58, 23.889),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Camera Man",
				payment = 7
			},
			['1'] = {
				name = "Reporter",
				payment = 8
			},
			['2'] = {
				name = "News Director",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Weazle News Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["judge"] = { 
		label = "Oikeustalo",
		bossmenu = vector3(224.44, -437.29, 47.96),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Judge Canditate",
				payment = 7
			},
			['1'] = {
				name = "Judge",
				payment = 8
			},
			['2'] = {
				name = "Senior Judge",
				payment = 9
			},
			['3'] = {
				name = "Head Judge",
				isboss = true,
				payment = 10
			},
		},
	},
	["lawyer"] = { 
		label = "Lakitoimisto",
		bossmenu = vector3(80.72, -802.25, 243.4),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Advocate",
				payment = 7
			},
			['1'] = {
				name = "Defense Attorney",
				payment = 8
			},
			['2'] = {
				name = "State Prosecuter",
				payment = 9
			},
			['3'] = {
				name = "Attorney General",
				isboss = true,
				payment = 10
			},
		},
	},
	["autokauppias"] = { 
		label = "Luxury Auto Dealership",
		bossmenu = vector3(-790.01, -214.3, 37.08),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Sales Team Member",
				payment = 7
			},
			['1'] = {
				name = "Lead Sales Team Member",
				payment = 8
			},
			['2'] = {
				name = "Dealership Manager",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Toimitusjohtaja",
				isboss = true,
				payment = 10
			},
		},
	},
	["mechanic"] = { 
		label = "Mechanics Shop",
		bossmenu = vector3(-207.39, -1340.68, 34.89),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Mechanic",
				payment = 7
			},
			['1'] = {
				name = "Tow Operator",
				payment = 8
			},
			['2'] = {
				name = "Senior Mechanic",
				payment = 9
			},
			['3'] = {
				name = "Mechanic Shop Manager",
				isboss = true,
				payment = 10
			},
			['4'] = {
				name = "Mechanic Shop Owner",
				isboss = true,
				payment = 11
			},
		},
	},
	["topsecret"] = { 
		label = "Mechanics Shop",
		bossmenu = vector3(-207.39, -1340.68, 34.89),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Mechanic",
				payment = 7
			},
			['1'] = {
				name = "Tow Operator",
				payment = 8
			},
			['2'] = {
				name = "Senior Mechanic",
				payment = 9
			},
			['3'] = {
				name = "Mechanic Shop Manager",
				isboss = true,
				payment = 10
			},
			['4'] = {
				name = "Mechanic Shop Owner",
				isboss = true,
				payment = 11
			},
		},
	},
	["garbage"] = { 
		label = "Los Santos Sanitation Department",
		bossmenu = vector3(-322.25, -1545.84, 31.02),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Recruit",
				payment = 7
			},
			['1'] = {
				name = "Garbage Collector",
				payment = 8
			},
			['2'] = {
				name = "Sanitation Supervisor",
				isboss = true,
				payment = 9
			},
			['3'] = {
				name = "Sanitation Owner",
				isboss = true,
				payment = 10
			},
		},
	},
	["hotdog"] = { 
		label = "Chuauha HotDogs",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Hotdog Vendor",
				payment = 7
			},
			['1'] = {
				name = "Head Chef",
				payment = 8
			},
			['2'] = {
				name = "Chuauha Hotdog Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["vanilla"] = { 
		label = "Vanilla Unicorn",
		bossmenu = vector3(94.54, -1293.14, 29.27),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Bouncer",
				payment = 7
			},
			['1'] = {
				name = "Bartender",
				payment = 8
			},
			['2'] = {
				name = "Stripper",
				payment = 9
			},
			['3'] = {
				name = "Vanilla Unicorn Manager",
				isboss = true,
				payment = 10
			},
			['4'] = {
				name = "Vanilla Unicorn Owner",
				isboss = true,
				payment = 11
			},
		},
	},
	["coffeeshop"] = { 
		label = "Coffee Shop",
		bossmenu = vector3(-634.71, 228.1, 81.88),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Employee",
				payment = 7
			},
			['1'] = {
				name = "Shift Supervisor",
				payment = 8
			},
			['2'] = {
				name = "Reiska",
				isboss = true,
				payment = 9
			},
		},
	},
	["pig"] = { 
		label = "O'Neil Pig Farm",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Pig Herder",
				payment = 7
			},
			['1'] = {
				name = "Pig Butcher",
				payment = 8
			},
			['2'] = {
				name = "O'Neil Pig Farm Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["fruit"] = { 
		label = "Paleto Fruit Orchard",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Fruit Picker",
				payment = 7
			},
			['1'] = {
				name = "Orange Merchant",
				payment = 8
			},
			['2'] = {
				name = "Fruit Orchard Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["chicken"] = { 
		label = "O'Neil Chicken Ranch",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Chicken Plucker",
				payment = 7
			},
			['1'] = {
				name = "Chicken Packer",
				payment = 8
			},
			['2'] = {
				name = "O'Neil Chicken Ranch Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["recycling"] = { 
		label = "Paleto Recycling Center",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Recycling Collector",
				payment = 7
			},
			['1'] = {
				name = "Warehouse Manager",
				payment = 8
			},
			['2'] = {
				name = "Paleto Recycling Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["miner"] = { 
		label = "Miners Quarry",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Quarry Hauler",
				payment = 7
			},
			['1'] = {
				name = "Mining Merchant",
				payment = 8
			},
			['2'] = {
				name = "Quarry Land Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["forklift"] = { 
		label = "Trukki",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Forklift Driver",
				payment = 7
			},
			['1'] = {
				name = "Warehouse Manager",
				payment = 8
			},
			['2'] = {
				name = "Warehouse Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["fisherman"] = { 
		label = "Kalatukku",
		bossmenu = vector3(41.5, -1009.68, 29.49),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Fisherman",
				payment = 7
			},
			['1'] = {
				name = "La Spada Manager",
				payment = 8
			},
			['2'] = {
				name = "La Spada Owner",
				isboss = true,
				payment = 9
			},
		},
	},
	["tequilala"] = { 
		label = "Baari Tequilala",
		bossmenu = vector3(-572.98, 293.11, 79.18),
		defaultDuty = true,
		grades = {
			['0'] = {
				name = "Bouncer",
				payment = 7
			},
			['1'] = {
				name = "Bartender",
				payment = 8
			},
			['2'] = {
				name = "Stripper",
				payment = 9
			},
			['3'] = {
				name = "Tequilala Manager",
				isboss = true,
				payment = 10
			},
			['4'] = {
				name = "Tequilala Owner",
				isboss = true,
				payment = 11
			},
		},
	},
}

QBShared.StarterItems = {
    ["phone"] = {amount = 1, item = "phone"},
    ["id_card"] = {amount = 1, item = "id_card"},
    --["driver_license"] = {amount = 1, item = "driver_license"},
}