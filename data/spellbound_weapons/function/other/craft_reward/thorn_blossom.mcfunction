advancement revoke @s only spellbound_weapons:crafted/thorn_blossom

playsound block.vine.break block @a[distance=..64] ~ ~ ~ 1 .5
playsound block.rooted_dirt.break block @a[distance=..64] ~ ~ ~ 1 .8


execute if score spellbound_survival spellbound_settings matches 0 run clear @s iron_sword[minecraft:custom_data~{SpellboundThornBlossom:1b}] 1