--------------------------------------
------Created By Whit3Xlightning------
--https://github.com/Whit3XLightning--
--------------------------------------

Config = {}

Config = {
    commandName = "delallveh",
    -- This is the command that you will type into chat to execute the script.

    restricCommand = true
    -- Setting this to false will allow anyone in the server to use the command. 
    -- If you set it to true you will need to add a ace perm to allow people to use it.
    -- Such as add_ace [GROUP] command.[commandName] allow
}

config = {

	-- Blip/Color Reference: --
	-- https://docs.fivem.net/docs/game-references/blips/ --
	
	-- Config Info: --
	-- "coords" = Contains the x, y, z, coordinates of the zone. --
		-- "x" = The "X" coordinate of the zone. --
		-- "y" = The "Y" coordinate of the zone. --
		-- "z" = The "Z" coordinate of the zone. --
	-- "zone" = Contains the radius and color of the zone. --
		-- "radius" = The radius of the zone. (Default = 300.0) --
		-- "color" = The color of the zone. (Same color id's as blips.) --
	-- "blip" = Contains the id, color, and text of the blip. --
		-- "draw" = If this is "true" it will show a blip in the center of the zone. --
		-- "id" = The id of the blip. --
		-- "color" = The color of the blip. --
		-- "text" = The text of the blip. --
	
	zones = {
		{
			coords = {x = 232.36, y = -790.52, z = 30.6},  
			zone = {radius = 100.0, color = 69}, 
			blip = {draw = false, id = 0, color = 0, text = "ZONA HIJAU"}
		},
		{
			coords = {x = 694.04, y = 627.72, z = 128.4},  
			zone = {radius = 100.0, color = 69}, 
			blip = {draw = false, id = 0, color = 0, text = "ZONA HIJAU"}
		},
		{
			coords = {x = 2763.04, y = 3466.44, z = 55.68},  
			zone = {radius = 100.0, color = 69}, 
			blip = {draw = false, id = 0, color = 0, text = "ZONA HIJAU"}
		},
		{
			coords = {x = 148.04, y = 6364.0, z = 30.52},  
			zone = {radius = 100.0, color = 69}, 
			blip = {draw = false, id = 0, color = 0, text = "ZONA HIJAU"}
		}
	}
	
}

Config.Price = 0

Config.DrawDistance = 30.0
Config.MarkerSize   = {x = 0.5, y = 0.5, z = 0.5}
Config.MarkerColor  = {r = 102, g = 102, b = 204}
Config.MarkerType   = 2

Config.Zones = {}

Config.Zona = {
  {x=227.5308380127, y=-792.0, z=30.659824371338}, -- Taman Kota
  {x=234.13179016113,y=-794.52496337891,z=30.547147750854}, -- Taman Kota
  {x=699.23309326172,   y=622.58032226563,  z=128.91117858887}, -- Garasi Panggung
  {x=702.54827880859, y=630.06170654297,  z=128.91117858887}, -- Garasi Panggung
  {x=2759.4958496094,y=3468.9694824219,z=55.694530487061}, -- Ikea
  {x=2756.3669433594,y=3462.4611816406,z=55.906604766846}, -- Ikea 
  {x=144.68383789063,y=6359.201171875,z=31.529211044312}, -- Paleto
  {x=141.9853515625,y=6364.2651367188,z=31.529211044312}, -- Paleto
}


for i=1, #Config.Zona, 1 do

	Config.Zones['Zone' .. i] = {
	 	Pos   = Config.Zona[i],
	 	Size  = Config.MarkerSize,
	 	Color = Config.MarkerColor,
	 	Type  = Config.MarkerType
  }

end