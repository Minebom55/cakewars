clear @a[team= Green] golden_sword[ minecraft:custom_model_data= {strings:["str1"]}]
scoreboard players set @e[tag=trade_green, limit=1] streangthtier 1
execute as @e[type=villager,tag=trade_green] run data modify entity @s Offers.Recipes[6].uses set value 0

tellraw @a[team=Green] {"color":"green","text":"You now have permanent strength!","color":"light_purple"}
