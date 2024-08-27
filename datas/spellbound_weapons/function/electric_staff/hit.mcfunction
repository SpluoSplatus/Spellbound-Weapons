scoreboard players add @s spellbound_count 1

execute run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
particle large_smoke ~ ~ ~ 0 0 0 .05 5 force @a[distance=..64]

playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..45] ~ ~ ~ 3 2
playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 3 1.25
particle flash ~ ~ ~ 0 0 0 .1 2 force @a[distance=..64]
particle end_rod ~ ~ ~ 0 0 0 .5 5 force @a[distance=..64]



execute as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid4 run tag @s add spellbound_temp5
execute as @e[distance=..1,type=!#spellbound_weapons:misc,tag=!spellbound_electric_staff_immune] run damage @s 7 spellbound_weapons:magic by @p[tag=spellbound_temp5]
tag @a remove spellbound_temp5