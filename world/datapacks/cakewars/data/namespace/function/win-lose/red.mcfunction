title @a[team=Red] title {"color":"green","text":"Your team won!"}
title @a[team=!Red] title {"color":"red","text":"Your team lost"}
title @a[team=!Red] subtitle " "
tellraw @a [{"text":"\n"}]
tellraw @a {"color":"red","text":"Red Team won!"}
tellraw @a [{"text":"\n"}]
function namespace:game_end