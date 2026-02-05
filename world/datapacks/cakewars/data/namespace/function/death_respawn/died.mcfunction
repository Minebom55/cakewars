
clear @s

#blue
#cake is alive
execute if entity @s[team=Blue] if block 276 65 -17 cake run execute in minecraft:overworld run tp @s 335.30 198.58 18.50 448.35 2.55
execute if entity @s[team=Blue] if block 276 65 -17 cake run title @s title {"bold":true,"color":"dark_purple","text":"You will respawn in soon..."}
execute if entity @s[team=Blue] if block 276 65 -17 cake run gamemode survival @s
execute if entity @s[team=Blue] if block 276 65 -17 cake run effect give @s weakness 3 255 true
#Cake not allive
execute if entity @s[team=Blue] unless block 276 65 -17 cake run gamemode spectator @s
execute if entity @s[team=Blue] unless block 276 65 -17 cake run title @s title {"color":"dark_red","text":"You died"}
execute if entity @s[team=Blue] unless block 276 65 -17 cake run title @s subtitle {"color":"red","text":"and wont respawn becuse your cake is broken"}
execute if entity @s[team=Blue] unless block 276 65 -17 cake run execute in minecraft:overworld run tp @s 426.35 195.92 15.84 0.46 87.75
execute if entity @s[team=Blue] unless block 276 65 -17 cake run team join Lobby @s

#Red
#Cake is alive
execute if entity @s[team=Red] if block 276 65 53 cake run execute in minecraft:overworld run tp @s 335.30 198.58 18.50 448.35 2.55
execute if entity @s[team=Red] if block 276 65 53 cake run title @s title {"bold":true,"color":"dark_purple","text":"You will respawn in soon..."}
execute if entity @s[team=Red] if block 276 65 53 cake run gamemode survival @s
execute if entity @s[team=Red] if block 276 65 53 cake run effect give @s weakness 3 255 true
#Cake not alive
execute if entity @s[team=Red] unless block 276 65 53 cake run gamemode spectator @s
execute if entity @s[team=Red] unless block 276 65 53 cake run title @s title {"color":"dark_red","text":"You died"}
execute if entity @s[team=Red] unless block 276 65 53 cake run title @s subtitle {"color":"red","text":"and wont respawn becuse your cake is broken"}
execute if entity @s[team=Red] unless block 276 65 53 cake run execute in minecraft:overworld run tp @s 426.35 195.92 15.84 0.46 87.75
execute if entity @s[team=Red] unless block 276 65 53 cake run team join Lobby @s

#Green
#cake is allive
execute if entity @s[team=Green] if block 572 65 -17 cake run execute in minecraft:overworld run tp @s 335.30 198.58 18.50 448.35 2.55
execute if entity @s[team=Green] if block 572 65 -17 cake run title @s title {"bold":true,"color":"dark_purple","text":"You will respawn in soon..."}
execute if entity @s[team=Green] if block 572 65 -17 cake run gamemode survival @s
execute if entity @s[team=Green] if block 572 65 -17 cake run effect give @s weakness 3 255 true
#Cake not alive
execute if entity @s[team=Green] unless block 572 65 -17 cake run gamemode spectator @s
execute if entity @s[team=Green] unless block 572 65 -17 cake run title @s title {"color":"dark_red","text":"You died"}
execute if entity @s[team=Green] unless block 572 65 -17 cake run title @s subtitle {"color":"red","text":"and wont respawn becuse your cake is broken"}
execute if entity @s[team=Green] unless block 572 65 -17 cake run execute in minecraft:overworld run tp @s 426.35 195.92 15.84 0.46 87.75
execute if entity @s[team=Green] unless block 572 65 -17 cake run team join Lobby @s

#Yellow
#cake is allive
execute if entity @s[team= Yellow] if block 572 65 53 cake run execute in minecraft:overworld run tp @s 335.30 198.58 18.50 448.35 2.55
execute if entity @s[team= Yellow] if block 572 65 53 cake run title @s title {"bold":true,"color":"dark_purple","text":"You will respawn in soon..."}
execute if entity @s[team= Yellow] if block 572 65 53 cake run gamemode survival @s
execute if entity @s[team= Yellow] if block 572 65 53 cake run effect give @s weakness 3 255 true
#Cake not alive
execute if entity @s[team=Yellow] unless block 572 65 53 cake run gamemode spectator @s
execute if entity @s[team=Yellow] unless block 572 65 53 cake run title @s title {"color":"dark_red","text":"You died"}
execute if entity @s[team=Yellow] unless block 572 65 53 cake run title @s subtitle {"color":"red","text":"and wont respawn becuse your cake is broken"}
execute if entity @s[team=Yellow] unless block 572 65 53 cake run execute in minecraft:overworld run tp @s 426.35 195.92 15.84 0.46 87.75
execute if entity @s[team=Yellow] unless block 572 65 53 cake run team join Lobby @s

scoreboard players set @s death 0
#cake cords
#blue /setblock 276 64 -17
#red /setblock 276 65 53
#green /setblock 572 65 -17
#yellow /setblock 572 65 53

