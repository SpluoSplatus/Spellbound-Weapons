summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_crafteditem"],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{CustomModelData:47008,SpellboundItem:1,SpellboundIceStaff:1,display:{Name:'{"translate":"Ice Staff","color":"#1c99ff","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.fishing_rod"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},StoreDamage:64f}}}

particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]

playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.25
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.25
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 1.5
playsound minecraft:block.amethyst_block.place block @a[distance=..20] ~ ~ ~ 2.00 .8
playsound minecraft:entity.stray.death block @a[distance=..20] ~ ~ ~ 2.00 1.35


function 1_splatus:spellbound/other/item_merging/merged_common


kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:packed_ice"}},distance=..1]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:ice"}},distance=..1]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:blue_ice"}},distance=..1]



kill @s