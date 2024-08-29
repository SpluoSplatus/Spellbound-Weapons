advancement revoke @s only spellbound_weapons:crafted/magmus_charger


particle lava ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]
playsound minecraft:block.fire.extinguish block @a[distance=..20] ~ ~ ~ 1.00 1.05
playsound minecraft:entity.wither_skeleton.death block @a[distance=..20] ~ ~ ~ 0.8 1.75

execute if score spellbound_survival spellbound_settings matches 0 run clear @s bow[minecraft:custom_data~{SpellboundMagmusCharger:1b}] 1
