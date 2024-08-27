

playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .5 .5
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .5 2
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .5 2
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .5 2

tag @s add spellbound_end_excalibur_player
execute if score @s spellbound_cooldown matches 50..199 as @e[distance=0.001..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:other/hits/end_excalibur

execute if score @s spellbound_cooldown matches 50..199 unless entity @e[distance=0.001..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] positioned ^ ^ ^3.5 run function spellbound_weapons:other/hits/end_excalibur

scoreboard players set @s spellbound_cooldown 0
tag @s remove spellbound_end_excalibur_player


tag @s remove spellbound_temp5