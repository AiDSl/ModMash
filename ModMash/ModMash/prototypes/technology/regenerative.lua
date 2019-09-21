﻿local create_regenerative_technology = function(level,count)
	return  
	{
		{
			type = "technology",
			name = "enhance-regenerative-speed-"..level,
			icon = "__base__/graphics/technology/demo/analyse-ship.png",
			icon_size = 128,
			localised_name = "Advanced Regenerative Technology "..level,
			localised_description = "Increases regenerative items healing factor",
			effects =
			{
			},
			prerequisites =
			{
				"enhance-regenerative-speed-"..(level-1)
			},
			unit =
			{
				count = count,
				ingredients =
				{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},	
				{"military-science-pack",1}
				},
				time = 45
			},
			upgrade = true,
			order = "a-b-d",
		}
	}
end

data:extend(
{
{
			type = "technology",
			name = "enhance-regenerative-speed-1",
			icon = "__base__/graphics/technology/demo/analyse-ship.png",
			icon_size = 128,
			localised_name = "Advanced Regenerative Technology ",
			localised_description = "Increases regenerative items healing factor",
			effects =
			{
			},
			prerequisites =
			{
				"logistics-5"
			},
			unit =
			{
				count = 200,
				ingredients =
				{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},	
				{"military-science-pack",1}
				},
				time = 45
			},
			upgrade = true,
			order = "a-b-d",
		}
})
local count = 250

for k=2, 6 do
	data:extend(create_regenerative_technology(k,count))
	count = count + 50
end