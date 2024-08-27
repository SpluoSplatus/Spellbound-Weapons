scoreboard players add @s spellbound_count 1
particle effect ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score count spellbound_count matches 1 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score count spellbound_count matches 5 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score count spellbound_count matches 10 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score count spellbound_count matches 15 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score count spellbound_count matches 20 run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]


execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_netherlight=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_netherlight=1..}] Rotation[0]
execute if score @s spellbound_count matches 1.. run tp @s ^ ^ ^1
execute if score @s spellbound_count matches 20.. run kill @s


execute if score @s spellbound_count matches 4.. as @e[distance=..1] run function spellbound_weapons:other/damage/entity_damage3
execute if score @s spellbound_count matches 4.. as @e[distance=..1,type=!area_effect_cloud,type=!armor_stand,type=!item,type=!#impact_projectiles,type=!experience_orb] at @s run scoreboard players set @s spellbound_netherlight_stun 1


