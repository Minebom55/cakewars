title @a[team=Blue] title {"color":"green","text":"Your team won!"}
title @a[team=!Blue] title {"color":"red","text":"Your team lost"}
title @a[team=!Blue] subtitle " "
tellraw @a [{"text":"\n"}]
tellraw @a {"color":"blue","text":"Blue Team won!"}
tellraw @a [{"text":"\n"}]
function namespace:game_end