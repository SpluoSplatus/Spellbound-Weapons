
execute as @e[tag=!spellbound_end_excalibur_player,distance=..3.25,type=!#1_splatus:spellbound/misc] at @s[type=#1_splatus:spellbound/small] run particle dragon_breath ~ ~.25 ~ 0 .25 0 .01 14 force @a[distance=..32]
execute as @e[tag=!spellbound_end_excalibur_player,distance=..3.25,type=!#1_splatus:spellbound/misc,type=!#1_splatus:spellbound/small] at @s run particle dragon_breath ~ ~1 ~ 0 .5 0 .01 28 force @a[distance=..32]
execute as @e[tag=!spellbound_end_excalibur_player,distance=..3.25,type=!#1_splatus:spellbound/misc] at @s run damage @s 7 1_splatus:spellbound/magic_force by @s



particle flash ~ ~1 ~ 0 0 0 1 6 force @a[distance=..64]
execute run particle minecraft:dragon_breath ~ ~1 ~ .5 .5 .5 .08 50 force @a[distance=..64]
execute run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 .2 50 force @a[distance=..64]
execute run particle minecraft:end_rod ~ ~1 ~ 0 0 0 .5 140 force @a[distance=..128]
execute run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1.5 20 force @a[distance=..128]
execute run playsound item.trident.thunder player @a[distance=..30] ~ ~ ~ 2 2

execute at @s run scoreboard players set @p spellbound_cooldown 0
