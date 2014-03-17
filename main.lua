--[[
 __      __    _ _   ___                   
 \ \    / /_ _| | | / __|_ __  __ _ __ ___ 
  \ \/\/ / _` | | | \__ \ '_ \/ _` / _/ -_)
   \_/\_/\__,_|_|_| |___/ .__/\__,_\__\___|
                        |_|  
Move around and give no fucks about the game being so shitty

Current version: 1.3, changelog in config.lua

https://github.com/Tanashii/massive-octo-wallhack

--]]
--Copyright (c) 2014 Tanashii67, All rights reserved
--Do not redistribute

--player settings
hp = 100
character = "@"
charsize = 40

require( "mapgenerator" )
require( "movement" )
require( "map" )
display.setStatusBar( display.HiddenStatusBar )

playerR = {} --making the array for attributes like hp level etc
player = display.newText( character, 10, 10, native.systemFont, charsize ) --creating the player sprite
player.x = charsize/2; player.y = charsize/2; --setting the position of the player
playerR["X"] = 1; playerR["Y"] = 1 --setting the coordinates of the player
playerR[ "hp" ] = hp --setting the default hp to 100
player.alpha = playerR[ "hp" ] / 100 --making the player fade out as he loses hp
reloadCords()

--making the steering buttons
leftSteer = display.newRect( 50, 600, 50, 50 ); leftSteer.alpha = 0.1 --left
rightSteer = display.newRect( 170, 600, 50, 50 ); rightSteer.alpha = 0.1 --right
upSteer = display.newRect( 110, 540, 50, 50 ); upSteer.alpha = 0.1 --up
downSteer = display.newRect( 110, 660, 50, 50 ); downSteer.alpha = 0.1 --down

leftSteer:addEventListener( "tap", left1 )
rightSteer:addEventListener( "tap", right1 )
upSteer:addEventListener( "tap", up1 )
downSteer:addEventListener( "tap", down1 )

function exitTold()
	display.remove(wdwScreen)
	display.remove(txtScreen)
	display.remove(btnScreen)
	display.remove(txtButtonScreen)

	leftSteer.alpha=0.1
	rightSteer.alpha=0.1
	upSteer.alpha=0.1
	downSteer.alpha=0.1
end

function getTold(string)
	leftSteer.alpha = 0.0
	rightSteer.alpha = 0.0
	upSteer.alpha = 0.0
	downSteer.alpha = 0.0

	wdwScreen = display.newRect( display.contentWidth/2, 700, display.contentWidth, 300 )
	wdwScreen:setFillColor( 0.5,0.5,0.5 )
	txtScreen = display.newText(string, display.contentWidth/2, 600, native.systemFont, 30)

	btnScreen = display.newRect( display.contentWidth/2, 700, 300, 100)
	btnScreen:setFillColor( 0,0,0)
	txtButtonScreen = display.newText( "K", display.contentWidth/2, 700, native.systemFont, 40)

	btnScreen:addEventListener( "tap", exitTold )

end







