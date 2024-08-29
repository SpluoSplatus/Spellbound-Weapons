

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_blazeblade","spellbound_crafteditem"],Item:{id:"minecraft:iron_sword",count:1,components:{custom_model_data:47048,custom_data:{SpellboundItem:1b,BlazingSword:1b},max_damage:600,attribute_modifiers:{modifiers:[]},item_name:"{\"translate\":\"Blazeblade\",\"color\":\"#ff8400\",\"italic\":false}",custom_name:"{\"translate\":\"Blazeblade\",\"color\":\"#ff8400\",\"italic\":false}",lore:["[ {\"translate\":\"Grindstone Repair: \",\"color\":\"gray\",\"italic\": false}]","[{\"translate\":\"  \",\"color\":\"gray\",\"italic\": false},{\"color\":\"blue\",\"italic\": false,\"translate\":\"item.minecraft.iron_sword\"}]","{\"translate\":\"Spellbound Weapons\",\"color\":\"#676e75\",\"italic\": true}"]}}}

particle explosion ~ ~.2 ~ 0 0 0 1 1 force @a[distance=..256]
particle large_smoke ~ ~.12 ~ 0 0 0 .3 10 force @a[distance=..64]
particle large_smoke ~ ~.12 ~ 0 0 0 .15 30 force @a[distance=..64]
particle flame ~ ~.12 ~ 0 0 0 .2 20 force @a[distance=..64]
particle lava ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]
playsound minecraft:block.fire.extinguish block @a[distance=..32] ~ ~ ~ 2.00 .8
playsound minecraft:entity.generic.explode block @a[distance=..32] ~ ~ ~ 2.00 1.2

function spellbound_weapons:other/item_merging/merged_common


kill @n[type=item,nbt={Item:{id:"minecraft:blaze_powder"}}]
kill @n[type=item,nbt={Item:{id:"minecraft:nether_brick",components:{"minecraft:custom_data":{SpellboundNetherFortressNotch:1b}}}}]


kill @s