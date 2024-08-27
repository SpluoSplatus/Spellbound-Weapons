
execute positioned 0.0 0.7 0.0 run tp ^ ^ ^-1.2
data modify storage spellbound_weapons:spellbound Motion set from entity @s Pos
tp @s ~ ~ ~
data modify entity @s Motion set from storage spellbound_weapons:spellbound Motion