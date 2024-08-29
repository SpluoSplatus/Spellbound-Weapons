advancement revoke @s only spellbound_weapons:crafted/thorn_blossom_diamond

function spellbound_weapons:other/craft_reward/thorn_blossom

playsound block.gravel.break block @a[distance=..20] ~ ~ ~ 1 .8


execute if score spellbound_survival spellbound_settings matches 0 run clear @s diamond_sword[minecraft:custom_data~{SpellboundThornBlossom:1b}] 1

