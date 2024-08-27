


tp @s ~ ~ ~
execute at @s if block ~ ~ ~ #spellbound_weapons:allows_water_dashing run function spellbound_weapons:electric_staff/hit

scoreboard players add @s spellbound_count 1
scoreboard players add @s spellbound_count2 1

execute at @s if score @s spellbound_count2 matches 1 run playsound block.respawn_anchor.deplete player @a[distance=..32] ~ ~ ~ 1 1.75

execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if predicate spellbound_weapons:chance/50_percent run particle end_rod ~ ~ ~ 0 0 0 .075 1 force @a[distance=..128]
#execute unless block ~ ~ ~ air run particle end_rod ~ ~ ~ 0 0 0 .3 30 force

execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run scoreboard players set @s spellbound_count 48
execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:electric_staff/summon_electirc

execute at @s positioned ~ ~-1.5 ~ if entity @e[distance=..1,type=!#spellbound_weapons:misc,tag=!spellbound_electric_staff_immune] run function spellbound_weapons:electric_staff/hit

execute at @s run effect give @e[distance=..2,tag=!spellbound_electric_staff_immune] glowing 5

#water
execute at @s[tag=!spellbound_electric_raycast_enchanted] unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing unless score @s spellbound_count2 matches 10.. unless score @s spellbound_count matches 25.. as @s positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast
execute at @s[tag=spellbound_electric_raycast_enchanted] unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing unless score @s spellbound_count2 matches 10.. unless score @s spellbound_count matches 36.. as @s positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast

execute if score @s[tag=!spellbound_electric_raycast_enchanted] spellbound_count matches 25.. run kill @s
execute if score @s[tag=spellbound_electric_raycast_enchanted] spellbound_count matches 36.. run kill @s
scoreboard players reset @s spellbound_count2
