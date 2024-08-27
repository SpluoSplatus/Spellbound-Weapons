#advancement grant @s only minecraft:adventure/spellbound_all_weapons electric_staff

item modify entity @s[predicate=spellbound_weapons:holding/weapon/electric_staff,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Electric Staff"}'}}}}] weapon.mainhand spellbound_weapons:name/electric_staff

execute if entity @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=!spellbound_weapons:holding/tag/spellbound_weapon] run item modify entity @s weapon.mainhand spellbound_weapons:set_spellbound_item
execute if entity @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=!spellbound_weapons:holding/tag/spellbound_weapon_offhand] run item modify entity @s weapon.mainhand spellbound_weapons:set_spellbound_item


execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_e_staff=1..,spellbound_e_staff_cooldown=..59},predicate=!spellbound_weapons:holding/tag/1_durability] at @s run scoreboard players set @s spellbound_e_staff_cooldown 59


#no amo? that sucks for you!
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/tag/1_durability] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Electric Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/tag/1_durability] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/tag/1_durability] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55

execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/tag/1_durability_offhand] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Electric Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/tag/1_durability_offhand] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_e_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/tag/1_durability_offhand] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55


scoreboard players add @s spellbound_e_staff_cooldown 0


execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged


execute as @s[scores={spellbound_e_staff_cooldown=..1},predicate=spellbound_weapons:holding/weapon/electric_staff] run item modify entity @s weapon.mainhand spellbound_weapons:electric_staff
execute as @s[scores={spellbound_e_staff_cooldown=..1},predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] run item modify entity @s weapon.offhand spellbound_weapons:electric_staff

#tick
execute as @s[scores={spellbound_e_staff=1,spellbound_e_staff_cooldown=..49},predicate=!spellbound_weapons:holding/tag/1_durability,predicate=!spellbound_weapons:holding/tag/1_durability_offhand] at @s run scoreboard players add @s spellbound_e_staff_cooldown 1


execute as @s[scores={spellbound_e_staff=0}] at @s run scoreboard players set @s spellbound_e_staff_cooldown 0


#charging....
#execute as @s[scores={spellbound_e_staff_cooldown=1..49}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_e_staff_cooldown","name": "@s"}},{"translate": "/50"}]


#charged
execute as @s[scores={spellbound_e_staff_cooldown=1..}] at @s run function spellbound_weapons:electric_staff/action


# kill fishing rod
execute as @s[scores={spellbound_e_staff=1..}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{SpellboundElectricStaff:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]






execute as @s[predicate=spellbound_weapons:holding/enchant/lure3,predicate=spellbound_weapons:holding/weapon/electric_staff] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 16
execute as @s[predicate=spellbound_weapons:holding/enchant/lure2,predicate=spellbound_weapons:holding/weapon/electric_staff] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 8

execute as @s[predicate=spellbound_weapons:holding/enchant/lure3_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 16
execute as @s[predicate=spellbound_weapons:holding/enchant/lure2_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] if score @s spellbound_e_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_e_staff_cooldown 8




