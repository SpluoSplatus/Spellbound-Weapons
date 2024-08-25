#advancement grant @s only minecraft:adventure/spellbound_all_weapons electric_staff

item modify entity @s[predicate=1_splatus:spellbound/holding/weapon/electric_staff,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Electric Staff"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/electric_staff

execute if entity @s[predicate=1_splatus:spellbound/holding/weapon/electric_staff,predicate=!1_splatus:spellbound/holding/tag/spellbound_weapon] run item modify entity @s weapon.mainhand 1_splatus:spellbound/set_spellbound_item
execute if entity @s[predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand,predicate=!1_splatus:spellbound/holding/tag/spellbound_weapon_offhand] run item modify entity @s weapon.mainhand 1_splatus:spellbound/set_spellbound_item


execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_e_staff=1..,spellbound_e_staff_cooldown=..59},predicate=!1_splatus:spellbound/holding/tag/1_durability] at @s run scoreboard players set @s spellbound_e_staff_cooldown 59


#no amo? that sucks for you!
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=1_splatus:spellbound/holding/weapon/electric_staff,predicate=1_splatus:spellbound/holding/tag/1_durability] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Electric Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=1_splatus:spellbound/holding/weapon/electric_staff,predicate=1_splatus:spellbound/holding/tag/1_durability] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=1_splatus:spellbound/holding/weapon/electric_staff,predicate=1_splatus:spellbound/holding/tag/1_durability] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55

execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand,predicate=1_splatus:spellbound/holding/tag/1_durability_offhand] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Electric Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand,predicate=1_splatus:spellbound/holding/tag/1_durability_offhand] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand,predicate=1_splatus:spellbound/holding/tag/1_durability_offhand] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55


scoreboard players add @s spellbound_e_staff_cooldown 0


execute as @s[predicate=1_splatus:spellbound/holding/weapon/electric_staff,predicate=!1_splatus:spellbound/holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/ranged
execute as @s[predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand,predicate=!1_splatus:spellbound/holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:spellbound/ranged


execute as @s[scores={spellbound_e_staff_cooldown=..1},predicate=1_splatus:spellbound/holding/weapon/electric_staff] run item modify entity @s weapon.mainhand 1_splatus:spellbound/electric_staff
execute as @s[scores={spellbound_e_staff_cooldown=..1},predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand] run item modify entity @s weapon.offhand 1_splatus:spellbound/electric_staff

#tick
execute as @s[scores={spellbound_e_staff=1,spellbound_e_staff_cooldown=..49},predicate=!1_splatus:spellbound/holding/tag/1_durability,predicate=!1_splatus:spellbound/holding/tag/1_durability_offhand] at @s run scoreboard players add @s spellbound_e_staff_cooldown 1


execute as @s[scores={spellbound_e_staff=0}] at @s run scoreboard players set @s spellbound_e_staff_cooldown 0


#charging....
#execute as @s[scores={spellbound_e_staff_cooldown=1..49}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_e_staff_cooldown","name": "@s"}},{"translate": "/50"}]


#charged
execute as @s[scores={spellbound_e_staff_cooldown=1..}] at @s run function 1_splatus:spellbound/electric_staff/action


# kill fishing rod
execute as @s[scores={spellbound_e_staff=1..}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{SpellboundElectricStaff:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]






execute as @s[predicate=1_splatus:spellbound/holding/enchant/lure3,predicate=1_splatus:spellbound/holding/weapon/electric_staff] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 16
execute as @s[predicate=1_splatus:spellbound/holding/enchant/lure2,predicate=1_splatus:spellbound/holding/weapon/electric_staff] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 8

execute as @s[predicate=1_splatus:spellbound/holding/enchant/lure3_offhand,predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 16
execute as @s[predicate=1_splatus:spellbound/holding/enchant/lure2_offhand,predicate=1_splatus:spellbound/holding/weapon/electric_staff_offhand] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 8




