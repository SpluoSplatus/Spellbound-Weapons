
# why are you in water?????
execute if block ~ ~ ~ water run playsound entity.zombie_villager.cure player @a[distance=..30] ~ ~ ~ 1.5 2
execute if block ~ ~ ~ water run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 1.5 1.25
execute if block ~ ~ ~ water run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 1.5 1.25
execute if block ~ ~ ~ water run particle end_rod ~ ~1 ~ 0 0 0 .2 20 force
execute if block ~ ~ ~ water run damage @s 6 minecraft:magic


######################################################################

#durability mainhand
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage2
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/enchant/unbreaking1] if predicate spellbound_weapons:chance/50_percent if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage2
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage2
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/50_percent if predicate spellbound_weapons:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage2


#durability offhand
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3_offhand] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage2
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking1_offhand] if predicate spellbound_weapons:chance/50_percent if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage2
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking2_offhand] if predicate spellbound_weapons:chance/50_percent if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage2
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking3_offhand] if predicate spellbound_weapons:chance/50_percent if predicate spellbound_weapons:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage2

######################################################################


# bam
execute as @s at @s run tag @s add spellbound_electric_staff_immune 

execute as @s[predicate=!spellbound_weapons:holding/enchant/luck_of_the_sea3,predicate=spellbound_weapons:holding/weapon/electric_staff] unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing run summon marker ~ ~ ~ {Tags:["spellbound_electric_raycast","spellbound_marker"]}
execute as @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea3,predicate=spellbound_weapons:holding/weapon/electric_staff] unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing run summon marker ~ ~ ~ {Tags:["spellbound_electric_raycast","spellbound_electric_raycast_enchanted","spellbound_marker"]}

execute as @s[predicate=!spellbound_weapons:holding/enchant/luck_of_the_sea3_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] at @s unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing run summon marker ~ ~ ~ {Tags:["spellbound_electric_raycast","spellbound_marker"]}
execute as @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea3_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] at @s unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing run summon marker ~ ~ ~ {Tags:["spellbound_electric_raycast","spellbound_electric_raycast_enchanted","spellbound_marker"]}

execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_electric_raycast] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4



execute as @s at @s run data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_raycast] Rotation set from entity @s Rotation
execute as @s at @s run data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_raycast] data.Owner set from entity @s UUID

# break
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run particle minecraft:block yellow_concrete ~ ~1 ~ .4 .3 .4 .4 30 normal
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run item replace entity @s weapon.mainhand with air

# break
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run particle minecraft:block yellow_concrete ~ ~1 ~ .4 .3 .4 .4 30 normal
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run item replace entity @s weapon.mainhand with air



function spellbound_weapons:other/action/set_cooldowns_to_0