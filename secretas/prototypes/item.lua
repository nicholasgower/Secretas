local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")

data:extend(
{
    {
        type = "tool",
        name = "golden-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__secretas__/graphics/icons/golden-science-pack.png",
        subgroup = "science-pack",
        color_hint = { text = "Y" },
        order = "k",
        inventory_move_sound = item_sounds.science_inventory_move,
        pick_sound = item_sounds.science_inventory_pickup,
        drop_sound = item_sounds.science_inventory_move,
        stack_size = 200,
        default_import_location = "frozeta",
        weight = 1*kg,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
        random_tint_color = item_tints.bluish_science
    },
    {
        type = "item",
        name = "gold-ore",
        icon = "__secretas__/graphics/icons/gold-ore.png",
        order = "zz[golden]",
        subgroup = "raw-resource",
        color_hint = { text = "T" },

        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "secretas",
        weight = 10*kg
    },
    {
        type = "item",
        name = "spaceship-scrap",
        icon = "__secretas__/graphics/icons/spaceship-scrap.png",
        pictures =
        {
          { size = 64, filename = "__secretas__/graphics/icons/spaceship-scrap.png",   scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__secretas__/graphics/icons/spaceship-scrap-1.png", scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__secretas__/graphics/icons/spaceship-scrap-2.png", scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__secretas__/graphics/icons/spaceship-scrap-3.png", scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__secretas__/graphics/icons/spaceship-scrap-4.png", scale = 0.5, mipmap_count = 4 },
          { size = 64, filename = "__secretas__/graphics/icons/spaceship-scrap-5.png", scale = 0.5, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        order = "b[scrap]-b[spaceshipscrap]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "frozeta",
        weight = 2*kg
    },
    {
        type = "item",
        name = "gold-plate",
        icon = "__secretas__/graphics/icons/gold-plate.png",
        order = "z[goldplate]",
        subgroup = "raw-material",
        color_hint = { text = "T" },
  
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "frozeta",
        weight = 4*kg
    },
    {
        type = "item",
        name = "hyper-inserter",
        icon = "__secretas__/graphics/icons/hyper-inserter.png",
        subgroup = "inserter",
        color_hint = { text = "S" },
        order = "h[hyper-inserter]",
        inventory_move_sound = item_sounds.wire_inventory_move,
        pick_sound = item_sounds.wire_inventory_pickup,
        drop_sound = item_sounds.wire_inventory_move,
        place_result = "hyper-inserter",
        stack_size = 50,
        default_import_location = "frozeta",
        weight = 20*kg
    },
    {
        type = "item",
        name = "auric-asteroid-chunk",
        icon = "__secretas__/graphics/icons/auric-asteroid-chunk.png",
        subgroup = "space-material",
        order = "b[auric]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.rock_inventory_move,
        pick_sound = space_age_item_sounds.rock_inventory_pickup,
        drop_sound = space_age_item_sounds.rock_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
    },
}
)