--[[
 __      __    _ _   ___                   
 \ \    / /_ _| | | / __|_ __  __ _ __ ___ 
  \ \/\/ / _` | | | \__ \ '_ \/ _` / _/ -_)
   \_/\_/\__,_|_|_| |___/ .__/\__,_\__\___|
                        |_|  
Map format file
Requires WallSpace to work

Each map is max 11x19 size (11 wide 19 high)

To make a tile simply do 
map["X-Y"] = <char or space>

https://github.com/Tanashii/massive-octo-wallhack

--]]
--> Copyright (c) 2014 Tanashii67, All rights reserved
--> Do not redistribute

--[[

the map looks like this:
1  2 3 4 5 6 7 8 9 10 11
2  O O O O O O O O O O O
3  O O O O O O O O O O O
4  O O O O O O O O O O O
5  O O O O O O O O O O O
6  O O O O O O O O O O O
7  O O O O O O O O O O O
8  O O O O O O O O O O O
9  O O O O O O O O O O O
10 O O O O O O O O O O O
11 O O O O O O O O O O O
12 O O O O O O O O O O O
13 O O O O O O O O O O O
14 O O O O O O O O O O O
15 O O O O O O O O O O O
16 O O O O O O O O O O O
17 O O O O O O O O O O O
18 O O O O O O O O O O O
19 O O O O O O O O O O O

--]]

map = {} --> setting the map array
map["6-7"] = "[ ]"
map["6-8"] = "[ ]"
map["6-9"] = "[ ]"
map["5-8"] = "[ ]"
map["4-7"] = "[ ]"
map["4-8"] = "[ ]"
map["4-9"] = "[ ]"

map["8-8"] = "[ ]"
map["8-9"] = "[ ]"
map["8-6"] = "[ ]"


map["8-13"] = "NPC"

npcJoe = {}

npcPosition = {}

npcJoe["name"] = "Joe"
npcJoe["pos"] = "8-13"
npcPosition["Joe"] = "8-13"
npcJoe["text"] = "You have been told."

