
summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_windsweeper","spellbound_crafteditem"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{SpellboundItem:1,display:{Name:'{"translate": "Windsweeper","italic": false,"color": "#e1e8a5"}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.diamond_sword"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},SpellboundWindsweptSword:1,CustomModelData:47014}}}

playsound entity.phantom.ambient block @a[distance=..32] ~ ~ ~ 1.5 .55

function spellbound_weapons:other/item_merging/merged_common

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:emerald_block"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:sand",Count:64b}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:feather",Count:64b}}]



particle poof ~ ~.15 ~ 0 0 0 .1 100 force @a[distance=..128]
particle poof ~ ~.15 ~ 0 0 0 .4 50 force @a[distance=..128]
particle poof ~ ~.15 ~ 0 0 0 .2 25 force @a[distance=..128]

kill @s