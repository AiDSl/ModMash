﻿--[[Code check 29.2.20
no changes
--]]
data_final_fixes = true
require("prototypes.entity.logistics")
require ("prototypes.scripts.types")

local local_add_loot_to_entity = function(entityType, entityName, probability, countMin, countMax)
    if data.raw[entityType] ~= nil then
        if data.raw[entityType][entityName] ~= nil then
            if data.raw[entityType][entityName].loot == nil then
                data.raw[entityType][entityName].loot = {}
            end
			local ore_probability = probability * (settings.startup["modmash-alien-ore-chance"].value/100.0)
            table.insert(data.raw[entityType][entityName].loot, 
			{ 
				item = "alien-ore", probability = probability, count_min = countMin, count_max = countMax 
			}
			)
			table.insert(data.raw[entityType][entityName].loot, 
			{ 
				item = "alien-artifact", probability = 0.045, count_min = 1, count_max = 1 
			}
			)
        end
    end end

local local_create_entity_loot = function()
	local max_health = 0
	for i,unit in pairs(data.raw["unit"]) do
		if unit.subgroup == "enemies" and unit.max_health then
			if unit.max_health > max_health then max_health = unit.max_health end
		end end

	for i,unit in pairs(data.raw["unit"]) do
		if unit.subgroup == "enemies" and unit.max_health then
			local min = (unit.max_health/max_health)*3
			local max = (unit.max_health/max_health)*50
			local_add_loot_to_entity("unit",unit.name,0.9,math.ceil(min),math.ceil(max))
		end end
	end

local_create_entity_loot()

--adjusting healing properties of fish as superseded by juice
data.raw["capsule"]["raw-fish"].capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects.damage = {type = "physical", amount = -20}