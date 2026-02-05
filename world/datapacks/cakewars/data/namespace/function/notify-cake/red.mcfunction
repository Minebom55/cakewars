scoreboard players set Red cake 1
execute as @a[team= Red] at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~
title @a[team= Red] title {"color":"dark_red","text":"Cake was destroyed!"}
title @a[team= Red] subtitle {"color":"gray","text":"You will no longer respawn"}