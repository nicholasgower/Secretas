require("util")

data:extend({
    --BASICS
    {
        type = "technology",
        name = "planet-discovery-secretas",
        icons = util.technology_icon_constant_planet("__secretas__/graphics/technology/secretas-discovery.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "secretas",
                use_icon_overlay_constant = true
            },
            {
                type = "unlock-space-location",
                space_location = "frozeta",
                use_icon_overlay_constant = true
            },
            {
                type = "unlock-recipe",
                recipe = "spaceship-scrap-recycling",
            },
            {
                type = "unlock-recipe",
                recipe = "gold-plate-production"
            },
            {
                type = "unlock-recipe",
                recipe = "gold-plate-production-alt"
            },
            {
                type = "unlock-recipe",
                recipe = "auric-asteroid-crushing"
            },
            {
                type = "unlock-recipe",
                recipe = "golden-science-pack"
            },

        },
        prerequisites = {"planet-discovery-aquilo"},
        unit =
        {
          count = 3000,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1}
          },
          time = 60
        }
    },
    {
        type = "technology",
        name = "hyper-inserter",
        icons = util.technology_icon_constant_planet("__secretas__/graphics/technology/hyper-inserter-tech.png"),
        icon_size = 256,
        essential = false,
        effects =
        {

            {
                type = "unlock-recipe",
                recipe = "hyper-inserter",
            },
        },
        prerequisites = {"planet-discovery-secretas"},
        unit =
        {
          count = 1000,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"golden-science-pack", 1}
          },
          time = 60
        }
    },


    --INFINITE

    {
      type = "technology",
      name = "spaceship-scrap-recycling-productivity",
      icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/scrap-recycling-productivity.png"),
      icon_size = 256,
      effects =
      {
        {
          type = "change-recipe-productivity",
          recipe = "spaceship-scrap-recycling",
          change = 0.1
        }
      },
      prerequisites = {"planet-discovery-secretas", "production-science-pack"},
      unit =
      {
        count_formula = "2^L*600",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"electromagnetic-science-pack", 1},
          {"cryogenic-science-pack", 1},
          {"golden-science-pack", 1},
          {"space-science-pack", 1},
        },
        time = 60
      },
      max_level = "infinite",
      upgrade = true
    },

    {
      type = "technology",
      name = "science-pack-productivity",
      icon = "__space-age__/graphics/technology/research-productivity.png",
      icon_size = 256,
      icon_size = 256,
      effects =
      {
        {
          type = "change-recipe-productivity",
          recipe = "automation-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "logistic-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "chemical-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "military-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "production-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "utility-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "space-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "metallurgic-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "electromagnetic-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "agricultural-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "cryogenic-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "golden-science-pack",
          change = 0.01
        },
        {
          type = "change-recipe-productivity",
          recipe = "promethium-science-pack",
          change = 0.01
        },

        
      },
      prerequisites = {"promethium-science-pack","planet-discovery-secretas"},
      unit =
      {
        count_formula = "1.5^L*1200",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1},
          {"metallurgic-science-pack", 1},
          {"electromagnetic-science-pack", 1},
          {"agricultural-science-pack", 1},
          {"cryogenic-science-pack", 1},
          {"golden-science-pack", 1},
          {"promethium-science-pack", 1}
        },
        time = 120
      },
      max_level = "infinite",
      upgrade = true
    },



}
)