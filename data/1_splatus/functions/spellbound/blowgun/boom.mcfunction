execute as @s run loot spawn ~ ~ ~ loot 1_splatus:spellbound/other/randomize_8

execute store result score @s spellbound_randomizer_output run data get entity @e[distance=..0.01,type=item,limit=1] Item.tag.SpellboundRandomizerOutput

kill @e[distance=..0.0001,type=item]
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 1 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;16711680,13505556],FadeColors:[I;16748174]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 2 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;16746496,16095021],FadeColors:[I;16762777]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 3 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;16767232,14350136],FadeColors:[I;16776581]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 4 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;4516982,3462789],FadeColors:[I;10944462]}]}}}}

execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 5 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;61183,3598024],FadeColors:[I;12779007]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 6 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;17663,4074468],FadeColors:[I;10068223]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 7 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;12779775,7285399],FadeColors:[I;16729855]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 8 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:0b,Flicker:0b,Colors:[I;16711850,14837453],FadeColors:[I;16757977]}]}}}}


execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 1 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;16711680,13505556],FadeColors:[I;16748174]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 2 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;16746496,16095021],FadeColors:[I;16762777]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 3 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;16767232,14350136],FadeColors:[I;16776581]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 4 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;4516982,3462789],FadeColors:[I;10944462]}]}}}}

execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 5 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;61183,3598024],FadeColors:[I;12779007]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 6 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;17663,4074468],FadeColors:[I;10068223]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 7 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;12779775,7285399],FadeColors:[I;16729855]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 8 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:0b,Flicker:1b,Colors:[I;16711850,14837453],FadeColors:[I;16757977]}]}}}}


data modify entity @e[sort=nearest,limit=1,type=firework_rocket] Owner set from entity @s data.Owner

execute if entity @s[tag=spellbound_blowgun_arrow_raycast_infinity] run scoreboard players reset @s spellbound_randomizer_output
