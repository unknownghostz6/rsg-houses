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
    {    -- house5
        name = 'House5', 
        blipcoords = vector3(1264.1951904297,-404.07095336914,96.595031738281),
        showblip = true
    },
    {    -- house6
        name = 'House6', 
        blipcoords = vector3(1627.2501220703,-366.25610351563,74.909873962402),
        showblip = true
    },
    {    -- house7
        name = 'House7', 
        blipcoords = vector3(-2368.841796875,-2390.40625,61.520217895508),
        showblip = true
    },
    {    -- house8
        name = 'House8', 
        blipcoords = vector3(1114.0626220703,493.74633789063,96.290939331055),
        showblip = true
    },
    {    -- house9
        name = 'House9', 
        blipcoords = vector3(-64.242599487305,-393.56112670898,71.248695373535),
        showblip = true
    },
    {    -- house10
        name = 'House10', 
        blipcoords = vector3(338.25341796875,-669.94842529297,41.821144104004),
        showblip = true
    },
    {    -- house11
        name = 'House11', 
        blipcoords = vector3(1111.4659423828,-1297.5782470703,65.41828918457),
        showblip = true
    },
    {    -- house12
        name = 'House12', 
        blipcoords = vector3(1365.4197998047,-872.88018798828,69.162147521973),
        showblip = true
    },
    {    -- house13
        name = 'House13', 
        blipcoords = vector3(2068.3598632813,-847.32141113281,42.350879669189),
        showblip = true
    },
    {    -- house14
        name = 'House14', 
        blipcoords = vector3(2253.8466796875,-797.30505371094,43.133113861084),
        showblip = true
    },
    {    -- house15
        name = 'House15', 
        blipcoords = vector3(2370.9301757813,-857.48553466797,42.043087005615),
        showblip = true
    },
    {    -- house16
        name = 'House16', 
        blipcoords = vector3(1709.3989257813,-1003.7617797852,42.480758666992),
        showblip = true
    },
    {    -- house17
        name = 'House17', 
        blipcoords = vector3(2628.2214355469,1694.3289794922,114.66619110107),
        showblip = true
    },
    {    -- house18
        name = 'House18', 
        blipcoords = vector3(2993.4243164063,2188.4375,165.73570251465),
        showblip = true
    },
    {    -- house19
        name = 'House19', 
        blipcoords = vector3(2473.8527832031,1996.4063720703,167.22595214844),
        showblip = true
    },
    {    -- house20
        name = 'House20', 
        blipcoords = vector3(-422.6643371582,1733.5697021484,215.59002685547),
        showblip = true
    },
    {    -- house21
        name = 'House21', 
        blipcoords = vector3(900.34381103516,265.21841430664,115.04807281494),
        showblip = true
    },
    {    -- house22
        name = 'House22', 
        blipcoords = vector3(-1347.9483642578,2435.2036132813,307.49612426758),
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
    {
        houseid = 'house5',
        name = 'Door',
        doorid = 772977516,
        doorcoords = vector3(1264.1951904297,-404.07095336914,96.595031738281),
    },
    {
        houseid = 'house5',
        name = 'Door',
        doorid = 527767089,
        doorcoords = vector3(1266.837890625,-412.62899780273,96.595031738281),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house6',
        name = 'Door',
        doorid = 3468185317,
        doorcoords = vector3(1627.2501220703,-366.25610351563,74.909873962402),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house7',
        name = 'Door',
        doorid = 2779142555,
        doorcoords = vector3(-2368.841796875,-2390.40625,61.520217895508),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house8',
        name = 'Door',
        doorid = 1239033969,
        doorcoords = vector3(1114.0626220703,493.74633789063,96.290939331055),
    },
    {
        houseid = 'house8',
        name = 'Door',
        doorid = 1597362984,
        doorcoords = vector3(1116.3991699219,485.99212646484,96.306297302246),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house9',
        name = 'Door',
        doorid = 1299456376,
        doorcoords = vector3(-64.242599487305,-393.56112670898,71.248695373535),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house10',
        name = 'Door',
        doorid = 2933656395,
        doorcoords = vector3(338.25341796875,-669.94842529297,41.821144104004),
    },
    {
        houseid = 'house10',
        name = 'Door',
        doorid = 3238637478,
        doorcoords = vector3(347.24737548828,-666.05346679688,41.822761535645),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house11',
        name = 'Door',
        doorid = 3544613794,
        doorcoords = vector3(1111.4659423828,-1297.5782470703,65.41828918457),
    },
    {
        houseid = 'house11',
        name = 'Door',
        doorid = 1485561723,
        doorcoords = vector3(1114.6071777344,-1305.0754394531,65.41828918457),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house12',
        name = 'Door',
        doorid = 1511858696,
        doorcoords = vector3(1365.4197998047,-872.88018798828,69.162147521973),
    },
    {
        houseid = 'house12',
        name = 'Door',
        doorid = 1282705079,
        doorcoords = vector3(1376.0239257813,-873.24206542969,69.11506652832),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house13',
        name = 'Door',
        doorid = 2238665296,
        doorcoords = vector3(2068.3598632813,-847.32141113281,42.350879669189),
    },
    {
        houseid = 'house13',
        name = 'Door',
        doorid = 2080980868,
        doorcoords = vector3(2069.7229003906,-847.31500244141,42.350879669189),
    },
    {
        houseid = 'house13',
        name = 'Door',
        doorid = 2700347737,
        doorcoords = vector3(2064.388671875,-847.32141113281,42.350879669189),
    },
    {
        houseid = 'house13',
        name = 'Door',
        doorid = 2544301759,
        doorcoords = vector3(2065.7514648438,-847.31500244141,42.350879669189),
    },
    {
        houseid = 'house13',
        name = 'Door',
        doorid = 3720952508,
        doorcoords = vector3(2069.7219238281,-855.87939453125,42.350879669189),
    },
    {
        houseid = 'house13',
        name = 'Door',
        doorid = 350169319,
        doorcoords = vector3(2068.3588867188,-855.8857421875,42.350879669189),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house14',
        name = 'Door',
        doorid = 984852093,
        doorcoords = vector3(2253.8466796875,-797.30505371094,43.133113861084),
    },
    {
        houseid = 'house14',
        name = 'Door',
        doorid = 3473362722,
        doorcoords = vector3(2257.2678222656,-792.70416259766,43.167179107666),
    },
    {
        houseid = 'house14',
        name = 'Door',
        doorid = 686097120,
        doorcoords = vector3(2257.9418945313,-786.59753417969,43.184906005859),
    },
    {
        houseid = 'house14',
        name = 'Door',
        doorid = 3107660458,
        doorcoords = vector3(2254.5458984375,-781.7353515625,43.165546417236),
    },
    {
        houseid = 'house14',
        name = 'Door',
        doorid = 3419719645,
        doorcoords = vector3(2252.3625488281,-781.66015625,43.165538787842),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house15',
        name = 'Door',
        doorid = 3945582303,
        doorcoords = vector3(2370.9301757813,-857.48553466797,42.043087005615),
    },
    {
        houseid = 'house15',
        name = 'Door',
        doorid = 862008394,
        doorcoords = vector3(2370.8708496094,-864.43804931641,42.040088653564),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house16',
        name = 'Door',
        doorid = 1661737397,
        doorcoords = vector3(1709.3989257813,-1003.7617797852,42.480758666992),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house17',
        name = 'Door',
        doorid = 1574473390,
        doorcoords = vector3(2628.2214355469,1694.3289794922,114.66619110107),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house18',
        name = 'Door',
        doorid = 3731688048,
        doorcoords = vector3(2993.4243164063,2188.4375,165.73570251465),
    },
    {
        houseid = 'house18',
        name = 'Door',
        doorid = 344028824,
        doorcoords = vector3(2989.1081542969,2193.7414550781,165.73979187012),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house19',
        name = 'Door',
        doorid = 2652873387,
        doorcoords = vector3(2473.8527832031,1996.4063720703,167.22595214844),
    },
    {
        houseid = 'house19',
        name = 'Door',
        doorid = 2061942857,
        doorcoords = vector3(2472.6179199219,2001.7778320313,167.22595214844),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house20',
        name = 'Door',
        doorid = 3702071668,
        doorcoords = vector3(-422.6643371582,1733.5697021484,215.59002685547),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house21',
        name = 'Door',
        doorid = 1934463007,
        doorcoords = vector3(900.34381103516,265.21841430664,115.04807281494),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house22',
        name = 'Door',
        doorid = 2183007198,
        doorcoords = vector3(-1347.9483642578,2435.2036132813,307.49612426758),
    },
    {
        houseid = 'house22',
        name = 'Door',
        doorid = 4288310487,
        doorcoords = vector3(-1348.2998046875,2447.0854492188,307.48056030273),
    },
    ---------------------------------------------------------------------------
}
