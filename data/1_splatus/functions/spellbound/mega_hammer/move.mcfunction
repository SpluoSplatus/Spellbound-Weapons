execute facing entity @p[scores={spellbound_hammer=1..}] eyes positioned 0.0 0.0 0.0 run tp ^ ^ ^-1.5
execute at @s run tp ~ ~1.5 ~
data modify storage 1_splatus:spellbound/motion Motion set from entity @s Pos
tp ~ ~ ~
data modify entity @s Motion set from storage 1_splatus:spellbound/motion Motion 
data remove storage 1_splatus:spellbound/motion Motion