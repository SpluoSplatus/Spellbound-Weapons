execute as @s unless score @s spellbound_count matches 1.. run scoreboard players set @s spellbound_count 70
scoreboard players add @s spellbound_count 1


execute at @s run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..512]
execute at @s if predicate 1_splatus:spellbound/chance/20_percent run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]


execute at @s run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..128]

execute at @s if block ~ ~ ~ #1_splatus:spellbound/breakable_by_magmus if score gamerule_mobGriefing spellbound_count matches 1 run function 1_splatus:spellbound/magmus_charger/oops_ice



#max

execute at @s if score @s spellbound_count matches 100.. run function 1_splatus:spellbound/magmus_charger/hit










