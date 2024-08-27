
#advancement grant @s only minecraft:adventure/spellbound_all_weapons ice_staff


item modify entity @s[predicate=spellbound_weapons:holding/weapon/ice_staff,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Ice Staff"}'}}}}] weapon.mainhand spellbound_weapons:name/ice_staff

#no amo? that sucks for you!
execute as @s[scores={spellbound_i_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=spellbound_weapons:holding/tag/1_durability] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Ice Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_i_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=spellbound_weapons:holding/tag/1_durability] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_i_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=spellbound_weapons:holding/tag/1_durability] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55

execute as @s[scores={spellbound_i_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=spellbound_weapons:holding/tag/1_durability_offhand] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Ice Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_i_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=spellbound_weapons:holding/tag/1_durability_offhand] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_i_staff=1..,spellbound_right_click=1..},predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=spellbound_weapons:holding/tag/1_durability_offhand] at @s run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55


execute as @s[scores={spellbound_i_staff=1..},predicate=spellbound_weapons:holding/weapon/ice_staff] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ice_staff
execute as @s[scores={spellbound_i_staff=1..},predicate=spellbound_weapons:holding/weapon/ice_staff_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ice_staff

scoreboard players add @s spellbound_i_staff_cooldown 0

#tick

execute as @s[scores={spellbound_i_staff=1,spellbound_i_staff_cooldown=..49},predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=!spellbound_weapons:holding/tag/1_durability] at @s run scoreboard players add @s spellbound_i_staff_cooldown 1
execute as @s[scores={spellbound_i_staff=1,spellbound_i_staff_cooldown=..49},predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=!spellbound_weapons:holding/tag/1_durability_offhand] at @s run scoreboard players add @s spellbound_i_staff_cooldown 1



execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged



#charging....
#execute as @s[scores={spellbound_i_staff_cooldown=1..49}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_i_staff_cooldown","name": "@s"}},{"translate": "/50"}]

execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_i_staff=1..,spellbound_i_staff_cooldown=..48},predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=!spellbound_weapons:holding/tag/1_durability] at @s run scoreboard players set @s spellbound_i_staff_cooldown 49
execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_i_staff=1..,spellbound_i_staff_cooldown=..48},predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=!spellbound_weapons:holding/tag/1_durability_offhand] at @s run scoreboard players set @s spellbound_i_staff_cooldown 49

#charged
execute as @s[scores={spellbound_i_staff_cooldown=1..}] at @s run function spellbound_weapons:ice_staff/action


# kill fishing rod
execute as @s[scores={spellbound_i_staff=1..}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{SpellboundIceStaff:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]





execute as @s[predicate=spellbound_weapons:holding/enchant/lure3,predicate=spellbound_weapons:holding/weapon/ice_staff] if score @s spellbound_i_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_i_staff_cooldown 16
execute as @s[predicate=spellbound_weapons:holding/enchant/lure2,predicate=spellbound_weapons:holding/weapon/ice_staff] if score @s spellbound_i_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_i_staff_cooldown 8

execute as @s[predicate=spellbound_weapons:holding/enchant/lure3_offhand,predicate=spellbound_weapons:holding/weapon/ice_staff_offhand] if score @s spellbound_i_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_i_staff_cooldown 16
execute as @s[predicate=spellbound_weapons:holding/enchant/lure2_offhand,predicate=spellbound_weapons:holding/weapon/ice_staff_offhand] if score @s spellbound_i_staff_cooldown matches 1..7 run scoreboard players set @s spellbound_i_staff_cooldown 8

execute as @s[scores={spellbound_i_staff=1},predicate=spellbound_weapons:holding/enchant/unbreaking3] run tag @s add spellbound_i_staff_enchanted_unbreakingIII
execute unless entity @s[scores={spellbound_i_staff=1},predicate=spellbound_weapons:holding/enchant/unbreaking3] run tag @s remove spellbound_i_staff_enchanted_unbreakingIII
