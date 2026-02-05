scoreboard players set Blue cake 1
execute as @a[team= Blue] at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~
title @a[team= Blue] title {"color":"dark_red","text":"Cake was destroyed!"}
title @a[team= Blue] subtitle {"color":"gray","text":"You will no longer respawn"}