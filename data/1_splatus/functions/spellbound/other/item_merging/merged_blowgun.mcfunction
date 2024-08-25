
summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_blowgun","spellbound_crafteditem"],Item:{id:"minecraft:bow",Count:1b,tag:{SpellboundBlowgun:1,SpellboundItem:1,display:{Name:'{"translate":"Blowgun","color":"#588025","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.bow"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},CustomModelData:47032}}}


playsound minecraft:block.bamboo.fall block @a[distance=..20] ~ ~ ~ 2.00 .5

function 1_splatus:spellbound/other/item_merging/merged_common

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:bamboo"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:cobblestone"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:bone"}}]


kill @s