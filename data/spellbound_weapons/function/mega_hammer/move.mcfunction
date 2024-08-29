
$execute facing entity @p[scores={spellbound_hammer=1..}] feet positioned 0.0 5 0.0 run tp ^ ^ ^-$(velocity_multiplier)


data modify storage spellbound_weapons:storage Motion set value [0d, 0d, 0d]

execute store result storage spellbound_weapons:storage Motion[0] double 0.100 run data get entity @s Pos[0]
execute store result storage spellbound_weapons:storage Motion[1] double 0.100 run data get entity @s Pos[1]
execute store result storage spellbound_weapons:storage Motion[2] double 0.100 run data get entity @s Pos[2]

tp ~ ~ ~


data modify entity @s Motion set from storage spellbound_weapons:storage Motion


data remove storage spellbound_weapons:storage Motion
