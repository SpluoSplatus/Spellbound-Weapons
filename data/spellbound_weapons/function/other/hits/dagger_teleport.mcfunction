playsound minecraft:entity.enderman.teleport player @a[distance=..25] ~ ~ ~ 1.5 .9
particle minecraft:poof ~ ~1 ~ .3 .5 .3 .05 10 force @a[distance=..64]

execute as @e[sort=nearest,limit=1,type=!#spellbound_weapons:misc,distance=0.1..6] at @s if block ^ ^.5 ^-1 #spellbound_weapons:permeable run tp @p[scores={spellbound_dagger=1..},predicate=spellbound_weapons:holding/enchant/silk_touch] ^ ^ ^-1 facing entity @s
execute as @e[sort=nearest,limit=1,type=!#spellbound_weapons:misc,distance=0.1..6] at @s if block ^ ^.5 ^-1 #spellbound_weapons:permeable if block ^ ^.5 ^-2 #spellbound_weapons:permeable run tp @p[scores={spellbound_dagger=1..},predicate=spellbound_weapons:holding/enchant/silk_touch] ^ ^ ^-2 facing entity @s
execute as @e[sort=nearest,limit=1,type=!#spellbound_weapons:misc,distance=0.1..6] at @s if block ^ ^.5 ^-1 #spellbound_weapons:permeable if block ^ ^.5 ^-2 #spellbound_weapons:permeable if block ^ ^.5 ^-3 #spellbound_weapons:permeable run tp @p[scores={spellbound_dagger=1..},predicate=spellbound_weapons:holding/enchant/silk_touch] ^ ^ ^-3 facing entity @s




execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~0.5 ~

execute at @s if block ~ ~-0.5 ~ #spellbound_weapons:permeable run tp @s ~ ~-0.5 ~
execute at @s if block ~ ~-0.5 ~ #spellbound_weapons:permeable run tp @s ~ ~-0.5 ~
execute at @s if block ~ ~-0.5 ~ #spellbound_weapons:permeable run tp @s ~ ~-0.5 ~



execute at @s run tp @s ~ ~ ~ ~ 0



execute at @s run particle minecraft:poof ~ ~1 ~ .3 .5 .3 .05 10 force @a[distance=..64]
