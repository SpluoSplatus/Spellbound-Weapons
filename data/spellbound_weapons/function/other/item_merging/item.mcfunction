
execute as @s[tag=!spellbound_itemaligned,nbt=!{Item:{components:{"minecraft:custom_data":{"SpellboundItem":1b}}}}] if block ~ ~-1 ~ crafting_table run function spellbound_weapons:other/align/crafting
execute as @s[tag=!spellbound_itemaligned_cauldron] if block ~ ~ ~ water_cauldron run function spellbound_weapons:other/align/cauldron

execute as @s[tag=spellbound_itemaligned] at @s run function spellbound_weapons:other/align/aligned_crafting
execute as @s[tag=spellbound_itemaligned_cauldron] at @s run function spellbound_weapons:other/align/aligned_cauldron


#execute as @s[nbt={Item:{components:{"minecraft:custom_data":{"SpellboundItem":1b}}}}] if block ~ ~ ~ water_cauldron align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:paper"}}] run function spellbound_weapons:other/rename/a_main



execute if predicate spellbound_weapons:weapons_achieveable as @s[nbt={Item:{components:{"minecraft:custom_data":{"EmptyStaff":1b}}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=minecraft:item,tag=spellbound_item_staff] run function spellbound_weapons:other/item_merging/empty_staff

execute if predicate spellbound_weapons:weapons_achieveable as @s[nbt={Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{"SpellboundBrokenCrucible":1b}}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:netherite_ingot"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:redstone_block"}}] run function spellbound_weapons:other/item_merging/broken


execute if predicate spellbound_weapons:weapons_achieveable as @s[nbt={Item:{id:"minecraft:diamond_sword",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{"SpellboundItem":1b}}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:soul_sand",count:1}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_data":{"SpellboundNetherFortressNotch":1b}}}}] run function spellbound_weapons:other/item_merging/soul_sand

execute if predicate spellbound_weapons:weapons_achieveable as @s[nbt={Item:{id:"minecraft:iron_sword",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{"SpellboundItem":1b}}}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:blaze_powder",count:1}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:nether_brick",count:1,components:{"minecraft:custom_data":{"SpellboundNetherFortressNotch":1b}}}}] run function spellbound_weapons:other/item_merging/iron_sword_3

execute as @s[nbt={Item:{id:"minecraft:netherite_sword",components:{"minecraft:custom_data":{"SpellboundItem":1b}}}}] at @s unless block ~ ~-0.1 ~ #spellbound_weapons:permeable run function spellbound_weapons:other/action/convert_netherite

execute as @s[nbt={Item:{id:"minecraft:fire_charge"}}] run tag @s add spellbound_item_staff
execute as @s[nbt={Item:{id:"minecraft:packed_ice"}}] run tag @s add spellbound_item_staff
execute as @s[nbt={Item:{id:"minecraft:glowstone"}}] run tag @s add spellbound_item_staff


#dyes
execute if score spellbound_dyes spellbound_settings matches 1 if block ~ ~ ~ water_cauldron align zyx positioned ~.5 ~.5 ~.5 run function spellbound_weapons:other/item_merging/item_cauldron