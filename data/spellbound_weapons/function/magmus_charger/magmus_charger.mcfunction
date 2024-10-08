
#advancement grant @s only minecraft:adventure/spellbound_all_weapons magmus_bow

execute unless score @s[advancements={spellbound_weapons:magmus_charger=true}] spellbound_magmus_charger_cooldown matches 91.. run scoreboard players add @s spellbound_magmus_charger_cooldown 1
execute if score spellbound_nocooldown spellbound_settings matches 1 unless score @s[advancements={spellbound_weapons:magmus_charger=true}] spellbound_magmus_charger_cooldown matches 80.. run scoreboard players set @s spellbound_magmus_charger_cooldown 80



item modify entity @s[predicate=spellbound_weapons:holding/weapon/magmus,nbt={SelectedItem:{components:{"minecraft:custom_name":'"Magmus Charger"'}}}] weapon.mainhand spellbound_weapons:name/magmus_charger



# MODEL 
execute if predicate spellbound_weapons:holding/weapon/magmus if score @s spellbound_magmus_charger_cooldown matches 1 run item modify entity @s weapon.mainhand spellbound_weapons:magmus
execute if predicate spellbound_weapons:holding/weapon/magmus if score @s spellbound_magmus_charger_cooldown matches 40 run item modify entity @s weapon.mainhand spellbound_weapons:magmus_fire1
execute if predicate spellbound_weapons:holding/weapon/magmus if score @s spellbound_magmus_charger_cooldown matches 80 run item modify entity @s weapon.mainhand spellbound_weapons:magmus_fire

execute if predicate spellbound_weapons:holding/weapon/magmus_offhand if score @s spellbound_magmus_charger_cooldown matches 1 run item modify entity @s weapon.offhand spellbound_weapons:magmus
execute if predicate spellbound_weapons:holding/weapon/magmus_offhand if score @s spellbound_magmus_charger_cooldown matches 40 run item modify entity @s weapon.offhand spellbound_weapons:magmus_fire1
execute if predicate spellbound_weapons:holding/weapon/magmus_offhand if score @s spellbound_magmus_charger_cooldown matches 80 run item modify entity @s weapon.offhand spellbound_weapons:magmus_fire


#charge

#execute if score @s spellbound_magmus_charger_cooldown matches 1 run playsound block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 1.25 1.25
execute if score @s spellbound_magmus_charger_cooldown matches 40 run playsound block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 1.25 1.5
execute if score @s spellbound_magmus_charger_cooldown matches 80 run playsound block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 1.25 2




#execute if score @s spellbound_magmus_charger_cooldown matches 1..44 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "⬜⬜","color": "#919191"},{"translate":" Meter: - "},{"score":{"objective":"spellbound_magmus_charger_cooldown","name": "@s"}},{"translate": "/90"}]
#execute if score @s spellbound_magmus_charger_cooldown matches 40..89 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "⬛⬜","color": "#ff915e"},{"translate":" Meter: - "},{"score":{"objective":"spellbound_magmus_charger_cooldown","name": "@s"}},{"translate": "/90"}]
#execute if score @s spellbound_magmus_charger_cooldown matches 80.. run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "⬛⬛","color": "#e84e3c"},{"translate":" Meter: - 90/90"}]



###


execute as @s[predicate=spellbound_weapons:holding/weapon/magmus,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/magmus_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged

execute if score @s spellbound_magmus_charger_cooldown matches 59 run playsound minecraft:block.bell.resonate player @a[distance=..20] ~ ~ ~ 1.25 1.9

# READY
execute if score @s spellbound_magmus_charger_cooldown matches 40..89 run effect give @s slowness 1 1 true
execute if score @s spellbound_magmus_charger_cooldown matches 80.. positioned ~ ~1.25 ~ run particle smoke ^-.2 ^ ^.6 .1 .1 .1 .075 3 force @a[distance=..64]
execute if score @s spellbound_magmus_charger_cooldown matches 80.. run effect give @s slowness 1 2 true
execute if score @s spellbound_magmus_charger_cooldown matches 100 run playsound minecraft:block.bell.use player @a[distance=..20] ~ ~ ~ 1.25 .8



# arrow stuff



execute if score @s spellbound_magmus_charger_cooldown matches 1.. as @e[type=#arrows,tag=!spellbound_arrow_checked2] on origin if entity @s[scores={spellbound_magmus_charger_cooldown=1..}] as @n[type=#arrows,tag=!spellbound_arrow_checked2] run function spellbound_weapons:magmus_charger/arrow_action

