
execute as @s[predicate=!1_splatus:spellbound/holding/enchant/unbreaking2,predicate=!1_splatus:spellbound/holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5
execute as @s[predicate=1_splatus:spellbound/holding/enchant/unbreaking2] if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5
execute as @s[predicate=1_splatus:spellbound/holding/enchant/unbreaking3] if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5


execute anchored eyes run function 1_splatus:spellbound/other/hits/evokers_wrath

particle minecraft:effect ~ ~.5 ~ .5 .5 .5 .2 60 force @a[distance=..32]
playsound minecraft:entity.vex.ambient player @a[distance=..20] ~ ~ ~ 1 .75
playsound minecraft:entity.vex.ambient player @a[distance=..20] ~ ~ ~ 1 2
scoreboard players reset @s spellbound_evoker_cooldown


tag @s[tag=spellbound_tip.evokers_wrath_1] add spellbound_tip.evokers_wrath_2