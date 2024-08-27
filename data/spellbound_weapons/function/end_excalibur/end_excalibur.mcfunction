#advancement grant @s only minecraft:adventure/spellbound_all_weapons end_excalibur

item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"End Excalibur"}'}}}}] weapon.mainhand spellbound_weapons:name/end_excalibur

execute as @s[scores={spellbound_end=1..,spellbound_cooldown=..200}] at @s run scoreboard players add @s spellbound_cooldown 1

execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_end=1..,spellbound_cooldown=..49}] run scoreboard players set @s spellbound_cooldown 50

item modify entity @s weapon.mainhand spellbound_weapons:stats/end_excalibur

execute as @s[scores={spellbound_cooldown=..1}] at @s run playsound minecraft:block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 .8


execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge3] if score @s spellbound_cooldown matches ..1 run scoreboard players set @s spellbound_cooldown 6 
execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge2] if score @s spellbound_cooldown matches ..1 run scoreboard players set @s spellbound_cooldown 4 
execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge1] if score @s spellbound_cooldown matches ..1 run scoreboard players set @s spellbound_cooldown 2 


execute if score @s spellbound_cooldown matches 50..200 positioned ~ ~.8 ~ run particle electric_spark ^-.2 ^ ^1 .2 .2 .2 .15 1 force @a[distance=..64]


execute as @s[scores={spellbound_cooldown=1..49}] at @s run item modify entity @s weapon.mainhand spellbound_weapons:end_excalibur


execute as @s[scores={spellbound_end=1..}] at @s run function spellbound_weapons:end_excalibur/action
