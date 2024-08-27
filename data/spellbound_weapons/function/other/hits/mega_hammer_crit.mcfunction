damage @s 2 spellbound_weapons:melee_force by @p

execute at @s run playsound minecraft:entity.blaze.hurt player @a[distance=..32] ~ ~ ~ 1.5 .5
execute at @s run playsound minecraft:item.trident.hit_ground player @a[distance=..32] ~ ~ ~ 1.5 .75
execute at @s run playsound minecraft:block.rooted_dirt.break player @a[distance=..32] ~ ~ ~ 1.5 .5

execute at @s unless block ~ ~-.2 ~ #spellbound_weapons:permeable run function spellbound_weapons:mega_hammer/stun