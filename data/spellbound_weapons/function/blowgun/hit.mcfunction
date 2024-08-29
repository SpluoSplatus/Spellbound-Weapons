
playsound minecraft:entity.arrow.hit player @a[distance=..20] ~ ~ ~ 1.5 1.5
playsound minecraft:block.sand.step player @a[distance=..20] ~ ~ ~ 1.5 1.5

particle poof ~ ~ ~ .1 .1 .1 .02 3 force @a[distance=..64]
particle block{block_state:"white_concrete_powder"} ~ ~ ~ .3 .3 .3 .15 10 force @a[distance=..64]
#tag @e[distance=..1.25] add spellbound_player4

execute as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid4 run tag @s add spellbound_temp5

##################

execute if entity @s[tag=spellbound_blowgun_arrow_raycast_speed_slow] as @e[distance=..5,dy=0,sort=nearest,limit=1,type=!#spellbound_weapons:misc,type=!player] run damage @s 2 spellbound_weapons:projectile by @p[tag=spellbound_temp5]
execute if entity @s[tag=!spellbound_blowgun_arrow_raycast_speed_slow] as @e[distance=..5,dy=0,sort=nearest,limit=1,type=!#spellbound_weapons:misc,type=!player] run damage @s 3.5 spellbound_weapons:projectile by @p[tag=spellbound_temp5]

#execute as @e[distance=..1.25,sort=nearest,limit=1,type=!arrow,type=!item,type=!armor_stand,type=!area_effect_cloud,type=!#impact_projectiles] run particle dust 0.078 0.388 0.067 1.5 ~ ~.5 ~ .3 .5 .3 .2 10 normal

#damage player
execute as @p[dy=0,distance=..2,sort=nearest,limit=1,predicate=!spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=true}] run function spellbound_weapons:blowgun/shield
execute if entity @s[tag=spellbound_blowgun_arrow_raycast_speed_slow] as @p[dy=0,distance=..2,sort=nearest,limit=1,predicate=!spellbound_weapons:not_creative_spec] at @s if entity @s[advancements={spellbound_weapons:used_shield=false}] run damage @s 2 spellbound_weapons:projectile by @p[tag=spellbound_temp5]
execute if entity @s[tag=!spellbound_blowgun_arrow_raycast_speed_slow] as @p[dy=0,distance=..2,sort=nearest,limit=1,predicate=!spellbound_weapons:not_creative_spec] at @s if entity @s[advancements={spellbound_weapons:used_shield=false}] run damage @s 3.5 spellbound_weapons:projectile by @p[tag=spellbound_temp5]

#execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={spellbound_weapons:used_shield=false}] run effect give @s poison 1 0 false


tag @a remove spellbound_temp5

#flame

execute if entity @s[tag=spellbound_blowgun_arrow_raycast_flame] as @e[dy=0,sort=nearest,limit=1,type=!player,type=!#spellbound_weapons:misc,predicate=!spellbound_weapons:not_creative_spec] run data modify entity @s Fire set value 60s

execute as @s[tag=!spellbound_blowgun_arrow_raycast_infinity] run loot spawn ^ ^ ^-.2 loot spellbound_weapons:item/arrow

tag @s add spellbound_blowgun_arrow_raycast_dead

scoreboard players set @s spellbound_count 9999
scoreboard players set @s spellbound_count2 9999