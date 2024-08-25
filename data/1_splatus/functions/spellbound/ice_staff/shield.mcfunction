
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2


execute unless score p spellbound_rotation2 matches -135..135 at @s run function 1_splatus:spellbound/other/action/_shield
execute unless score p spellbound_rotation2 matches -135..135 positioned ~ ~1 ~ positioned ^ ^ ^.25 as @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] run function 1_splatus:spellbound/ice_staff/break_ice
execute if score p spellbound_rotation2 matches -135..135 run function 1_splatus:spellbound/ice_staff/freeze
execute if score p spellbound_rotation2 matches -135..135 run tag @s add spellbound_frostenchanted


