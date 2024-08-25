recipe take @s 1_splatus:spellbound/ice_staff
advancement revoke @s only 1_splatus:spellbound/ice_staff
clear @s knowledge_book{CustomModelData:47007} 1
give @s fishing_rod{CustomModelData:47008,SpellboundIceStaff:1,display:{Name:'{"translate":"Ice Staff","color":"#1c99ff","italic":false}',Lore:['{"translate":"Shoot ice blocks that freeze your","color":"#8acaff","italic":true}','{"translate":"enemies in place","color":"#8acaff","italic":true}','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},StoreDamage:64f}
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:47007}}]}] run function 1_splatus:spellbound/ice_staff/crafted
