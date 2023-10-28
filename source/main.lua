import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local gfx <const> = playdate.graphics

local playerX, playerY = 200, 120
local playerRadius = 10

function playdate.update() 
    print("Hello World")
    gfx.fillCircleAtPoint(playerX, playerY, playerRadius)
    
end
