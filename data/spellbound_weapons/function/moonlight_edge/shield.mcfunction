
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2


execute unless score p spellbound_rotation2 matches -135..135 at @s run function spellbound_weapons:other/action/damage_shield
execute unless score p spellbound_rotation2 matches -135..135 positioned ~ ~1 ~ positioned ^ ^ ^.25 as @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] run function spellbound_weapons:moonlight_edge/beam_hit
execute if score p spellbound_rotation2 matches -135..135 run damage @s 8 spellbound_weapons:magic by @p[tag=spellbound_temp5]
