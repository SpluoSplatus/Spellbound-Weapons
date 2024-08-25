

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_thorn_blossom","spellbound_crafteditem"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{SpellboundItem:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],display:{Name:'{"translate": "Thorn Blossom","italic": false,"color": "#ff40a6"}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.iron_sword"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},SpellboundThornBlossom:1,CustomModelData:47050}}}

particle block moss_block ~ ~.2 ~ 0 0 0 0 100 force @a[distance=..128]

particle spore_blossom_air ~ ~.2 ~ 0 0 0 1 50 force @a[distance=..64] 
particle spore_blossom_air ~ ~.2 ~ 0 0 0 1 50 force @a[distance=..64] 

function 1_splatus:spellbound/other/item_merging/merged_common


kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:32b}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:spore_blossom"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:wheat",Count:64b}}]


kill @s