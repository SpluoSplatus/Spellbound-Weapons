
execute positioned 0.0 0.2 0.0 run tp ^ ^ ^-.5
data modify storage spellbound_weapons:spellbound Motion set from entity @s Pos
tp @s ~ ~ ~
data modify entity @s Motion set from storage spellbound_weapons:spellbound Motion