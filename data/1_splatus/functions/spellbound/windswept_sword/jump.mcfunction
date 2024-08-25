scoreboard players add @s spellbound_sand_jump 1 
execute if score @s spellbound_sand_jump matches 1 run effect give @s levitation 1 20 true
execute if score @s spellbound_sand_jump matches 3.. run effect clear @s levitation
execute if score @s spellbound_sand_jump matches 3.. run scoreboard players reset @s spellbound_sand_jump