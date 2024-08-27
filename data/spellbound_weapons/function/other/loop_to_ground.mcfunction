
execute unless block ~ ~ ~ #spellbound_weapons:permeable at @s align y run tp @s ~ ~1 ~

execute if block ~ ~-1 ~ #spellbound_weapons:permeable at @s align y run tp @s ~ ~-1 ~

execute align y positioned ~ ~-1 ~ if block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:other/loop_to_ground
execute align y unless block ~ ~ ~ #spellbound_weapons:permeable positioned ~ ~1 ~ run function spellbound_weapons:other/loop_to_ground
