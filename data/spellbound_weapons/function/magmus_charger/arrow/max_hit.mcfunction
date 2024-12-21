
execute positioned ~ ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute positioned ~ ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~ ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~1 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute positioned ~-1 ~ ~ run function spellbound_weapons:other/asset/summon_fire





execute positioned ~ ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute positioned ~ ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~ ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~1 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute positioned ~-1 ~ ~ run function spellbound_weapons:other/asset/summon_fire

execute positioned ~1 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~1 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~-1 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute positioned ~-1 ~ ~1 run function spellbound_weapons:other/asset/summon_fire

particle large_smoke ~ ~ ~ 0 0 0 .15 80 normal @a[distance=..64]

execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~4 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~2 ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~2 ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~2 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-3 ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~2 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-2 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~1 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-2 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~3 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-3 ~ ~2 run function spellbound_weapons:other/asset/summon_fire

execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-4 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~1 ~ ~-4 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-1 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~3 ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent run execute positioned ~-2 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire

execute as @s[tag=spellbound_magmus_charger_arrow_area_max_spectral] run effect give @e[distance=..5] glowing 6


#particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
particle explosion ~ ~.5 ~ 2 2 2 0 12 force @a[distance=..256]

particle trial_spawner_detection ~ ~ ~ 1 1 1 .15 200 force @a[distance=..64]
particle trial_spawner_detection ~ ~ ~ 1.2 1.2 1.2 .1 200 force @a[distance=..64]


execute as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid4 run tag @s add spellbound_temp5


execute as @e[distance=..4,type=!#spellbound_weapons:misc] run data merge entity @s {Fire:100s}

#no power enchantss
execute unless score @s spellbound_enchantlevel matches 2.. as @e[distance=..4,type=!#spellbound_weapons:misc] at @s run damage @s 8 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute unless score @s spellbound_enchantlevel matches 2.. as @e[distance=4..6,type=!#spellbound_weapons:misc] at @s run damage @s 4 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]

#power 2 enchanted
execute if score @s spellbound_enchantlevel matches 2 as @e[distance=..4,type=!#spellbound_weapons:misc] at @s run damage @s 9 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 2 as @e[distance=4..6,type=!#spellbound_weapons:misc] at @s run damage @s 4.5 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]

#power 3 enchanted
execute if score @s spellbound_enchantlevel matches 3 as @e[distance=..4,type=!#spellbound_weapons:misc] at @s run damage @s 10 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 3 as @e[distance=4..6,type=!#spellbound_weapons:misc] at @s run damage @s 5 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]

#power 4 enchanted
execute if score @s spellbound_enchantlevel matches 4 as @e[distance=..4,type=!#spellbound_weapons:misc] at @s run damage @s 11 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 4 as @e[distance=4..6,type=!#spellbound_weapons:misc] at @s run damage @s 5.5 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]

#power 5 enchanted
execute if score @s spellbound_enchantlevel matches 5 as @e[distance=..4,type=!#spellbound_weapons:misc] at @s run damage @s 12 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 5 as @e[distance=4..6,type=!#spellbound_weapons:misc] at @s run damage @s 6 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]

tag @a[tag=spellbound_temp5] remove spellbound_temp5

execute as @s[tag=!spellbound_magmus_charger_arrow_max_blue] run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16749124,16775011,16733440,16755200],fade_colors:[I;16711680,16736768]}]}}}}

execute as @s[tag=spellbound_magmus_charger_arrow_max_blue] run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;16711680,16711680,11271423,5556735],fade_colors:[I;7935,2588394]}]}}}}
data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner

#TNT!!!!!!!!!!
execute if score spellbound_tnt spellbound_count matches 1 run summon tnt


#blast off
execute positioned ~ ~.5 ~ as @e[distance=..0.5,type=!#spellbound_weapons:misc] at @s run function spellbound_weapons:magmus_charger/blastoff

#death

playsound entity.generic.explode player @a[distance=..48] ~ ~ ~ 6 .8
playsound entity.generic.explode player @a[distance=..48] ~ ~ ~ 5 .6

kill @s