execute as @e[tag= gen_yellow, limit= 1] at @s if score @s genTier matches 3 run place template minecraft:tier4

execute as @e[tag= gen_yellow, limit= 1] if score @s genTier matches 1 run schedule function namespace:generators/yellow/spawn_tier4 1s
execute as @e[tag= gen_yellow, limit= 1] if score @s genTier matches 2 run schedule function namespace:generators/yellow/spawn_tier4 1s

execute as @e[tag= gen_yellow, limit= 1] if score @s genTier matches 3 run schedule function namespace:generators/yellow/spawn_tier4 15s