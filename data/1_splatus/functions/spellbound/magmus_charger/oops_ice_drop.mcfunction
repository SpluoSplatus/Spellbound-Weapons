execute if predicate 1_splatus:spellbound/chance/20_percent run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

playsound block.glass.break block @a[distance=..64] ~ ~ ~ .8 .8
particle large_smoke ~ ~ ~ .5 .5 .5 .01 2 force @a[distance=..64] 
particle block minecraft:ice ~ ~ ~ .5 .5 .5 1 5 force @a[distance=..64] 
execute run fill ~ ~ ~ ~ ~ ~ minecraft:air replace #1_splatus:spellbound/breakable_by_magmus
