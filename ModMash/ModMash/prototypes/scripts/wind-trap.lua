﻿--[[code reviewed 11.10.19]]
log("wind-trap.lua")
--[[check and import utils]]
if modmash == nil or modmash.util == nil then require("prototypes.scripts.util") end
if not modmash.defines then require ("prototypes.scripts.defines") end

--[[defines]]
local wind_trap  = modmash.defines.names.wind_trap 
local wind_trap_action_prefix  = modmash.defines.names.wind_trap_action_prefix 
	
--[[create local references]]
--[[util]]
local get_biome  = modmash.util.get_biome
local try_set_recipe  = modmash.util.try_set_recipe

local local_wind_trap_pump_added = function(entity)
	local biome = get_biome(entity)
	try_set_recipe(entity,wind_trap_action_prefix .. biome)
	entity.operable = false
end

modmash.register_script({
	names = {wind_trap},
	on_added_by_name = local_wind_trap_pump_added,
})