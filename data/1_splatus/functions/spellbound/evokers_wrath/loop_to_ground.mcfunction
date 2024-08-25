scoreboard players add temp spellbound_count 1
execute unless block ~ ~ ~ #1_splatus:spellbound/permeable at @s align y run tp @s ~ ~1 ~

execute if block ~ ~-1 ~ #1_splatus:spellbound/permeable at @s align y run tp @s ~ ~-1 ~

execute if score temp spellbound_count matches 5.. run kill @s
execute if score temp spellbound_count matches 5.. run scoreboard players set temp spellbound_count 0

execute if score temp spellbound_count matches 1.. align y positioned ~ ~-1 ~ if block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/evokers_wrath/loop_to_ground
execute if score temp spellbound_count matches 1.. align y unless block ~ ~ ~ #1_splatus:spellbound/permeable positioned ~ ~1 ~ run function 1_splatus:spellbound/evokers_wrath/loop_to_ground

scoreboard players reset temp spellbound_count