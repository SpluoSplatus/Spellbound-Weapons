tag @s add spellbound_usedhammer
execute if score @s spellbound_hammer_cooldown matches 1..49 as @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] run function 1_splatus:spellbound/other/hits/mega_hammer_mini
execute as @s[predicate=!1_splatus:spellbound/holding/enchant/fortune3] at @s unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] run function 1_splatus:spellbound/other/hits/mega_hammer
#execute as @s[predicate=1_splatus:spellbound/holding/enchant/fortune3] at @s unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s as @e[distance=..2.25,type=!#1_splatus:spellbound/misc,tag=!spellbound_usedhammer,limit=2,sort=nearest] run function 1_splatus:spellbound/other/hits/mega_hammer
execute as @s[predicate=1_splatus:spellbound/holding/enchant/fortune3] at @s unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] run function 1_splatus:spellbound/other/hits/mega_hammer_fortune

execute as @s[predicate=!1_splatus:spellbound/holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] run function 1_splatus:spellbound/other/hits/mega_hammer_crit
execute as @s[predicate=1_splatus:spellbound/holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. at @s as @e[distance=0.1..5,type=!#1_splatus:spellbound/misc,tag=!spellbound_usedhammer,limit=2,sort=nearest] run function 1_splatus:spellbound/other/hits/mega_hammer_crit

execute run scoreboard players set @s spellbound_hammer_cooldown 0
execute run playsound minecraft:entity.blaze.hurt player @a[distance=..20] ~ ~ ~ 1.5 .5

execute run tag @s remove spellbound_usedhammer
scoreboard players set @s spellbound_hammer_cooldown 1