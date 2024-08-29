summon marker ^ ^ ^.01 {Invulnerable:1b,Tags:["spellbound_magmus_charger_arrow_area_max","spellbound_marker"]}

#power levels
    execute as @p[scores={spellbound_magmus_charger=1..}] unless entity @s[predicate=!spellbound_weapons:holding/enchant/power2,predicate=!spellbound_weapons:holding/enchant/power2_offhand] run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 2
    execute as @p[scores={spellbound_magmus_charger=1..}] unless entity @s[predicate=!spellbound_weapons:holding/enchant/power3,predicate=!spellbound_weapons:holding/enchant/power3_offhand] run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 3
    execute as @p[scores={spellbound_magmus_charger=1..}] unless entity @s[predicate=!spellbound_weapons:holding/enchant/power4,predicate=!spellbound_weapons:holding/enchant/power4_offhand] run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 4
    execute as @p[scores={spellbound_magmus_charger=1..}] unless entity @s[predicate=!spellbound_weapons:holding/enchant/power5,predicate=!spellbound_weapons:holding/enchant/power5_offhand] run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 5

    execute as @p[scores={spellbound_magmus_charger=1..}] unless entity @s[predicate=!spellbound_weapons:holding/enchant/power,predicate=!spellbound_weapons:holding/enchant/power_offhand] run tag @n[tag=spellbound_magmus_charger_arrow_area_max] add spellbound_magmus_charger_arrow_max_power

#

data modify entity @n[tag=spellbound_magmus_charger_arrow_area_max] Rotation set from entity @p[scores={spellbound_magmus_charger=1..}] Rotation

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..20] ~ ~ ~ 1 1.25

execute if entity @s[type=#spellbound_weapons:arrow] run data modify entity @e[limit=1,sort=nearest,type=marker,tag=spellbound_magmus_charger_arrow_area_max] data.Owner set from entity @s Owner


#uuid

execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid run data get entity @s data.Owner[0]
execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid2 run data get entity @s data.Owner[1]
execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid3 run data get entity @s data.Owner[2]
execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid4 run data get entity @s data.Owner[3]




execute if entity @s[type=spectral_arrow] run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_magmus_charger_arrow_area_max] add spellbound_magmus_charger_arrow_area_max_spectral