advancement revoke @s only spellbound_weapons:crafted/windsweeper


playsound entity.phantom.ambient block @a[distance=..32] ~ ~ ~ 1.5 .55




particle gust ~ ~.15 ~ 0 0 0 .1 1 force @a[distance=..128]


execute if score spellbound_survival spellbound_settings matches 0 run clear @s diamond_sword[minecraft:custom_data~{SpellboundWindsweptSword:1b}]

