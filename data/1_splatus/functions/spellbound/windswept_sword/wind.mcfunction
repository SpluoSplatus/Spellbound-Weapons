scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count matches 1 run playsound minecraft:entity.phantom.ambient player @a[distance=..20] ~ ~ ~ 1 .8

execute as @s run particle poof ~ ~ ~ .1 .1 .1 .05 1 force @a[distance=..64]
execute as @s[tag=spellbound_sand_wind_enchanted] run particle poof ~ ~ ~ .5 .5 .5 .05 1 force @a[distance=..64]

execute if predicate 1_splatus:spellbound/chance/20_percent run particle minecraft:block sand ~ ~1 ~ .5 .1 .5 .2 1 force @a[distance=..32]



execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:spellbound/used_shield=true}] run function 1_splatus:spellbound/windswept_sword/shield


execute as @s[tag=!spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..0.75,type=!#1_splatus:spellbound/misc] run effect give @s slowness 1 1 false
execute as @s[tag=spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..1,type=!#1_splatus:spellbound/misc] run effect give @s slowness 1 1 false

execute as @s[tag=!spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..0.75,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:block sand ~ ~.15 ~ .3 .3 .3 .2 25 force @a[distance=..32]
execute as @s[tag=spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..1,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:block sand ~ ~.15 ~ .3 .1 .3 .2 25 force @a[distance=..32]


execute positioned ~ ~-0.75 ~ if entity @e[distance=..1,type=!#1_splatus:spellbound/misc] as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid4 run tag @s add spellbound_temp5

execute as @s[tag=!spellbound_sand_wind_hit,tag=!spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..0.75,type=!#1_splatus:spellbound/misc] at @s run damage @s 3 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]
execute as @s[tag=!spellbound_sand_wind_hit,tag=spellbound_sand_wind_enchanted] positioned ~ ~-0.75 ~ as @e[distance=..1,type=!#1_splatus:spellbound/misc] at @s run damage @s 3 1_splatus:spellbound/magic by @p[tag=spellbound_temp5]

tag @a remove spellbound_temp5

execute as @e[distance=..2,type=item] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] eyes run function 1_splatus:spellbound/windswept_sword/push

execute at @s if block ^ ^ ^.2 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=!spellbound_sand_wind_heavy,tag=!spellbound_sand_wind_enchanted] ^ ^ ^.1 
execute at @s if block ^ ^ ^.6 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=spellbound_sand_wind_heavy,tag=!spellbound_sand_wind_enchanted] ^ ^ ^.4

execute at @s if block ^ ^ ^.2 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=!spellbound_sand_wind_heavy,tag=spellbound_sand_wind_enchanted] ^ ^ ^.15 
execute at @s if block ^ ^ ^.6 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=spellbound_sand_wind_heavy,tag=spellbound_sand_wind_enchanted] ^ ^ ^.6

execute if score @s[tag=!spellbound_sand_wind_heavy] spellbound_count matches 20.. run kill @s
execute if score @s spellbound_count matches 35.. run kill @s