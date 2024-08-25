
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2


execute unless score p spellbound_rotation2 matches -135..135 at @s run function 1_splatus:spellbound/other/action/damage_shield
execute unless score p spellbound_rotation2 matches -135..135 positioned ~ ~1 ~ positioned ^ ^ ^.25 as @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] run function 1_splatus:spellbound/moonlight_edge/hit
execute if score p spellbound_rotation2 matches -135..135 run damage @s 8 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]
