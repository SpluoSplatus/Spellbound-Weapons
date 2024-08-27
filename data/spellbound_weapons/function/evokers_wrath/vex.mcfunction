
scoreboard players add @s spellbound_count 1

attribute @s generic.movement_speed base set 1
attribute @s generic.flying_speed base set 1
#attribute @s generic.follow_range base set 0

effect give @s weakness 10000 255 true

execute if score @s spellbound_count matches 10.. if predicate spellbound_weapons:chance/3_percent run function spellbound_weapons:other/disappear_effect

execute at @s at @s run tp @s ^ ^ ^.2
execute at @s at @s run tp @s ~ ~.2 ~

execute at @s at @s if predicate spellbound_weapons:chance/20_percent run particle effect ~ ~.25 ~ 0 0 0 0 1 force @a[distance=..32]

execute if predicate spellbound_weapons:chance/5_percent at @s run tp @s ~ ~ ~ ~40 ~
execute if predicate spellbound_weapons:chance/5_percent at @s run tp @s ~ ~ ~ ~-40 ~



