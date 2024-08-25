
item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Windsweeper"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/windsweeper


execute unless score @s spellbound_windswept_cooldown matches 20.. run scoreboard players add @s spellbound_windswept_cooldown 1

execute if score spellbound_nocooldown spellbound_count matches 1 unless score @s spellbound_windswept_cooldown matches 20.. run scoreboard players set @s spellbound_windswept_cooldown 20

item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/windsweeper


execute if predicate 1_splatus:spellbound/sneaking if score @s spellbound_windswept_cooldown matches 20.. positioned ~ ~1 ~ positioned ^ ^ ^.5 run function 1_splatus:spellbound/windswept_sword/release

#tips
execute as @s[tag=!spellbound_tip.windsweeper_1] run function 1_splatus:spellbound/other/tips/windsweeper_1
execute as @s[tag=spellbound_tip.windsweeper_1,tag=!spellbound_tip.windsweeper_2] run function 1_splatus:spellbound/other/tips/windsweeper_2
