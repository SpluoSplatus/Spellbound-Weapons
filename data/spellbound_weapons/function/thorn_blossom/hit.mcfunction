tag @s add spellbound_thorn_blossom_player

playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8

execute unless entity @e[distance=0.0001..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s positioned ^ ^ ^3 run function spellbound_weapons:thorn_blossom/hit_mob

execute at @e[distance=0.0001..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:thorn_blossom/hit_mob

tag @s remove spellbound_thorn_blossom_player
