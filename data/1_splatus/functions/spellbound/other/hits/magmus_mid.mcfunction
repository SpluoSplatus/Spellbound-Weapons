
execute positioned ~ ~ ~ run function 1_splatus:spellbound/other/asset/summon_fire




execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~ ~ ~2 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~1 ~ ~ run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~2 ~ ~-1 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~ ~ ~1 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-1 ~ ~ run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-2 ~ ~1 run function 1_splatus:spellbound/other/asset/summon_fire




execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-1 ~ ~-1 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~2 ~ ~3 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~1 ~ ~1 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-3 ~ ~1 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~2 ~ ~-2 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~2 ~ ~-1 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-2 ~ ~-2 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-1 ~ ~2 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~2 ~ ~ run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~-2 ~ ~ run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~ ~ ~-2 run function 1_splatus:spellbound/other/asset/summon_fire
execute if predicate 1_splatus:spellbound/chance/20_percent run execute positioned ~2 ~ ~-1 run function 1_splatus:spellbound/other/asset/summon_fire



particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]
execute as @e[distance=..3,type=!#1_splatus:spellbound/misc] run data merge entity @s {Fire:80s}

execute as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid4 run tag @s add spellbound_temp5

execute as @e[distance=..3,type=!#1_splatus:spellbound/misc] at @s run damage @s 5 1_splatus:spellbound/explosion by @p[tag=spellbound_temp5]
playsound entity.generic.explode player @a[distance=..48] ~ ~ ~ 4 1.2

tag @a remove spellbound_temp5

kill @s
kill @e[distance=..5,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area,sort=nearest,limit=1]