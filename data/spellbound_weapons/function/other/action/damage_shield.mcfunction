playsound minecraft:item.shield.block player @a[distance=..20]


execute if entity @s[predicate=spellbound_weapons:holding/shield_offhand,predicate=!spellbound_weapons:holding/enchant/unbreaking3_offhand,predicate=!spellbound_weapons:holding/enchant/unbreaking2_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage1
execute if entity @s[predicate=spellbound_weapons:holding/shield_mainhand,predicate=!spellbound_weapons:holding/enchant/unbreaking3,predicate=!spellbound_weapons:holding/enchant/unbreaking2] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage1

execute if entity @s[predicate=spellbound_weapons:holding/shield_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking3_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute if entity @s[predicate=spellbound_weapons:holding/shield_mainhand,predicate=spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5


execute as @s[predicate=spellbound_weapons:holding/shield_mainhand] at @s[predicate=spellbound_weapons:holding/tag/0_durability] run function spellbound_weapons:other/action/damage_shield_break
execute as @s[predicate=spellbound_weapons:holding/shield_offhand] at @s[predicate=spellbound_weapons:holding/tag/0_durability_offhand] run function spellbound_weapons:other/action/damage_shield_break


advancement grant @s only minecraft:story/deflect_arrow