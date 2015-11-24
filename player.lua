player = {}
player.x = 300
player.y = 300
player.speed = 400;
player.health = 10
player.ammomp = 100;
player.ammoft = 0;
player.sprite = love.graphics.newImage("resc/player.png");

function player:move(dt)

if (love.keyboard.isDown("d")) then
	self.x = self.x + self.speed * dt;
elseif(love.keyboard.isDown("a")) then
	self.x = self.x - self.speed * dt;
end
if (love.keyboard.isDown("s")) then
	self.y = self.y + self.speed * dt;
elseif (love.keyboard.isDown("w")) then
	self.y = self.y - self.speed * dt;
end

end

function player:draw()
	love.graphics.draw(player.sprite, self.x, self.y)
end