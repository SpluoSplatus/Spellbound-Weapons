#data modify entity @s Motion[1] set value 0.3


data modify entity @s Motion[1] set value 0.2
execute if predicate 1_splatus:spellbound/chance/33_percent run data modify entity @s Motion[1] set value 0.1
execute if predicate 1_splatus:spellbound/chance/33_percent run data modify entity @s Motion[1] set value 0.3


data modify entity @s Fire set value 0
data modify entity @s Invulnerable set value 1b
particle smoke ~ ~ ~ 0 0 0 .01 1 force @a[distance=..16]