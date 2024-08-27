# a






execute if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:cobblestone"}}] run function spellbound_weapons:other/item_merging/merged_blowgun
execute if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:fire_charge"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] run function spellbound_weapons:other/item_merging/merged_magmus_charger
execute if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:redstone"}}] run function spellbound_weapons:other/item_merging/merged_crucible
execute if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run function spellbound_weapons:other/item_merging/merged_moonlight_edge








