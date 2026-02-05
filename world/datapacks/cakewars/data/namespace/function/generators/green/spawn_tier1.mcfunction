execute as @e[tag= gen_green, limit= 1] at @s run place template minecraft:tier1

execute as @e[tag= gen_green, limit= 1] if score @s genTier matches 1 run schedule function namespace:generators/green/spawn_tier1 1s
execute as @e[tag= gen_green, limit= 1] if score @s genTier matches 2 run schedule function namespace:generators/green/spawn_tier1 0.5s
execute as @e[tag= gen_green, limit= 1] if score @s genTier matches 3 run schedule function namespace:generators/green/spawn_tier1 0.25s