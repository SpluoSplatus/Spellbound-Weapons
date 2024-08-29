

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_blazeblade","spellbound_crafteditem"],Item:{id:"minecraft:fishing_rod",count:1,components:{custom_model_data:47011,custom_data:{SpellboundItem:1b,SpellboundIceStaff:1b},max_damage:250,attribute_modifiers:{modifiers:[]},item_name:"{\"translate\":\"Ice Staff\",\"color\":\"#1c99ff\",\"italic\":false}",custom_name:"{\"translate\":\"Ice Staff\",\"color\":\"#1c99ff\",\"italic\":false}",lore:["[ {\"translate\":\"Grindstone Repair: \",\"color\":\"gray\",\"italic\": false}]","[{\"translate\":\"  \",\"color\":\"gray\",\"italic\": false},{\"color\":\"blue\",\"italic\": false,\"translate\":\"item.minecraft.fishing_rod\"}]","{\"translate\":\"Spellbound Weapons\",\"color\":\"#676e75\",\"italic\": true}"]}}}

particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]

playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.25
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.25
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.5
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 .8
playsound minecraft:entity.stray.death block @a[distance=..20] ~ ~ ~ 2.00 1.35


function spellbound_weapons:other/item_merging/merged_common


kill @n[type=item,nbt={Item:{id:"minecraft:packed_ice"}},distance=..1]
kill @n[type=item,nbt={Item:{id:"minecraft:ice"}},distance=..1]
kill @n[type=item,nbt={Item:{id:"minecraft:blue_ice"}},distance=..1]



kill @s