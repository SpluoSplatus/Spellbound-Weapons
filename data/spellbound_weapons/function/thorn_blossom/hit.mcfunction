tag @s add spellbound_thorn_blossom_player


execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_cherry] run playsound block.cherry_leaves.break player @a[distance=..32] ~ ~ ~ 1 .8
execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_diamond] run playsound block.gravel.break player @a[distance=..32] ~ ~ ~ .5 .6

playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8

execute unless entity @e[distance=0.0001..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s positioned ^ ^ ^3 run function spellbound_weapons:thorn_blossom/hit_mob

execute at @e[distance=0.0001..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:thorn_blossom/hit_mob

tag @s remove spellbound_thorn_blossom_player
