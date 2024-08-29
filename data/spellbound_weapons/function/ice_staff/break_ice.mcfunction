

execute as @a[distance=..1.5,sort=nearest,limit=1,predicate=spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=true}] at @s run function spellbound_weapons:ice_staff/shield

execute if score @s spellbound_count matches 3..120 as @e[distance=..1.5,type=!#spellbound_weapons:misc,type=!slime,type=!magma_cube,limit=5,sort=nearest,predicate=!spellbound_weapons:used_shield] run function spellbound_weapons:ice_staff/freeze

#### direct

execute as @a[distance=..2,sort=nearest,limit=1,dy=0,predicate=spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=true}] at @s run function spellbound_weapons:ice_staff/shield

execute if score @s spellbound_count matches 3..120 as @e[distance=..2,dy=0,type=!#spellbound_weapons:misc,type=!slime,type=!magma_cube,limit=5,sort=nearest,predicate=!spellbound_weapons:used_shield] run function spellbound_weapons:ice_staff/freeze



playsound entity.stray.death player @a[distance=..20] ~ ~ ~ 1.5 1.5
playsound block.amethyst_cluster.break player @a[distance=..20] ~ ~ ~ 1.5 1
particle minecraft:poof ~ ~.62 ~ .3 .3 .3 .1 14 force @a[distance=..64]
particle block{block_state:"packed_ice"} ~ ~.62 ~ .3 .3 .3 .1 50 normal
kill @s