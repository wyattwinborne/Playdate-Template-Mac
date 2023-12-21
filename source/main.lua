import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "../toyboxes/toyboxes.lua"
------------------------------------------------------------
local pd <const> = playdate
local gfx <const> = pd.graphics
local snd <const> = pd.sound
local geo <const> = pd.geometry
local disp <const> = pd.display
local tween <const> =pd.easingFunctions
------------------------------------------------------------
function pd.update() 
    gfx.sprite.update()
    pd.timer.updateTimers()
end
