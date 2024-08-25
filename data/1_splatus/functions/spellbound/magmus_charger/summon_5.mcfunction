summon marker ~ ~ ~ {Tags:["spellbound_magmus_charger_arrow_area_max","spellbound_magmus_charger_arrow_max_power5","spellbound_marker"]}
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..20] ~ ~ ~ 1 1.25



execute if entity @s[type=#1_splatus:spellbound/arrow] run data modify entity @e[limit=1,sort=nearest,type=marker,tag=spellbound_magmus_charger_arrow_area_max] data.Owner set from entity @s Owner
execute if entity @s[type=spectral_arrow] run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_magmus_charger_arrow_area_max] add spellbound_magmus_charger_arrow_area_max_spectral