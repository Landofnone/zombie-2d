love.window.setTitle("LOVE zombie");
love.window.setMode(1280,720);

require "camera";
require "player";

function love.load()
	map = love.graphics.newImage("resc/map.png");
	mouseX, mouseY = 0, 0;
end

function love.draw()

	camera:set();

	love.graphics.draw(map, 0, 0);

	player:draw();

	love.graphics.print("X: "..mouseX.."   Y: "..mouseY.."   "..player.x.."   "..player.y);
	
	camera:unset();
end

function love.update(dt)
	mouseX, mouseY = love.mouse.getPosition();
	
	if love.mouse.isDown("l") then

	end

	player:move(dt);

	if player.x > (love.graphics.getWidth() / 2 * camera.scaleX) then
		camera.x = player.x - love.graphics.getWidth() / 2 * camera.scaleX
	end

	if player.y > (love.graphics.getHeight() / 2 * camera.scaleY) then
		camera.y = player.y - love.graphics.getHeight() / 2 * camera.scaleX
	end
	
end
