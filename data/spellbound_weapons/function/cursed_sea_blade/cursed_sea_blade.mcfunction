
#advancement grant @s only minecraft:adventure/spellbound_all_weapons cursed_sea_blade

item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Cursed Sea Blade"}'}}}}] weapon.mainhand spellbound_weapons:name/cursed_sea_blade

execute as @s[scores={spellbound_curse=1}] run item modify entity @s weapon.mainhand spellbound_weapons:cursed_sea_blade


#execute unless score @s spellbound_curse_cooldown matches 100.. if score @s spellbound_rotation matches 90 if predicate spellbound_weapons:sneaking run scoreboard players add @s spellbound_curse_cooldown 1
scoreboard players set @s spellbound_curse_cooldown 0
