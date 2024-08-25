playsound minecraft:item.shield.block player @a[distance=..20]


execute if entity @s[predicate=1_splatus:spellbound/holding/shield_offhand,predicate=!1_splatus:spellbound/holding/enchant/unbreaking3_offhand,predicate=!1_splatus:spellbound/holding/enchant/unbreaking2_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage1
execute if entity @s[predicate=1_splatus:spellbound/holding/shield_mainhand,predicate=!1_splatus:spellbound/holding/enchant/unbreaking3,predicate=!1_splatus:spellbound/holding/enchant/unbreaking2] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage1

execute if entity @s[predicate=1_splatus:spellbound/holding/shield_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking3_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage0.5
execute if entity @s[predicate=1_splatus:spellbound/holding/shield_mainhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5


execute as @s[predicate=1_splatus:spellbound/holding/shield_mainhand] at @s[predicate=1_splatus:spellbound/holding/tag/0_durability] run function 1_splatus:spellbound/other/action/damage_shield_break
execute as @s[predicate=1_splatus:spellbound/holding/shield_offhand] at @s[predicate=1_splatus:spellbound/holding/tag/0_durability_offhand] run function 1_splatus:spellbound/other/action/damage_shield_break


advancement grant @s only minecraft:story/deflect_arrow