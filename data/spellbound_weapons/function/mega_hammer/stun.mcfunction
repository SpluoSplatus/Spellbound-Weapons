scoreboard players add @s spellbound_hammer_stun 1

execute if score @s spellbound_hammer_stun matches 1..3 run particle poof ~ ~ ~ .5 .05 .5 .05 30 force @a[distance=..32]

execute if score @s spellbound_hammer_stun matches 1 run tp @s ~ ~-0.3 ~

execute if score @s spellbound_hammer_stun matches 1..10 at @s run tp @s @s
execute if score @s spellbound_hammer_stun matches 1..10 at @s run data merge entity @s {NoAI:1b}
execute if score @s spellbound_hammer_stun matches 15 at @s run data merge entity @s {NoAI:0b}

execute if score @s spellbound_hammer_stun matches 11..12 run tp @s ~ ~0.1 ~
execute if score @s spellbound_hammer_stun matches 13..14 run tp @s ~ ~0.05 ~
execute if score @s spellbound_hammer_stun matches 20.. run scoreboard players reset @s spellbound_hammer_stun

