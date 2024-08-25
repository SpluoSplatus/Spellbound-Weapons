playsound minecraft:item.shield.block player @a[distance=..20]
playsound minecraft:item.shield.block player @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:block.wood.break player @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:block.wood.break player @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:entity.blaze.hurt player @a[distance=..20] ~ ~ ~ .5 .1

execute positioned ~ ~1.5 ~ run particle minecraft:block oak_planks ^ ^ ^1 .4 .4 .4 .2 10 force @a[distance=..32]

execute if entity @s[predicate=1_splatus:spellbound/holding/shield_offhand] run item modify entity @s weapon.offhand 1_splatus:spellbound/creatures/damage_shield
execute if entity @s[predicate=1_splatus:spellbound/holding/shield_mainhand] run item modify entity @s weapon.mainhand 1_splatus:spellbound/creatures/damage_shield
execute if entity @s[predicate=1_splatus:spellbound/holding/shield_offhand] run item modify entity @s weapon.offhand 1_splatus:spellbound/creatures/damage_shield
execute if entity @s[predicate=1_splatus:spellbound/holding/shield_mainhand] run item modify entity @s weapon.mainhand 1_splatus:spellbound/creatures/damage_shield


execute as @s[predicate=1_splatus:spellbound/holding/shield_mainhand] at @s if data entity @s {SelectedItem:{tag:{Damage:336}}} run function 1_splatus:spellbound/creatures/other/commands/damage_shield_break
execute as @s[predicate=1_splatus:spellbound/holding/shield_offhand] at @s if data entity @s {Inventory:[{Slot:-106b,tag:{Damage:336}}]} run function 1_splatus:spellbound/creatures/other/commands/damage_shield_break
