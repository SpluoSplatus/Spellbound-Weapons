
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @n[type=marker,tag=spellbound_sand_wind] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @n[type=marker,tag=spellbound_sand_wind] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2



execute unless score p spellbound_rotation2 matches -135..135 at @s run function spellbound_weapons:other/action/damage_shield_low
execute unless score p spellbound_rotation2 matches -135..135 as @n[type=marker,tag=spellbound_sand_wind] at @s run function spellbound_weapons:windswept_sword/wind_hit

