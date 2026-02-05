#Spawn protection
execute if block 7 -50 15 minecraft:air run setblock 7 -50 15 minecraft:cake

execute if score playing game matches 0 run effect give @a saturation 2 255 true

#no saturation
execute as @a store result score @s sat run data get entity @s foodSaturationLevel
execute if score ? 10sgame matches 0 as @a if score @s sat > sat sat run effect give @s hunger 1 255 true 
execute if score ? 10sgame matches 0 as @a if score @s sat matches 0 run effect clear @s hunger

# Set players in region to Adventure Mode (except Admins and Minebom55)
execute if score playing game matches 0 in minecraft:overworld as @a if entity @s[team=!Admin,name=!Minebom55,gamemode=!adventure] run gamemode adventure @s

# Set all other players outside region to Survival (still exempting Admin and Minebom55)
#execute in minecraft:overworld as @a[team=!Admin,name=!Minebom55,gamemode=!survival] unless entity @s[x=-23,y=-65,z=-23,dx=63,dy=165,dz=63] run gamemode survival @s

#Lag server by dropping items
kill @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]

#Disable player crafting 
execute as @a unless items entity @s player.crafting.0 minecraft:barrier run item replace entity @s player.crafting.0 with barrier[custom_name={"bold":true,"color":"dark_purple","text":"Do not replace this with any item"},lore=[{"color":"gray","text":"or it will get deleted"}]] 1
execute as @a unless items entity @s player.crafting.1 minecraft:barrier run item replace entity @s player.crafting.1 with barrier[custom_name={"bold":true,"color":"dark_purple","text":"Do not replace this with any item"},lore=[{"color":"gray","text":"or it will get deleted"}]] 1
execute as @a unless items entity @s player.crafting.2 minecraft:barrier run item replace entity @s player.crafting.2 with barrier[custom_name={"bold":true,"color":"dark_purple","text":"Do not replace this with any item"},lore=[{"color":"gray","text":"or it will get deleted"}]] 1
execute as @a unless items entity @s player.crafting.3 minecraft:barrier run item replace entity @s player.crafting.3 with barrier[custom_name={"bold":true,"color":"dark_purple","text":"Do not replace this with any item"},lore=[{"color":"gray","text":"or it will get deleted"}]] 1
execute as @a[team=!Admin] if items entity @s container.* minecraft:barrier run clear @s minecraft:barrier
execute as @a[team=!Admin] if items entity @s weapon.offhand minecraft:barrier run clear @s minecraft:barrier
#execute as Agamer024 if items entity @s container.* minecraft:barrier run clear @s minecraft:barrier

#Test cake checking
execute if block -3 -47 123 #air run say THE CAKE IS GONEEEEEEEEEEEEEEEEEEE


#clear dirt, cobblestone, andesite, stone slabs/stirs, deepslaete tiles/cracked/slabs, deepslate brick stairs skulk sensor/catalist
#chain, soul lanter, raw iron, light gray concrete powder, coal, mud bricks, mudbricks wall, spruce fence, gravel, flint, bucket

execute as @a[team=Blue] if score @e[tag= gen_blue, limit= 1] genTier matches 2 if items entity @s container.* nether_star[ minecraft:custom_model_data= {strings:["tier3"]}] run function namespace:generators/blue/uppgrade_to_3
execute as @a[team=Red] if score @e[tag= gen_red, limit= 1] genTier matches 2 if items entity @s container.* nether_star[ minecraft:custom_model_data= {strings:["tier3"]}] run function namespace:generators/red/uppgrade_to_3
execute as @a[team=Green] if score @e[tag= gen_green, limit= 1] genTier matches 2 if items entity @s container.* nether_star[ minecraft:custom_model_data= {strings:["tier3"]}] run function namespace:generators/green/uppgrade_to_3
execute as @a[team=Yellow] if score @e[tag= gen_yellow, limit= 1] genTier matches 2 if items entity @s container.* nether_star[ minecraft:custom_model_data= {strings:["tier3"]}] run function namespace:generators/yellow/uppgrade_to_3

execute as @a[team=Blue] if score @e[tag= gen_blue, limit= 1] genTier matches 1 if items entity @s container.* resin_brick[ minecraft:custom_model_data= {strings:["tier2"]}] run function namespace:generators/blue/uppgrade_to_2
execute as @a[team=Red] if score @e[tag= gen_red, limit= 1] genTier matches 1 if items entity @s container.* resin_brick[ minecraft:custom_model_data= {strings:["tier2"]}] run function namespace:generators/red/uppgrade_to_2
execute as @a[team=Green] if score @e[tag= gen_green, limit= 1] genTier matches 1 if items entity @s container.* resin_brick[ minecraft:custom_model_data= {strings:["tier2"]}] run function namespace:generators/green/uppgrade_to_2
execute as @a[team=Yellow] if score @e[tag= gen_yellow, limit= 1] genTier matches 1 if items entity @s container.* resin_brick[ minecraft:custom_model_data= {strings:["tier2"]}] run function namespace:generators/yellow/uppgrade_to_2

