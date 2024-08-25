scoreboard players add temp2 spellbound_count 1
execute if predicate 1_splatus:spellbound/chance/20_percent rotated ~5 0 run particle soul ^ ^ ^.3 ^ ^ ^10000000000000 0.25 1 force @a[distance=..32]
execute rotated ~5 0 run particle soul ^ ^ ^.3 ^ ^ ^10000000000000 0.000000000000025 0 force @a[distance=..32]
execute rotated ~5 0 run particle effect ^ ^ ^1 ^ ^ ^10000000000000 0.000000000000025 0 force @a[distance=..32]
execute unless score temp2 spellbound_count matches 72.. rotated ~5 ~ run function 1_splatus:spellbound/withering_sword/wave_particle
execute if score temp2 spellbound_count matches 72.. run scoreboard players reset temp2 spellbound_count