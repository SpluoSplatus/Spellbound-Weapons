

execute as @s[tag=spellbound_endlight_arrow] at @s run tag @s add spellbound_arrow_checked2
execute as @s[tag=spellbound_endlight_arrow] at @s run tp @e[type=area_effect_cloud,tag=spellbound_endlight_area,sort=nearest,limit=1] @s
execute as @s[tag=spellbound_endlight_arrow] at @s run particle end_rod ~ ~ ~ 0 0 0 .01 1 force @a[distance=..128]
execute as @s[tag=spellbound_endlight_arrow,nbt={inGround:1b}] at @s run function 1_splatus:spellbound/endlight/arrow
execute as @s[tag=spellbound_endlight_arrow,nbt={inGround:1b}] at @s run scoreboard players add @s spellbound_count 1
execute as @s[tag=spellbound_endlight_arrow] at @s run scoreboard players add @s spellbound_count 1





execute as @s[tag=spellbound_endlight_arrow,scores={spellbound_count=1}] at @s[type=spectral_arrow] run tag @e[sort=nearest,type=area_effect_cloud,tag=spellbound_endlight_area] add spellbound_endlight_area_spectral
execute as @s[tag=spellbound_endlight_arrow,scores={spellbound_count=1}] at @s if entity @s[tag=spellbound_endlight_arrow_flamed] run tag @e[distance=..4,tag=spellbound_endlight_area] add spellbound_endlight_arrow_flamed

execute as @s[tag=spellbound_endlight_arrow,scores={spellbound_count=1}] at @s run scoreboard players set @p[scores={spellbound_endlight_cooldown=20}] spellbound_endlight_cooldown 0


execute as @s[tag=spellbound_endlight_arrow,scores={spellbound_count=1}] at @s run data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=spellbound_endlight_area] Owner set from entity @s Owner