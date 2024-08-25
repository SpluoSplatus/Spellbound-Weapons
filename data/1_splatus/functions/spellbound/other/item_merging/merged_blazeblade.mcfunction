

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_blazeblade","spellbound_crafteditem"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:47048,SpellboundItem:1,BlazingSword:1,display:{Name:'{"translate":"Blazeblade","color":"#ff8400","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.iron_sword"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']}}}}

particle explosion ~ ~.2 ~ 0 0 0 1 1 force @a[distance=..256]
particle large_smoke ~ ~.12 ~ 0 0 0 .3 10 force @a[distance=..64]
particle large_smoke ~ ~.12 ~ 0 0 0 .15 30 force @a[distance=..64]
particle flame ~ ~.12 ~ 0 0 0 .2 20 force @a[distance=..64]
particle lava ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]
playsound minecraft:block.fire.extinguish block @a[distance=..32] ~ ~ ~ 2.00 .8
playsound minecraft:entity.generic.explode block @a[distance=..32] ~ ~ ~ 2.00 1.2

function 1_splatus:spellbound/other/item_merging/merged_common


kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:blaze_powder"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:nether_brick",tag:{SpellboundNetherFortressNotch:1}}}]


kill @s