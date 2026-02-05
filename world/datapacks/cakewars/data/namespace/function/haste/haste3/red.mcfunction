clear @a[team= Red] netherite_pickaxe[ minecraft:custom_model_data= {strings:["haste4"]}]
scoreboard players set @e[tag=trade_red, limit=1] hastetier 4
#execute as @e[type=villager,tag=trade_red] run data modify entity @s Offers.Recipes[4].uses set value 0

tellraw @a[team=Red] {"color":"red","text":"You now have permanent haste 4!","color":"light_purple"}
