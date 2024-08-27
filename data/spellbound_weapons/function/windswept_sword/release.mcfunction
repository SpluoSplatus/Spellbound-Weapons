playsound minecraft:entity.phantom.flap player @a[distance=..16] ~ ~ ~ 1 1.25
playsound minecraft:entity.phantom.ambient player @a[distance=..32] ~ ~ ~ 1 .52
playsound minecraft:entity.vex.ambient player @a[distance=..16] ~ ~ ~ 1 1.25

#particle poof ~ ~ ~ .4 .4 .4 .05 5 force @a[distance=..32]


execute as @s[predicate=!spellbound_weapons:holding/enchant/sweeping_edge3] positioned ~ ~ ~ run summon marker ^ ^ ^1.0001 {Tags:["spellbound_sand_wind","spellbound_sand_wind_heavy","spellbound_marker"]}
execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge3] positioned ~ ~ ~ run summon marker ^ ^ ^1.0001 {Tags:["spellbound_sand_wind","spellbound_sand_wind_heavy","spellbound_sand_wind_enchanted","spellbound_marker"]}
data modify entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] Rotation set from entity @s Rotation

execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute at @s store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4



execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking1-3] at @s run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking1] at @s if predicate spellbound_weapons:chance/75_percent run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] at @s if predicate spellbound_weapons:chance/50_percent run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] at @s if predicate spellbound_weapons:chance/33_percent run item modify entity @s weapon.mainhand spellbound_weapons:damage0.1



execute as @s[predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block sand ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air


execute at @s positioned ~ ~-0.001 ~ unless predicate spellbound_weapons:other/can_levitate run tag @s[tag=!spellbound_tip.windsweeper_1] add spellbound_tip.windsweeper_1

execute at @s positioned ~ ~-0.001 ~ if predicate spellbound_weapons:other/can_levitate at @s run function spellbound_weapons:windswept_sword/release_down




scoreboard players set @s spellbound_windswept_cooldown 0
function spellbound_weapons:other/action/set_cooldowns_to_0