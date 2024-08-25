execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run summon item ~ ~ ~ {Tags:["spellbound_crafteditem_book"],Motion:[0.0,0.5,0.0],Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if entity @s[nbt={Item:{tag:{Enchantments:[{}]}}}] run data modify entity @e[distance=..2,type=item,tag=spellbound_crafteditem_book,sort=nearest,limit=1,nbt={Item:{id:"minecraft:enchanted_book"}}] Item.tag.StoredEnchantments set from entity @s Item.tag.Enchantments
data modify entity @e[distance=..3,sort=nearest,limit=1,tag=spellbound_crafteditem] Item.tag.Damage set from entity @s Item.tag.Damage


particle flash ~ ~ ~ 0 0 0 0 5 force @a[distance=..32]
particle poof ~ ~.2 ~ .3 .3 .3 .15 12 force @a[distance=..64]
particle poof ~ ~.2 ~ .3 .3 .3 .05 12 force @a[distance=..64]


tag @e[distance=..3,type=item,tag=spellbound_crafteditem] remove spellbound_crafteditem

playsound minecraft:entity.illusioner.cast_spell block @a[distance=..20] ~ ~ ~ 2.00 .9
playsound block.respawn_anchor.set_spawn master @a[distance=..20] ~ ~ ~ 2.00 1.05
