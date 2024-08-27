#absorption hit
scoreboard players set @a[scores={spellbound_playerhit2=1..}] spellbound_playerhit 1

########## CLOCKS ################



scoreboard players add 4tick spellbound_count 1

scoreboard players add count spellbound_count 1
execute if score count spellbound_count matches 20 run scoreboard players set count spellbound_count 0

scoreboard players add 2tick spellbound_count 1
execute if score 2tick spellbound_count matches 2 run scoreboard players set 2tick spellbound_count 0

scoreboard players add count5 spellbound_count 1
execute if score count5 spellbound_count matches 100 run scoreboard players set count5 spellbound_count 0



execute if score 4tick spellbound_count matches 4 run function spellbound_weapons:other/clock_5_tick

execute if score 2tick spellbound_count matches 1 run function spellbound_weapons:other/clock_10_tick



#########################################################################################################################################


#uuid checks
execute as @a[predicate=spellbound_weapons:holding/spellbound_item] unless score @s spellbound_uuid matches -2147483648.. run function spellbound_weapons:other/action/uuid_check
execute as @a[predicate=spellbound_weapons:holding/spellbound_item] at @s as @e[distance=..6,type=#spellbound_weapons:chainfiring_ammo,tag=!spellbound_arrow_checked] run function spellbound_weapons:other/action/arrow_check

# DETECT WHETHER HOLDING ITEM OR NOT - Inputs into scoreboards
execute as @a[predicate=spellbound_weapons:holding/spellbound_item,predicate=!spellbound_weapons:holding/tag/spellbound_netherite_sword] run scoreboard players set @s spellbound_weapon 1
execute as @a[scores={spellbound_weapon=1..}] run function spellbound_weapons:other/checkitem


# functions for general items
execute as @a[scores={spellbound_end=1..}] at @s run function spellbound_weapons:end_excalibur/end_excalibur
execute as @a[scores={spellbound_blazing=1..}] at @s run function spellbound_weapons:blazing_sword/blazing_sword
execute as @a[scores={spellbound_curse=1..}] run function spellbound_weapons:cursed_sea_blade/cursed_sea_blade

execute as @a[scores={spellbound_sand=1..}] at @s run function spellbound_weapons:windswept_sword/windswept_sword
execute as @a[scores={spellbound_delete=1..}] run function spellbound_weapons:delete_sword/root
execute as @a[scores={spellbound_withering=1..}] at @s run function spellbound_weapons:withering_sword/withering_sword
execute as @a[scores={spellbound_hammer=1..}] at @s run function spellbound_weapons:mega_hammer/mega_hammer
execute as @a[scores={spellbound_dagger=1..}] run function spellbound_weapons:dagger/dagger
execute as @a[scores={spellbound_evoker=1..}] at @s run function spellbound_weapons:evokers_wrath/evokers_wrath
execute as @a[scores={spellbound_bonewand=1..},predicate=!spellbound_weapons:holding/tag/bow_both,tag=!spellbound_disablebonewand] at @s run function spellbound_weapons:bone_wand/bone_wand


execute as @a[scores={spellbound_crucible=1..}] at @s run function spellbound_weapons:crucible/crucible
execute as @a[scores={spellbound_golden_ocean_edge=1..}] at @s run function spellbound_weapons:golden_ocean_edge/golden_ocean_edge
execute as @a[scores={spellbound_moonlight_edge=1..}] at @s run function spellbound_weapons:moonlight_edge/moonlight_edge
execute as @a[predicate=spellbound_weapons:holding/spellbound_sword] at @s run item modify entity @s weapon.mainhand spellbound_weapons:spellbound_sword


execute as @a[scores={spellbound_f_staff=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:fire_staff/root
execute as @a[scores={spellbound_i_staff=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:ice_staff/root
execute as @a[scores={spellbound_e_staff=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:electric_staff/root

execute as @a[scores={spellbound_zgcrossbow=1..},predicate=!spellbound_weapons:holding/tag/bow_both] run function spellbound_weapons:zgcrossbow/zgcrossbow
execute as @a[scores={spellbound_chainfiring=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:chainfiring/chainfiring
execute as @a[scores={spellbound_blowgun=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:blowgun/blowgun
execute as @a[scores={spellbound_endlight=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:endlight/endlight
execute as @a[scores={spellbound_magmus_charger=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:magmus_charger/magmus_charger

execute as @a[scores={spellbound_thorn=1..}] at @s run function spellbound_weapons:thorn_blossom/thorn_blossom

########################################################################################################################################################

execute if score count spellbound_count matches 1 run scoreboard players set @a spellbound_sneak_count 0

### switch back to normal attributes
function spellbound_weapons:cooldowns

########################################################################################################################################################


# mob spawning 
execute if predicate spellbound_weapons:weapons_achieveable as @e[type=pillager,tag=!spellbound_spawnattempted,team=!in.sanctum] run function spellbound_weapons:chainfiring/spawn
#execute if predicate spellbound_weapons:weapons_achieveable as @e[type=wither_skeleton,tag=!spellbound_spawnattempted] run function spellbound_weapons:blazing_sword/spawn
execute if predicate spellbound_weapons:weapons_achieveable as @e[type=zombie,tag=!spellbound_spawnattempted] run function spellbound_weapons:dagger/spawn
#execute if predicate spellbound_weapons:weapons_achieveable as @e[type=husk,tag=!spellbound_spawnattempted] run function spellbound_weapons:windswept_sword/spawn



########################################################################################################################################################

#markers
execute as @e[type=#spellbound_weapons:custom,tag=spellbound_marker] at @s run function spellbound_weapons:other/weapon_entity

execute as @e[type=bat,tag=spellbound_dusties] at @s run function spellbound_weapons:withering_sword/dusties

execute as @e[type=marker,tag=spellbound_electric_raycast] at @s run function spellbound_weapons:electric_staff/raycast


execute as @a[scores={spellbound_hammer_move=1..}] at @s run function spellbound_weapons:mega_hammer/player_move
execute as @a[scores={spellbound_windswept_levitation=1..}] at @s run function spellbound_weapons:windswept_sword/levitate

#ITEM ENTITIES --------------------------------------------------------------------------------------

execute as @e[type=#spellbound_weapons:chainfiring_ammo,tag=spellbound_zgcrossbow_arrow] at @s run function spellbound_weapons:zgcrossbow/arrow
execute as @e[type=#spellbound_weapons:arrow,tag=spellbound_endlight_arrow] at @s run function spellbound_weapons:endlight/arrow_info
execute as @e[type=#spellbound_weapons:arrow,tag=spellbound_magmus_charger_arrow] at @s run function spellbound_weapons:magmus_charger/arrow

execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_min] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..6] run function spellbound_weapons:other/hits/magmus_min

execute as @e[type=#spellbound_weapons:fish,tag=spellbound_cursedfish] at @s run function spellbound_weapons:cursed_sea_blade/the_actual_thing_is_cursed

scoreboard players add @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_count 1

#areas
execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] at @e[distance=..5,type=!#spellbound_weapons:misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function spellbound_weapons:other/hits/magmus_mid
execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] run function spellbound_weapons:other/hits/magmus_mid

execute as @e[type=area_effect_cloud,tag=spellbound_endlight_area] at @s unless entity @e[tag=spellbound_endlight_arrow,distance=..5] at @e[distance=..5,type=!#spellbound_weapons:misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function spellbound_weapons:endlight/arrow
execute as @e[type=area_effect_cloud,tag=spellbound_endlight_area] at @s unless entity @e[tag=spellbound_endlight_arrow,distance=..5] run function spellbound_weapons:endlight/arrow





execute as @e[type=!#spellbound_weapons:misc,scores={spellbound_blastoff=1..}] at @s run function spellbound_weapons:magmus_charger/blastoff

execute as @e[type=area_effect_cloud,tag=spellbound_netherlight_beam] at @s run function spellbound_weapons:netherlight/beam
execute as @e[scores={spellbound_crucible_stunned=1..}] at @s run function spellbound_weapons:crucible/stunned
execute as @e[type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave] at @s run function spellbound_weapons:golden_ocean_edge/wave
execute as @e[type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave2] at @s run function spellbound_weapons:golden_ocean_edge/wave

execute as @e[tag=spellbound_golden_ocean_edge_iscarried] at @s run function spellbound_weapons:golden_ocean_edge/carried
execute as @e[type=marker,tag=spellbound_moonlight_edge_beam] at @s run function spellbound_weapons:moonlight_edge/beam
execute as @e[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] at @s run function spellbound_weapons:moonlight_edge/heavy_beam

# redstone 
execute as @e[type=area_effect_cloud,tag=spellbound_power_observer] at @s run function spellbound_weapons:other/redstone/area_power_observer
execute as @e[type=area_effect_cloud,tag=spellbound_power_redstonelamp] at @s run function spellbound_weapons:other/redstone/area_power_redstone_lamp

execute as @e[type=player,tag=spellbound_player_usingbeam] at @s run function spellbound_weapons:moonlight_edge/used_beam

#execute as @e[scores={spellbound_netherlight_stun=1..}] at @s run function spellbound_weapons:netherlight/stun



execute unless predicate spellbound_weapons:weapons_achieveable run scoreboard players reset @a spellbound_recipes
execute if predicate spellbound_weapons:weapons_achieveable run scoreboard players enable @a spellbound_recipes
execute as @a[scores={spellbound_recipes=1..}] at @s run function spellbound_weapons:other/recipes/main
execute as @a[scores={spellbound_recipes=..-1}] at @s run function spellbound_weapons:other/recipes/main

execute as @e[scores={spellbound_hammer_stun=1..}] at @s run function spellbound_weapons:mega_hammer/stun
execute as @a[scores={spellbound_golden_ocean_edge_effect=1..}] at @s run function spellbound_weapons:golden_ocean_edge/effect
execute as @a[scores={spellbound_golden_ocean_edge_effect2=1..}] at @s run function spellbound_weapons:golden_ocean_edge/jump
execute as @a[scores={spellbound_sand_jump=1..}] at @s run function spellbound_weapons:windswept_sword/jump

execute as @e[type=!#spellbound_weapons:misc,scores={spellbound_curse_time=1..}] at @s run function spellbound_weapons:other/cursed
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",tag:{DetectCursedMobDeath:1}}}] at @s run function spellbound_weapons:cursed_sea_blade/fish



execute as @a at @s store result score @s spellbound_fallspeed run data get entity @s Motion[1] 100

execute as @a[predicate=spellbound_weapons:sneaking,tag=!spellbound_player_sneaking] at @s run scoreboard players add @s spellbound_sneak_count 1
execute as @a[predicate=spellbound_weapons:sneaking,tag=!spellbound_player_sneaking] at @s run tag @s add spellbound_player_sneaking
execute as @a[predicate=!spellbound_weapons:sneaking,tag=spellbound_player_sneaking] at @s run tag @s remove spellbound_player_sneaking


execute as @e[type=fireball,tag=spellbound_firestaff_fireball] at @s run tp @e[type=area_effect_cloud,tag=spellbound_firestaff_area,distance=..4,sort=nearest,limit=1] @s

execute as @e[type=#spellbound_weapons:chainfiring_ammo,tag=spellbound_player3] at @s rotated as @p run function spellbound_weapons:other/target_forward3



### RIGHT CLICK 
scoreboard players set @a[scores={spellbound_right_click=1..}] spellbound_right_click 0


#### FROZEN ###
execute as @e[type=armor_stand,tag=spellbound_ice_staff_ice] at @s positioned ~ ~1 ~ run function spellbound_weapons:ice_staff/ice
execute as @e[scores={spellbound_freeze=1..}] at @s run function spellbound_weapons:ice_staff/freeze

### EVERY 5 SECONDS
execute if score count5 spellbound_count matches 1 run function spellbound_weapons:other/5-seconds


#execute as @e[type=skeleton] store result score @s b run data get entity @s HandItems[0].tag.SpellboundChainfiring
#execute as @e[type=pillager] store result score @s spellbound_chainfiring run data get entity @s HandItems[0].tag.SpellboundChainfiring

execute as @e[type=item,tag=!spellbound_itemhitlava,nbt={Item:{tag:{SpellboundCrucible:1}}}] at @s if block ~ ~ ~ #spellbound_weapons:hot run function spellbound_weapons:other/action/bounce
execute as @e[type=item,tag=!spellbound_itemhitlava,nbt={Item:{tag:{SpellboundMagmusCharger:1}}}] at @s if block ~ ~ ~ #spellbound_weapons:hot run function spellbound_weapons:other/action/bounce



### DAMAGE DEALT 
execute as @a[scores={spellbound_playerhit=1..}] at @s run function spellbound_weapons:hit

#reset
scoreboard players set @a[scores={spellbound_playerhit=1..}] spellbound_playerhit 0
scoreboard players set @a[scores={spellbound_playerhit2=1..}] spellbound_playerhit2 0

scoreboard players set @a[scores={spellbound_death=1..}] spellbound_death 0



execute as @a unless entity @s[predicate=!spellbound_weapons:holding/tag/no,predicate=!spellbound_weapons:holding/tag/no_offhand] run function spellbound_weapons:other/action/no

advancement revoke @a only spellbound_weapons:used_shield
advancement revoke @a only spellbound_weapons:player_hurt

scoreboard players set @a smithed.damage_taken 0


execute store result score daytime spellbound_count run time query daytime


tag @a[scores={spellbound_e_staff=1..}] remove spellbound_electric_staff_immune


tag @e[type=#spellbound_weapons:chainfiring_ammo] add spellbound_arrow_checked2
execute as @a[scores={spellbound_death=1..}] run function spellbound_weapons:other/action/death


scoreboard players set @a spellbound_movement 0

advancement revoke @a only spellbound_weapons:arrow