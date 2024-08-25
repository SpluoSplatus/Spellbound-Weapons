
#advancement grant @s only minecraft:adventure/spellbound_all_weapons dagger

#scoreboard players add @s spellbound_dagger_cooldown 0
#execute as @s[scores={spellbound_dagger_cooldown=..9}] at @s run scoreboard players add @s spellbound_dagger_cooldown 1


item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Dagger"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/dagger


execute as @s[predicate=!1_splatus:spellbound/holding/enchant/efficency1-5] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/dagger_0

execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency5] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/dagger_5
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency4] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/dagger_4
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency3] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/dagger_3
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency2] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/dagger_2
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency1] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/dagger_1