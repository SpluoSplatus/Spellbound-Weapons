scoreboard players add @s spellbound_count2 1
scoreboard players add @s spellbound_count 1

tp @s ^ ^ ^.5


execute at @s run particle dust 0.114 0.522 0.059 1.5 ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]




execute at @s unless block ^ ^ ^.5 #1_splatus:spellbound/permeable run scoreboard players set @s spellbound_count 1000
execute at @s unless block ^ ^ ^.5 #1_splatus:spellbound/permeable run scoreboard players set @s spellbound_count2 12


#max distance
execute at @s unless score @s spellbound_enchantlevel matches 1.. if score @s spellbound_count matches 13..999 run function 1_splatus:spellbound/thorn_blossom/thorn_raycast_end

execute at @s if score @s spellbound_enchantlevel matches 1 if score @s spellbound_count matches 12..999 run function 1_splatus:spellbound/thorn_blossom/thorn_raycast_end
execute at @s if score @s spellbound_enchantlevel matches 2 if score @s spellbound_count matches 13..999 run function 1_splatus:spellbound/thorn_blossom/thorn_raycast_end
execute at @s if score @s spellbound_enchantlevel matches 3 if score @s spellbound_count matches 14..999 run function 1_splatus:spellbound/thorn_blossom/thorn_raycast_end


execute at @s unless score @s spellbound_count2 matches 6.. run function 1_splatus:spellbound/thorn_blossom/thorn_raycast
execute if score @s spellbound_count2 matches 6.. run scoreboard players reset @s spellbound_count2
