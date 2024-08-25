#advancement grant @s only minecraft:adventure/spellbound_all_weapons endlight_bow

item modify entity @s[predicate=1_splatus:spellbound/holding/weapon/endlight,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Endlight Bow"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/endlight


scoreboard players add @s spellbound_endlight_cooldown 0
execute as @s[advancements={1_splatus:spellbound/endlight=true}] run scoreboard players add @s[scores={spellbound_endlight_cooldown=..19}] spellbound_endlight_cooldown 1
execute as @s[advancements={1_splatus:spellbound/endlight=false}] run scoreboard players set @s spellbound_endlight_cooldown 0

scoreboard players add @s[scores={spellbound_endlight_cooldown=100..}] spellbound_endlight_cooldown 1
execute if score spellbound_nocooldown spellbound_count matches 1 run scoreboard players set @s[scores={spellbound_endlight_cooldown=..19}] spellbound_endlight_cooldown 22



execute as @s[predicate=1_splatus:spellbound/holding/weapon/endlight,predicate=!1_splatus:spellbound/holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/ranged
execute as @s[predicate=1_splatus:spellbound/holding/weapon/endlight_offhand,predicate=!1_splatus:spellbound/holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:spellbound/ranged


execute if score @s spellbound_endlight_cooldown matches 1..19 as @e[distance=..6,type=#1_splatus:spellbound/arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_chainfiring_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function 1_splatus:spellbound/endlight/break

execute if score @s spellbound_endlight_cooldown matches 20.. as @e[distance=..6,type=#1_splatus:spellbound/arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_chainfiring_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function 1_splatus:spellbound/endlight/arrow_action



execute if score @s spellbound_endlight_cooldown matches 117.. run scoreboard players set @s spellbound_endlight_cooldown 0
advancement revoke @s only 1_splatus:spellbound/endlight

