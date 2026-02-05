clear @a[team= Green] diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}]
scoreboard players set @e[tag=trade_green, limit=1] streangthtier 2

tellraw @a[team=Green] {"color":"green","text":"You now have permanent strength 2!","color":"light_purple"}
