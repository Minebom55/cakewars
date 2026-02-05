clear @a[team= Blue] diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}]
scoreboard players set @e[tag=trade_blue, limit=1] streangthtier 2

tellraw @a[team=Blue] {"color":"blue","text":"You now have permanent strength 2!","color":"light_purple"}