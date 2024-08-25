execute at @s if score @s spellbound_count matches ..20 run scoreboard players add @s spellbound_count2 1
scoreboard players add @s spellbound_count 1


execute at @s[tag=!spellbound_magmus_charger_arrow_max_blue] run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..512]
#execute at @s[tag=spellbound_magmus_charger_arrow_max_blue] run particle soul_fire_flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..512]

execute at @s[tag=!spellbound_magmus_charger_arrow_max_blue] if predicate 1_splatus:spellbound/chance/10_percent run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
#execute at @s[tag=spellbound_magmus_charger_arrow_max_blue] if predicate 1_splatus:spellbound/chance/20_percent run particle soul ~ ~ ~ 0 0 0 .05 1 force @a[distance=..128]

execute at @s unless block ~ ~ ~ water if score @s spellbound_count matches ..20 run tp @s ^ ^ ^.2

execute at @s if block ~ ~ ~ water if score @s spellbound_count matches ..20 run tp @s ^ ^ ^.075
execute at @s if block ~ ~ ~ lava run tp @s ~ ~.4 ~


execute at @s if score @s spellbound_count2 matches 20..59 run tp @s ~ ~-.012 ~
execute at @s if score @s spellbound_count2 matches 60..99 run tp @s ~ ~-.03 ~
execute at @s if score @s spellbound_count2 matches 100..139 run tp @s ~ ~-.05 ~
execute at @s if score @s spellbound_count2 matches 140..179 run tp @s ~ ~-.055 ~
execute at @s if score @s spellbound_count2 matches 180..219 run tp @s ~ ~-.06 ~
execute at @s if score @s spellbound_count2 matches 220.. run tp @s ~ ~-.09 ~



#execute at @s if block ~ ~ ~ #1_splatus:spellbound/breakable_by_magmus if score gamerule_mobGriefing spellbound_count matches 1 run function 1_splatus:spellbound/magmus_charger/oops_ice

#end
execute if entity @e[distance=..7,type=blaze,tag=blazeboss] unless score @s spellbound_count matches 100.. run function 1_splatus:spellbound/magmus_charger/blaze_king
execute at @s if score @s spellbound_count matches ..20 unless block ~ ~ ~ #1_splatus:spellbound/permeable run scoreboard players set @s spellbound_count 100
execute if score @s spellbound_count2 matches 320.. if score @s spellbound_count matches ..99 run scoreboard players set @s spellbound_count 100
execute positioned ~ ~-.5 ~ if entity @e[distance=..1.25,type=!#1_splatus:spellbound/misc] if score @s spellbound_count matches ..99 if score @s spellbound_count2 matches 12.. run scoreboard players set @s spellbound_count 100


#repeat/loop
execute at @s if score @s spellbound_count matches ..15 run function 1_splatus:spellbound/magmus_charger/raycast_step
execute at @s if score @s spellbound_count matches 16..25 run scoreboard players reset @s spellbound_count





execute at @s if score @s spellbound_count matches 100.. run function 1_splatus:spellbound/magmus_charger/hit










