

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_blazeblade","spellbound_crafteditem"],Item:{id:"minecraft:fishing_rod",count:1,components:{custom_model_data:47010,custom_data:{SpellboundItem:1b,SpellboundElectricStaff:1b},max_damage:250,attribute_modifiers:{modifiers:[]},item_name:"{\"translate\":\"Electric Staff\",\"color\":\"#d2ff1c\",\"italic\":false}",custom_name:"{\"translate\":\"Electric Staff\",\"color\":\"#d2ff1c\",\"italic\":false}",lore:["[ {\"translate\":\"Grindstone Repair: \",\"color\":\"gray\",\"italic\": false}]","[{\"translate\":\"  \",\"color\":\"gray\",\"italic\": false},{\"color\":\"blue\",\"italic\": false,\"translate\":\"item.minecraft.fishing_rod\"}]","{\"translate\":\"Spellbound Weapons\",\"color\":\"#676e75\",\"italic\": true}"]}}}

particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
playsound minecraft:entity.lightning_bolt.thunder block @a[distance=..20] ~ ~ ~ 2.00 2

function spellbound_weapons:other/item_merging/merged_common



kill @n[type=item,nbt={Item:{id:"minecraft:glowstone"}}]
kill @s