--called at startup when the program first loads
function love.load()
  love.graphics.setBackgroundColor(0, 255, 0)
  hamster = love.graphics.newImage("hamster.png")
  x = 250
  y = 200
  speed = 300
  
  sound = love.audio.newSource("Kalimba.mp3")
end


--called automatically at each game update
function love.update(dt)
  if love.keyboard.isDown("right") then
      x = x + (speed * dt)
   elseif love.keyboard.isDown("left") then
      x = x - (speed * dt)
   elseif love.keyboard.isDown("down") then
      y = y + (speed * dt)
   elseif love.keyboard.isDown("up") then
      y = y - (speed * dt)
   elseif love.keyboard.isDown("escape") then
      os.exit()
   end
   
   
   if love.mouse.isDown("r") then
    sound:play()
   end
end


--called at each screen refresh/redraw
function love.draw()
  love.graphics.draw(hamster, x, y)
end
