playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8

execute unless entity @e[distance=0.0001..5,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s positioned ^ ^ ^3 run particle minecraft:block moss_block ~ ~1.62 ~ .3 .3 .3 5 3 normal
execute as @e[distance=0.0001..5,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s run function 1_splatus:spellbound/other/hits/thorn_blossom
