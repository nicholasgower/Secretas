local seconds = 60
local minutes = 60*seconds

data:extend(
{
    {
        type = "recipe",
        name = "spaceship-scrap-recycling",
        icons = {
          {
            icon = "__quality__/graphics/icons/recycling.png"
          },
          {
            icon = "__secretas__/graphics/icons/spaceship-scrap.png",
            scale = 0.4
          },
          {
            icon = "__quality__/graphics/icons/recycling-top.png"
          }
        },
        category = "recycling-or-hand-crafting",
        subgroup = "fulgora-processes", --TODO add my own subprocess.
        order = "a[trash]-b[trash-recycling]",
        enabled = false,
        auto_recycle = false,
        energy_required = 0.2,
        ingredients = {{type = "item", name = "spaceship-scrap", amount = 1}},
        results =
        {
          {type = "item", name = "processing-unit",        amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "advanced-circuit",       amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
          {type = "item", name = "low-density-structure",  amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "solid-fuel",             amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
          {type = "item", name = "steel-plate",            amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
          --11
          {type = "item", name = "battery",                amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
          {type = "item", name = "ice",                    amount = 1, probability = 0.06, show_details_in_recipe_tooltip = false},
          --10
          {type = "item", name = "iron-gear-wheel",        amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false},
          --15
          {type = "item", name = "copper-cable",           amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
          {type = "item", name = "stone",                  amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
          {type = "item", name = "electric-engine-unit",   amount = 1, probability = 0.08, show_details_in_recipe_tooltip = false},
          --14
          {type = "item", name = "plastic-bar",            amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "lithium-plate",          amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "supercapacitor",          amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "tungsten-plate",          amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "carbon-fiber",            amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "solar-panel",            amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
          {type = "item", name = "space-platform-foundation", amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "boiler",                  amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "depleted-uranium-fuel-cell",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          --10
          {type = "item", name = "holmium-plate",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "spoilage",   amount = 1, probability = 0.06, show_details_in_recipe_tooltip = false},
          {type = "item", name = "flying-robot-frame",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "steam-turbine",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "laser-turret",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          --10
          {type = "item", name = "gun-turret",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "iron-plate",   amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
          {type = "item", name = "pipe",   amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
          {type = "item", name = "storage-tank",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "rocket",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          --10
          {type = "item", name = "inserter",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "pump",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "medium-electric-pole",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "small-lamp",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "gold-ore",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "arithmetic-combinator",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "constant-combinator",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "display-panel",   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "heat-pipe",   amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
          --11
          {type = "item", name = "scrap",   amount = 1, probability = 0.09, show_details_in_recipe_tooltip = false},

        }
    },
    {
      type ="recipe",
      name ="gold-plate-production",
      category ="metallurgy",
      icon ="__secretas__/graphics/icons/gold-plate.png",
      enabled = false,
      ingredients =
      {

        {type ="item", name ="gold-ore", amount = 4},
      },

      energy_required = 5,
      results =
      {
        {type ="item", name ="gold-plate", amount = 1}
      },
      allow_productivity = true,
      allow_quality = true,
      main_product ="gold-plate",
      factoriopedia_description ="Refine gold from ore."
    },
    {
      type ="recipe",
      name ="gold-plate-production-alt",
      category ="smelting",
      icon ="__secretas__/graphics/icons/gold-plate.png",
      enabled = false,
      ingredients =
      {
        {type ="item", name ="gold-ore", amount = 4},
      },

      energy_required = 6,
      results =
      {
        {type ="item", name ="gold-plate", amount = 1}
      },
      allow_productivity = true,
      allow_quality = true,
      main_product ="gold-plate",
      factoriopedia_description ="Refine gold from ore."
    },
    {
      type = "recipe",
      name = "auric-asteroid-crushing",
      icon = "__secretas__/graphics/icons/auric-asteroid-crushing.png",
      category = "crushing",
      subgroup="space-crushing",
      order = "c-a-a",
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "auric-asteroid-chunk", amount = 1},
      },
      energy_required = 2,
      results =
      {
        {type = "item", name = "gold-ore", amount = 15},
        {type = "item", name = "auric-asteroid-chunk", amount = 1, probability = 0.1}
      },
      allow_productivity = true,
      allow_decomposition = false
    },
    {
      type ="recipe",
      name ="golden-science-pack",
      category ="crafting",
      icon ="__secretas__/graphics/icons/golden-science-pack.png",
      enabled = false,
      ingredients =
      {
        {type ="item", name ="gold-plate", amount = 14},
        {type ="item", name ="steam-turbine", amount = 2},
        {type ="item", name ="solid-fuel", amount = 7},
        {type ="item", name ="arithmetic-combinator", amount = 14},
      },

      energy_required = 20,
      results =
      {
        {type ="item", name ="golden-science-pack", amount = 8},
        {type ="item", name ="golden-science-pack", amount = 1, probability = 0.652},
      },
      allow_productivity = true,
      allow_quality = true,
      main_product ="golden-science-pack",
      factoriopedia_description ="Refine gold into science.",
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="hyper-inserter",
      category ="crafting",
      icon ="__secretas__/graphics/icons/hyper-inserter.png",
      enabled = false,
      ingredients =
      {
        {type ="item", name ="gold-plate", amount = 4},
        {type ="item", name ="low-density-structure", amount = 2},
        {type ="item", name ="advanced-circuit", amount = 1},
        {type ="item", name ="stack-inserter", amount = 1},
        {type ="item", name ="nuclear-fuel", amount = 1},
      },

      energy_required = 4,
      results =
      {
        {type ="item", name ="hyper-inserter", amount = 1},

      },
      allow_productivity = false,
      allow_quality = true,
      main_product ="hyper-inserter",
    },

})