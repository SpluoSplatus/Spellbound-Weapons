

#advancement grant @s only minecraft:adventure/spellbound_all_weapons fire_staff


item modify entity @s[predicate=spellbound_weapons:holding/weapon/fire_staff,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Fire Staff"}'}}}}] weapon.mainhand spellbound_weapons:name/fire_staff

execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_f_staff_cooldown=..59},predicate=!spellbound_weapons:holding/tag/1_durability] at @s run scoreboard players set @s spellbound_f_staff_cooldown 59
execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_f_staff_cooldown=..59},predicate=!spellbound_weapons:holding/tag/1_durability_offhand] at @s run scoreboard players set @s spellbound_f_staff_cooldown 59

#no amo? that sucks for you!
execute as @s[scores={spellbound_right_click=1..},predicate=spellbound_weapons:holding/tag/1_durability,predicate=spellbound_weapons:holding/weapon/fire_staff] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Fire Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_right_click=1..},predicate=spellbound_weapons:holding/tag/1_durability,predicate=spellbound_weapons:holding/weapon/fire_staff] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_right_click=1..},predicate=spellbound_weapons:holding/tag/1_durability,predicate=spellbound_weapons:holding/weapon/fire_staff] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55

execute as @s[scores={spellbound_right_click=1..},predicate=spellbound_weapons:holding/tag/1_durability_offhand,predicate=spellbound_weapons:holding/weapon/fire_staff_offhand] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Fire Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_right_click=1..},predicate=spellbound_weapons:holding/tag/1_durability_offhand,predicate=spellbound_weapons:holding/weapon/fire_staff_offhand] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_right_click=1..},predicate=spellbound_weapons:holding/tag/1_durability_offhand,predicate=spellbound_weapons:holding/weapon/fire_staff_offhand] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55


execute as @s[predicate=spellbound_weapons:holding/weapon/fire_staff] at @s run item modify entity @s weapon.mainhand spellbound_weapons:fire_staff
execute as @s[predicate=spellbound_weapons:holding/weapon/fire_staff_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:fire_staff



execute as @s[predicate=spellbound_weapons:holding/weapon/fire_staff,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/fire_staff_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged


execute as @s[scores={spellbound_f_staff_cooldown=..49},predicate=spellbound_weapons:holding/weapon/fire_staff,predicate=!spellbound_weapons:holding/tag/1_durability] at @s run scoreboard players add @s spellbound_f_staff_cooldown 1
execute as @s[scores={spellbound_f_staff_cooldown=..49},predicate=spellbound_weapons:holding/weapon/fire_staff_offhand,predicate=!spellbound_weapons:holding/tag/1_durability_offhand] at @s run scoreboard players add @s spellbound_f_staff_cooldown 1

# ready
function spellbound_weapons:fire_staff/action





#charging....
#execute as @s[scores={spellbound_f_staff_cooldown=1..49}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_f_staff_cooldown","name": "@s"}},{"translate": "/50"}]



# area_effect_cloud
#execute as @e[type=area_effect_cloud,tag=spellbound_firestaff_fireball] at @s run tp @e[tag=spellbound_firestaff_area,sort=nearest,limit=1]

# kill fishing rod
execute as @s at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{FireStaff:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]



#enchants
execute as @s[predicate=spellbound_weapons:holding/enchant/lure3,predicate=spellbound_weapons:holding/weapon/fire_staff] if score @s spellbound_f_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_f_staff_cooldown 16
execute as @s[predicate=spellbound_weapons:holding/enchant/lure2,predicate=spellbound_weapons:holding/weapon/fire_staff] if score @s spellbound_f_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_f_staff_cooldown 8


execute as @s[predicate=spellbound_weapons:holding/enchant/lure3_offhand,predicate=spellbound_weapons:holding/weapon/fire_staff_offhand] if score @s spellbound_f_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_f_staff_cooldown 16
execute as @s[predicate=spellbound_weapons:holding/enchant/lure2_offhand,predicate=spellbound_weapons:holding/weapon/fire_staff_offhand] if score @s spellbound_f_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_f_staff_cooldown 8
