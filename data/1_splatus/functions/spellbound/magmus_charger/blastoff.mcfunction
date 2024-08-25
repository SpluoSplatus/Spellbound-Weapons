scoreboard players add @s spellbound_blastoff 1
execute if score @s spellbound_blastoff matches 1 run playsound minecraft:entity.firework_rocket.launch player @a[distance=..48] ~ ~ ~ 3 .6
execute if score @s spellbound_blastoff matches 3 run playsound minecraft:entity.firework_rocket.launch player @a[distance=..48] ~ ~ ~ 3 .5
execute if score @s spellbound_blastoff matches 7 run playsound minecraft:entity.firework_rocket.launch player @a[distance=..48] ~ ~ ~ 3 .75
execute if score @s spellbound_blastoff matches 1 run playsound minecraft:entity.firework_rocket.launch player @a[distance=..48] ~ ~ ~ 3 .6
execute if score @s spellbound_blastoff matches 3 run playsound minecraft:entity.firework_rocket.launch player @a[distance=..48] ~ ~ ~ 3 .5
execute if score @s spellbound_blastoff matches 7 run playsound minecraft:entity.firework_rocket.launch player @a[distance=..48] ~ ~ ~ 3 .75
execute if score @s spellbound_blastoff matches 1..20 run particle smoke ~ ~ ~ .1 .1 .1 .02 5 force @a[distance=..64]
execute if score @s spellbound_blastoff matches 1..20 if predicate 1_splatus:spellbound/chance/50_percent run particle firework ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]


execute if score @s spellbound_blastoff matches 1 run effect give @s levitation 1 30 true

execute if score @s spellbound_blastoff matches 10 run effect clear @s levitation
execute if score @s spellbound_blastoff matches 10 run effect give @s levitation 1 10 true

execute if score @s spellbound_blastoff matches 20 run effect clear @s levitation
execute if score @s spellbound_blastoff matches 20 run effect give @s levitation 1 3 true


execute if score @s spellbound_blastoff matches 20 run effect clear @s levitation

execute unless block ~ ~2 ~ #1_splatus:spellbound/air run scoreboard players set @s spellbound_blastoff 20

execute if score @s spellbound_blastoff matches 20 run effect clear @s levitation

execute if score @s spellbound_blastoff matches 20 run scoreboard players reset @s spellbound_blastoff