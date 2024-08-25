#advancement grant @s only minecraft:adventure/spellbound_all_weapons evokers_wrath

item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Evokers Wrath"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/evokers_wrath

execute as @s[scores={spellbound_evoker=1}] at @s run scoreboard players add @s spellbound_evoker_cooldown 0
execute as @s[scores={spellbound_evoker=1,spellbound_evoker_cooldown=..50}] at @s run scoreboard players add @s spellbound_evoker_cooldown 1
execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_evoker=1,spellbound_evoker_cooldown=..49}] at @s run scoreboard players set @s spellbound_evoker_cooldown 50

item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/evokers_wrath



#item textures
execute as @s[scores={spellbound_evoker_cooldown=1..49}] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/evokers_wrath
execute as @s[scores={spellbound_evoker_cooldown=50}] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/evokers_wrath_ready

execute as @s[scores={spellbound_evoker_cooldown=50}] at @s run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..30] ~ ~ ~ 0.5 1.85



#sneak
execute as @s[scores={spellbound_evoker_cooldown=50..},predicate=1_splatus:spellbound/sneaking] run function 1_splatus:spellbound/evokers_wrath/release

#tips
execute as @s[tag=!spellbound_tip.evokers_wrath_1] run function 1_splatus:spellbound/other/tips/evokers_wrath_1
execute as @s[tag=spellbound_tip.evokers_wrath_1,tag=!spellbound_tip.evokers_wrath_2] run function 1_splatus:spellbound/other/tips/evokers_wrath_2
execute as @s[tag=spellbound_tip.evokers_wrath_2,tag=!spellbound_tip.evokers_wrath_3] run function 1_splatus:spellbound/other/tips/evokers_wrath_3