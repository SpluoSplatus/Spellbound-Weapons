

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_golden_sea_blade","spellbound_crafteditem"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:47045,SpellboundItem:1,SpellboundGoldenOceanEdge:1,display:{Name:'{"translate":"Golden Sea Blade","color":"#e5ff70","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.iron_sword"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},Enchantments:[{id:"unbreaking",lvl:1s}]}}}

#-------
#math time! this will translate the durability
#golden sword max durability = 32
#iron sword max durability = 250
#250 / 32 = 7.8125
#ironsword is 7.8125x more durability than golden sword 

#also HAHAHHAHAHHA not being used anyore, golden ocean edge will always go to max duability when crafted
#execute as @e[distance=..3,sort=nearest,limit=1,tag=spellbound_item_golden_sea_blade] store result entity @s Item.tag.Damage int 7.8125 run data get entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_sword"}},limit=1,sort=nearest] Item.tag.Damage
#-------

playsound minecraft:block.conduit.ambient.short block @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:block.conduit.ambient.short block @a[distance=..20] ~ ~ ~ 1 2


particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
particle falling_water ~ ~.12 ~ .5 .5 .5 .08 30 force @a[distance=..64]
playsound minecraft:entity.dolphin.swim block @a[distance=..20] ~ ~ ~ 2.00 .5
playsound minecraft:entity.zombie.converted_to_drowned block @a[distance=..20] ~ ~ ~ 2.00 .75
#playsound minecraft:entity.stray.death block @a[distance=..20] ~ ~ ~ 2.00 1.35

function 1_splatus:spellbound/other/item_merging/merged_common

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:golden_sword"}}]

kill @s