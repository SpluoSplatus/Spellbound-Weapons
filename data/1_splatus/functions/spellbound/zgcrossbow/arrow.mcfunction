### ZG CROSSBOW
scoreboard players add @s spellbound_count 1


execute if score @s spellbound_count matches 1 store result entity @s Motion[0] double 0.00018 run data get entity @s Motion[0] 10000
execute if score @s spellbound_count matches 1 store result entity @s Motion[1] double 0.00018 run data get entity @s Motion[1] 10000
execute if score @s spellbound_count matches 1 store result entity @s Motion[2] double 0.00018 run data get entity @s Motion[2] 10000

execute if score @s spellbound_count matches 1 run data modify entity @s damage set value 1


data merge entity @s {NoGravity:1b}
execute if entity @s[nbt=!{inGround:1b}] run particle enchant ~ ~ ~ .3 .3 .3 .2 4 force @a[distance=..32]

execute if entity @s[nbt=!{inGround:1b}] if score @s spellbound_count matches 10.. run particle end_rod ~ ~ ~ 0 0 0 .2 3 force @a[distance=..128]
execute if entity @s[nbt=!{inGround:1b}] if score @s spellbound_count matches 10.. run kill @s
