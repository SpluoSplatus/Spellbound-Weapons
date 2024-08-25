

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_witherblade","spellbound_crafteditem"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{SpellboundItem:1,display:{Name:'{"translate": "Witherblade","italic": false,"color": "#7f7aa1"}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.diamond_sword"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},SpellboundWithering:1,CustomModelData:47015}}}



particle soul ~ ~.2 ~ 0 0 0 .3 25 force @a[distance=..128]
particle soul ~ ~.2 ~ 0 0 0 .15 75 force @a[distance=..128]

function 1_splatus:spellbound/withering_sword/summon_dusty
function 1_splatus:spellbound/withering_sword/summon_dusty
function 1_splatus:spellbound/withering_sword/summon_dusty
function 1_splatus:spellbound/withering_sword/summon_dusty
function 1_splatus:spellbound/withering_sword/summon_dusty
function 1_splatus:spellbound/withering_sword/summon_dusty
function 1_splatus:spellbound/withering_sword/summon_dusty

particle dust_color_transition 0.129 0.192 0.361 1.8 1.000 0.000 0.467 ~ ~.3 ~ 0 0 0 1 1 force @a[distance=..64]


playsound minecraft:block.conduit.attack.target player @a[distance=..32] ~ ~ ~ 2 .6
playsound minecraft:block.conduit.attack.target player @a[distance=..32] ~ ~ ~ 2 1.5

function 1_splatus:spellbound/other/item_merging/merged_common



kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:soul_sand"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:nether_brick",tag:{SpellboundNetherFortressNotch:1}}}]


kill @s