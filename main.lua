--[[
 __      __    _ _   ___                   
 \ \    / /_ _| | | / __|_ __  __ _ __ ___ 
  \ \/\/ / _` | | | \__ \ '_ \/ _` / _/ -_)
   \_/\_/\__,_|_|_| |___/ .__/\__,_\__\___|
                        |_|  
Move around and give no fucks about the game being so shitty

Current version: 0.8, changelog in config.lua

https://github.com/Tanashii/massive-octo-wallhack

--]]
--Copyright (c) 2014 Tanashii67, All rights reserved
--Do not redistribute

--player settings
hp = 100
character = "X"
charsize = 40

require( "mapgenerator" )
require( "movement" )
display.setStatusBar( display.HiddenStatusBar )

playerR = {} --making the array for attributes like hp level etc
player = display.newText( character, 10, 10, native.systemFont, charsize ) --creating the player sprite
player.x = charsize/2; player.y = charsize/2; --setting the position of the player
playerR["X"] = 1; playerR["Y"] = 1 --setting the coordinates of the player
playerR[ "hp" ] = hp --setting the default hp to 100
player.alpha = playerR[ "hp" ] / 100 --making the player fade out as he loses hp
reloadCords()

--making the steering buttons
leftSteer = display.newRect( 50, 650, 50, 50 ); leftSteer.alpha = 0.1 --left
rightSteer = display.newRect( 170, 650, 50, 50 ); rightSteer.alpha = 0.1 --right
upSteer = display.newRect( 110, 590, 50, 50 ); upSteer.alpha = 0.1 --up
downSteer = display.newRect( 110, 710, 50, 50 ); downSteer.alpha = 0.1 --down

leftSteer:addEventListener( "tap", left1 )
rightSteer:addEventListener( "tap", right1 )
upSteer:addEventListener( "tap", up1 )
downSteer:addEventListener( "tap", down1 )







