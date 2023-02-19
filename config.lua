Config = {}

Config.Debug = true

-- settings
Config.LandTax = 50
Config.SellBack = 0.8 -- example: 0.5 = 50% of the buy price / 0.8 = 80% of the buy price

Config.Blip = {
    blipName = 'Estate Agent', -- Config.Blip.blipName
    blipSprite = 'blip_proc_home', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

-- prompt locations
Config.EstateAgents = {
    {	--valentine
		name = 'Estate Agent', 
		prompt = 'valestateagent',
		coords = vector3(-250.8893, 743.20239, 118.08129),
		location = 'valentine',
		showblip = true
	},
}

Config.Houses = {
    {	-- house1
		name = 'House1', 
		blipcoords = vector3(215.80004882813, 988.06512451172, 189.9015045166),
		showblip = true
	},
    {	-- house2
		name = 'House2', 
		blipcoords = vector3(-615.93969726563, -27.086599349976, 84.997604370117),
		showblip = true
	},
}

Config.HouseDoors = {
	---------------------------------------------------------------------------
    {
        houseid = 'house1',
        name = 'Door',
        doorid = 3598523785,
        prompt = 'door1',
        doorcoords = vector3(215.80004882813, 988.06512451172, 189.9015045166),
    },
    {
        houseid = 'house1',
        name = 'Door',
        doorid = 2031215067,
        prompt = 'door2',
        doorcoords = vector3(222.8265838623, 990.53399658203, 189.9015045166),
    },
	---------------------------------------------------------------------------
    {
        houseid = 'house2',
        name = 'Door',
        doorid = 1189146288,
        prompt = 'door3',
        doorcoords = vector3(-615.93969726563, -27.086599349976, 84.997604370117),
    },
    {
        houseid = 'house2',
        name = 'Door',
        doorid = 906448125,
        prompt = 'door4',
        doorcoords = vector3(-608.73846435547, -26.612947463989, 84.997634887695),
    },
	---------------------------------------------------------------------------
}
