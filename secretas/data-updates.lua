local all_lab_types = data.raw['lab']

for k,v in pairs(all_lab_types) do
    table.insert(v.inputs,"golden-science-pack") --add my science pack to all labs
end

