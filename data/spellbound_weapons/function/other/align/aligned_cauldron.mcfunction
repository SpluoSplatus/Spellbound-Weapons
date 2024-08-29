
execute align zx positioned ~.5 ~ ~.5 unless entity @p[distance=..1] run data modify entity @s PickupDelay set value -1
execute align zx positioned ~.5 ~ ~.5 if entity @p[distance=..1] run data modify entity @s PickupDelay set value 0b


execute unless block ~ ~-.5 ~ water_cauldron run data modify entity @s NoGravity set value 0b
execute unless block ~ ~-.5 ~ water_cauldron run data modify entity @s PickupDelay set value 0b
execute unless block ~ ~-.5 ~ water_cauldron run tag @s remove spellbound_itemaligned_cauldron
