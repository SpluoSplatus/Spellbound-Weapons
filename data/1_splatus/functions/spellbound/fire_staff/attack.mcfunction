



execute run playsound item.firecharge.use player @a[distance=..32] ~ ~ ~ 1 1


execute as @s[predicate=!1_splatus:spellbound/holding/enchant/luck_of_the_sea3,predicate=1_splatus:spellbound/holding/weapon/fire_staff] run summon marker ^ ^ ^ {Tags:["","spellbound_firestaff","spellbound_marker"],NoGravity:1b,Invulnerable:1b}
execute as @s[predicate=1_splatus:spellbound/holding/enchant/luck_of_the_sea3,predicate=1_splatus:spellbound/holding/weapon/fire_staff] run summon marker ^ ^ ^ {Tags:["","spellbound_firestaff","spellbound_marker","spellbound_firestaff_enchanted"],NoGravity:1b,Invulnerable:1b}

execute as @s[predicate=!1_splatus:spellbound/holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand] run summon marker ^ ^ ^ {Tags:["","spellbound_firestaff","spellbound_marker"],NoGravity:1b,Invulnerable:1b}
execute as @s[predicate=1_splatus:spellbound/holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand] run summon marker ^ ^ ^ {Tags:["","spellbound_firestaff","spellbound_marker","spellbound_firestaff_enchanted"],NoGravity:1b,Invulnerable:1b}

execute run data modify entity @e[type=marker,tag=spellbound_firestaff,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_firestaff] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4






######################################################################

#durability mainhand
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff,predicate=!1_splatus:spellbound/holding/enchant/unbreaking1-3] if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff,predicate=1_splatus:spellbound/holding/enchant/unbreaking1] if predicate 1_splatus:spellbound/chance/50_percent if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff,predicate=1_splatus:spellbound/holding/enchant/unbreaking2] if predicate 1_splatus:spellbound/chance/50_percent if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff,predicate=1_splatus:spellbound/holding/enchant/unbreaking3] if predicate 1_splatus:spellbound/chance/50_percent if predicate 1_splatus:spellbound/chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2


#durability offhand
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand,predicate=!1_splatus:spellbound/holding/enchant/unbreaking1-3_offhand] if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking1_offhand] if predicate 1_splatus:spellbound/chance/50_percent if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking2_offhand] if predicate 1_splatus:spellbound/chance/50_percent if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking3_offhand] if predicate 1_splatus:spellbound/chance/50_percent if predicate 1_splatus:spellbound/chance/25_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2

######################################################################


# break
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:64}}]}] run particle minecraft:block orange_concrete ~ ~1 ~ .4 .3 .4 .4 30 normal
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:64}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:64}}]}] run item replace entity @s weapon.mainhand with air

# break
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:63}}]}] run particle minecraft:block orange_concrete ~ ~1 ~ .4 .3 .4 .4 30 normal
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:63}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:63}}]}] run item replace entity @s weapon.mainhand with air

function 1_splatus:spellbound/other/action/set_cooldowns_to_0