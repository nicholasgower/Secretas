local all_lab_types = data.raw['lab']

for k,v in pairs(all_lab_types) do
    table.insert(v.inputs,"golden-science-pack") --add my science pack to all labs
end

data.raw['furnace']['recycler'].result_inventory_size = 40
--data.raw["utility-constants"]["default"].max_belt_stack_size = 5


-- fix the gas giant resource patches so they can be placed on secretas.
if mods["dea-dia-system"] then
    for _,resource in pairs(data.raw["resource"]) do
        if resource.category == "gas-giant" then
            table.insert(resource.autoplace.tile_restriction,"secretas-surface")
        end
    end
end