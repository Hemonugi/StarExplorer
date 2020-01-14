local physics = require('physics')

physics.start()
physics.setGravity(0, 0)

math.randomseed(os.time())

local sheetOptions =
{
    frames =
    {
        {   -- asteroid 1
            x = 0,
            y = 0,
            width = 102,
            height = 85,
        },
        {   -- asteroid 2
            x = 0,
            y = 85,
            width = 90,
            height = 83,
        },
        {   -- asteroid 3
            x = 0,
            y = 168,
            width = 100,
            height = 97,
        },
        {   -- ship
            x = 0,
            y = 265,
            width = 98,
            height = 79,
        },
        {   -- laser
            x = 98,
            y = 265,
            width = 14,
            height = 40,
        },
    },
}

local objectSheet = graphics.newImageSheet('gameObjects.png', sheetOptions)


local background = display.newImageRect( backGroup, "background.png", 800, 1400 )
background.x = display.contentCenterX
background.y = display.contentCenterY