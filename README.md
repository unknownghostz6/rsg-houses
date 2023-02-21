# RexshackGaming
- discord : https://discord.gg/s5uSk56B65
- github : https://github.com/Rexshack-RedM

# Dependancies
- rsg-core
- rsg-menu
- rsg-input

# Installation
- ensure that the dependancies are added and started
- add rsg-houses to your resources folder
- add the sql file "houses.sql" to your database

# Add the following to your rsg-npcs script
```lua
    {    -- estate agent New Hanover
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-250.8893, 743.20239, 118.08129, 105.66469),
    },
    {    -- estate agent West Elizabeth
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-792.3216, -1203.232, 43.645206, 184.15261),
    },
    {    -- estate agent New Austin
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-3658.934, -2620.835, -13.3414, 8.4051847),
    },
    {    -- estate agent Ambarino
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(-1347.746, 2405.7084, 307.06127, 296.02886),
    },
    {    -- estate agent Lemoyne
        model = `A_M_O_SDUpperClass_01`,
        coords = vector4(2596.5463, -1299.845, 52.817153, 304.04638),
    },
```

# Starting the resource
- add the following to your server.cfg file : ensure rsg-houses
