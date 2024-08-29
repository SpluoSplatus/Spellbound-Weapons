advancement revoke @s only spellbound_weapons:crafted/moonlight_edge




playsound minecraft:entity.vex.hurt block @a[distance=..32] ~ ~ ~ 2.00 .75

playsound minecraft:entity.allay.item_thrown block @a[distance=..32] ~ ~ ~ .3 .5

playsound minecraft:entity.allay.item_thrown block @a[distance=..32] ~ ~ ~ .3 .5

playsound minecraft:block.amethyst_block.chime block @a[distance=..32] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_block.chime block @a[distance=..32] ~ ~ ~ 2.00 .5


playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 2
playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 1.5
playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 2
#playsound minecraft:entity.stray.death block @a[distance=..32] ~ ~ ~ 2.00 1.35




particle end_rod ~ ~.15 ~ 0 0 0 .15 10 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .6 5 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .3 10 force @a[distance=..128]

execute if score spellbound_survival spellbound_settings matches 0 run clear @s diamond_sword[minecraft:custom_data~{SpellboundMoonlightEdge:1b}] 1

