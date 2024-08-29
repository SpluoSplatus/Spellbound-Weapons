execute at @s if score @s spellbound_count matches ..20 run scoreboard players add @s spellbound_count2 1
scoreboard players add @s spellbound_count 1

particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..512]
execute if predicate spellbound_weapons:chance/25_percent at @s[tag=spellbound_magmus_charger_arrow_max_blue] run particle soul_fire_flame ~ ~ ~ 0 0 0 .1 1 force @a[distance=..512]

execute at @s[tag=!spellbound_magmus_charger_arrow_max_blue] if predicate spellbound_weapons:chance/10_percent run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]


execute at @s unless block ~ ~ ~ water run function spellbound_weapons:magmus_charger/arrow/max_raycast_movement_normal

execute at @s if block ~ ~ ~ water run function spellbound_weapons:magmus_charger/arrow/max_raycast_movement_water

execute at @s if block ~ ~ ~ lava run tp @s ~ ~.4 ~



execute at @s if score @s spellbound_count matches 12 run particle trial_spawner_detection ~ ~ ~ 0 0 0 .1 2 force @a[distance=..64]

#execute at @s if block ~ ~ ~ #spellbound_weapons:breakable_by_magmus if score gamerule_mobGriefing spellbound_count matches 1 run function spellbound_weapons:magmus_charger/oops_ice

#end
execute if entity @e[distance=..7,type=blaze,tag=blazeboss] unless score @s spellbound_count matches 100.. run function spellbound_weapons:magmus_charger/arrow/blaze_king

execute at @s if score @s spellbound_count matches ..20 unless block ~ ~ ~ #spellbound_weapons:permeable run scoreboard players set @s spellbound_count 100
execute if score @s spellbound_count2 matches 2000.. if score @s spellbound_count matches ..99 run scoreboard players set @s spellbound_count 100
execute unless block ~ ~ ~ #spellbound_weapons:water if entity @n[dy=0,type=!#spellbound_weapons:misc,distance=..3,predicate=!spellbound_weapons:not_creative_spec] if score @s spellbound_count matches ..99 if score @s spellbound_count2 matches 14.. run scoreboard players set @s spellbound_count 100
execute if block ~ ~ ~ #spellbound_weapons:water if entity @n[dy=0,type=!#spellbound_weapons:misc,distance=..3,predicate=!spellbound_weapons:not_creative_spec] if score @s spellbound_count matches ..99 if score @s spellbound_count2 matches 28.. run scoreboard players set @s spellbound_count 100



#repeat/loop
execute at @s if score @s spellbound_count matches ..15 run function spellbound_weapons:magmus_charger/arrow/max_raycast_movement
execute at @s if score @s spellbound_count matches 12..25 run scoreboard players reset @s spellbound_count













