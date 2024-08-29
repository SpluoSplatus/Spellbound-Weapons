
playsound minecraft:entity.blaze.hurt player @a[distance=..32] ~ ~ ~ 1.5 .5
playsound minecraft:item.trident.hit_ground player @a[distance=..32] ~ ~ ~ 1.5 .75
playsound minecraft:block.rooted_dirt.break player @a[distance=..32] ~ ~ ~ 1.5 .5


execute as @s[tag=!spellbound_usedhammer] run damage @s 2 spellbound_weapons:melee_force by @p[tag=spellbound_usedhammer]


execute unless block ~ ~-.5 ~ #spellbound_weapons:permeable run function spellbound_weapons:mega_hammer/stun

