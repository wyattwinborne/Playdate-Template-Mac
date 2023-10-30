import 'enemy'

local pd <const> = playdate
local gfx <const> = pd.graphics

local spawnTimer
enemySpeed = 1

function startSpawner()
    math.randomseed(pd.getSecondsSinceEpoch())
    createTimer()
    printTable(pd.timer.allTimers())
end

function createTimer()
    local spawnTime = math.random(500, 1000)
    spawnTimer = pd.timer.performAfterDelay(spawnTime, function ()
        createTimer()
        spawnEnemy()
    end)
end

function spawnEnemy()
    local randomPosition = math.random(10, 230)
    Enemy(400, randomPosition, enemySpeed)
end

function stopSpawner()
    if spawnTimer then
        spawnTimer:remove()
    end 
end

function clearEnemies()
    local allSprites = gfx.sprite.getAllSprites()
    for index, sprite in ipairs(allSprites) do
        if sprite:isa(Enemy) then
            sprite:remove()
        end
    end
end