
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @n[type=marker,tag=spellbound_blowgun_arrow_raycast] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2

execute unless score p spellbound_rotation2 matches -135..135 at @s run function spellbound_weapons:other/action/damage_shield
execute unless score p spellbound_rotation2 matches -135..135 run tag @n[type=marker,tag=spellbound_blowgun_arrow_raycast] remove spellbound_blowgun_arrow_raycast_flame
execute unless score p spellbound_rotation2 matches -135..135 run kill @n[type=marker,tag=spellbound_blowgun_arrow_raycast]

execute if entity @n[type=marker,tag=spellbound_blowgun_arrow_raycast_speed_slow,distance=..0.0001] if score p spellbound_rotation2 matches -135..135 run damage @s 2 spellbound_weapons:projectile by @p[tag=spellbound_temp5]
execute if entity @n[type=marker,tag=!spellbound_blowgun_arrow_raycast_speed_slow,distance=..0.0001] if score p spellbound_rotation2 matches -135..135 run damage @s 3.5 spellbound_weapons:projectile by @p[tag=spellbound_temp5]

