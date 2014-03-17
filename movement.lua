--> Copyright (c) 2014 Tanashii67, All rights reserved
--> Do not redistribute
function reloadCords()
	display.remove(coords)
	coords = display.newText(getPlayerCoords(0,0),400,30,native.systemFont,30)
end

moveRight = function(number) --> max 11 moves @ once
	print( "Moved Right" )
	if number == nil then number = 1 end
	if player.x < 451 and player.x + ( 40 * number ) < 451 then

		if map[getPlayerCoords(1,0)] == " " or map[getPlayerCoords(1,0)] == nil then
		player.x = player.x + ( 40 * number )
		playerR["X"] = playerR["X"]+1
		print(player.x..", "..player.y)
	end
	else
		print("Can't move, something is blocking me!")
	end
	reloadCords()
end

moveLeft = function(number) --> max 11 moves @ once
	print( "Moved Left" )
	if number == nil then number = 1 end
	if player.x > 19 and player.x - ( 40 * number ) > 19 then
		if map[getPlayerCoords(-1,0)] == " " or map[getPlayerCoords(-1,0)] == nil then

		player.x = player.x - ( 40 * number )
		playerR["X"] = playerR["X"]-1
		print(player.x..", "..player.y)
	end
	else
		print("Can't move, something is blocking me!")
	end
	reloadCords()
end

moveUp = function(number) --> max 20 moves @ once
	print( "Moved Up" )
	if number == nil then number = 1 end
	if player.y > 19 and player.y - ( 40 * number ) > 19 then

		if map[getPlayerCoords(0,-1)] == " " or map[getPlayerCoords(0,-1)] == nil then
		player.y = player.y - ( 40 * number )
		playerR["Y"] = playerR["Y"]-1
		print(player.x..", "..player.y)
	end
	else
		print("Can't move, something is blocking me!")
	end
	reloadCords()
end

moveDown = function(number) --> max 20 moves @ once
	print( "Moved Down" )
	if number == nil then number = 1 end
	if player.y < 741 and player.y + ( 40 * number ) < 741 then

		if map[getPlayerCoords(0, 1)] == " " or map[getPlayerCoords(0, 1)] == nil then
		player.y = player.y + ( 40 * number )
		playerR["Y"] = playerR["Y"]+1
		print(player.x..", "..player.y)
	end
	else
		print("Can't move, something is blocking me!")
	end
	reloadCords()
end

function getNpcFromPosition(x, y)

end

function action()
	if map[getPlayerCoords(1,0)] == "NPC" then
		
	end
end

function down1()
	moveDown(1)
end
function up1()
	moveUp(1)
end
function left1()
	moveLeft(1)
end
function right1()
	moveRight(1)
end

function getPlayerCoords(xadd, yadd)
	return playerR["X"]+xadd.."-"..playerR["Y"]+yadd
end
startpos = charsize/2
function getPosition(x, y)
	return (x*charsize)-startpos.."-"..(y*charsize)-startpos
end
