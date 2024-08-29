execute if entity @s run playsound minecraft:entity.puffer_fish.blow_out player @a[distance=..20] ~ ~ ~ .75 .5
execute if entity @s run playsound minecraft:entity.generic.swim player @a[distance=..20] ~ ~ ~ .75 1.5
execute if entity @s as @e[distance=1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc] at @s run particle minecraft:block{block_state:"water"} ~ ~1 ~ .5 .1 .5 .2 20 force
execute if entity @s as @e[distance=1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc] at @s run particle minecraft:falling_water ~ ~1 ~ .5 .1 .5 .2 20 force
#execute if score @s spellbound_fallspeed matches ..-20 as @e[distance=1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc] at @s run function spellbound_weapons:golden_ocean_edge/release_wave2

