clear @a[team= Red] diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}]
scoreboard players set @e[tag=trade_red, limit=1] streangthtier 2

tellraw @a[team=Red] {"color":"red","text":"You now have permanent strength 2!","color":"light_purple"}
