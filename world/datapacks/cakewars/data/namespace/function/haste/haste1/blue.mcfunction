clear @a[team= Blue] golden_pickaxe[ minecraft:custom_model_data= {strings:["haste1"]}]
scoreboard players set @e[tag=trade_blue, limit=1] hastetier 1
execute as @e[type=villager,tag=trade_blue] run data modify entity @s Offers.Recipes[3].uses set value 0

tellraw @a[team=Blue] {"color":"blue","text":"You now have permanent haste 1!","color":"light_purple"}
