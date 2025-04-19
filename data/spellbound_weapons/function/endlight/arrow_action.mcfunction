tag @s add spellbound_endlight_arrow
particle end_rod ~ ~ ~ 0 0 0 .1 2 force @a[distance=..32]

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:block",block_state:"minecraft:air"},Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_endlight_area"]}
execute store result score @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid run data get entity @s Owner[0]
execute store result score @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid2 run data get entity @s Owner[1]
execute store result score @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid3 run data get entity @s Owner[2]
execute store result score @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid4 run data get entity @s Owner[3]

