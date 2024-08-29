
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @n[type=armor_stand,tag=spellbound_ice_staff_ice] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2


execute unless score p spellbound_rotation2 matches -135..135 at @s run function spellbound_weapons:other/action/damage_shield
execute unless score p spellbound_rotation2 matches -135..135 positioned ~ ~1 ~ positioned ^ ^ ^.25 as @n[type=armor_stand,tag=spellbound_ice_staff_ice] run function spellbound_weapons:ice_staff/break_ice
execute if score p spellbound_rotation2 matches -135..135 run function spellbound_weapons:ice_staff/freeze
execute if score p spellbound_rotation2 matches -135..135 run tag @s add spellbound_frostenchanted


