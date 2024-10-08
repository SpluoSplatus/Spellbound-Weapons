scoreboard players add @s spellbound_count 1

particle dust_color_transition{from_color:[0.145,0.157,0.169],scale:0.8,to_color:[0.420,0.494,0.541]} ~ ~ ~ 0 0 0 1 5 force @a[distance=..64]
execute if predicate spellbound_weapons:chance/10_percent run particle soul ~ ~ ~ 0 0 0 .01 1 force @a[distance=..64]


execute if score @s spellbound_count matches 1 run function spellbound_weapons:withering_sword/dusties_homing_init

execute if score @s spellbound_count matches 1..5 at @s run tp @s ^ ^ ^.5
execute if score @s spellbound_count matches 6..10 at @s run tp @s ^ ^ ^.25

execute if score @s spellbound_count matches 7..8 at @s run tp @s ^ ^ ^.1 facing entity @p[scores={spellbound_withering=1..},distance=..32,sort=nearest] eyes
execute if score @s spellbound_count matches 9..10 at @s run tp @s ^ ^ ^.2 facing entity @p[scores={spellbound_withering=1..},distance=..32,sort=nearest] eyes
execute if score @s spellbound_count matches 11..15 at @s run tp @s ^ ^ ^.4 facing entity @p[scores={spellbound_withering=1..},distance=..32,sort=nearest] eyes
execute if score @s spellbound_count matches 16.. at @s run tp @s ^ ^ ^.5 facing entity @p[scores={spellbound_withering=1..},distance=..32,sort=nearest] eyes

execute if score @s spellbound_count matches 10.. at @s positioned ~ ~-1.62 ~ if entity @a[distance=..0.3,scores={spellbound_withering=1..}] run kill @s


execute unless entity @a[distance=..32,scores={spellbound_withering=1..}] run kill @s
