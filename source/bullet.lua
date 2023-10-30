local pd <const> = playdate
local gfx <const> = pd.graphics

class('Bullet').extends(gfx.sprite)

function Bullet:init(x, y, speed)
    local bulletSize = 4
    local bulletImage = gfx.image.new(bulletSize * 2, bulletSize * 2)
    
    gfx.pushContext(bulletImage)
        gfx.drawCircleAtPoint(bulletSize, bulletSize, bulletSize)
    gfx.popContext(bulletImage)
    self:setImage(bulletImage)

    self:setCollideRect(0, 0, self:getSize())
    self.speed = speed
    self:moveTo(x,y)
    self:add()
end

function Bullet:update()
    --moveWithCollisions returns these 4 values
    local actualX, actualY, collisions, length = self:moveWithCollisions(self.x + self.speed, self.y)
    if length > 0 then -- If length > 0 that means there's a collision
        for index, collision in pairs(collisions) do
            local collidedObject = collision['other']
            if collidedObject:isa(Enemy) then
                incrementScore()
                setShakeAmount(5)
                collidedObject:remove()
            end
        end
        self:remove()
    elseif actualX > 400 then
        self:remove()
    end
end