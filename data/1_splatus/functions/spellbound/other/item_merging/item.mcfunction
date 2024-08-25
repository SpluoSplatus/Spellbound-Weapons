
execute as @s[tag=!spellbound_itemaligned,nbt=!{Item:{tag:{SpellboundItem:1}}}] if block ~ ~-1 ~ crafting_table run function 1_splatus:spellbound/other/align/crafting
execute as @s[tag=!spellbound_itemaligned_cauldron] if block ~ ~ ~ water_cauldron run function 1_splatus:spellbound/other/align/cauldron

execute as @s[tag=spellbound_itemaligned] at @s run function 1_splatus:spellbound/other/align/aligned_crafting
execute as @s[tag=spellbound_itemaligned_cauldron] at @s run function 1_splatus:spellbound/other/align/aligned_cauldron


#execute as @s[nbt={Item:{tag:{SpellboundItem:1}}}] if block ~ ~ ~ water_cauldron align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:paper"}}] run function 1_splatus:spellbound/other/rename/a_main



execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{tag:{EmptyStaff:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=minecraft:item,tag=spellbound_item_staff] run function 1_splatus:spellbound/other/item_merging/empty_staff
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:bow",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:fire_charge"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:netherite_ingot"}}] run function 1_splatus:spellbound/other/item_merging/bow
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:bamboo",Count:64b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:cobblestone"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:bone","Count":3b}}] run function 1_splatus:spellbound/other/item_merging/bamboo
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:stick",Count:1b,tag:{SpellboundBrokenCrucible:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:netherite_ingot"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:redstone_block"}}] run function 1_splatus:spellbound/other/item_merging/broken
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:golden_sword"}}] run function 1_splatus:spellbound/other/item_merging/heart_of_the_sea
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:diamond_sword",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:ender_pearl"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:amethyst_shard",Count:32b}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:golden_apple"}}] run function 1_splatus:spellbound/other/item_merging/diamond_sword
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:diamond_sword",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:feather",Count:64b}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:emerald_block"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:sand",Count:64b}}] run function 1_splatus:spellbound/other/item_merging/diamond_sword_2
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:iron_sword"}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:spore_blossom"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:wheat",Count:64b}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:copper_ingot",Count:32b}}] run function 1_splatus:spellbound/other/item_merging/iron_sword_2
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:diamond_sword",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:soul_sand",Count:1b}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:nether_brick",Count:1b,tag:{SpellboundNetherFortressNotch:1}}}] run function 1_splatus:spellbound/other/item_merging/soul_sand
execute if predicate 1_splatus:spellbound/weapons_achieveable as @s[nbt={Item:{id:"minecraft:iron_sword",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:nether_brick",Count:1b,tag:{SpellboundNetherFortressNotch:1}}}] run function 1_splatus:spellbound/other/item_merging/iron_sword_3


execute as @s[nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundCrucible:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @s[nbt={Item:{id:"minecraft:netherite_sword",tag:{EndExcalibur:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @s[nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundMoonlightEdge:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @s[nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundWithering:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @s[nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundWindsweptSword:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite

execute as @s[nbt={Item:{id:"minecraft:fire_charge"}}] run tag @s add spellbound_item_staff
execute as @s[nbt={Item:{id:"minecraft:packed_ice"}}] run tag @s add spellbound_item_staff
execute as @s[nbt={Item:{id:"minecraft:glowstone"}}] run tag @s add spellbound_item_staff




#dyes
execute if score spellbound_dyes spellbound_count matches 1 as @s[type=item,nbt={Item:{id:"minecraft:diamond_sword",tag:{SpellboundCrucible:1}}}] at @s if block ~ ~ ~ water_cauldron run function 1_splatus:spellbound/other/dyes/crucible/check
execute if score spellbound_dyes spellbound_count matches 1 as @s[type=item,nbt={Item:{id:"minecraft:iron_shovel",tag:{SpellboundDagger:1}}}] at @s if block ~ ~ ~ water_cauldron run function 1_splatus:spellbound/other/dyes/dagger/check
