﻿--[[Code check 29.2.20
removed old comments
--]]
--require("prototypes.scripts.util")
modmash = { util = get_liborio() }
require("prototypes.categories.discharge-fluids")
require("prototypes.categories.item-groups")
require("prototypes.categories.recycling-category")
require("prototypes.categories.wind-trap")

require("prototypes.item.underground")
require("prototypes.item.blank-circuit")
require("prototypes.item.fluid")
require("prototypes.item.resources")
require("prototypes.item.spawner")
require("prototypes.item.assembling-machine-4")
require("prototypes.item.assembling-machine-5")
require("prototypes.item.wind-trap")
require("prototypes.item.discharge-pump")
require("prototypes.item.recycling-machine")
require("prototypes.item.ammo")
require("prototypes.item.regenerative-wall")
require("prototypes.item.titanium-wall")
require("prototypes.item.pipes")
require("prototypes.item.juice")
require("prototypes.item.droid")
require("prototypes.item.steam-engine-mk2")
require("prototypes.item.super-material")
require("prototypes.item.valkyrie")

require("prototypes.recipe.underground")
require("prototypes.recipe.enrichment")
require("prototypes.recipe.assembling-machine-4")
require("prototypes.recipe.assembling-machine-5")
require("prototypes.recipe.wind-trap")
require("prototypes.recipe.discharge-pump")
require("prototypes.recipe.recycling-machine")
require("prototypes.recipe.ammo")
require("prototypes.recipe.regenerative-wall")
require("prototypes.recipe.titanium-wall")
require("prototypes.recipe.pipes")
require("prototypes.recipe.fluids")
require("prototypes.recipe.juice")
require("prototypes.recipe.droid")
require("prototypes.recipe.steam-engine-mk2")
require("prototypes.recipe.valkyrie")

require("prototypes.technology.regenerative")
require("prototypes.technology.logistics")
require("prototypes.technology.underground")


require("prototypes.entity.underground")
require("prototypes.entity.logistics")
require("prototypes.entity.valves")
require("prototypes.entity.assembling-machine-4")
require("prototypes.entity.assembling-machine-5")
require("prototypes.entity.wind-trap")
require("prototypes.entity.discharge-pump")
require("prototypes.entity.recycling-machine")
require("prototypes.entity.regenerative-wall")
require("prototypes.entity.titanium-wall")
require("prototypes.entity.pipes")
require("prototypes.entity.droid")
require("prototypes.entity.biter-neuro-toxin")
require("prototypes.entity.steam-engine-mk2")
require("prototypes.entity.valkyrie")
require("prototypes.entity.ore-refinery")
require("prototypes.entity.assembling-machine-burner")
require("prototypes.entity.dredge-pump")
require("prototypes.entity.boom")

require("prototypes.technology.enrichment")
require("prototypes.technology.inserters")
require("prototypes.technology.valves")
require("prototypes.technology.assembling-machine-4")
require("prototypes.technology.assembling-machine-5")
require("prototypes.technology.wind-trap")
require("prototypes.technology.discharge-pump")
require("prototypes.technology.recycling-machine")
require("prototypes.technology.ammo")
require("prototypes.technology.regenerative-wall")
require("prototypes.technology.titanium-wall")
require("prototypes.technology.pipes")
require("prototypes.technology.droid")
require("prototypes.technology.valkyrie")

data:extend({
  {
    type = "custom-input",
    name = "automate-target",
    key_sequence = "CONTROL + A",
    consuming = "script-only"
  },
})

data:extend({
  {
    type = "custom-input",
    name = "automate-target",
    key_sequence = "CONTROL + A",
    consuming = "script-only"
  },
})

data:extend({
  {
    type = "custom-input",
    name = "profiler-dump",
    key_sequence = "CONTROL + L",
    consuming = "script-only"
  },
})
require("wiki") 
wiki_register_mod_wiki(modmash_wiki)

