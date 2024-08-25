
execute unless block ~ ~ ~ #1_splatus:spellbound/permeable at @s align y run tp @s ~ ~1 ~

execute if block ~ ~-1 ~ #1_splatus:spellbound/permeable at @s align y run tp @s ~ ~-1 ~

execute align y positioned ~ ~-1 ~ if block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/loop_to_ground
execute align y unless block ~ ~ ~ #1_splatus:spellbound/permeable positioned ~ ~1 ~ run function 1_splatus:spellbound/other/loop_to_ground
