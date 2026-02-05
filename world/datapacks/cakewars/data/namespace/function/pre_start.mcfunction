schedule function namespace:start 3s
tellraw @a ["",{"text":"\n"},{"text":"Starting game...","color":"dark_red"}]
execute as @a if entity @s[team= ] run function namespace:start_canceled
execute as @a if entity @s[team=Lobby] run function namespace:start_canceled
execute as @a if entity @s[team=Admin] run function namespace:start_canceled