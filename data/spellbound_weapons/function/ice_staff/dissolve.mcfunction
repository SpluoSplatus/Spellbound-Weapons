particle poof ~ ~.62 ~ 0 0 0 .085 1 force @a[distance=..64]
execute if score @s spellbound_count matches 200 run playsound minecraft:entity.player.swim block @a[distance=..30] ~ ~ ~ 1.75 .8

execute if score @s spellbound_count matches 224 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",count:1}]}
execute if score @s spellbound_count matches 225.. run playsound minecraft:entity.drowned.swim block @a[distance=..30] ~ ~ ~ 1.5 1.2
execute if score @s spellbound_count matches 225.. run particle minecraft:falling_water ~ ~.62 ~ .4 .4 .4 .3 50 force @a[distance=..64]
execute if score @s spellbound_count matches 223.. run particle block{block_state:"water"} ~ ~.62 ~ .25 .25 .25 .2 50 force @a[distance=..64]
execute if score @s spellbound_count matches 225.. run kill @s