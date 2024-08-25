scoreboard players add temp2 spellbound_count 1
execute rotated ~5 0 if predicate 1_splatus:spellbound/chance/33_percent run particle cloud ^ ^ ^.3 ^ ^ ^10000000000000 0.000000000000015 0 force @a[distance=..32]
execute unless score temp2 spellbound_count matches 72.. rotated ~5 ~ run function 1_splatus:spellbound/golden_ocean_edge/wave_particle
execute if score temp2 spellbound_count matches 72.. run scoreboard players reset temp2 spellbound_count