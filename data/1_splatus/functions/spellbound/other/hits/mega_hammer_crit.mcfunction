damage @s 2 1_splatus:spellbound/melee_force by @p

execute at @s run playsound minecraft:entity.blaze.hurt player @a[distance=..32] ~ ~ ~ 1.5 .5
execute at @s run playsound minecraft:item.trident.hit_ground player @a[distance=..32] ~ ~ ~ 1.5 .75
execute at @s run playsound minecraft:block.rooted_dirt.break player @a[distance=..32] ~ ~ ~ 1.5 .5

execute at @s unless block ~ ~-.2 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/mega_hammer/stun