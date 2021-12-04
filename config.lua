QBConfig                        = {}
QBConfig.Money                  = {}
QBConfig.Player                 = {}
QBConfig.Server                 = {}
QBConfig.Server.PermissionList  = {}
QBConfig.MaxPlayers             = GetConvarInt('sv_maxclients', 1024)
QBConfig.IdentifierType         = "steam"
QBConfig.DefaultSpawn           = {x=-1035.71,y=-2731.87,z=12.86,a=0.0}
QBConfig.Money.MoneyTypes       = {['cash'] = 0, ['bank'] = 490, ['crypto'] = 0}
QBConfig.Money.DontAllowMinus   = {'cash', 'crypto', 'bank'}
QBConfig.Player.MaxWeight       = 40000
QBConfig.Player.MaxInvSlots     = 18
QBConfig.Player.Bloodtypes      = {"A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"}
QBConfig.Server.closed          = false
QBConfig.Server.closedReason    = "Kaupungissa on myrskyvaroitus.."
QBConfig.Server.uptime          = 0
QBConfig.Server.whitelist       = false
QBConfig.Server.discord         = "Discord.io/RevohkaRP"
