summon marker ^ ^ ^.01 {Invulnerable:1b,Tags:["spellbound_magmus_charger_arrow_area_max","spellbound_marker"]}

#power levels
    execute if score @s spellbound_enchantlevel matches 2 run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 2
    execute if score @s spellbound_enchantlevel matches 3 run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 3
    execute if score @s spellbound_enchantlevel matches 4 run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 4
    execute if score @s spellbound_enchantlevel matches 5 run scoreboard players set @n[tag=spellbound_magmus_charger_arrow_area_max] spellbound_enchantlevel 5


#

data modify entity @n[tag=spellbound_magmus_charger_arrow_area_max] Rotation set from entity @s Rotation

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..20] ~ ~ ~ 1 1.25

execute if entity @s[type=#spellbound_weapons:arrow] run data modify entity @e[limit=1,sort=nearest,type=marker,tag=spellbound_magmus_charger_arrow_area_max] data.Owner set from entity @s UUID


#uuid

execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid run data get entity @s data.Owner[0]
execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid2 run data get entity @s data.Owner[1]
execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid3 run data get entity @s data.Owner[2]
execute as @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] store result score @s spellbound_uuid4 run data get entity @s data.Owner[3]




execute if entity @s[type=spectral_arrow] run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_magmus_charger_arrow_area_max] add spellbound_magmus_charger_arrow_area_max_spectral