execute as @a if items entity @s container.* chainmail_boots[custom_model_data= {strings:["bought"]}] run function namespace:armour/chainmail
execute as @a if items entity @s container.* iron_boots[custom_model_data= {strings:["bought"]}] run function namespace:armour/iron
execute as @a if items entity @s container.* diamond_boots[custom_model_data= {strings:["bought"]}] run function namespace:armour/diamond
execute as @a if items entity @s container.* netherite_boots[custom_model_data= {strings:["bought"]}] run function namespace:armour/netherite

#armour
#Healmet
execute if score playing game matches 1 run execute as @a[team=Blue] unless items entity @s armor.head * run item replace entity @s armor.head with leather_helmet[dyed_color=2258099,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Red] unless items entity @s armor.head * run item replace entity @s armor.head with leather_helmet[dyed_color=11744308,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Green] unless items entity @s armor.head * run item replace entity @s armor.head with leather_helmet[dyed_color=1888008,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Yellow] unless items entity @s armor.head * run item replace entity @s armor.head with leather_helmet[dyed_color=16773427,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1

#Cheastplate
execute if score playing game matches 1 run execute as @a[team=Blue] unless items entity @s armor.chest * run item replace entity @s armor.chest with leather_chestplate[dyed_color=2258099,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Red] unless items entity @s armor.chest * run item replace entity @s armor.chest with leather_chestplate[dyed_color=11744308,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Green] unless items entity @s armor.chest * run item replace entity @s armor.chest with leather_chestplate[dyed_color=1888008,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Yellow] unless items entity @s armor.chest * run item replace entity @s armor.chest with leather_chestplate[dyed_color=16773427,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1

#pants
execute if score playing game matches 1 run execute as @a[team=Blue] unless items entity @s armor.legs * run item replace entity @s armor.legs with leather_leggings[dyed_color=2258099,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Red] unless items entity @s armor.legs * run item replace entity @s armor.legs with leather_leggings[dyed_color=11744308,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Green] unless items entity @s armor.legs * run item replace entity @s armor.legs with leather_leggings[dyed_color=1888008,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Yellow] unless items entity @s armor.legs * run item replace entity @s armor.legs with leather_leggings[dyed_color=16773427,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1

#boots
execute if score playing game matches 1 run execute as @a[team=Blue] unless items entity @s armor.feet * run item replace entity @s armor.feet with leather_boots[dyed_color=2258099,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Red] unless items entity @s armor.feet * run item replace entity @s armor.feet with leather_boots[dyed_color=11744308,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Green] unless items entity @s armor.feet * run item replace entity @s armor.feet with leather_boots[dyed_color=1888008,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1
execute if score playing game matches 1 run execute as @a[team=Yellow] unless items entity @s armor.feet * run item replace entity @s armor.feet with leather_boots[dyed_color=16773427,enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1

#clear aromour if you take it
execute as @a if items entity @s container.* leather_helmet run clear @s leather_helmet
execute as @a if items entity @s container.* leather_chestplate run clear @s leather_chestplate
execute as @a if items entity @s container.* leather_leggings run clear @s leather_leggings
execute as @a if items entity @s container.* leather_boots run clear @s leather_boots

#sword
execute if score playing game matches 1 run execute as @a unless items entity @s container.* #swords unless items entity @s player.cursor #swords run give @s wooden_sword[enchantments={"minecraft:vanishing_curse":1},enchantment_glint_override=false,unbreakable={}] 1

#Death logic
execute as @a[team=!Lobby, team=! , team=!Admin] if score @s death matches 1 run function namespace:death_respawn/died
execute unless block 335 199 18 minecraft:cobweb run setblock 335 199 18 minecraft:cobweb

#Dont die at spawn
execute if score playing game matches 0 run effect give @a regeneration 3 10 true

#Cake notify
execute if score playing game matches 1 if score Red cake matches 0 unless block 276 65 53 cake run function namespace:notify-cake/red
execute if score playing game matches 1 if score Green cake matches 0 unless block 572 65 -17 cake run function namespace:notify-cake/green
execute if score playing game matches 1 if score Blue cake matches 0 unless block 276 65 -17 cake run function namespace:notify-cake/blue
execute if score playing game matches 1 if score Yellow cake matches 0 unless block 572 65 53 cake run function namespace:notify-cake/yellow
#cake cords
#blue /setblock 276 64 -17
#red /setblock 276 65 53
#green /setblock 572 65 -17
#yellow /setblock 572 65 53

execute if score playing game matches 1 run function namespace:win-lose/team-player-amount
execute if score playing game matches 1 as @a run function namespace:clear-non-access-items

#Haste
#Check for items
execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] hastetier matches 0 if items entity @s container.* golden_pickaxe[ minecraft:custom_model_data= {strings:["haste1"]}] run function namespace:haste/haste1/blue
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] hastetier matches 0 if items entity @s container.* golden_pickaxe[ minecraft:custom_model_data= {strings:["haste1"]}] run function namespace:haste/haste1/red
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] hastetier matches 0 if items entity @s container.* golden_pickaxe[ minecraft:custom_model_data= {strings:["haste1"]}] run function namespace:haste/haste1/green
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] hastetier matches 0 if items entity @s container.* golden_pickaxe[ minecraft:custom_model_data= {strings:["haste1"]}] run function namespace:haste/haste1/yellow

execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] hastetier matches 1 if items entity @s container.* diamond_pickaxe[ minecraft:custom_model_data= {strings:["haste2"]}] run function namespace:haste/haste2/blue
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] hastetier matches 1 if items entity @s container.* diamond_pickaxe[ minecraft:custom_model_data= {strings:["haste2"]}] run function namespace:haste/haste2/red
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] hastetier matches 1 if items entity @s container.* diamond_pickaxe[ minecraft:custom_model_data= {strings:["haste2"]}] run function namespace:haste/haste2/green
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] hastetier matches 1 if items entity @s container.* diamond_pickaxe[ minecraft:custom_model_data= {strings:["haste2"]}] run function namespace:haste/haste2/yellow

execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] hastetier matches 2 if items entity @s container.* netherite_pickaxe[ minecraft:custom_model_data= {strings:["haste4"]}] run function namespace:haste/haste3/blue
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] hastetier matches 2 if items entity @s container.* netherite_pickaxe[ minecraft:custom_model_data= {strings:["haste4"]}] run function namespace:haste/haste3/red
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] hastetier matches 2 if items entity @s container.* netherite_pickaxe[ minecraft:custom_model_data= {strings:["haste4"]}] run function namespace:haste/haste3/green
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] hastetier matches 2 if items entity @s container.* netherite_pickaxe[ minecraft:custom_model_data= {strings:["haste4"]}] run function namespace:haste/haste3/yellow

#Give effects
execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] hastetier matches 1 run effect give @a[team=Blue] haste 3 0 true
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] hastetier matches 1 run effect give @a[team=Red] haste 3 0 true
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] hastetier matches 1 run effect give @a[team=Green] haste 3 0 true
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] hastetier matches 1 run effect give @a[team=Yellow] haste 3 0 true

execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] hastetier matches 2 run effect give @a[team=Blue] haste 3 1 true
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] hastetier matches 2 run effect give @a[team=Red] haste 3 1 true
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] hastetier matches 2 run effect give @a[team=Green] haste 3 1 true
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] hastetier matches 2 run effect give @a[team=Yellow] haste 3 1 true

execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] hastetier matches 4 run effect give @a[team=Blue] haste 3 3 true
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] hastetier matches 4 run effect give @a[team=Red] haste 3 3 true
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] hastetier matches 4 run effect give @a[team=Green] haste 3 3 true
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] hastetier matches 4 run effect give @a[team=Yellow] haste 3 3 true

#Strength
#Check for items
execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] streangthtier matches 0 if items entity @s container.* golden_sword[ minecraft:custom_model_data= {strings:["str1"]}] run function namespace:strength/strength1/blue
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] streangthtier matches 0 if items entity @s container.* golden_sword[ minecraft:custom_model_data= {strings:["str1"]}] run function namespace:strength/strength1/red
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] streangthtier matches 0 if items entity @s container.* golden_sword[ minecraft:custom_model_data= {strings:["str1"]}] run function namespace:strength/strength1/green
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] streangthtier matches 0 if items entity @s container.* golden_sword[ minecraft:custom_model_data= {strings:["str1"]}] run function namespace:strength/strength1/yellow

execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] streangthtier matches 1 if items entity @s container.* diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}] run function namespace:strength/strength2/blue
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] streangthtier matches 1 if items entity @s container.* diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}] run function namespace:strength/strength2/red
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] streangthtier matches 1 if items entity @s container.* diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}] run function namespace:strength/strength2/green
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] streangthtier matches 1 if items entity @s container.* diamond_sword[ minecraft:custom_model_data= {strings:["str2"]}] run function namespace:strength/strength2/yellow

#Give effects
execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] streangthtier matches 1 run effect give @a[team=Blue] strength 3 0 true
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] streangthtier matches 1 run effect give @a[team=Red] strength 3 0 true
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] streangthtier matches 1 run effect give @a[team=Green] strength 3 0 true
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] streangthtier matches 1 run effect give @a[team=Yellow] strength 3 0 true

execute as @a[team=Blue] if score @e[tag= trade_blue, limit= 1] streangthtier matches 2 run effect give @a[team=Blue] strength 3 1 true
execute as @a[team=Red] if score @e[tag= trade_red, limit= 1] streangthtier matches 2 run effect give @a[team=Red] strength 3 1 true
execute as @a[team=Green] if score @e[tag= trade_green, limit= 1] streangthtier matches 2 run effect give @a[team=Green] strength 3 1 true
execute as @a[team=Yellow] if score @e[tag= trade_yellow, limit= 1] streangthtier matches 2 run effect give @a[team=Yellow] strength 3 1 true

#Die below -70
execute as @a store result score @s y run data get entity @s Pos[1] 1
execute as @a if score playing game matches 1 if score @s y < bottom y run function namespace:death_respawn/died
execute as @a if score playing game matches 1 if score @s y matches 135 run function namespace:death_respawn/died
