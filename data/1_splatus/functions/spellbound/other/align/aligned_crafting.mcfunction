
execute positioned ~ ~-.3 ~ unless entity @p[distance=..1] run data modify entity @s PickupDelay set value -1
execute positioned ~ ~-.3 ~ if entity @p[distance=..1] run data modify entity @s PickupDelay set value 0

execute unless block ~ ~-1 ~ crafting_table run data modify entity @s PickupDelay set value 0
execute unless block ~ ~-1 ~ crafting_table run tag @s remove spellbound_itemaligned