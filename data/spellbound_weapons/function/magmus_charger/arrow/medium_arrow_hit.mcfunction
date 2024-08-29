
execute positioned ~ ~ ~ run function spellbound_weapons:other/asset/summon_fire




execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~ ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~1 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~2 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~ ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-1 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-2 ~ ~1 run function spellbound_weapons:other/asset/summon_fire




execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-1 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~2 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~1 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-3 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~2 ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~2 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-2 ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-1 ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~2 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~-2 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~ ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/20_percent run execute positioned ~2 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire



particle explosion ~ ~.5 ~ 2 2 2 0 12 force @a[distance=..256]

particle trial_spawner_detection ~ ~-1 ~ 1 0.5 1 .1 100 force @a[distance=..64]
particle trial_spawner_detection ~ ~-1 ~ 1 0.5 1 .05 100 force @a[distance=..64]


execute as @e[distance=..3,type=!#spellbound_weapons:misc] run data merge entity @s {Fire:80s}

execute as @a if score @s spellbound_uuid = @n[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid if score @s spellbound_uuid2 = @n[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid4 run tag @s add spellbound_temp5

execute as @e[distance=..3,type=!#spellbound_weapons:misc] at @s run damage @s 5 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
playsound entity.generic.explode player @a[distance=..48] ~ ~ ~ 4 1.2

tag @a remove spellbound_temp5

kill @s
kill @e[distance=..5,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area,sort=nearest,limit=1]