execute as @e[tag=tier3] at @s run place template tier3 ~ ~1 ~

execute if entity @e[tag=tier3] run schedule function namespace:generators/global/tier3 30s