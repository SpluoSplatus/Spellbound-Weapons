playsound minecraft:item.shield.block player @a[distance=..20]
playsound minecraft:item.shield.block player @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:block.wood.break player @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:block.wood.break player @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:entity.blaze.hurt player @a[distance=..20] ~ ~ ~ .5 .1

execute positioned ~ ~1.5 ~ run particle minecraft:block oak_planks ^ ^ ^1 .4 .4 .4 .2 10 force @a[distance=..32]

execute if entity @s[predicate=spellbound_weapons:holding/shield_offhand] run item modify entity @s weapon.offhand spellbound_weapons:creatures/damage_shield
execute if entity @s[predicate=spellbound_weapons:holding/shield_mainhand] run item modify entity @s weapon.mainhand spellbound_weapons:creatures/damage_shield
execute if entity @s[predicate=spellbound_weapons:holding/shield_offhand] run item modify entity @s weapon.offhand spellbound_weapons:creatures/damage_shield
execute if entity @s[predicate=spellbound_weapons:holding/shield_mainhand] run item modify entity @s weapon.mainhand spellbound_weapons:creatures/damage_shield


execute as @s[predicate=spellbound_weapons:holding/shield_mainhand] at @s if data entity @s {SelectedItem:{tag:{Damage:336}}} run function spellbound_weapons:creatures/other/commands/damage_shield_break
execute as @s[predicate=spellbound_weapons:holding/shield_offhand] at @s if data entity @s {Inventory:[{Slot:-106b,tag:{Damage:336}}]} run function spellbound_weapons:creatures/other/commands/damage_shield_break
