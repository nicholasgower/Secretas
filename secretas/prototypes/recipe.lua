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

})