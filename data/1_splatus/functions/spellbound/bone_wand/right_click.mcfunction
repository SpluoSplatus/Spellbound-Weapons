
execute if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ bone_block
execute run particle cloud ~ ~ ~ .6 .6 .6 .02 10 normal
execute run playsound block.bone_block.place block @a[distance=..32] ~ ~ ~ 1 .8

# summon
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=!1_splatus:spellbound/holding/enchant/bone_enchant3,predicate=!1_splatus:spellbound/holding/enchant/bone_enchant2,predicate=!1_splatus:spellbound/holding/enchant/bone_enchant1] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area","","spellbound_marker"]}
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=1_splatus:spellbound/holding/enchant/bone_enchant3] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area_lureIII","spellbound_bone_wand_area","spellbound_bone_wand_area_lure","spellbound_marker"]}
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=1_splatus:spellbound/holding/enchant/bone_enchant2] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area_lureII","spellbound_bone_wand_area","spellbound_bone_wand_area_lure","spellbound_marker"]}
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=1_splatus:spellbound/holding/enchant/bone_enchant1] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area_lureI","spellbound_bone_wand_area","spellbound_bone_wand_area_lure","spellbound_marker"]}

#offhand
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=!1_splatus:spellbound/holding/enchant/bone_enchant3_offhand,predicate=!1_splatus:spellbound/holding/enchant/bone_enchant2_offhand,predicate=!1_splatus:spellbound/holding/enchant/bone_enchant1_offhand] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area","","spellbound_marker"]}
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=1_splatus:spellbound/holding/enchant/bone_enchant3_offhand] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area_lureIII","spellbound_bone_wand_area","spellbound_bone_wand_area_lure","spellbound_marker"]}
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=1_splatus:spellbound/holding/enchant/bone_enchant2_offhand] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area_lureII","spellbound_bone_wand_area","spellbound_bone_wand_area_lure","spellbound_marker"]}
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=1_splatus:spellbound/holding/enchant/bone_enchant1_offhand] run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area_lureI","spellbound_bone_wand_area","spellbound_bone_wand_area_lure","spellbound_marker"]}

execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid run data get entity @s UUID[0]
execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid2 run data get entity @s UUID[1]
execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid3 run data get entity @s UUID[2]
execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid4 run data get entity @s UUID[3]

#########################################################################################################

# right click 2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=!1_splatus:spellbound/holding/enchant/unbreaking1-3] if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=1_splatus:spellbound/holding/enchant/unbreaking1] if predicate 1_splatus:spellbound/chance/33_percent if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=1_splatus:spellbound/holding/enchant/unbreaking2] if predicate 1_splatus:spellbound/chance/33_percent if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand,predicate=1_splatus:spellbound/holding/enchant/unbreaking3] if predicate 1_splatus:spellbound/chance/33_percent if predicate 1_splatus:spellbound/chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage2


#offhand
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=!1_splatus:spellbound/holding/enchant/unbreaking1-3_offhand] if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking1_offhand] if predicate 1_splatus:spellbound/chance/33_percent if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking2_offhand] if predicate 1_splatus:spellbound/chance/33_percent if predicate 1_splatus:spellbound/chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2
execute as @s[predicate=1_splatus:spellbound/holding/weapon/bone_wand_offhand,predicate=1_splatus:spellbound/holding/enchant/unbreaking3_offhand] if predicate 1_splatus:spellbound/chance/33_percent if predicate 1_splatus:spellbound/chance/25_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:spellbound/damage2


tag @s add spellbound_tip.bone_wand_1