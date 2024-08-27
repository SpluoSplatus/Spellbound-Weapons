execute as @s unless score @s spellbound_count matches 1.. run scoreboard players set @s spellbound_count 70
scoreboard players add @s spellbound_count 1


execute at @s run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..512]
execute at @s if predicate spellbound_weapons:chance/20_percent run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]


execute at @s run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..128]

execute at @s if block ~ ~ ~ #spellbound_weapons:breakable_by_magmus if score gamerule_mobGriefing spellbound_count matches 1 run function spellbound_weapons:magmus_charger/oops_ice



#max

execute at @s if score @s spellbound_count matches 100.. run function spellbound_weapons:magmus_charger/hit










