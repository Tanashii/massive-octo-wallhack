--Copyright (c) 2014 Tanashii67, All rights reserved
--Do not redistribute

function reloadCords()
	display.remove(coords)
	coords = display.newText(playerR["X"].."-"..playerR["Y"],400,30,native.systemFont,30)
end

moveRight = function(number) --max 11 moves @ once
	print( "Moved Right" )
	if number == nil then number = 1 end
	if player.x < 451 and player.x + ( 40 * number ) < 451 then
		player.x = player.x + ( 40 * number )
		playerR["X"] = playerR["X"]+1
	end
	reloadCords()
end

moveLeft = function(number) --max 11 moves @ once
	print( "Moved Left" )
	if number == nil then number = 1 end
	if player.x > 19 and player.x - ( 40 * number ) > 19 then
		player.x = player.x - ( 40 * number )
		playerR["X"] = playerR["X"]-1
	end
	reloadCords()
end

moveUp = function(number) --max 20 moves @ once
	print( "Moved Up" )
	if number == nil then number = 1 end
	if player.y > 19 and player.y - ( 40 * number ) > 19 then
		player.y = player.y - ( 40 * number )
		playerR["Y"] = playerR["Y"]-1
	end
	reloadCords()
end

moveDown = function(number) --max 20 moves @ once
	print( "Moved Down" )
	if number == nil then number = 1 end
	if player.y < 741 and player.y + ( 40 * number ) < 741 then
		player.y = player.y + ( 40 * number )
		playerR["Y"] = playerR["Y"]+1
	end
	reloadCords()
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