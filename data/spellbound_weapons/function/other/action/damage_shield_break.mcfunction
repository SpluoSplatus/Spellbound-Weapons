playsound minecraft:item.shield.break player @a[distance=..20]
execute if entity @s[predicate=spellbound_weapons:holding/shield_offhand] run item replace entity @s weapon.offhand with air
execute if entity @s[predicate=spellbound_weapons:holding/shield_mainhand] run item replace entity @s weapon.mainhand with air
