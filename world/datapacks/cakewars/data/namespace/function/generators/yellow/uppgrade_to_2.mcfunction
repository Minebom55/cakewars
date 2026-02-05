clear @a[team= Yellow] resin_brick[ minecraft:custom_model_data= {strings:["tier2"]}]
scoreboard players set @e[tag=gen_yellow] genTier 2
execute as @e[type=villager,tag=trade_yellow] run data modify entity @s Offers.Recipes[1].uses set value 0

tellraw @a[team=Yellow] {"color":"#e5f507","hover_event":{"action":"show_text","value":[{"text":"Your generator at the base will now generate faster!","color":"light_purple"}]},"text":"Your generator has been upgraded to Tier 2!"}