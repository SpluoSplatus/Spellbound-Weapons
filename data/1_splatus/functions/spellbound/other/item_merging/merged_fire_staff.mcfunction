summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_crafteditem"],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{CustomModelData:47009,SpellboundItem:1,FireStaff:1,display:{Name:'{"translate":"Fire Staff","color":"#ff371c","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.fishing_rod"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},StoreDamage:64f}}}

particle end_rod ~ ~.12 ~ 0 0 0 .08 4 force @a[distance=..64]
playsound minecraft:block.fire.extinguish block @a[distance=..20] ~ ~ ~ 2.00 1.05

function 1_splatus:spellbound/other/item_merging/merged_common


kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
kill @s

