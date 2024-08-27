playsound minecraft:entity.enderman.teleport player @a[distance=..25] ~ ~ ~ 1.5 .9
particle minecraft:poof ~ ~1 ~ .3 .5 .3 .05 10 force @a[distance=..64]


execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25

execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25

execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25
execute at @s unless block ^ ^ ^.25 #spellbound_weapons:permeable run tp @s ^ ^ ^.25



execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~1 ~


execute at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!#spellbound_weapons:misc,distance=0.1..6] eyes


execute at @s run tp @s ~ ~ ~ ~ 0



execute at @s run particle minecraft:poof ~ ~1 ~ .3 .5 .3 .05 10 force @a[distance=..64]
