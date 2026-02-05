#Adds scoreboard
scoreboard objectives add genTier dummy
scoreboard objectives add game dummy
scoreboard objectives add armor dummy
scoreboard objectives add death deathCount
scoreboard objectives add cake dummy
scoreboard objectives add empty dummy
scoreboard objectives add sat dummy
scoreboard players set sat sat 0
scoreboard objectives add 10sgame dummy
scoreboard players set ? 10sgame 1
scoreboard objectives add hastetier dummy
scoreboard objectives add streangthtier dummy
scoreboard objectives add y dummy
scoreboard players set bottom y -70

#haste tier scoreboard
scoreboard players set @e[tag= trade_blue, limit= 1] hastetier 0
scoreboard players set @e[tag= trade_red, limit= 1] hastetier 0
scoreboard players set @e[tag= trade_green, limit= 1] hastetier 0
scoreboard players set @e[tag= traden_yellow, limit= 1] hastetier 0

scoreboard players set @e[tag= trade_blue, limit= 1] streangthtier 0
scoreboard players set @e[tag= trade_red, limit= 1] streangthtier 0
scoreboard players set @e[tag= trade_green, limit= 1] streangthtier 0
scoreboard players set @e[tag= trade_yellow, limit= 1] streangthtier 0



effect give @a saturation infinite 255 true

#Adds and fixes teams
team add Red
team modify Red color dark_red
team modify Red friendlyFire false
team modify Red prefix {"text":"[Red Team] ","bold":true,"color":"dark_red"}

team add Blue
team modify Blue color blue
team modify Blue friendlyFire false
team modify Blue prefix {"text":"[Blue Team] ","bold":true,"color":"blue"}

team add Yellow
team modify Yellow color yellow
team modify Yellow friendlyFire false
team modify Yellow prefix {"text":"[Yellow Team] ","bold":true,"color":"yellow"}

team add Green
team modify Green color dark_green
team modify Green friendlyFire false
team modify Green prefix {"text":"[Green Team] ","bold":true,"color":"dark_green"}

team add Lobby
team modify Lobby friendlyFire false

team add Admin

execute in minecraft:overworld run forceload add 233 -43 621 84

recipe give @a *

difficulty easy
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule doWardenSpawning false
gamerule doInsomnia false

#Load text (be at the end)
tellraw @a [{"text":"\n\n "}]
tellraw @a ["",{"text":"The ","color":"dark_purple"},{"text":"cakewars ","color":"red","hoverEvent":{"action":"show_text","contents":"My version of bedwars"}},{"text":"datapack ","color":"aqua"},{"text":"has ","color":"dark_green"},{"text":"loaded","color":"yellow"},{"text":"\n\n "}]



