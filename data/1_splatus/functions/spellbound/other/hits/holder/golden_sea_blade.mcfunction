execute if entity @s run playsound minecraft:entity.puffer_fish.blow_out player @a[distance=..20] ~ ~ ~ .75 .5
execute if entity @s run playsound minecraft:entity.generic.swim player @a[distance=..20] ~ ~ ~ .75 1.5
execute if entity @s as @e[distance=1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:block water ~ ~1 ~ .5 .1 .5 .2 20 force
execute if entity @s as @e[distance=1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:falling_water ~ ~1 ~ .5 .1 .5 .2 20 force
#execute if score @s spellbound_fallspeed matches ..-20 as @e[distance=1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/golden_ocean_edge/release_wave2

