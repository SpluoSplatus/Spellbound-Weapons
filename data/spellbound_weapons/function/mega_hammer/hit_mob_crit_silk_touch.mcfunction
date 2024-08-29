
playsound minecraft:entity.blaze.hurt player @a[distance=..32] ~ ~ ~ 1.5 .5
playsound minecraft:item.trident.hit_ground player @a[distance=..32] ~ ~ ~ 1.5 .75
playsound minecraft:block.rooted_dirt.break player @a[distance=..32] ~ ~ ~ 1.5 .5

execute as @e[distance=..1.5,type=!#spellbound_weapons:misc,tag=!spellbound_usedhammer] at @s unless block ~ ~-.5 ~ #spellbound_weapons:permeable run function spellbound_weapons:mega_hammer/stun

execute as @e[distance=0.01..1.5,type=!#spellbound_weapons:misc,tag=!spellbound_usedhammer] run damage @s 4 spellbound_weapons:melee by @p[tag=spellbound_usedhammer]

execute as @s[tag=!spellbound_usedhammer] run damage @s 2 spellbound_weapons:melee_force by @p[tag=spellbound_usedhammer]
