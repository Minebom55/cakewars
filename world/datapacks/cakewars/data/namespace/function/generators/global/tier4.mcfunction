execute as @e[tag=tier4] at @s run place template tier4 ~ ~1 ~

execute if entity @e[tag=tier4] run schedule function namespace:generators/global/tier4 40s