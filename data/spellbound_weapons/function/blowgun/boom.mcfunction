
execute store result score @s spellbound_randomizer_output run random value 1..8

execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 1 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711680,13505556],fade_colors:[I;16748174]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 2 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16746496,16095021],fade_colors:[I;16762777]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 3 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16767232,14350136],fade_colors:[I;16776581]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 4 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4516982,3462789],fade_colors:[I;10944462]}]}}}}

execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 5 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;61183,3598024],fade_colors:[I;12779007]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 6 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;17663,4074468],fade_colors:[I;10068223]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 7 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;12779775,7285399],fade_colors:[I;16729855]}]}}}}
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 8 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711850,14837453],fade_colors:[I;16757977]}]}}}}




execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 1 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711680,13505556],fade_colors:[I;16748174]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 2 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16746496,16095021],fade_colors:[I;16762777]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 3 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16767232,14350136],fade_colors:[I;16776581]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 4 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;4516982,3462789],fade_colors:[I;10944462]}]}}}}

execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 5 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;61183,3598024],fade_colors:[I;12779007]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 6 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;17663,4074468],fade_colors:[I;10068223]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 7 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;12779775,7285399],fade_colors:[I;16729855]}]}}}}
execute if score @s[tag=spellbound_blowgun_arrow_raycast_speed_biggy] spellbound_randomizer_output matches 8 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711850,14837453],fade_colors:[I;16757977]}]}}}}



data modify entity @n[type=firework_rocket] Owner set from entity @s data.Owner

execute if entity @s[tag=spellbound_blowgun_arrow_raycast_infinity] run scoreboard players reset @s spellbound_randomizer_output
