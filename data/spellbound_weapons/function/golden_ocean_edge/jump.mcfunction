

scoreboard players add @s spellbound_golden_ocean_edge_effect2 1



### fish out of water !!!!!!

execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 run function spellbound_weapons:golden_ocean_edge/wave_particle
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 run particle minecraft:shriek{delay:0} 5 ~ ~-1.7 ~ 1 1.5 1 1 force @a[distance=..32]
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 run particle poof ~ ~.5 ~ .8 0 .8 .1 4 force @a[distance=..32]
#execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 unless block ~ ~-0.5 ~ lava run function spellbound_weapons:golden_ocean_edge/release_wave3
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 run playsound minecraft:entity.dolphin.splash player @a[distance=..30] ~ ~ ~ 1.25 .8
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 run playsound minecraft:ambient.underwater.exit player @a[distance=..30] ~ ~ ~ 1.25 1.5

execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 if block ~ ~-0.5 ~ lava run playsound minecraft:block.lava.ambient player @a[distance=..30] ~ ~ ~ 1.25 2
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 if block ~ ~-0.5 ~ lava run playsound minecraft:block.lava.pop player @a[distance=..30] ~ ~ ~ 1.25 1
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 if block ~ ~-0.5 ~ lava run particle lava ~ ~.5 ~ .5 0 .5 .2 15 force @a[distance=..32]
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 if block ~ ~-0.5 ~ lava run particle lava ~ ~.5 ~ .5 0 .5 .2 15 force @a[distance=..32]

#levitation
execute if score @s spellbound_golden_ocean_edge_effect2 matches 1 run effect give @s minecraft:levitation 1 15 true
execute if score @s spellbound_golden_ocean_edge_effect2 matches 5 run effect clear @s minecraft:levitation

execute if score @s spellbound_golden_ocean_edge_effect2 matches 5 run effect give @s minecraft:levitation 1 5 true
execute if score @s spellbound_golden_ocean_edge_effect2 matches 11 run effect clear @s minecraft:levitation

execute if score @s spellbound_golden_ocean_edge_effect2 matches 11 run effect give @s minecraft:levitation 1 2 true
execute if score @s spellbound_golden_ocean_edge_effect2 matches 16 run effect clear @s minecraft:levitation

execute if score @s spellbound_golden_ocean_edge_effect2 matches 60.. run scoreboard players reset @s spellbound_golden_ocean_edge_effect2



