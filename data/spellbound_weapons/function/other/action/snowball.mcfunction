execute as @e[distance=0.1..32] at @s run summon minecraft:snowball ~ ~3 ~ {Motion:[0.0,-5.0,0.0],Tags:["creatures_nonvariant","silly_snowball"],LeftOwner:1b}


execute as @e[tag=silly_snowball,type=snowball] run data modify entity @s Owner set from entity @n[type=!snowball] UUID

#data modify entity @n[type=!player] AngerTime set value 1000