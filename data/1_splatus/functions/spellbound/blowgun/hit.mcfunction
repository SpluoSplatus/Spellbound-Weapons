
playsound minecraft:entity.arrow.hit player @a[distance=..20] ~ ~ ~ 1.5 1.5
playsound minecraft:block.sand.step player @a[distance=..20] ~ ~ ~ 1.5 1.5

particle poof ~ ~ ~ .1 .1 .1 .02 3 force @a[distance=..64]
particle block white_concrete_powder ~ ~ ~ .3 .3 .3 .15 10 force @a[distance=..64]
#tag @e[distance=..1.25] add spellbound_player4

execute as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid4 run tag @s add spellbound_temp5

execute positioned ~ ~-1 ~ as @e[distance=..1,sort=nearest,limit=1,type=!player,type=!#1_splatus:spellbound/misc] as @s[type=!#1_splatus:spellbound/large] run damage @s 3 1_splatus:spellbound/projectile by @p[tag=spellbound_temp5]
execute positioned ~ ~-1.5 ~ as @e[distance=..3,sort=nearest,limit=1,type=!player,type=!#1_splatus:spellbound/misc] as @s[type=#1_splatus:spellbound/large] run damage @s 3 1_splatus:spellbound/projectile by @p[tag=spellbound_temp5]

#execute if score count spellbound_count matches 1..5 run summon item ~ ~1 ~ {Item:{id:"arrow",Count:1b},Tags:["spellbound_player4"]}

#execute as @e[distance=..1.25,sort=nearest,limit=1,type=!arrow,type=!item,type=!armor_stand,type=!area_effect_cloud,type=!#impact_projectiles] run particle dust 0.078 0.388 0.067 1.5 ~ ~.5 ~ .3 .5 .3 .2 10 normal

#death
execute positioned ~ ~-1 ~ as @p[distance=..1,sort=nearest,limit=1] if entity @s[advancements={1_splatus:spellbound/used_shield=true}] run function 1_splatus:spellbound/blowgun/shield
execute positioned ~ ~-1 ~ as @p[distance=..1,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:spellbound/used_shield=false}] run damage @s 3 1_splatus:spellbound/projectile by @p[tag=spellbound_temp5]

#execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:spellbound/used_shield=false}] run effect give @s poison 1 0 false


tag @a remove spellbound_temp5

#flame

execute as @s[tag=spellbound_blowgun_arrow_raycast_flame] run function 1_splatus:spellbound/blowgun/boom

execute as @s[tag=!spellbound_blowgun_arrow_raycast_infinity] run loot spawn ^ ^ ^-.2 loot 1_splatus:spellbound/item/arrow

tag @s add spellbound_blowgun_arrow_raycast_dead

scoreboard players set @s spellbound_count 9999
scoreboard players set @s spellbound_count2 9999