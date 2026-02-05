title @a[team=Yellow] title {"color":"green","text":"Your team won!"}
title @a[team=!Yellow] title {"color":"red","text":"Your team lost"}
title @a[team=!Yellow] subtitle " "
tellraw @a [{"text":"\n"}]
tellraw @a {"color":"yellow","text":"Yellow Team won!"}
tellraw @a [{"text":"\n"}]
function namespace:game_end