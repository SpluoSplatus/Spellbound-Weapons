execute facing entity @p[scores={spellbound_hammer=1..}] eyes positioned 0.0 0.0 0.0 run tp ^ ^ ^-1.5
execute at @s run tp ~ ~1.5 ~
data modify storage spellbound_weapons:motion Motion set from entity @s Pos
tp ~ ~ ~
data modify entity @s Motion set from storage spellbound_weapons:motion Motion 
data remove storage spellbound_weapons:motion Motion