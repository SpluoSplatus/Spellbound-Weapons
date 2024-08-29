### MOONLIGHT 
playsound minecraft:block.amethyst_cluster.place player @a[distance=..20] ~ ~ ~ 1 .9
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ .5 1.92
execute unless score @s spellbound_fallspeed matches ..-20 positioned as @e[type=!#spellbound_weapons:misc,distance=..5,predicate=spellbound_weapons:hurttime,limit=1,sort=nearest] positioned ~ ~1 ~ run summon minecraft:marker ^ ^ ^1 {Tags:["spellbound_moonlight_edge_beam","spellbound_marker"],CustomName:'{"translate":"Moonlight Edge Beam"}'}
execute unless score @s spellbound_fallspeed matches ..-20 positioned as @e[type=!#spellbound_weapons:misc,distance=..5,predicate=spellbound_weapons:hurttime,limit=1,sort=nearest] positioned ~ ~1 ~ run data modify entity @e[type=marker,tag=spellbound_moonlight_edge_beam,limit=1,sort=nearest] Rotation set from entity @s Rotation


#unless entity
execute unless score @s spellbound_fallspeed matches ..-20 unless entity @e[type=!#spellbound_weapons:misc,distance=..5,predicate=spellbound_weapons:hurttime] positioned ~ ~1 ~ run summon minecraft:marker ^ ^ ^1 {Tags:["spellbound_moonlight_edge_beam","spellbound_marker"],CustomName:'{"translate":"Moonlight Edge Beam"}'}
execute unless score @s spellbound_fallspeed matches ..-20 unless entity @e[type=!#spellbound_weapons:misc,distance=..5,predicate=spellbound_weapons:hurttime] positioned ~ ~1 ~ run data modify entity @e[type=marker,tag=spellbound_moonlight_edge_beam,limit=1,sort=nearest] Rotation set from entity @s Rotation



execute unless score @s spellbound_moonlight_edge_cooldown matches 0.. run scoreboard players set @s spellbound_moonlight_edge_cooldown 0
scoreboard players set @s[scores={spellbound_moonlight_edge_cooldown=45..}] spellbound_moonlight_edge_cooldown 45


tag @s add spellbound_player_usingbeam

execute at @s unless score @s spellbound_fallspeed matches ..-20 store result score @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute at @s unless score @s spellbound_fallspeed matches ..-20 store result score @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute at @s unless score @s spellbound_fallspeed matches ..-20 store result score @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute at @s unless score @s spellbound_fallspeed matches ..-20 store result score @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4
