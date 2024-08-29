particle cloud ~ ~1.5 ~ 2 0 1.5 .05 30 force @a[distance=..64]
fill ~3 ~1 ~3 ~-3 ~1 ~-3 minecraft:frosted_ice[age=1] replace water

fill ~4 ~1 ~1 ~4 ~1 ~-1 minecraft:frosted_ice[age=1] replace water
fill ~-4 ~1 ~1 ~4 ~1 ~-1 minecraft:frosted_ice[age=1] replace water
fill ~1 ~1 ~4 ~-1 ~1 ~4 minecraft:frosted_ice[age=1] replace water
fill ~1 ~1 ~-4 ~-1 ~1 ~-4 minecraft:frosted_ice[age=1] replace water


#snowflake if has luck of the sea III

execute if score @s spellbound_enchantlevel matches 2.. run fill ~5 ~1 ~1 ~5 ~1 ~-1 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~-5 ~1 ~1 ~5 ~1 ~-1 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~1 ~1 ~5 ~-1 ~1 ~5 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~1 ~1 ~-5 ~-1 ~1 ~-5 minecraft:frosted_ice[age=1] replace water


#corners
execute if score @s spellbound_enchantlevel matches 2.. run fill ~4 ~1 ~4 ~4 ~1 ~4 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~-4 ~1 ~4 ~-4 ~1 ~4 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~-4 ~1 ~-4 ~-4 ~1 ~-4 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~4 ~1 ~-4 ~4 ~1 ~-4 minecraft:frosted_ice[age=1] replace water


#tips
execute if score @s spellbound_enchantlevel matches 2.. run fill ~6 ~1 ~ ~6 ~1 ~ minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~-6 ~1 ~ ~-6 ~1 ~ minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~ ~1 ~6 ~ ~1 ~6 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 2.. run fill ~ ~1 ~-6 ~ ~1 ~-6 minecraft:frosted_ice[age=1] replace water

#tips level 3
execute if score @s spellbound_enchantlevel matches 3.. run fill ~7 ~1 ~ ~7 ~1 ~ minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 3.. run fill ~-7 ~1 ~ ~-7 ~1 ~ minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 3.. run fill ~ ~1 ~7 ~ ~1 ~7 minecraft:frosted_ice[age=1] replace water
execute if score @s spellbound_enchantlevel matches 3.. run fill ~ ~1 ~-7 ~ ~1 ~-7 minecraft:frosted_ice[age=1] replace water


function spellbound_weapons:ice_staff/break_ice
