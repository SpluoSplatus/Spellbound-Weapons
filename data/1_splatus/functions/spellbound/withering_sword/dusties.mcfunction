scoreboard players add @s spellbound_count 1

effect give @s invisibility 10000 1 true
effect give @s slowness 10000 3 true
particle dust_color_transition 0.129 0.192 0.361 1 1.000 0.000 0.467 ~ ~ ~ .05 .05 .05 1 2 force @a[distance=..64]

execute if predicate 1_splatus:spellbound/chance/10_percent run particle soul ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..32]


execute if score @s spellbound_count matches 20.. if predicate 1_splatus:spellbound/chance/5_percent run function 1_splatus:spellbound/other/disappear