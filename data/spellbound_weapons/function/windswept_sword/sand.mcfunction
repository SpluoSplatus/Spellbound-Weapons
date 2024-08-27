scoreboard players add @s spellbound_count 1


execute if predicate spellbound_weapons:chance/25_percent run particle poof ~ ~-0.5 ~ .2 1 .2 .1 1 force @a[distance=..64]
particle block sand ~ ~ ~ .1 .1 .1 1 2 force @a[distance=..64]
execute at @s run tp @s ^ ^ ^.25

execute if predicate spellbound_weapons:chance/25_percent run particle poof ~ ~-0.5 ~ .2 1 .2 .1 1 force @a[distance=..64]
particle block sand ~ ~ ~ .1 .1 .1 1 2 force @a[distance=..64]
execute at @s run tp @s ^ ^ ^.25

execute if predicate spellbound_weapons:chance/25_percent run playsound block.sand.hit neutral @a[distance=..20] ~ ~ ~ .25 .75



execute if score @s spellbound_count matches 3.. at @s as @e[distance=..0.8,type=!#spellbound_weapons:misc] at @s run function spellbound_weapons:windswept_sword/hit

execute if score @s spellbound_count matches 3.. at @s if block ~ ~-0.5 ~ #spellbound_weapons:permeable run tp @s ~ ~-0.5 ~
execute if score @s spellbound_count matches 3.. at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~0.5 ~


execute if score @s[tag=!spellbound_windswept_sand_enchanted] spellbound_count matches 10.. run kill @s
execute if score @s[tag=spellbound_windswept_sand_enchanted] spellbound_count matches 15.. run kill @s