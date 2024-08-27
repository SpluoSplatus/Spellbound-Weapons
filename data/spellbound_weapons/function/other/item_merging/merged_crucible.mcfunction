
summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_crafteditem"],NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"translate":"Crucible","color":"#EB3868","italic":false}',Lore:['{"translate":"Color: Red","color":"gray","italic":false}','[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.diamond_sword"}]','{"translate":"Spellbound Weapons","color":"#676E75","italic":true}']},CrucibleDye:1,CustomModelData:47042,SpellboundItem:1,SpellboundCrucible:1,Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}


particle end_rod ~ ~.15 ~ 0 0 0 .3 50 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .6 50 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .9 50 force @a[distance=..128]


particle flash ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]

playsound minecraft:item.trident.thunder block @a[distance=..128] ~ ~ ~ 6 .9
playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 6 1.5
playsound minecraft:block.conduit.attack.target block @a[distance=..128] ~ ~ ~ 6 .5

function spellbound_weapons:other/item_merging/merged_common

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:redstone_block"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}]



kill @s