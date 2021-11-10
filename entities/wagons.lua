local Constant = {}
-- Constant.green_tint = {r = 0.4, g = 0.804, b = 0.667}
-- Constant.blue_tint = {r = 0.690, g = 0.75, b = 1}
Constant.nullius1 = { r = 0.7, g = 0.7,  b = 0.6}
Constant.nullius2 = { r = 1, g = 0.9, b = 0.8}
Constant.nullius3 = {r = 0.9, g = 0.95, b = 1}
Constant.nullius4 = {r = 0.9, g = 1, b = 0.95} -- solar
-- cargo-wagon                              mk1                                 mk2                                 mk3
-- max_health                               600                                 1200                                1800
-- max_speed                                1.5                                 1.9                                 2.3
-- friction_force                           0.5                                 0.25                                0.01
-- air_resistance                           0.01                                0.005                               0.0001
-- inventory_size                           40                                  60                                  100
-- color                                    {r=0.43, g=0.23, b= 0, a = 0.5}     {r=0.4, g=0.804, b=0.667, a=0.8}    {r=0.690, g=0.75, b=1}
--
local mk2 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk2.name = "cargo-wagon-mk2"
mk2.minable.result = mk2.name
mk2.max_health = 1200
mk2.weight = 2000
mk2.inventory_size = 80
mk2.max_speed = 1.9
mk2.friction_force = 0.25
mk2.air_resistance = 0.005
mk2.color = Constant.nullius1
--mk2.equipment_grid = "car-medium-equipment-grid"
mk2.equipment_grid = "kr-wagons-grid"

mk2.pictures.layers[1].tint = mk2.color
mk2.pictures.layers[1].hr_version.tint = mk2.color
mk2.pictures.layers[2].apply_runtime_tint = false
mk2.pictures.layers[2].hr_version.apply_runtime_tint = false
mk2.horizontal_doors.layers[3].apply_runtime_tint = false
mk2.horizontal_doors.layers[3].hr_version.apply_runtime_tint = false
mk2.horizontal_doors.layers[5].apply_runtime_tint = false
mk2.horizontal_doors.layers[5].hr_version.apply_runtime_tint = false
mk2.vertical_doors.layers[3].apply_runtime_tint = false
mk2.vertical_doors.layers[3].hr_version.apply_runtime_tint = false
mk2.vertical_doors.layers[5].apply_runtime_tint = false
mk2.vertical_doors.layers[5].hr_version.apply_runtime_tint = false

local mk3 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk3.name = "cargo-wagon-mk3"
mk3.minable.result = mk3.name
mk3.max_health = 1800
mk3.weight = 2200
mk3.inventory_size = 160
mk3.max_speed = 2.3
mk3.friction_force = 0.01
mk3.air_resistance = 0.0001
mk3.color = Constant.nullius2
--mk3.equipment_grid = "car-large-equipment-grid"
mk3.equipment_grid = "kr-wagons-grid"

mk3.pictures.layers[1].tint = mk3.color
mk3.pictures.layers[1].hr_version.tint = mk3.color
mk3.pictures.layers[2].apply_runtime_tint = false
mk3.pictures.layers[2].hr_version.apply_runtime_tint = false
mk3.horizontal_doors.layers[3].apply_runtime_tint = false
mk3.horizontal_doors.layers[3].hr_version.apply_runtime_tint = false
mk3.horizontal_doors.layers[5].apply_runtime_tint = false
mk3.horizontal_doors.layers[5].hr_version.apply_runtime_tint = false
mk3.vertical_doors.layers[3].apply_runtime_tint = false
mk3.vertical_doors.layers[3].hr_version.apply_runtime_tint = false
mk3.vertical_doors.layers[5].apply_runtime_tint = false
mk3.vertical_doors.layers[5].hr_version.apply_runtime_tint = false

local mk4 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
mk4.name = "cargo-wagon-mk4"
mk4.minable.result = mk4.name
mk4.max_health = 2200
mk4.weight = 2400
mk4.inventory_size = 320
mk4.max_speed = 2.7
mk4.friction_force = 0.01
mk4.air_resistance = 0.0001
mk4.color = Constant.nullius3
--mk4.equipment_grid = "car-large-equipment-grid"
mk4.equipment_grid = "kr-wagons-grid"

