import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
------------------------------------------------------------
local pd <const> = playdate
local gfx <const> = playdate.graphics
------------------------------------------------------------
local playerX, playerY = 200, 120
local playerRadius = 10
local playerSpeed = 3

function pd.update() 
    gfx.clear()
    local crankAngle = math.rad(pd.getCrankPosition())
    playerX += math.sin(crankAngle) * playerSpeed
    playerY -= math.cos(crankAngle) * playerSpeed
    gfx.fillCircleAtPoint(playerX, playerY, playerRadius)
    
end
