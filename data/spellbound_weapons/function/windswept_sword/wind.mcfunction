scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count matches 1 run playsound minecraft:entity.phantom.ambient player @a[distance=..20] ~ ~ ~ 1 .8

execute as @s run particle poof ~ ~ ~ .1 .1 .1 .05 1 force @a[distance=..64]
execute if score @s spellbound_enchantlevel matches 1.. run particle poof ~ ~ ~ .5 .5 .5 .05 1 force @a[distance=..64]

execute if predicate spellbound_weapons:chance/20_percent run particle block{block_state:"minecraft:sand"} ~ ~ ~ 0 0 0 .2 1 force @a[distance=..32]
execute if predicate spellbound_weapons:chance/50_percent run particle small_gust ~ ~ ~ .5 .5 .5 .2 1 force @a[distance=..32]



execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={spellbound_weapons:used_shield=true}] run function spellbound_weapons:windswept_sword/shield


execute unless score @s spellbound_enchantlevel matches 1.. positioned ~ ~-0.75 ~ as @e[distance=..0.75,type=!#spellbound_weapons:misc] run effect give @s slowness 1 1 false
execute if score @s spellbound_enchantlevel matches 1.. positioned ~ ~-0.75 ~ as @e[distance=..1,type=!#spellbound_weapons:misc] run effect give @s slowness 1 1 false

execute unless score @s spellbound_enchantlevel matches 1.. positioned ~ ~-0.75 ~ as @e[distance=..0.75,type=!#spellbound_weapons:misc] at @s run particle block{block_state:"minecraft:sand"} ~ ~.15 ~ .3 .3 .3 .2 25 force @a[distance=..32]
execute if score @s spellbound_enchantlevel matches 1.. positioned ~ ~-0.75 ~ as @e[distance=..1,type=!#spellbound_weapons:misc] at @s run particle block{block_state:"minecraft:sand"} ~ ~.15 ~ .3 .1 .3 .2 25 force @a[distance=..32]


execute positioned ~ ~-0.75 ~ if entity @e[distance=..1,type=!#spellbound_weapons:misc] as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_sand_wind] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_sand_wind] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_sand_wind] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_sand_wind] spellbound_uuid4 run tag @s add spellbound_temp5

execute as @s[tag=!spellbound_sand_wind_hit,tag=!spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..0.75,type=!#spellbound_weapons:misc] at @s run damage @s 3 spellbound_weapons:magic by @p[tag=spellbound_temp5]
execute as @s[tag=!spellbound_sand_wind_hit,tag=spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..1,type=!#spellbound_weapons:misc] at @s run damage @s 3 spellbound_weapons:magic by @p[tag=spellbound_temp5]

tag @a remove spellbound_temp5

execute as @e[distance=..2,type=item] at @s facing entity @n[type=marker,tag=spellbound_sand_wind] eyes run function spellbound_weapons:windswept_sword/push

execute at @s if block ^ ^ ^.2 #spellbound_weapons:permeable_by_wind run tp @s[tag=!spellbound_sand_wind_heavy,tag=!spellbound_sand_wind_enchanted] ^ ^ ^.1
execute at @s if block ^ ^ ^.6 #spellbound_weapons:permeable_by_wind run tp @s[tag=spellbound_sand_wind_heavy,tag=!spellbound_sand_wind_enchanted] ^ ^ ^.4

execute at @s if block ^ ^ ^.2 #spellbound_weapons:permeable_by_wind run tp @s[tag=!spellbound_sand_wind_heavy,tag=spellbound_sand_wind_enchanted] ^ ^ ^.15
execute at @s if block ^ ^ ^.6 #spellbound_weapons:permeable_by_wind run tp @s[tag=spellbound_sand_wind_heavy,tag=spellbound_sand_wind_enchanted] ^ ^ ^.6

execute if score @s[tag=!spellbound_sand_wind_heavy] spellbound_count matches 20.. run kill @s
execute if score @s spellbound_count matches 35.. run kill @s