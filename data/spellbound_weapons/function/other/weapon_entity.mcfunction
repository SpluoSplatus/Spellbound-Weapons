#mainly for optimization, if a entity marked with "spellbound_marker" exists these will all run

#these are for markers, a good chunk of the datapack still uses area of effect clouds as invisibile entities /:

execute as @s[tag=spellbound_blowgun_arrow_raycast] run function spellbound_weapons:blowgun/dart

execute as @s[tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_posY run data get entity @s Pos[1]

execute as @s[tag=spellbound_crucible_the_light_is_coming] run function spellbound_weapons:crucible/the_light_is_coming_down

execute as @s[tag=spellbound_magmus_charger_arrow_area_max] run function spellbound_weapons:magmus_charger/raycast_step

execute as @s[tag=spellbound_windswept_sand] run function spellbound_weapons:windswept_sword/sand

execute as @s[tag=spellbound_electricity] run function spellbound_weapons:electric_staff/electricity

execute as @s[tag=spellbound_crucible_releasedenergy] at @s run function spellbound_weapons:crucible/energy

execute as @s[tag=spellbound_echo_wand_area2] at @s run function spellbound_weapons:echo_wand/area2

execute as @s[tag=spellbound_echo_wand_area] at @s run function spellbound_weapons:echo_wand/area

execute as @s[tag=spellbound_ice_staff_snow] at @s run function spellbound_weapons:ice_staff/snow

execute as @s[tag=spellbound_sand_wind] at @s run function spellbound_weapons:windswept_sword/wind

execute as @s[tag=spellbound_dusties] at @s run function spellbound_weapons:withering_sword/dusties_homing

execute as @s[tag=spellbound_watergush] at @s run function spellbound_weapons:golden_ocean_edge/gush

execute as @s[tag=spellbound_fire] at @s run function spellbound_weapons:other/asset/fire

execute as @s[tag=spellbound_hammervector] unless entity @p[distance=..32,gamemode=!spectator] run kill @s

execute as @s[tag=spellbound_evokerattack] run function spellbound_weapons:evokers_wrath/marker

execute as @s[tag=spellbound_evoker_vex] at @s run function spellbound_weapons:evokers_wrath/vex

execute as @s[tag=spellbound_firestaff] at @s run function spellbound_weapons:fire_staff/marker

execute as @s[tag=spellbound_thorn] at @s run function spellbound_weapons:thorn_blossom/thorn

execute as @s[tag=spellbound_bone_wand_area] run function spellbound_weapons:bone_wand/areas
