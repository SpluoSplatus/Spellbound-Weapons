
#advancement grant @s only minecraft:adventure/spellbound_all_weapons dagger

#scoreboard players add @s spellbound_dagger_cooldown 0
#execute as @s[scores={spellbound_dagger_cooldown=..9}] at @s run scoreboard players add @s spellbound_dagger_cooldown 1


item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Dagger"'}}}] weapon.mainhand spellbound_weapons:name/dagger


execute as @s[predicate=!spellbound_weapons:holding/enchant/efficency1-5] at @s run item modify entity @s weapon.mainhand spellbound_weapons:stats/dagger_0

execute as @s[predicate=spellbound_weapons:holding/enchant/efficency5] at @s run item modify entity @s weapon.mainhand spellbound_weapons:stats/dagger_5
execute as @s[predicate=spellbound_weapons:holding/enchant/efficency4] at @s run item modify entity @s weapon.mainhand spellbound_weapons:stats/dagger_4
execute as @s[predicate=spellbound_weapons:holding/enchant/efficency3] at @s run item modify entity @s weapon.mainhand spellbound_weapons:stats/dagger_3
execute as @s[predicate=spellbound_weapons:holding/enchant/efficency2] at @s run item modify entity @s weapon.mainhand spellbound_weapons:stats/dagger_2
execute as @s[predicate=spellbound_weapons:holding/enchant/efficency1] at @s run item modify entity @s weapon.mainhand spellbound_weapons:stats/dagger_1