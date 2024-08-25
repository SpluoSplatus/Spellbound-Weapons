

#execute if score @s[tag=spellbound_magmus_charger_arrow_max_power5] spellbound_count matches 102 as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/damage/armor_7
#execute if score @s[tag=spellbound_magmus_charger_arrow_max_power4] spellbound_count matches 102 as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/damage/armor_6
#execute if score @s[tag=spellbound_magmus_charger_arrow_max_power3] spellbound_count matches 102 as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/damage/armor_5
#death
#execute if score @s[tag=!spellbound_magmus_charger_arrow_max_power] spellbound_count matches 102 as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/damage/armor_4

execute if score @s spellbound_count matches 102 as @s[tag=spellbound_magmus_charger_arrow_area_max_spectral] as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run effect give @s glowing 12

execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101.. run particle flame ~ ~ ~ .05 .05 .05 .1 3 force @a[distance=..128]
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101.. run particle soul_fire_flame ~ ~ ~ .05 .05 .05 .1 3 force @a[distance=..128]


execute if score @s spellbound_count matches 101.. run particle large_smoke ~ ~ ~ .3 .3 .3 .2 10 force @a[distance=..128]
execute if score @s spellbound_count matches 101..115 run playsound minecraft:entity.blaze.hurt player @a[distance=..64] ~ ~ ~ 3 .95


execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101 run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Colors:[I;16738370]}]}}}}
execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 104 run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Colors:[I;15627074]}]}}}}
execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 108 run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Colors:[I;16765764]}]}}}}

#blue
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101 run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Colors:[I;4877311]}]}}}}
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 104 run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Colors:[I;4367342]}]}}}}
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 108 run summon firework_rocket ~ ~.35 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Colors:[I;4517119]}]}}}}

execute if score @s spellbound_count matches 101 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner
execute if score @s spellbound_count matches 104 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner
execute if score @s spellbound_count matches 108 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner

execute if score @s spellbound_count matches 112.. run particle flash ~ ~ ~ 0 0 0 0 5 force @a[distance=..128]
execute if score @s spellbound_count matches 115.. run function 1_splatus:spellbound/other/hits/magmus_max
execute if score @s spellbound_count matches 115.. run kill @s
