Config = {}
Config.RequireSteam     = true
Config.PriorityOnly     = false
Config.ConnectTimeOut   = 600
Config.QueueTimeOut     = 90
Config.EnableGrace      = false
Config.GracePower       = 5
Config.GraceTime        = 480
Config.JoinDelay        = 30000
Config.ShowTemp         = false

Config.Priority = {
    --["STEAM_0:1:0000####"] = 1,
    --["steam:110000######"] = 25,
    --["ip:127.0.0.0"] = 85
}

Config.Language = {
    joining         = "Käsitellään tietoja..",
    connecting      = "Tarkistetaan pari juttua..",
    idrr            = "Emme tunnistaneet sinua, tarkista viisumisi (Steam)",
    err             = "Emme tunnistaneet sinua, tarkista viisumisi (Steam)",
    pos             = "Olet sijalla %d/%d jonossa.",
    connectingerr   = "Emme tunnistaneet sinua, tarkista viisumisi (Steam)",
    timedout        = "Emme tunnistaneet sinua, tarkista viisumisi (Steam)",
    wlonly          = "Sinulla ei ole voimmassa olevaa viisumia..",
    steam           = "Emme tunnistaneet sinua, tarkista viisumisi (Steam)"
}