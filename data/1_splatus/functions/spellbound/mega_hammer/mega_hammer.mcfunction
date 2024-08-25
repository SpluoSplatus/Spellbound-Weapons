
execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_hammer=1..,spellbound_hammer_cooldown=..49}] run scoreboard players set @s spellbound_hammer_cooldown 50


item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Mega Hammer"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/mega_hammer

execute as @s[scores={spellbound_hammer=1..}] run scoreboard players add @s spellbound_hammer_cooldown 0
execute as @s[scores={spellbound_hammer=1..,spellbound_hammer_cooldown=..60}] run scoreboard players add @s spellbound_hammer_cooldown 1



#enchant
execute if score @s[predicate=1_splatus:spellbound/holding/enchant/efficency1] spellbound_hammer_cooldown matches ..2 run scoreboard players set @s spellbound_hammer_cooldown 2
execute if score @s[predicate=1_splatus:spellbound/holding/enchant/efficency2] spellbound_hammer_cooldown matches ..2 run scoreboard players set @s spellbound_hammer_cooldown 4
execute if score @s[predicate=1_splatus:spellbound/holding/enchant/efficency3] spellbound_hammer_cooldown matches ..2 run scoreboard players set @s spellbound_hammer_cooldown 6
execute if score @s[predicate=1_splatus:spellbound/holding/enchant/efficency4] spellbound_hammer_cooldown matches ..2 run scoreboard players set @s spellbound_hammer_cooldown 8
execute if score @s[predicate=1_splatus:spellbound/holding/enchant/efficency5] spellbound_hammer_cooldown matches ..2 run scoreboard players set @s spellbound_hammer_cooldown 10




execute as @s[predicate=!1_splatus:spellbound/holding/enchant/efficency1-5] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/mega_hammer_0

execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency5] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/mega_hammer_5
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency4] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/mega_hammer_4
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency3] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/mega_hammer_3
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency2] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/mega_hammer_2
execute as @s[predicate=1_splatus:spellbound/holding/enchant/efficency1] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/mega_hammer_1

#advancement grant @s only minecraft:adventure/spellbound_all_weapons mega_hammer


#check if it has mending this is important - no longer
#execute as @s[scores={spellbound_hammer=1..,spellbound_hammer_cooldown=1}] at @s if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}]}}}] run particle electric_spark ~ ~1 ~ .3 .3 .3 .2 10 force
#execute as @s[scores={spellbound_hammer=1..,spellbound_hammer_cooldown=1}] at @s if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:mending",lvl:1s}]}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]}},Motion:[0.0,0.3,0.07]}



#change item or whatever this doesnt need hashtags eeeeeee

execute as @s[scores={spellbound_hammer_cooldown=50}] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/mega_hammer_ready
execute as @s[scores={spellbound_hammer_cooldown=1..49}] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/mega_hammer

execute as @s[scores={spellbound_hammer=1..,spellbound_hammer_cooldown=50}] at @s run playsound minecraft:entity.ender_eye.death player @a[distance=..20] ~ ~ ~ 1 1.25


#execute as @s[scores={spellbound_hammer_cooldown=1..59}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_hammer_cooldown","name": "@s"}},{"translate": "/60"}]
#execute as @s[scores={spellbound_hammer_cooldown=60..61}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Mega Hammer is charged! - 60/60"}]
#execute as @s[scores={spellbound_hammer_cooldown=160}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": ""}]

