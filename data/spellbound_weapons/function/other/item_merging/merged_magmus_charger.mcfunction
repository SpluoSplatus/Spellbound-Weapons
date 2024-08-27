

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_magmus_bow","spellbound_crafteditem"],Item:{id:"minecraft:bow",Count:1b,tag:{CustomModelData:47040,SpellboundItem:1,SpellboundMagmusCharger:1,display:{Name:'{"translate":"Magmus Charger","color":"#cc081f","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.bow"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},StoreDamage:64f}}}


particle lava ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]
playsound minecraft:block.fire.extinguish block @a[distance=..20] ~ ~ ~ 2.00 1.05
playsound minecraft:entity.wither_skeleton.death block @a[distance=..20] ~ ~ ~ 2.00 1.75

function spellbound_weapons:other/item_merging/merged_common


kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}]


kill @s