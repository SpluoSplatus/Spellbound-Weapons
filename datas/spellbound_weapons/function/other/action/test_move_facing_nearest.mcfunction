

data merge entity @s {NoGravity:1b}

execute store result score @s spellbound_x1 run data get entity @s Pos[0] 1000
execute store result score @s spellbound_y1 run data get entity @s Pos[1] 1000
execute store result score @s spellbound_z1 run data get entity @s Pos[2] 1000

execute at @s facing entity @p eyes run tp @s ^ ^ ^-.0075

execute at @s store result score @s spellbound_x2 run data get entity @s Pos[0] 1000
execute at @s store result score @s spellbound_y2 run data get entity @s Pos[1] 1000
execute at @s store result score @s spellbound_z2 run data get entity @s Pos[2] 1000



scoreboard players operation @s spellbound_x1 -= @s spellbound_x2
scoreboard players operation @s spellbound_y1 -= @s spellbound_y2
scoreboard players operation @s spellbound_z1 -= @s spellbound_z2



execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s spellbound_x1
execute store result entity @s Motion[1] double 0.05 run scoreboard players get @s spellbound_y1
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s spellbound_z1



