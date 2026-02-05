clear @a[team= Green] golden_pickaxe[ minecraft:custom_model_data= {strings:["haste1"]}]
scoreboard players set @e[tag=trade_green, limit=1] hastetier 1
execute as @e[type=villager,tag=trade_green] run data modify entity @s Offers.Recipes[3].uses set value 0

tellraw @a[team=Green] {"color":"green","text":"You now have permanent haste 1!","color":"light_purple"}
