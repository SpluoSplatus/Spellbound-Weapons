
######################################################################

#durability mainhand
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=spellbound_weapons:holding/enchant/unbreaking1] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff,predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5


#durability offhand
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking1_offhand] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking2_offhand] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/ice_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking3_offhand] if predicate spellbound_weapons:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5

######################################################################



#execute as @s[scores={spellbound_i_staff_cooldown=49..61}] run clear @s packed_ice 1

# amethyst playsound
execute as @s run playsound block.snow.place block @a[distance=..20]
execute as @s run playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 .75
execute as @s run playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 .75
execute as @s run playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 2

# bam
summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice"],ArmorItems:[{},{},{},{id:"minecraft:ice",count:1,components:{"custom_data":{"SpellboundIceStaffBlock":1}}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}

#enchant?

execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea1,predicate=spellbound_weapons:holding/weapon/ice_staff] run scoreboard players set @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_enchantlevel 1
execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea2,predicate=spellbound_weapons:holding/weapon/ice_staff] run scoreboard players set @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_enchantlevel 2
execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea3,predicate=spellbound_weapons:holding/weapon/ice_staff] run scoreboard players set @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_enchantlevel 3

execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea1_offhand,predicate=spellbound_weapons:holding/weapon/ice_staff_offhand] run scoreboard players set @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_enchantlevel 1
execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea2_offhand,predicate=spellbound_weapons:holding/weapon/ice_staff_offhand] run scoreboard players set @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_enchantlevel 2
execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea3_offhand,predicate=spellbound_weapons:holding/weapon/ice_staff_offhand] run scoreboard players set @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_enchantlevel 3


execute at @s store result score @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute at @s store result score @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute at @s store result score @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute at @s store result score @n[type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4



execute as @s run data modify entity @e[type=armor_stand,tag=spellbound_ice_staff_ice,sort=nearest,limit=1] Rotation set from entity @s Rotation


execute as @s run particle minecraft:poof ~ ~1.5 ~ .3 .3 .3 .075 10 force @a[distance=..32]

execute unless predicate spellbound_weapons:holding/spellbound_sword run function spellbound_weapons:other/action/set_cooldowns_to_0