mk4.pictures.layers[1].tint = mk4.color
mk4.pictures.layers[1].hr_version.tint = mk4.color
mk4.pictures.layers[2].apply_runtime_tint = false
mk4.pictures.layers[2].hr_version.apply_runtime_tint = false
mk4.horizontal_doors.layers[3].apply_runtime_tint = false
mk4.horizontal_doors.layers[3].hr_version.apply_runtime_tint = false
mk4.horizontal_doors.layers[5].apply_runtime_tint = false
mk4.horizontal_doors.layers[5].hr_version.apply_runtime_tint = false
mk4.vertical_doors.layers[3].apply_runtime_tint = false
mk4.vertical_doors.layers[3].hr_version.apply_runtime_tint = false
mk4.vertical_doors.layers[5].apply_runtime_tint = false
mk4.vertical_doors.layers[5].hr_version.apply_runtime_tint = false

data:extend({mk2, mk3, mk4})

local fw2 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw2.name = "fluid-wagon-mk2"
--fw2.equipment_grid = "car-medium-equipment-grid"
fw2.minable.result = fw2.name
fw2.max_health = 1800
fw2.weight = 2000
fw2.max_speed = 1.9
fw2.capacity = 75000
fw2.color = Constant.nullius1
fw2.equipment_grid = "kr-wagons-grid"

fw2.pictures.layers[1].tint = fw2.color
fw2.pictures.layers[1].filenames = {}
for i = 1, 4 do
  table.insert(fw2.pictures.layers[1].filenames, "__base__/graphics/entity/fluid-wagon/fluid-wagon-" .. i .. ".png")
end
fw2.pictures.layers[1].hr_version.tint = fw2.color
fw2.pictures.layers[1].hr_version.filenames = {}
for i = 1, 8 do
  table.insert(fw2.pictures.layers[1].hr_version.filenames, "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-" .. i .. ".png")
end

local fw3 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw3.name = "fluid-wagon-mk3"
--fw3.equipment_grid = "car-large-equipment-grid"
fw3.minable.result = fw3.name
fw3.max_health = 2000
fw3.weight = 2200
fw3.max_speed = 2.3
fw3.capacity = 150000
fw3.color = Constant.nullius2
fw3.equipment_grid = "kr-wagons-grid"

fw3.pictures.layers[1].tint = fw3.color
fw3.pictures.layers[1].filenames = {}
for i = 1, 4 do
  table.insert(fw3.pictures.layers[1].filenames, "__base__/graphics/entity/fluid-wagon/fluid-wagon-" .. i .. ".png")
end
fw3.pictures.layers[1].hr_version.tint = fw3.color
fw3.pictures.layers[1].hr_version.filenames = {}
for i = 1, 8 do
  table.insert(fw3.pictures.layers[1].hr_version.filenames, "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-" .. i .. ".png")
end

local fw4 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fw4.name = "fluid-wagon-mk4"
--fw4.equipment_grid = "car-large-equipment-grid"
fw4.minable.result = fw4.name
fw4.max_health = 2200
fw4.weight = 2400
fw4.max_speed = 2.7
fw4.capacity = 250000
fw4.color = Constant.nullius3
fw4.equipment_grid = "kr-wagons-grid"

fw4.pictures.layers[1].tint = fw4.color
fw4.pictures.layers[1].filenames = {}
for i = 1, 4 do
  table.insert(fw4.pictures.layers[1].filenames, "__base__/graphics/entity/fluid-wagon/fluid-wagon-" .. i .. ".png")
end
fw4.pictures.layers[1].hr_version.tint = fw4.color
fw4.pictures.layers[1].hr_version.filenames = {}
for i = 1, 8 do
  table.insert(fw4.pictures.layers[1].hr_version.filenames, "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-" .. i .. ".png")
end

data:extend({fw2, fw3, fw4})