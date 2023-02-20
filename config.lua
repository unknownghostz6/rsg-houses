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
    {    -- house23
        name = 'House23', 
        blipcoords = vector3(-556.41680908203,2698.8635253906,319.38018798828),
        showblip = true
    },
    {    -- house24
        name = 'House24', 
        blipcoords = vector3(-1019.1105957031,1688.2989501953,243.27978515625),
        showblip = true
    },
    {    -- house25
        name = 'House25', 
        blipcoords = vector3(-1815.1489257813,654.96380615234,130.88250732422),
        showblip = true
    },
    {    -- house26
        name = 'House26', 
        blipcoords = vector3(-2182.5109863281,716.46356201172,121.62875366211),
        showblip = true
    },
    {    -- house27
        name = 'House27', 
        blipcoords = vector3(-2575.826171875,-1379.3582763672,148.27227783203),
        showblip = true
    },
    {    -- house28
        name = 'House28', 
        blipcoords = vector3(-2374.3642578125,-1592.6021728516,153.29959106445),
        showblip = true
    },
    {    -- house29
        name = 'House29', 
        blipcoords = vector3(-1410.5717773438,-2674.2229003906,41.185203552246),
        showblip = true
    },
    {    -- house30
        name = 'House30', 
        blipcoords = vector3(-3958.3901367188,-2129.3940429688,-5.235463142395),
        showblip = true
    },
    {    -- house31
        name = 'House31', 
        blipcoords = vector3(-4366.0122070313,-2416.3056640625,19.423376083374),
        showblip = true
    },
    {    -- house32
        name = 'House32', 
        blipcoords = vector3(-5552.146484375,-2401.5205078125,-9.7140893936157),
        showblip = true
    },
    {    -- house33
        name = 'House33', 
        blipcoords = vector3(-3552.3842773438,-3012.0998535156,10.820337295532),
        showblip = true
    },
    {    -- house34
        name = 'House34', 
        blipcoords = vector3(-1959.1854248047,2160.2043457031,326.55380249023),
        showblip = true
    },
    {    -- house35
        name = 'House35', 
        blipcoords = vector3(-1494.4030761719,1246.7662353516,313.5432434082),
        showblip = true
    },
    {    -- house36
        name = 'House36', 
        blipcoords = vector3(3024.1213378906,1777.0731201172,83.169136047363),
        showblip = true
    },
    {    -- house37
        name = 'House37', 
        blipcoords = vector3(1981.9653320313,1195.0833740234,170.41778564453),
        showblip = true
    },
    {    -- house38
        name = 'House38', 
        blipcoords = vector3(2716.8154296875,708.16693115234,78.605178833008),
        showblip = true
    },
    {    -- house39
        name = 'House39', 
        blipcoords = vector3(2824.4970703125,270.89910888672,47.120807647705),
        showblip = true
    },
    {    -- house40
        name = 'House40', 
        blipcoords = vector3(1387.3020019531,-2077.4401855469,51.581089019775),
        showblip = true
    },
    {    -- house41
        name = 'House41', 
        blipcoords = vector3(1385.0637207031,-2085.1806640625,51.583812713623),
        showblip = true
    },
    {    -- house42
        name = 'House42', 
        blipcoords = vector3(1697.4683837891,1508.2376708984,146.8824005127),
        showblip = true
    },
    {    -- house43
        name = 'House43', 
        blipcoords = vector3(-3400.0258789063,-3302.1235351563,-5.3948922157288),
        showblip = true
    },
    {    -- house44
        name = 'House44', 
        blipcoords = vector3(-818.61383056641,351.16165161133,97.108840942383),
        showblip = true
    },
    {    -- house45
        name = 'House45', 
        blipcoords = vector3(2711.4370117188,-1293.0838623047,59.458484649658),
        showblip = true
    },
    {    -- house46
        name = 'House46', 
        blipcoords = vector3(2627.7453613281,-1221.8547363281,52.398143768311),
        showblip = true
    },
    {    -- house47
        name = 'House47', 
        blipcoords = vector3(2793.1120605469,-1173.7476806641,46.923934936523),
        showblip = true
    },
    {    -- house48
        name = 'House48', 
        blipcoords = vector3(2595.1848144531,-1007.4868774414,43.255561828613),
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
    {
        houseid = 'house23',
        name = 'Door',
        doorid = 872775928,
        doorcoords = vector3(-556.41680908203,2698.8635253906,319.38018798828),
    },
    {
        houseid = 'house23',
        name = 'Door',
        doorid = 2385374047,
        doorcoords = vector3(-557.96398925781,2708.9880371094,319.43182373047),
    },
    {
        houseid = 'house23',
        name = 'Door',
        doorid = 2051127971,
        doorcoords = vector3(-536.39428710938,2675.3825683594,317.81826782227),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house24',
        name = 'Door',
        doorid = 3167436574,
        doorcoords = vector3(-1019.1105957031,1688.2989501953,243.27978515625),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house25',
        name = 'Door',
        doorid = 1195519038,
        doorcoords = vector3(-1815.1489257813,654.96380615234,130.88250732422),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house26',
        name = 'Door',
        doorid = 2212914984,
        doorcoords = vector3(-2182.5109863281,716.46356201172,121.62875366211),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house27',
        name = 'Door',
        doorid = 562830153,
        doorcoords = vector3(-2575.826171875,-1379.3582763672,148.27227783203),
    },
    {
        houseid = 'house27',
        name = 'Door',
        doorid = 663425326,
        doorcoords = vector3(-2578.7858886719,-1385.2464599609,148.26223754883),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house28',
        name = 'Door',
        doorid = 1171581101,
        doorcoords = vector3(-2374.3642578125,-1592.6021728516,153.29959106445),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house29',
        name = 'Door',
        doorid = 52014802,
        doorcoords = vector3(-1410.5717773438,-2674.2229003906,41.185203552246),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house30',
        name = 'Door',
        doorid = 4164042403,
        doorcoords = vector3(-3958.3901367188,-2129.3940429688,-5.235463142395),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house31',
        name = 'Door',
        doorid = 2047072501,
        doorcoords = vector3(-4366.0122070313,-2416.3056640625,19.423376083374),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house32',
        name = 'Door',
        doorid = 2715667864,
        doorcoords = vector3(-5552.146484375,-2401.5205078125,-9.7140893936157),
    },
    {
        houseid = 'house32',
        name = 'Door',
        doorid = 1263476860,
        doorcoords = vector3(-5555.2666015625,-2397.3522949219,-9.7149391174316),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house33',
        name = 'Door',
        doorid = 1894337720,
        doorcoords = vector3(-3552.3842773438,-3012.0998535156,10.820337295532),
    },
    {
        houseid = 'house33',
        name = 'Door',
        doorid = 120764251,
        doorcoords = vector3(-3555.4401855469,-3007.9375,10.820337295532),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house34',
        name = 'Door',
        doorid = 943176298,
        doorcoords = vector3(-1959.1854248047,2160.2043457031,326.55380249023),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house35',
        name = 'Door',
        doorid = 2971757040,
        doorcoords = vector3(-1494.4030761719,1246.7662353516,313.5432434082),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house36',
        name = 'Door',
        doorid = 1973911195,
        doorcoords = vector3(3024.1213378906,1777.0731201172,83.169136047363),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house37',
        name = 'Door',
        doorid = 784290387,
        doorcoords = vector3(1981.9653320313,1195.0833740234,170.41778564453),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house38',
        name = 'Door',
        doorid = 843137708,
        doorcoords = vector3(2716.8154296875,708.16693115234,78.605178833008),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house39',
        name = 'Door',
        doorid = 4275653891,
        doorcoords = vector3(2824.4970703125,270.89910888672,47.120807647705),
    },
    {
        houseid = 'house39',
        name = 'Door',
        doorid = 1431398235,
        doorcoords = vector3(2820.5607910156,278.90881347656,50.09118270874),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house40',
        name = 'Door',
        doorid = 896012811,
        doorcoords = vector3(1387.3020019531,-2077.4401855469,51.581089019775),
    },
    {
        houseid = 'house40',
        name = 'Door',
        doorid = 2813949612,
        doorcoords = vector3(1385.0637207031,-2085.1806640625,51.583812713623),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house41',
        name = 'Door',
        doorid = 3184160386,
        doorcoords = vector3(1385.0637207031,-2085.1806640625,51.583812713623),
    },
    {
        houseid = 'house41',
        name = 'Door',
        doorid = 3202958073,
        doorcoords = vector3(1316.4770507813,-2284.9389648438,49.524440765381),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house42',
        name = 'Door',
        doorid = 868379185,
        doorcoords = vector3(1697.4683837891,1508.2376708984,146.8824005127),
    },
    {
        houseid = 'house42',
        name = 'Door',
        doorid = 640077562,
        doorcoords = vector3(1702.7976074219,1514.3333740234,146.87799072266),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house43',
        name = 'Door',
        doorid = 3045682143,
        doorcoords = vector3(-3400.0258789063,-3302.1235351563,-5.3948922157288),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house44',
        name = 'Door',
        doorid = 1915887592,
        doorcoords = vector3(-818.61383056641,351.16165161133,97.108840942383),
    },
    {
        houseid = 'house44',
        name = 'Door',
        doorid = 3324299212,
        doorcoords = vector3(-819.14367675781,358.73443603516,97.10627746582),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house45',
        name = 'Door',
        doorid = 1180868565,
        doorcoords = vector3(2711.4370117188,-1293.0838623047,59.458484649658),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house46',
        name = 'Door',
        doorid = 3895438792,
        doorcoords = vector3(2627.7453613281,-1221.8547363281,52.398143768311),
    },
    {
        houseid = 'house46',
        name = 'Door',
        doorid = 804086151,
        doorcoords = vector3(2629.2954101563,-1220.2932128906,52.398143768311),
    },
    {
        houseid = 'house46',
        name = 'Door',
        doorid = 1555588463,
        doorcoords = vector3(2634.6809082031,-1225.0213623047,58.596115112305),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house47',
        name = 'Door',
        doorid = 2653589767,
        doorcoords = vector3(2793.1120605469,-1173.7476806641,46.923934936523),
    },
    {
        houseid = 'house47',
        name = 'Door',
        doorid = 2960930218,
        doorcoords = vector3(2794.2932128906,-1174.4350585938,46.923934936523),
    },
    {
        houseid = 'house47',
        name = 'Door',
        doorid = 4220752030,
        doorcoords = vector3(2803.2788085938,-1163.5256347656,46.938804626465),
    },
    ---------------------------------------------------------------------------
    {
        houseid = 'house48',
        name = 'Door',
        doorid = 3052936071,
        doorcoords = vector3(2595.1848144531,-1007.4868774414,43.255561828613),
    },
    {
        houseid = 'house48',
        name = 'Door',
        doorid = 404931123,
        doorcoords = vector3(2595.4948730469,-1009.2457885742,43.255561828613),
    },
    ---------------------------------------------------------------------------
}
