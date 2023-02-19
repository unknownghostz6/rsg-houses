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
    {    --valentine
        name = 'Estate Agent', 
        prompt = 'valestateagent',
        coords = vector3(-250.8893, 743.20239, 118.08129),
        location = 'valentine',
        showblip = true
    },
}

Config.Houses = {
    {    -- house1
        name = 'House1', 
        blipcoords = vector3(215.80004882813, 988.06512451172, 189.9015045166),
        showblip = true
    },
    {    -- house2
        name = 'House2', 
        blipcoords = vector3(-615.93969726563, -27.086599349976, 84.997604370117),
        showblip = true
    },
    {    -- house3
        name = 'House3', 
        blipcoords = vector3(1888.1700439453,297.95916748047,76.076202392578),
        showblip = true
    },
    {    -- house4
        name = 'House4', 
        blipcoords = vector3(1781.1064453125,-89.115615844727,55.815963745117),
        showblip = true
    },
}

Config.HouseDoors = {
    ---------------------------------------------------------------------------
    {
        houseid = 'house1',
        name = 'Door',
        doorid = 3598523785,
        doorcoords = vector3(215.80004882813, 988.06512451172, 189.9015045166),
    },
    {
        houseid = 'house1',
        name = 'Door',
        doorid = 2031215067,
        doorcoords = vector3(222.8265838623, 990.53399658203, 189.9015045166),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house2',
        name = 'Door',
        doorid = 1189146288,
        doorcoords = vector3(-615.93969726563, -27.086599349976, 84.997604370117),
    },
    {
        houseid = 'house2',
        name = 'Door',
        doorid = 906448125,
        doorcoords = vector3(-608.73846435547, -26.612947463989, 84.997634887695),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house3',
        name = 'Door',
        doorid = 2821676992,
        doorcoords = vector3(1888.1700439453,297.95916748047,76.076202392578),
    },
    {
        houseid = 'house3',
        name = 'Door',
        doorid = 1510914117,
        doorcoords = vector3(1891.0832519531,302.62200927734,76.091575622559),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house4',
        name = 'Door',
        doorid = 3549587335,
        doorcoords = vector3(1781.1064453125,-89.115615844727,55.815963745117),
    },
    {
        houseid = 'house4',
        name = 'Door',
        doorid = 3000692149,
        doorcoords = vector3(1781.3618164063,-82.687698364258,55.798538208008),
    },
    {
        houseid = 'house4',
        name = 'Door',
        doorid = 1928053488,
        doorcoords = vector3(1792.0642089844,-83.22380065918,55.798538208008),
    },
    ---------------------------------------------------------------------------
}
