scoreboard players add @s spellbound_count 1

particle sweep_attack ~ ~ ~
particle end_rod ~ ~ ~ .3 .1 .3 .03 1 force @a[distance=..64]

particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^ ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^-0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^-0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition 0.980 0.431 1.000 1 0.000 0.137 0.820 ^-0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]


#damage
execute if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ if entity @e[distance=..0.75,type=!#1_splatus:spellbound/misc] as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid4 run tag @s add spellbound_temp5


execute if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ as @e[distance=..0.75,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:spellbound/used_shield=false},predicate=!1_splatus:spellbound/taking_damage] at @s run damage @s 1 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]
execute if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ as @e[distance=..0.75,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:spellbound/used_shield=true},predicate=!1_splatus:spellbound/taking_damage] at @s run function 1_splatus:spellbound/other/action/damage_shield
execute if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ as @e[distance=..0.75,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:spellbound/used_shield=true}] as @e[sort=nearest,limit=1,type=marker,tag=spellbound_moonlight_edge_beam] at @s run function 1_splatus:spellbound/moonlight_edge/hit
execute if score @s spellbound_count matches 3.. positioned ~ ~-1 ~ as @e[distance=..0.75,type=!player,type=!#1_splatus:spellbound/misc,tag=!spellbound_player_usingbeam,predicate=!1_splatus:spellbound/taking_damage] run damage @s 1 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]

tag @a remove spellbound_temp5

execute if score @s spellbound_count matches 1.. unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/moonlight_edge/hit




execute if score @s spellbound_count matches 2.. run tp @s ^ ^ ^.75

execute if score @s spellbound_count matches 10.. run kill @s

