clear @a[team= Yellow] diamond_pickaxe[ minecraft:custom_model_data= {strings:["haste2"]}]
scoreboard players set @e[tag=trade_yellow, limit=1] hastetier 2
execute as @e[type=villager,tag=trade_yellow] run data modify entity @s Offers.Recipes[4].uses set value 0

tellraw @a[team=Yellow] {"color":"yellow","text":"You now have permanent haste 2!","color":"light_purple"}
