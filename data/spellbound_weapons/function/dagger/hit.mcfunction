effect give @s speed 1 0 true

playsound block.iron_trapdoor.close player @a[distance=..20] ~ ~ ~ 1 1.5
playsound block.iron_trapdoor.close player @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:block.nether_bricks.hit player @a[distance=..20] ~ ~ ~ .2 2

#fortune 3
execute as @s[predicate=spellbound_weapons:holding/enchant/fortune3] at @s run effect give @s speed 1 1 true

#silk touch
execute as @s[predicate=spellbound_weapons:holding/enchant/silk_touch] at @s run effect give @s jump_boost 1 0 true

#enchanted particles damage
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/efficency1-5] anchored eyes positioned ^ ^ ^2.5 as @n[distance=..2.499,type=!#spellbound_weapons:misc] at @s run particle minecraft:enchanted_hit ~ ~.5 ~ .3 .3 .3 .2 20 normal
