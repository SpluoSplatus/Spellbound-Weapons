


attribute @s generic.jump_strength modifier add spellbound_weapons:jump_strength -10 add_value


execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking1-3] at @s run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking1] at @s if predicate spellbound_weapons:chance/50_percent run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] at @s if predicate spellbound_weapons:chance/33_percent run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1


item modify entity @s weapon.mainhand spellbound_weapons:damage0.15


execute as @s[predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block{block_state:"sand"} ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

execute as @s[tag=!spellbound_tip.windsweeper_2,tag=spellbound_tip.windsweeper_1] run function spellbound_weapons:other/tips/checkmark
tag @s[tag=!spellbound_tip.windsweeper_2,tag=spellbound_tip.windsweeper_1] add spellbound_tip.windsweeper_2


scoreboard players set @s spellbound_windswept_levitation 0
execute at @s run function spellbound_weapons:windswept_sword/levitate
