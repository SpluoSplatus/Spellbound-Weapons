



execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @n[type=marker,tag=spellbound_firestaff] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @n[type=marker,tag=spellbound_firestaff] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2


execute unless score p spellbound_rotation2 matches -135..135 at @s run function spellbound_weapons:other/action/damage_shield
execute unless score p spellbound_rotation2 matches -135..135 at @n[type=marker,tag=spellbound_firestaff] run particle flame ~ ~ ~ .2 .2 .2 .1 3 force @a[distance=..32]
execute unless score p spellbound_rotation2 matches -135..135 at @n[type=marker,tag=spellbound_firestaff] run particle large_smoke ~ ~ ~ .2 .2 .2 .1 12 force @a[distance=..32]
execute unless score p spellbound_rotation2 matches -135..135 run playsound block.fire.extinguish player @a[distance=..20] ~ ~ ~ 1 2
execute unless score p spellbound_rotation2 matches -135..135 run kill @n[type=marker,tag=spellbound_firestaff]



