﻿data:extend(
  {
     {
        type = "technology",
        name = "regenerative-wall",
        icon_size = 128,
        icon = "__base__/graphics/technology/stone-walls.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "regenerative-wall"
          }
        },
	    prerequisites = {"titanium-walls"},
        unit =
        {
          count = 50,
          ingredients =
          {
		    {"automation-science-pack", 1},
		    {"logistic-science-pack", 1},	
		    {"military-science-pack",1}
          },
          time = 10
        },
        order = "a-k-a"
      },    
      {
        type = "technology",
        name = "titanium-walls",
        icon_size = 128,
        icon = "__base__/graphics/technology/stone-walls.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "titanium-wall"
          }
        },
	    prerequisites = {"gates"},
        unit =
        {
          count = 50,
          ingredients =
          {
		    {"automation-science-pack", 1},
		    {"logistic-science-pack", 1},	
		    {"military-science-pack",1}
          },
          time = 10
        },
        order = "a-k-a"
      }
  }
)
