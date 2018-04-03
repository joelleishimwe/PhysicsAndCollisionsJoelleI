-- Title: PhysicsAndCollisions
-- Name: Joelle Ishimwe
-- Course: ICS2O
-- This program displays...
-----------------------------------------------------------------------------------------

-- Hide the status bar
display.setStatusBar (display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

-----------------------------------------------------------------------------------------
-- OBJECTS
------------------------------------------------------ -----------------------------------

-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	-- Set the x and y position
	ground.x = display.contentCenterX
	ground.y = 750

	-- Change the width to be the same as the screen
	ground.width = display.contentWidth

	-- add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------

--Create a verticle beam
local beam = display.newImage("Images/beam.png", 0, 0)
	
	-- set the x and y position
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	-- set the beam size 
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	-- rotate the beam
	beam:rotate(45)

	-- send it to the back layer
	beam:toBack()

	-- add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------

-- Create a vertical beam
local beam2 = display.newImage("Images/beam.png", 0, 0)

-- set the x and y position
	beam2.x = display.contentCenterX*9/10
	beam2.y = 900

	-- set the beam size 
	beam2.width = display.contentWidth/2
	beam2.height = display.contentHeight/10

	-- rotate the beam
	beam2:rotate(90)

	-- send it to the back layer
	beam2:toBack()

	-- add to physics
	physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------------------------

local bkg = display.newImage("Images/bkg.png", 0, 0)

	-- set the x and y position
	bkg.y = 380
	bkg.x = 510

	-- set the bkg size
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	-- send to back
	bkg:toBack()

-----------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------

-- create the first ball 
local function firstBall()

	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png")

	-- add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25} )
end
-----------------------------------------------------------------------------------------

local function secondBall()

	-- creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	--make it smaller then the original size
	ball2:scale(0.5, 0.5)
end
-----------------------------------------------------------------------------------------

local function thirdBall()

	-- creating third ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball3, {density=9.0, friction=0.9, bounce=0.9, radius=50})

	--make it smaller then the original size
	ball3:scale(1, 1)
end
-----------------------------------------------------------------------------------------

local function fourthBall()

	-- creating fourth ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball4, {density=3.0, friction=0.9, bounce=0.3, radius=70})

	--make it smaller then the original size
	ball4:scale(3, 3)
end

-----------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
-----------------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 3000, thirdBall)
timer.performWithDelay( 2000, fourthBall)
