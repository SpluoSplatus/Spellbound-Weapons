execute as @p[distance=..1.25,sort=nearest,limit=1] if entity @s[advancements={spellbound_weapons:used_shield=true}] at @s run function spellbound_weapons:ice_staff/shield

execute as @p[distance=..1.25,sort=nearest,limit=1] if entity @s[advancements={spellbound_weapons:used_shield=false}] run function spellbound_weapons:ice_staff/freeze
execute if score @s[tag=spellbound_ice_staff_ice_enchanted] spellbound_count matches 3..120 as @p[distance=..1.25,sort=nearest,limit=1] if entity @s[advancements={spellbound_weapons:used_shield=false}] run tag @s add spellbound_frostenchanted

execute if score @s[tag=spellbound_ice_staff_ice_enchanted] spellbound_count matches 3..120 if entity @e[distance=..1.25,type=!#spellbound_weapons:misc,type=!slime,type=!magma_cube] as @e[distance=..2,type=!#spellbound_weapons:misc,type=!player,type=!slime,type=!magma_cube,limit=3,sort=nearest] run tag @s add spellbound_frostenchanted
execute if entity @e[distance=..1.25,type=!#spellbound_weapons:misc,type=!slime,type=!magma_cube] as @e[distance=..2,type=!#spellbound_weapons:misc,type=!player,type=!slime,type=!magma_cube,limit=3,sort=nearest] run function spellbound_weapons:ice_staff/freeze












playsound entity.stray.death player @a[distance=..20] ~ ~ ~ 1.5 1.5
playsound block.amethyst_cluster.break player @a[distance=..20] ~ ~ ~ 1.5 1
particle minecraft:poof ~ ~.62 ~ .3 .3 .3 .1 14 force @a[distance=..64]
particle block packed_ice ~ ~.62 ~ .3 .3 .3 .1 50 normal
kill @s