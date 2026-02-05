clear @a[team= Yellow] nether_star[ minecraft:custom_model_data= {strings:["tier3"]}]
scoreboard players set @e[tag=gen_yellow] genTier 3

tellraw @a[team=Yellow] {"color":"#f5ff66","hover_event":{"action":"show_text","value":[{"text":"Your generator at the base will now spawn nether stars!","color":"light_purple"}]},"text":"Your generator has been upgraded to Tier 3!"}

