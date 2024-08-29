
execute store result score @s spellbound_randomizer_output run random value 1..8


#randomized directions
execute if score @s spellbound_randomizer_output matches 1 at @s run tp @s ~ ~ ~ 0 -60 
execute if score @s spellbound_randomizer_output matches 2 at @s run tp @s ~ ~ ~ 45 -60 
execute if score @s spellbound_randomizer_output matches 3 at @s run tp @s ~ ~ ~ 90 -60 
execute if score @s spellbound_randomizer_output matches 4 at @s run tp @s ~ ~ ~ 135 -60 

execute if score @s spellbound_randomizer_output matches 5 at @s run tp @s ~ ~ ~ 180 -60 
execute if score @s spellbound_randomizer_output matches 6 at @s run tp @s ~ ~ ~ 225 -60 
execute if score @s spellbound_randomizer_output matches 7 at @s run tp @s ~ ~ ~ 270 -60 
execute if score @s spellbound_randomizer_output matches 8 at @s run tp @s ~ ~ ~ 315 -60 


execute store result score @s spellbound_randomizer_output run random value 1..8


#randomized directions
execute if score @s spellbound_randomizer_output matches 1 at @s run tp @s ~ ~ ~ ~ 0 
execute if score @s spellbound_randomizer_output matches 2 at @s run tp @s ~ ~ ~ ~ -10 
execute if score @s spellbound_randomizer_output matches 3 at @s run tp @s ~ ~ ~ ~ -20 
execute if score @s spellbound_randomizer_output matches 4 at @s run tp @s ~ ~ ~ ~ -30 
execute if score @s spellbound_randomizer_output matches 5 at @s run tp @s ~ ~ ~ ~ -40 
execute if score @s spellbound_randomizer_output matches 6 at @s run tp @s ~ ~ ~ ~ -50 
execute if score @s spellbound_randomizer_output matches 7 at @s run tp @s ~ ~ ~ ~ -60 
execute if score @s spellbound_randomizer_output matches 8 at @s run tp @s ~ ~ ~ ~ -70 

