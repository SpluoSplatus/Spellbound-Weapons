
item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Windsweeper"'}}}] weapon.mainhand spellbound_weapons:name/windsweeper


execute unless score @s spellbound_windswept_cooldown matches 20.. run scoreboard players add @s spellbound_windswept_cooldown 1

execute if score spellbound_nocooldown spellbound_settings matches 1 unless score @s spellbound_windswept_cooldown matches 20.. run scoreboard players set @s spellbound_windswept_cooldown 20

item modify entity @s weapon.mainhand spellbound_weapons:stats/windsweeper


execute if predicate spellbound_weapons:sneaking if score @s spellbound_windswept_cooldown matches 20.. positioned ~ ~1 ~ positioned ^ ^ ^.5 run function spellbound_weapons:windswept_sword/release

#tips
execute as @s[tag=!spellbound_tip.windsweeper_1] run function spellbound_weapons:other/tips/windsweeper_1
execute as @s[tag=spellbound_tip.windsweeper_1,tag=!spellbound_tip.windsweeper_2] run function spellbound_weapons:other/tips/windsweeper_2

