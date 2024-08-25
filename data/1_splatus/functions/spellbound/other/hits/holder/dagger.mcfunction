effect give @s speed 1 0 true
playsound block.iron_trapdoor.close player @a[distance=..20] ~ ~ ~ 1 1.5
playsound block.iron_trapdoor.close player @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:block.nether_bricks.hit player @a[distance=..20] ~ ~ ~ .2 2
execute as @s[predicate=1_splatus:spellbound/holding/enchant/fortune3] at @s run effect give @s speed 1 1 true
execute as @s[predicate=1_splatus:spellbound/holding/enchant/silk_touch] at @s run effect give @s jump_boost 1 0 true

execute unless entity @s[predicate=!1_splatus:spellbound/holding/enchant/efficency5,predicate=!1_splatus:spellbound/holding/enchant/efficency4,predicate=!1_splatus:spellbound/holding/enchant/efficency3] anchored eyes positioned ^ ^ ^2.5 as @e[sort=nearest,limit=1,distance=..2.499,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:enchanted_hit ~ ~.5 ~ .3 .3 .3 .2 20 normal
