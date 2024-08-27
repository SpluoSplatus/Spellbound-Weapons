

#summon minecraft:area_effect_cloud ^-0.25 ^1 ^2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}
#summon minecraft:area_effect_cloud ^-0.5 ^1 ^1.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}
#summon minecraft:area_effect_cloud ^-0.75 ^1 ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}
#summon minecraft:area_effect_cloud ^-1 ^1 ^.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}



#center
#summon minecraft:area_effect_cloud ^ ^1 ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}



#summon minecraft:area_effect_cloud ^0.25 ^1 ^2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}
#summon minecraft:area_effect_cloud ^0.5 ^1 ^1.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}
#summon minecraft:area_effect_cloud ^0.75 ^1 ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}
#summon minecraft:area_effect_cloud ^1 ^1 ^.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_netherlight_beam"]}


playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ .25 1.5
playsound minecraft:block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 .5
particle end_rod ~ ~ ~ .3 .3 .3 .1 1 force @a[distance=..128]


execute positioned ^ ^ ^1.25 as @e[distance=..1.25,type=!area_effect_cloud,type=!armor_stand,type=!item,type=!#impact_projectiles,type=!experience_orb] at @s run scoreboard players set @s spellbound_netherlight_stun 1

scoreboard players set @s spellbound_netherlight_cooldown 0