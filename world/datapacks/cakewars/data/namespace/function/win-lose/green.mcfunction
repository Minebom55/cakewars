title @a[team=Green] title {"color":"green","text":"Your team won!"}
title @a[team=!Green] title {"color":"red","text":"Your team lost"}
title @a[team=!Green] subtitle " "
tellraw @a [{"text":"\n"}]
tellraw @a {"color":"green","text":"Green Team won!"}
tellraw @a [{"text":"\n"}]
function namespace:game_end