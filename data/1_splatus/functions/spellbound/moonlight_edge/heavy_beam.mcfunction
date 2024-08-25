
scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[0]

particle sweep_attack ~ ~ ~ 0 0 0 .03 1 force @a[distance=..128]
particle end_rod ~ ~ ~ .3 .1 .3 .03 1 force @a[distance=..64]
particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^ ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^-0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^-0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1.2 0.000 0.137 0.820 ^-0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]



#damage
execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ if entity @e[distance=..1.25,type=!#1_splatus:spellbound/misc] as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid4 run tag @s add spellbound_temp5

execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ as @e[distance=..1.25,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:spellbound/used_shield=true}] at @s run function 1_splatus:spellbound/moonlight_edge/shield
execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ as @e[distance=..1.25,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:spellbound/used_shield=false},predicate=!1_splatus:spellbound/taking_damage] at @s run damage @s 8 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]




execute if score @s spellbound_count matches 2.. unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/moonlight_edge/hit

execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ as @e[distance=..1.25,type=!player,type=!#1_splatus:spellbound/misc,tag=!spellbound_player_usingbeam,predicate=!1_splatus:spellbound/taking_damage] run damage @s 8 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]


tag @a remove spellbound_temp5

execute at @s if score @s spellbound_count matches 2.. run tp @s ^ ^ ^1.25
execute at @s if score @s[tag=spellbound_moonlight_edge_heavybeam_sweeping] spellbound_count matches 2.. run tp @s ^ ^ ^0.3125


execute if score @s spellbound_count matches 30.. run kill @s
