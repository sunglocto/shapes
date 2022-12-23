speed = 5
function love.load()
		num = 1
		math.randomseed(os.time())
		mainFont = love.graphics.newFont("Mojang-Regular.ttf", 40)
		love.window.setTitle("shapes")
end

function love.update(dt)
		num = num + 1
end

function love.draw()
		--love.timer.sleep(1 * (num / speed))
		love.timer.sleep(math.random(0,2))
		love.graphics.setBackgroundColor(math.random(0,255) / 255, math.random(0,255) / 255, math.random(0,255)/255, math.random(0,255/255))
		x = math.random(1,200)
		repeat
			love.graphics.setColor(love.math.colorFromBytes(math.random(0,255), math.random(0,255), math.random(0,255), math.random(0,255)))
			--love.graphics.rectangle("fill", math.random(0,750), math.random(0,750), 25, 25)
			love.graphics.circle("fill", math.random(0, 750), math.random(0, 750), math.random(1,50), math.random(3,10))
			x = x - 1
		until x == 0
		love.graphics.setFont(mainFont)
		love.graphics.setColor(1,1,1)
		love.graphics.print("shapes")
	end
