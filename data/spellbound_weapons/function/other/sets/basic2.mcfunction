

clear @s

item replace entity @s armor.head with diamond_helmet{Unbreakable:1b}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.feet with diamond_boots{Unbreakable:1b}

give @s diamond_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}]}
give @s bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:power",lvl:3s}]}
give @s cooked_beef 64
give @s diamond_pickaxe{Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:5s}]}
give @s diamond_shovel{Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:5s}]}
give @s water_bucket

item replace entity @s hotbar.8 with cobblestone 64
item replace entity @s hotbar.7 with arrow 64


item replace entity @s weapon.offhand with shield{Unbreakable:1b}