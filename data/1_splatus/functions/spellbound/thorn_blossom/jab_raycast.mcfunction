scoreboard players add temp spellbound_count 1

execute if score temp spellbound_count matches 1 run function 1_splatus:spellbound/thorn_blossom/jab_random

particle dust 0.114 0.522 0.059 1.2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
particle block moss_block ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]
execute if score temp spellbound_count matches 10.. if predicate 1_splatus:spellbound/chance/20_percent run scoreboard players set temp spellbound_count 16
execute rotated as @s unless score temp spellbound_count matches 20.. positioned ^ ^ ^.25 run function 1_splatus:spellbound/thorn_blossom/jab_raycast
scoreboard players reset temp spellbound_count
tp @s ~ ~ ~ ~ ~