--[[
0.1: Initial release, movement commands not blocking the player from doing 1290384129048 moves
0.2: Fixed the movement comands allowing the player to do only 20 moves on Y axis and 11 on X
0.3: Added steering buttons and fixed some stuff
--]]
version=0.3

application =
{
	content =
	{
		fps = 60,
		width = 430,
		height = 704,
		scale = "letterbox",
		xAlign = "left",
		yAlign = "top",
	}

	
}

settings =
{
	android = 
	{
		versionCode = "11",
		usesPermissions = 
		{
			"android.permission.INTERNET"
		},
	},
}

