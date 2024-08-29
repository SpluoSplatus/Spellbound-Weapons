particle block{block_state:"moss_block"} ~ ~1 ~ .3 .5 .3 0 75 force @a[distance=..64]
damage @s 3 minecraft:fly_into_wall
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.5
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:enchant.thorns.hit player @a[distance=..32] ~ ~ ~ 1 1.3

kill @e[type=marker,tag=spellbound_temp]
tag @s remove spellbound_temp2