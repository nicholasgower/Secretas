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
        max_health = 170,
        corpse = "hyper-inserter-remnants",
        dying_explosion = "fast-inserter-explosion",
        max_belt_stack_size = 5,
        stack_size_bonus = 8,
        bulk = true,
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
        energy_per_movement = "70kJ",
        energy_per_rotation = "70kJ",
        heating_energy = "0kW",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          drain = "0.5kW"
        },
        extension_speed = 0.2,
        rotation_speed = 0.06,
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
    {
      type = "furnace",
      name = "steam-recycler",
      icon = "__secretas__/graphics/icons/steam-recycler.png",
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      fast_transfer_modules_into_module_slots_only = true,
      minable = {mining_time = 0.2, result = "steam-recycler"},
      max_health = 300,
      fast_replaceable_group = "recycler",
      vector_to_place_result = {-0.5, -2.3},
      dying_explosion = "recycler-explosion",
      corpse = "steam-recycler-remnants",
      impact_category = "metal",
      working_sound =
      {
        sound = { filename = "__quality__/sound/recycler/recycler-loop.ogg", volume = 0.7 },
        sound_accents =
        {
          { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-move", 5, 0.45 )}, frame = 14, audible_distance_modifier = 0.2 },
          { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-vox", 5, 0.2 )}, frame = 20, audible_distance_modifier = 0.3 },
          { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-mechanic", 3, 0.3 )}, frame = 45, audible_distance_modifier = 0.3 },
          { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-move", 5, 0.45 )}, frame = 60, audible_distance_modifier = 0.2 },
          { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-trash", 5, 0.6 )}, frame = 61, audible_distance_modifier = 0.3 },
          { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-shut", 6, 0.3 )}, frame = 63, audible_distance_modifier = 0.6 },
        },
        max_sounds_per_type = 2,
        fade_in_ticks = 4,
        fade_out_ticks = 20
      },
      resistances =
      {
        {
          type = "fire",
          percent = 80
        }
      },
      collision_box = {{-0.7, -1.7}, {0.7, 1.7}},
      selection_box = {{-0.9, -1.85}, {0.9, 1.85}},
      crafting_categories = {"recycling", "recycling-or-hand-crafting"},
      result_inventory_size = 40,
      energy_usage = "600kW",
      crafting_speed = 1.3,
      source_inventory_size = 1,
      custom_input_slot_tooltip_key = "recycler-input-slot-tooltip",
      heating_energy = "0W",
      energy_source =
      {
        type = "fluid",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 8 },
        burns_fluid = false,
        fluid_box = 
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          volume = 1000,
          pipe_connections =
          {
              {
              flow_direction="output", 
              direction = defines.direction.west,
              position = {-0.5, 0.5}, 
              },
              {
                flow_direction="input", 
                direction = defines.direction.east,
                position = {0.5, 0.5},
              },
              {
                flow_direction="input", 
                direction = defines.direction.west,
                position = {-0.5, -0.5}, 
              },
              {
                flow_direction="output", 
                direction = defines.direction.east,
                position = {0.5, -0.5},
              },

          },
        },
        scale_fluid_usage = true

      },
      module_slots = 5,
      icon_draw_specification = {shift = {0, -0.55}},
      icons_positioning =
      {
        {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.2}}
      },
      allowed_effects = {"consumption", "speed", "pollution", "quality"},
      perceived_performance = { minimum = 0.0, performance_to_activity_rate = 2.0, maximum = 4 },
      graphics_set          = require("__secretas__.prototypes.entity.recycler-pictures").graphics_set,
      graphics_set_flipped  = require("__secretas__.prototypes.entity.recycler-pictures").graphics_set_flipped,
      cant_insert_at_source_message_key = "inventory-restriction.cant-be-recycled"
    }
})