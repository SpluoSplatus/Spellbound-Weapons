playsound minecraft:entity.vex.ambient player @a[distance=..20] ~ ~ ~ 1 2

execute at @s if score @s spellbound_evoker_cooldown matches 50.. run tag @s add spellbound_tip.evokers_wrath_1

execute positioned ~ ~.25 ~ unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_evoker_cooldown matches 50.. run function 1_splatus:spellbound/other/hits/evokers_wrath
execute as @s[distance=..5] at @s if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_evoker_cooldown matches 50.. unless entity @e[distance=0.001..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] positioned ^ ^ ^3 run function 1_splatus:spellbound/other/hits/evokers_wrath_crit
execute as @s[distance=..5] at @s if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_evoker_cooldown matches 50.. at @e[distance=0.001..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] run function 1_splatus:spellbound/other/hits/evokers_wrath_crit
