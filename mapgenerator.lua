--[[
 __      __    _ _   ___                   
 \ \    / /_ _| | | / __|_ __  __ _ __ ___ 
  \ \/\/ / _` | | | \__ \ '_ \/ _` / _/ -_)
   \_/\_/\__,_|_|_| |___/ .__/\__,_\__\___|
                        |_|  
On screen map generator based on map.lua

https://github.com/Tanashii/massive-octo-wallhack

--]]
--Copyright (c) 2014 Tanashii67, All rights reserved
--Do not redistribute

require("map")


mapObjectX = {}
for ii=1, 19 do
for i=1, 11 do
	if map[ii.."-"..i] == nil then chars = "" else chars = map[ii.."-"..i] end
	mapObjectX[ii.."-"..i] = display.newText(chars, (ii*40)-20,(i*40)-20, native.systemFont, charsize )
	print("Generated "..chars.." on "..ii.."-"..i)
	
end
end
