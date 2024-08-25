scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 40.. run kill @s

execute at @s run particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s run tp @s ^ ^ ^1
execute at @s if score @s spellbound_count matches 3.. at @e[distance=..1,type=#1_splatus:spellbound/small] run function 1_splatus:spellbound/fire_staff/marker_hit
execute at @s if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ as @a[distance=..1,gamemode=!spectator,advancements={1_splatus:spellbound/used_shield=true}] run function 1_splatus:spellbound/fire_staff/shield
execute at @s if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ at @e[distance=..1,type=!#1_splatus:spellbound/small,type=!#1_splatus:spellbound/misc] run function 1_splatus:spellbound/fire_staff/marker_hit
execute at @s unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/fire_staff/marker_hit
execute at @s if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run function 1_splatus:spellbound/fire_staff/marker_hit_water



execute as @s[tag=spellbound_firestaff_enchanted] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute as @s[tag=spellbound_firestaff_enchanted] at @s run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute as @s[tag=spellbound_firestaff_enchanted] at @s run tp @s ^ ^ ^.5
execute as @s[tag=spellbound_firestaff_enchanted] at @s if score @s spellbound_count matches 3.. at @e[distance=..1,type=#1_splatus:spellbound/small] run function 1_splatus:spellbound/fire_staff/marker_hit
execute at @s[tag=spellbound_firestaff_enchanted] if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ as @a[distance=..1,gamemode=!spectator,advancements={1_splatus:spellbound/used_shield=true}] run function 1_splatus:spellbound/fire_staff/shield
execute as @s[tag=spellbound_firestaff_enchanted] at @s if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ at @e[distance=..1,type=!#1_splatus:spellbound/small,type=!#1_splatus:spellbound/misc] run function 1_splatus:spellbound/fire_staff/marker_hit
execute as @s[tag=spellbound_firestaff_enchanted] at @s unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/fire_staff/marker_hit
execute at @s if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run function 1_splatus:spellbound/fire_staff/marker_hit_water
