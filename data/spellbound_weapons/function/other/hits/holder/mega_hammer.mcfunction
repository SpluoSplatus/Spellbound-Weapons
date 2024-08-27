tag @s add spellbound_usedhammer
execute if score @s spellbound_hammer_cooldown matches 1..49 as @e[distance=0.1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc] run function spellbound_weapons:other/hits/mega_hammer_mini
execute as @s[predicate=!spellbound_weapons:holding/enchant/fortune3] at @s unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:other/hits/mega_hammer
#execute as @s[predicate=spellbound_weapons:holding/enchant/fortune3] at @s unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc] at @s as @e[distance=..2.25,type=!#spellbound_weapons:misc,tag=!spellbound_usedhammer,limit=2,sort=nearest] run function spellbound_weapons:other/hits/mega_hammer
execute as @s[predicate=spellbound_weapons:holding/enchant/fortune3] at @s unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:other/hits/mega_hammer_fortune

execute as @s[predicate=!spellbound_weapons:holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:other/hits/mega_hammer_crit
execute as @s[predicate=spellbound_weapons:holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. at @s as @e[distance=0.1..5,type=!#spellbound_weapons:misc,tag=!spellbound_usedhammer,limit=2,sort=nearest] run function spellbound_weapons:other/hits/mega_hammer_crit

execute run scoreboard players set @s spellbound_hammer_cooldown 0
execute run playsound minecraft:entity.blaze.hurt player @a[distance=..20] ~ ~ ~ 1.5 .5

execute run tag @s remove spellbound_usedhammer
scoreboard players set @s spellbound_hammer_cooldown 1