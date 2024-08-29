#advancement grant @s only minecraft:adventure/spellbound_all_weapons evokers_wrath

item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Evokers Wrath"'}}}] weapon.mainhand spellbound_weapons:name/evokers_wrath

execute as @s[scores={spellbound_evoker=1}] at @s run scoreboard players add @s spellbound_evoker_cooldown 0
execute as @s[scores={spellbound_evoker=1,spellbound_evoker_cooldown=..50}] at @s run scoreboard players add @s spellbound_evoker_cooldown 1
execute if score spellbound_nocooldown spellbound_settings matches 1 as @s[scores={spellbound_evoker=1,spellbound_evoker_cooldown=..49}] at @s run scoreboard players set @s spellbound_evoker_cooldown 50

item modify entity @s weapon.mainhand spellbound_weapons:stats/evokers_wrath



#item textures
execute as @s[scores={spellbound_evoker_cooldown=1..49}] at @s run item modify entity @s weapon.mainhand spellbound_weapons:evokers_wrath
execute as @s[scores={spellbound_evoker_cooldown=50}] at @s run item modify entity @s weapon.mainhand spellbound_weapons:evokers_wrath_ready

execute as @s[scores={spellbound_evoker_cooldown=50}] at @s run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..30] ~ ~ ~ 0.5 1.85



#sneak
execute as @s[scores={spellbound_evoker_cooldown=50..},predicate=spellbound_weapons:sneaking] run function spellbound_weapons:evokers_wrath/release_sneak

#tips
execute as @s[tag=!spellbound_tip.evokers_wrath_1] run function spellbound_weapons:other/tips/evokers_wrath_1
execute as @s[tag=spellbound_tip.evokers_wrath_1,tag=!spellbound_tip.evokers_wrath_2] run function spellbound_weapons:other/tips/evokers_wrath_2
execute as @s[tag=spellbound_tip.evokers_wrath_2,tag=!spellbound_tip.evokers_wrath_3] run function spellbound_weapons:other/tips/evokers_wrath_3