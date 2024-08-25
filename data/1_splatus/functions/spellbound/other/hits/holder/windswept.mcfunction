execute at @s as @e[distance=1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s run function 1_splatus:spellbound/other/hits/windswept


execute unless score @s spellbound_fallspeed matches ..-20 as @s[predicate=!1_splatus:spellbound/holding/enchant/sweeping_edge3] at @s positioned ^ ^ ^1.25 run summon marker ~ ~1 ~ {Tags:["spellbound_sand_wind","spellbound_sand_wind_hit","spellbound_marker"]}
execute unless score @s spellbound_fallspeed matches ..-20 as @s[predicate=1_splatus:spellbound/holding/enchant/sweeping_edge3] at @s positioned ^ ^ ^1.25 run summon marker ~ ~1 ~ {Tags:["spellbound_sand_wind","spellbound_sand_wind_hit","spellbound_sand_wind_enchanted","spellbound_marker"]}


execute at @s positioned ~ ~1 ~ run data modify entity @e[limit=1,type=marker,tag=spellbound_sand_wind,sort=nearest] Rotation set from entity @s Rotation
