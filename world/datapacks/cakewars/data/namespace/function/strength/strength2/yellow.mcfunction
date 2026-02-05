clear @a[team= Yellow] diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}]
scoreboard players set @e[tag=trade_yellow, limit=1] streangthtier 2

tellraw @a[team=Yellow] {"color":"yellow","text":"You now have permanent strength 2!","color":"light_purple"}
