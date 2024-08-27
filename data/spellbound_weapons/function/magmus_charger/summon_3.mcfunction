summon armor_stand ~ ~ ~ {Tags:["spellbound_magmus_charger_arrow_area_max","spellbound_marker","spellbound_magmus_charger_arrow_max_power3"]}
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..20] ~ ~ ~ 1 1.25

execute if entity @s[type=spectral_arrow] run tag @e[limit=1,sort=nearest,type=armor_stand,tag=spellbound_magmus_charger_arrow_area_max] add spellbound_magmus_charger_arrow_area_max_spectral