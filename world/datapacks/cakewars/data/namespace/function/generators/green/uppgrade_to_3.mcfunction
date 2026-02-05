clear @a[team= Green] nether_star[ minecraft:custom_model_data= {strings:["tier3"]}]
scoreboard players set @e[tag=gen_green] genTier 3

tellraw @a[team=Green] {"color":"green","hover_event":{"action":"show_text","value":[{"text":"Your generator at the base will now spawn nether stars!","color":"light_purple"}]},"text":"Your generator has been upgraded to Tier 3!"}