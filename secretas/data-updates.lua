local all_lab_types = data.raw['lab']

for k,v in pairs(all_lab_types) do
    table.insert(v.inputs,"golden-science-pack") --add my science pack to all labs
end

data.raw['furnace']['recycler'].result_inventory_size = 40

local all_packs = data.raw['tool']
--log("all_packs=")
--log(serpent.block(all_packs))
for k,v in pairs(all_packs) do
    if(v.subgroup == "science-pack") then
        
        
        if(data.raw["recipe"][v.name] ~= nil and v.name ~= "automation-science-pack" and v.name ~= "logistic-science-pack" and v.name ~= "chemical-science-pack" and v.name ~= "military-science-pack" and v.name ~= "production-science-pack" and v.name ~= "utility-science-pack" and v.name ~= "space-science-pack" and v.name ~= "metallurgic-science-pack"  and v.name ~= "electromagnetic-science-pack"  and v.name ~= "agricultural-science-pack"  and v.name ~= "cryogenic-science-pack"  and v.name ~= "golden-science-pack"  and v.name ~= "promethium-science-pack" ) then
            local insert_science =         {
                type = "change-recipe-productivity",
                recipe = v.name,
                change = 0.01
            }
            local insert_ingredients = {v.name, 1}
            
            table.insert(data.raw['technology']["science-pack-productivity"].effects,insert_science)
            table.insert(data.raw['technology']["science-pack-productivity"].unit.ingredients,insert_ingredients)
        end
    end
end

