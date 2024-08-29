

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_blazeblade","spellbound_crafteditem"],Item:{id:"minecraft:diamond_sword",count:1,components:{custom_model_data:47015,custom_data:{SpellboundItem:1b,SpellboundWithering:1b},attribute_modifiers:{modifiers:[]},item_name:"{\"translate\":\"Witherblade\",\"color\":\"#7f7aa1\",\"italic\":false}",lore:["[ {\"translate\":\"Grindstone Repair: \",\"color\":\"gray\",\"italic\": false}]","[{\"translate\":\"  \",\"color\":\"gray\",\"italic\": false},{\"color\":\"blue\",\"italic\": false,\"translate\":\"item.minecraft.diamond_sword\"}]","{\"translate\":\"Spellbound Weapons\",\"color\":\"#676e75\",\"italic\": true}"]}}}



particle soul ~ ~.2 ~ 0 0 0 .3 25 force @a[distance=..128]
particle soul ~ ~.2 ~ 0 0 0 .15 75 force @a[distance=..128]

function spellbound_weapons:withering_sword/summon_dusty
function spellbound_weapons:withering_sword/summon_dusty
function spellbound_weapons:withering_sword/summon_dusty
function spellbound_weapons:withering_sword/summon_dusty
function spellbound_weapons:withering_sword/summon_dusty
function spellbound_weapons:withering_sword/summon_dusty
function spellbound_weapons:withering_sword/summon_dusty

particle dust_color_transition{from_color:[0.129,0.192,0.361],scale:1.8,to_color:[1.000,0.000,0.467]} ~ ~.3 ~ 0 0 0 1 1 force @a[distance=..64]


playsound minecraft:block.conduit.attack.target player @a[distance=..32] ~ ~ ~ 2 .6
playsound minecraft:block.conduit.attack.target player @a[distance=..32] ~ ~ ~ 2 1.5

function spellbound_weapons:other/item_merging/merged_common



kill @n[type=item,nbt={Item:{id:"minecraft:soul_sand"}}]
kill @n[type=item,nbt={Item:{id:"minecraft:nether_brick",components:{"minecraft:custom_data":{"SpellboundNetherFortressNotch":1b}}}}]


kill @s