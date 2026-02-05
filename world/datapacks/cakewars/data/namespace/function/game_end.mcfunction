scoreboard players set playing game 0
#Tp everyone to lobby
execute in minecraft:overworld run tp @a 8.48 -59.00 8.79 0.0 0.0

gamemode adventure @a

#Reset teams
team empty Blue
team empty Yellow
team empty Green
team empty Red
team join Lobby @a


#stops gens
kill @e[tag= gen_blue]
kill @e[tag= gen_green]
kill @e[tag= gen_red]
kill @e[tag= gen_yellow]
kill @e[tag= tier4]
kill @e[tag= tier3]

#Removes vilagers
#Team upgrades
kill @e[tag= trade_blue]
kill @e[tag= trade_red]
kill @e[tag= trade_green]
kill @e[tag= trade_yellow]
#Trades
kill @e[tag= blue_shop]
kill @e[tag= red_shop]
kill @e[tag= green_shop]
kill @e[tag= yellow_shop]

#Removes excess items
kill @e[type=item]

#effect give @a saturation infinite 255 true
clear @a

spawnpoint @a 8 -59 8
scoreboard players set ? 10sgame 1

#Unblock team chosing
fill 25 -60 8 25 -58 11 air