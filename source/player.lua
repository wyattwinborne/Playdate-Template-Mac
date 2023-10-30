import 'bullet'

local pd <const> = playdate
local gfx <const> = pd.graphics

class('Player').extends(gfx.sprite)

local playerSpeed = 3
local bulletSpeed = 10

function Player:init(x, y)
    local playerImage = gfx.image.new("images/player")
    self:setImage(playerImage)
    self:moveTo(x,y)
    self:add()
end   
function Player:update()
    if pd.buttonIsPressed(pd.kButtonUp) then
        if self.y > 0 then
            self:moveBy(0,-playerSpeed)
        end
    elseif pd.buttonIsPressed(pd.kButtonDown) then
        if self.y < 240 then
            self:moveBy(0, playerSpeed)
        end
    end
    
    if pd.buttonJustPressed(pd.kButtonA) then
        Bullet(self.x, self.y, bulletSpeed)
    end
end