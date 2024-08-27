#data modify entity @s Motion[1] set value 0.3


data modify entity @s Fire set value 0
data modify entity @s Invulnerable set value 1b

execute at @s run particle lava ~ ~ ~ 0 0 0 .01 2 normal

execute at @s run particle smoke ~ ~ ~ 0 0 0 .01 1 normal
tag @s add spellbound_itemhitlava