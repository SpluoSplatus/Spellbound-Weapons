recipe take @s spellbound_weapons:fire_staff
advancement revoke @s only spellbound_weapons:fire_staff
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:47007}}]}] run give @s fishing_rod{CustomModelData:47009,FireStaff:1,display:{Name:'{"translate":"Fire Staff","color":"#ff371c","italic":false}',Lore:['{"translate":"","color":"gray","italic":false}','{"translate":"When In Main Hand:","color": "gray","italic":false}','{"translate":" 6 Attack Damage (Initial Strike)","color":"dark_green","italic":false}','{"translate":" 3 Second Default Charge Time","color":"dark_green","italic":false}']},StoreDamage:64f}
clear @s knowledge_book{CustomModelData:47007} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:47007}}]}] run function spellbound_weapons:fire_staff/crafted

