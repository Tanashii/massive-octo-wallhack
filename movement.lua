--Copyright (c) 2014 Tanashii67, All rights reserved
--Do not redistribute

moveRight = function(number) --max 11 moves @ once
	if player.x < 451 and player.x + ( 40 * number ) < 451 then
		player.x = player.x + ( 40 * number )
	end
end

moveLeft = function(number) --max 11 moves @ once
	if player.x > 19 and player.x - ( 40 * number ) > 19 then
		player.x = player.x - ( 40 * number )
	end
end

moveUp = function(number) --max 20 moves @ once
	if player.y > 19 and player.y - ( 40 * number ) > 19 then
		player.y = player.y - ( 40 * number )
	end
end

moveDown = function(number) --max 20 moves @ once
	if player.y < 821 and player.y + ( 40 * number ) < 821 then
		player.y = player.y + ( 40 * number )
	end
end