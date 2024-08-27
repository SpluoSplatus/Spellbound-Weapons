
execute if predicate spellbound_weapons:chance/50_percent positioned ~ ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent positioned ~ ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent positioned ~-1 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/50_percent positioned ~1 ~ ~ run function spellbound_weapons:other/asset/summon_fire
function spellbound_weapons:other/asset/summon_fire

execute if entity @s[tag=spellbound_firestaff_enchanted] positioned ~1 ~ ~1 if predicate spellbound_weapons:chance/50_percent run function spellbound_weapons:other/asset/summon_fire
execute if entity @s[tag=spellbound_firestaff_enchanted] positioned ~-1 ~ ~1 if predicate spellbound_weapons:chance/50_percent run function spellbound_weapons:other/asset/summon_fire
execute if entity @s[tag=spellbound_firestaff_enchanted] positioned ~-1 ~ ~-1 if predicate spellbound_weapons:chance/50_percent run function spellbound_weapons:other/asset/summon_fire
execute if entity @s[tag=spellbound_firestaff_enchanted] positioned ~1 ~ ~-1 if predicate spellbound_weapons:chance/50_percent run function spellbound_weapons:other/asset/summon_fire

execute as @a[distance=..2] at @s as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid4 run damage @p 10 spellbound_weapons:magic by @s


#execute as @e[distance=..2,type=!#spellbound_weapons:misc] run data merge entity @s {Fire:60s}

#damage
execute as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid4 run tag @s add spellbound_temp5
execute as @e[distance=..1,type=!#spellbound_weapons:misc] run damage @s 7 spellbound_weapons:explosion by @p[tag=spellbound_temp5]
tag @a remove spellbound_temp5

particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..128]
playsound entity.generic.explode player @a[distance=..64] ~ ~ ~ 3 .8
particle large_smoke ~ ~.25 ~ 1 0 1 0 30 force @a[distance=..64]
kill @s