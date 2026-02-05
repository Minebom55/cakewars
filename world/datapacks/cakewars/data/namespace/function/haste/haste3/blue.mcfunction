clear @a[team= Blue] netherite_pickaxe[ minecraft:custom_model_data= {strings:["haste4"]}]
scoreboard players set @e[tag=trade_blue, limit=1] hastetier 4
#execute as @e[type=villager,tag=trade_blue] run data modify entity @s Offers.Recipes[4].uses set value 0

tellraw @a[team=Blue] {"color":"blue","text":"You now have permanent haste 4!","color":"light_purple"}