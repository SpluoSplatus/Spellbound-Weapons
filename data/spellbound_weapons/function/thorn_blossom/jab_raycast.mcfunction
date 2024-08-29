scoreboard players add temp spellbound_count 1

execute if score temp spellbound_count matches 1 run function spellbound_weapons:thorn_blossom/jab_random

particle dust{color:[0.114,0.522,0.059],scale:1.2} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
particle block{block_state:"moss_block"} ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]

execute if predicate spellbound_weapons:chance/5_percent if entity @s[tag=spellbound_thorn_cherry] run particle cherry_leaves ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..64]

execute if score temp spellbound_count matches 10.. if predicate spellbound_weapons:chance/20_percent run scoreboard players set temp spellbound_count 16
execute rotated as @s unless score temp spellbound_count matches 20.. positioned ^ ^ ^.25 run function spellbound_weapons:thorn_blossom/jab_raycast
scoreboard players reset temp spellbound_count
tp @s ~ ~ ~ ~ ~