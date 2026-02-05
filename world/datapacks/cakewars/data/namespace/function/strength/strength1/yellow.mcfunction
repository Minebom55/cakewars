clear @a[team= Yellow] golden_sword[ minecraft:custom_model_data= {strings:["str1"]}]
scoreboard players set @e[tag=trade_yellow, limit=1] streangthtier 1
execute as @e[type=villager,tag=trade_yellow] run data modify entity @s Offers.Recipes[6].uses set value 0

tellraw @a[team=Yellow] {"color":"yellow","text":"You now have permanent strength!","color":"light_purple"}
