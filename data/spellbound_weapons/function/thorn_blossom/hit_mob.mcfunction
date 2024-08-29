
particle minecraft:block{block_state:"moss_block"} ~ ~ ~ .3 .3 .3 5 3 normal


#if normal moss variant
execute if entity @s[predicate=!spellbound_weapons:holding/weapon/thorn_blossom_cherry] run particle minecraft:spore_blossom_air ~ ~1 ~ .3 .3 .3 1 3 force @a[distance=..64]


#if cherry variant
execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_cherry] run particle minecraft:block{block_state:"cherry_leaves"} ~ ~ ~ .3 .3 .3 5 3 normal

execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_cherry] run particle minecraft:cherry_leaves ~ ~1 ~ .3 .3 .3 1 3 force @a[distance=..64]
