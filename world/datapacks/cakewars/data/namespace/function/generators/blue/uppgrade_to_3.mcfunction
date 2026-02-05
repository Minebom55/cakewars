clear @a[team= Blue] nether_star[ minecraft:custom_model_data= {strings:["tier3"]}]
scoreboard players set @e[tag=gen_blue] genTier 3

tellraw @a[team=Blue] {"color":"aqua","hover_event":{"action":"show_text","value":[{"text":"Your generator at the base will now spawn nether stars!","color":"light_purple"}]},"text":"Your generator has been upgraded to Tier 3!"}