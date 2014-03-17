--[[
 __      __    _ _   ___                   
 \ \    / /_ _| | | / __|_ __  __ _ __ ___ 
  \ \/\/ / _` | | | \__ \ '_ \/ _` / _/ -_)
   \_/\_/\__,_|_|_| |___/ .__/\__,_\__\___|
                        |_|  
Move around and give no fucks about the game being so shitty

Current version: 1.4, changelog in config.lua

https://github.com/Tanashii/massive-octo-wallhack

--]]
--> Copyright (c) 2014 Tanashii67, All rights reserved
--> Do not redistribute


--> MAKING THE BACKGROUND BEFORE EVERYTHING
bgGrass = display.newRect( display.contentWidth/2, display.contentHeight/2, display.contentWidth, display.contentHeight )
bgGrass:setFillColor( 0.0392156862745098,0.5215686274509804,0 )
--> player settings
hp = 100
character = "@"
charsize = 40

require( "mapgenerator" )
require( "movement" )
require( "map" )
display.setStatusBar( display.HiddenStatusBar )

btnAlpha = 0.5 -->  set this for the alpha of the buttons if you can't see them in the sunlight or soth

playerR = {} --> making the array for attributes like hp level etc
player = display.newText( character, 10, 10, native.systemFont, charsize ) --> creating the player sprite
player.x = charsize/2; player.y = charsize/2; --> setting the position of the player
playerR["X"] = 1; playerR["Y"] = 1 --> setting the coordinates of the player
playerR[ "hp" ] = hp --> setting the default hp to 100
player.alpha = playerR[ "hp" ] / 100 --> making the player fade out as he loses hp
reloadCords()

--> making the steering buttons
leftSteer = display.newRect( 50, 600, 50, 50 ); leftSteer.alpha = btnAlpha --> left
rightSteer = display.newRect( 170, 600, 50, 50 ); rightSteer.alpha = btnAlpha --> right
upSteer = display.newRect( 110, 540, 50, 50 ); upSteer.alpha = btnAlpha --> up
downSteer = display.newRect( 110, 660, 50, 50 ); downSteer.alpha = btnAlpha --> down

btnAction = display.newRect( 250, 600, 50, 50 ); btnAction.alpha = btnAlpha

leftSteer:addEventListener( "tap", left1 )
rightSteer:addEventListener( "tap", right1 )
upSteer:addEventListener( "tap", up1 )
downSteer:addEventListener( "tap", down1 )
btnAction:addEventListener( "tap", action )

function exitTold()
	display.remove(wdwScreen)
	display.remove(txtScreen)
	display.remove(btnScreen)
	display.remove(txtButtonScreen)

	leftSteer.alpha=btnAlpha
	rightSteer.alpha=btnAlpha
	upSteer.alpha=btnAlpha
	downSteer.alpha=btnAlpha
end

function getTold(string)
	leftSteer.alpha = 0.0
	rightSteer.alpha = 0.0
	upSteer.alpha = 0.0
	downSteer.alpha = 0.0

	wdwScreen = display.newRect( display.contentWidth/2, 700, display.contentWidth, 300 )
	wdwScreen:setFillColor( 0,0,0 )
	txtScreen = display.newText(string, display.contentWidth/2, 615, native.systemFont, 30)
	txtScreen:setFillColor( 1,1,1 )

	btnScreen = display.newRect( display.contentWidth/2, 720, 200, 75)
	btnScreen:setFillColor( 1,1,1)
	txtButtonScreen = display.newText( "K", display.contentWidth/2, btnScreen.y, native.systemFont, 40)
	txtButtonScreen:setFillColor( 0,0,0 )
	btnScreen:addEventListener( "tap", exitTold )

end

getTold("Hello there, adventurer!")







