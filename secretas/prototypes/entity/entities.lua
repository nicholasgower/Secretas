require ("sound-util")
require ("circuit-connector-sprites")
require ("util")
require ("__space-age__.prototypes.entity.circuit-network")
require ("__space-age__.prototypes.entity.space-platform-hub-cockpit")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")
local meld = require("meld")
--local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
--local procession_graphic_catalogue_types = require("__base__/prototypes/planet/procession-graphic-catalogue-types")
--local biochamber_pictures = require("__space-age__.prototypes.entity.biochamber-pictures")

data:extend({ --TODO figure out how to manage inserter stack size with tech.
    {
        type = "inserter",
        name = "hyper-inserter",
        icon = "__secretas__/graphics/icons/hyper-inserter.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = { mining_time = 0.1, result = "hyper-inserter" },
        max_health = 150,
        corpse = "hyper-inserter-remnants",
        dying_explosion = "fast-inserter-explosion",
        stack_size_bonus = 16,
        resistances =
        {
          {
            type = "fire",
            percent = 90
          }
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        damaged_trigger_effect = hit_effects.entity(),
        pickup_position = {0, -1},
        insert_position = {0, 1.2},
        energy_per_movement = "25kJ",
        energy_per_rotation = "25kJ",
        heating_energy = "0kW",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          drain = "0.5kW"
        },
        extension_speed = 0.2,
        rotation_speed = 0.08,
        filter_count = 5,
        icon_draw_specification = {scale = 0.5},
        fast_replaceable_group = "inserter",
        --next_upgrade = "bulk-inserter",
        impact_category = "metal",
        open_sound = sounds.inserter_open,
        close_sound = sounds.inserter_close,
        working_sound = sounds.inserter_fast,
        hand_base_picture =
        {
          filename = "__secretas__/graphics/entity/hyper-inserter/hyper-inserter-hand-base.png",
          priority = "extra-high",
          width = 32,
          height = 136,
          scale = 0.25
        },
        hand_closed_picture =
        {
          filename = "__secretas__/graphics/entity/hyper-inserter/hyper-inserter-hand-closed.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        hand_open_picture =
        {
          filename = "__secretas__/graphics/entity/hyper-inserter/hyper-inserter-hand-open.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        hand_base_shadow =
        {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          priority = "extra-high",
          width = 32,
          height = 132,
          scale = 0.25
        },
        hand_closed_shadow =
        {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        hand_open_shadow =
        {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          priority = "extra-high",
          width = 72,
          height = 164,
          scale = 0.25
        },
        platform_picture =
        {
          sheet =
          {
            filename = "__secretas__/graphics/entity/hyper-inserter/hyper-inserter-platform.png",
            priority = "extra-high",
            width = 105,
            height = 79,
            shift = util.by_pixel(1.5, 7.5-1),
            scale = 0.5
          }
        },
        platform_frozen =
        {
          sheet =
          {
            filename = "__space-age__/graphics/entity/frozen/inserter/inserter-platform.png",
            priority = "extra-high",
            width = 105,
            height = 79,
            shift = util.by_pixel(1.5, 7.5-1),
            scale = 0.5
          }
        },
        hand_base_frozen =
        {
          filename = "__space-age__/graphics/entity/frozen/inserter/inserter-hand.png",
          priority = "extra-high",
          x = 130 * 4,
          width = 130,
          height = 136,
          scale = 0.25
        },
        hand_closed_frozen =
        {
        filename = "__space-age__/graphics/entity/frozen/inserter/inserter-hand.png",
          priority = "extra-high",
          x = 250 + 130,
          width = 130,
          height = 164,
          scale = 0.25
        },
        hand_open_frozen =
        {
        filename = "__space-age__/graphics/entity/frozen/inserter/inserter-hand.png",
          priority = "extra-high",
          width = 130,
          height = 164,
          scale = 0.25
        },


        circuit_connector = circuit_connector_definitions["inserter"],
        circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        default_stack_control_input_signal = inserter_default_stack_control_input_signal
    },
    
})