playsound minecraft:entity.vex.ambient player @a[distance=..20] ~ ~ ~ 1 2

execute at @s if score @s spellbound_evoker_cooldown matches 50.. run tag @s add spellbound_tip.evokers_wrath_1

execute positioned ~ ~.25 ~ unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_evoker_cooldown matches 50.. run function spellbound_weapons:evokers_wrath/release_fangs
execute as @s[distance=..5] at @s if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_evoker_cooldown matches 50.. unless entity @e[distance=0.001..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] positioned ^ ^ ^3 run function spellbound_weapons:evokers_wrath/hit_crit
execute as @s[distance=..5] at @s if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_evoker_cooldown matches 50.. at @e[distance=0.001..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:evokers_wrath/hit_crit
