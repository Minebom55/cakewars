execute as @e[tag= gen_blue, limit= 1] at @s run place template minecraft:tier2

execute as @e[tag= gen_blue, limit= 1] if score @s genTier matches 1 run schedule function namespace:generators/blue/spawn_tier2 6s
execute as @e[tag= gen_blue, limit= 1] if score @s genTier matches 2 run schedule function namespace:generators/blue/spawn_tier2 4s
execute as @e[tag= gen_blue, limit= 1] if score @s genTier matches 3 run schedule function namespace:generators/blue/spawn_tier2 2s