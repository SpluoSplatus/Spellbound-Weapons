
tag @s[tag=!spellbound_tip.thorn_blossom_1] add spellbound_tip.thorn_blossom_1

#iron durability
execute if entity @s[predicate=!spellbound_weapons:holding/weapon/thorn_blossom_diamond,predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute if entity @s[predicate=!spellbound_weapons:holding/weapon/thorn_blossom_diamond,predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute if entity @s[predicate=!spellbound_weapons:holding/weapon/thorn_blossom_diamond,predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5

#diamond durability
execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_diamond,predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1
execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_diamond,predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1
execute if entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_diamond,predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1



#break
execute as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block{block_state:"copper_block"} ~ ~1 ~ .4 .3 .4 .4 15 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block{block_state:"moss_block"} ~ ~1 ~ .4 .3 .4 .4 15 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run playsound item.shield.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air


scoreboard players set @s spellbound_thorn_cooldown 0



tag @s remove spellbound_temp2