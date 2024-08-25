
#advancement grant @s only minecraft:adventure/spellbound_all_weapons magmus_bow

execute unless score @s[advancements={1_splatus:spellbound/magmus_charger=true}] spellbound_magmus_charger_cooldown matches 91.. run scoreboard players add @s spellbound_magmus_charger_cooldown 1



item modify entity @s[predicate=1_splatus:spellbound/holding/weapon/magmus,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Magmus Charger"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/magmus_charger



# MODEL 
execute if predicate 1_splatus:spellbound/holding/weapon/magmus if score @s spellbound_magmus_charger_cooldown matches 1 run item modify entity @s weapon.mainhand 1_splatus:spellbound/magmus
execute if predicate 1_splatus:spellbound/holding/weapon/magmus if score @s spellbound_magmus_charger_cooldown matches 40 run item modify entity @s weapon.mainhand 1_splatus:spellbound/magmus_fire1
execute if predicate 1_splatus:spellbound/holding/weapon/magmus if score @s spellbound_magmus_charger_cooldown matches 80 run item modify entity @s weapon.mainhand 1_splatus:spellbound/magmus_fire

execute if predicate 1_splatus:spellbound/holding/weapon/magmus_offhand if score @s spellbound_magmus_charger_cooldown matches 1 run item modify entity @s weapon.offhand 1_splatus:spellbound/magmus
execute if predicate 1_splatus:spellbound/holding/weapon/magmus_offhand if score @s spellbound_magmus_charger_cooldown matches 40 run item modify entity @s weapon.offhand 1_splatus:spellbound/magmus_fire1
execute if predicate 1_splatus:spellbound/holding/weapon/magmus_offhand if score @s spellbound_magmus_charger_cooldown matches 80 run item modify entity @s weapon.offhand 1_splatus:spellbound/magmus_fire


#charge

#execute if score @s spellbound_magmus_charger_cooldown matches 1 run playsound block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 1.25 1.25
execute if score @s spellbound_magmus_charger_cooldown matches 40 run playsound block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 1.25 1.5
execute if score @s spellbound_magmus_charger_cooldown matches 80 run playsound block.respawn_anchor.charge player @a[distance=..20] ~ ~ ~ 1.25 2




#execute if score @s spellbound_magmus_charger_cooldown matches 1..44 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "⬜⬜","color": "#919191"},{"translate":" Meter: - "},{"score":{"objective":"spellbound_magmus_charger_cooldown","name": "@s"}},{"translate": "/90"}]
#execute if score @s spellbound_magmus_charger_cooldown matches 40..89 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "⬛⬜","color": "#ff915e"},{"translate":" Meter: - "},{"score":{"objective":"spellbound_magmus_charger_cooldown","name": "@s"}},{"translate": "/90"}]
#execute if score @s spellbound_magmus_charger_cooldown matches 80.. run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "⬛⬛","color": "#e84e3c"},{"translate":" Meter: - 90/90"}]



###


execute as @s[predicate=1_splatus:spellbound/holding/weapon/magmus,predicate=!1_splatus:spellbound/holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/ranged
execute as @s[predicate=1_splatus:spellbound/holding/weapon/magmus_offhand,predicate=!1_splatus:spellbound/holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:spellbound/ranged

execute if score @s spellbound_magmus_charger_cooldown matches 59 run playsound minecraft:block.bell.resonate player @a[distance=..20] ~ ~ ~ 1.25 1.9

# READY
execute if score @s spellbound_magmus_charger_cooldown matches 40..89 run effect give @s slowness 1 1 true
execute if score @s spellbound_magmus_charger_cooldown matches 80.. positioned ~ ~1.25 ~ run particle smoke ^-.2 ^ ^.6 .1 .1 .1 .075 3 force @a[distance=..64]
execute if score @s spellbound_magmus_charger_cooldown matches 80.. run effect give @s slowness 1 2 true
execute if score @s spellbound_magmus_charger_cooldown matches 100 run playsound minecraft:block.bell.use player @a[distance=..20] ~ ~ ~ 1.25 .8



# arrow stuff


execute if score @s spellbound_magmus_charger_cooldown matches 1.. as @e[distance=..6,type=#1_splatus:spellbound/arrow,tag=!spellbound_arrow_checked2,limit=1,sort=nearest,nbt=!{inGround:1b}] if score @s spellbound_uuid = @p[scores={spellbound_magmus_charger_cooldown=1..}] spellbound_uuid if score @s spellbound_uuid2 = @p[scores={spellbound_magmus_charger_cooldown=1..}] spellbound_uuid2 if score @s spellbound_uuid3 = @p[scores={spellbound_magmus_charger_cooldown=1..}] spellbound_uuid3 if score @s spellbound_uuid4 = @p[scores={spellbound_magmus_charger_cooldown=1..}] spellbound_uuid4 run function 1_splatus:spellbound/magmus_charger/arrow_action
