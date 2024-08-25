
execute positioned ~ ~.62 ~ positioned ^ ^ ^-1 run function 1_splatus:spellbound/ice_staff/particle

scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 60..198 run kill @s


data merge entity @s {HasVisualFire:0,Fire:0}



execute positioned ~ ~.62 ~ if block ~ ~ ~ water positioned ~ ~-1 ~ run function 1_splatus:spellbound/ice_staff/freeze_water

item replace entity @s armor.head with ice{SpellboundIceStaffBlock:1}

#stuck and squishy
execute if block ~ ~-0.5 ~ lava unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 
execute positioned ~ ~ ~ if entity @e[distance=..2,type=slime] unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 
execute positioned ~ ~ ~ if entity @e[distance=..2,type=magma_cube] unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 
execute positioned ~ ~ ~ if entity @e[distance=..4,type=ender_dragon] unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 


#particles
execute run particle snowflake ~ ~.62 ~ .2 .2 .2 .05 1 force @a[distance=..32]

#hit
execute if score @s spellbound_count matches 3..120 if entity @e[distance=..1.25,type=!#1_splatus:spellbound/misc,type=!slime,type=!magma_cube] run function 1_splatus:spellbound/ice_staff/break_ice



#smallfireball
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[type=small_fireball,distance=..1] run particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[type=small_fireball,distance=..1] run playsound block.fire.extinguish neutral @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[type=small_fireball,distance=..1] run kill @s


#fireball
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[distance=..1.25,type=#1_splatus:spellbound/fireball] run scoreboard players set @s spellbound_freeze 1
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ if entity @e[type=#1_splatus:spellbound/fireball,distance=..1.25] positioned ~ ~-.62 ~ run function 1_splatus:spellbound/ice_staff/break_ice


#execute unless block ~ ~ ~ #1_splatus:spellbound/permeable unless block ~ ~ ~ frosted_ice if predicate 1_splatus:spellbound/chance/25_percent run summon item ~ ~1 ~ {Item:{id:"minecraft:ice",Count:1b},Motion:[0.0,0.5,0.0]}
execute if score @s spellbound_count matches 1..120 unless block ~ ~.62 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/ice_staff/break_ice


execute as @s[type=armor_stand,tag=spellbound_ice_staff_ice] run data merge entity @s {Fire:-1}




#disolving liqurifing liquids 
execute if score @s spellbound_count matches 200.. run function 1_splatus:spellbound/ice_staff/dissolve


#movement

execute if score @s spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.5
execute if score @s[tag=spellbound_ice_staff_ice_enchanted_low] spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.2
execute if score @s[tag=spellbound_ice_staff_ice_enchanted] spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.2

execute if score @s spellbound_count matches 200..204 at @s run tp @s ^ ^ ^.15
execute if score @s spellbound_count matches 200..204 at @s run tp @s ^ ^ ^.15
execute if score @s spellbound_count matches 205..221 at @s run tp @s ^ ^ ^.025
execute if score @s spellbound_count matches 222..250 at @s run tp @s ^ ^ ^.005

