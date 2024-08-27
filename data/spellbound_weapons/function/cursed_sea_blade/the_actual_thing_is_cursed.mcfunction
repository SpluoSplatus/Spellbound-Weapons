
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..10,type=!#spellbound_weapons:misc_pufferfish,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #spellbound_weapons:permeable run tp @s ^ ^ ^.33
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..8,type=!#spellbound_weapons:misc_pufferfish,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #spellbound_weapons:permeable run tp @s ^ ^ ^.33
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..6,type=!#spellbound_weapons:misc_pufferfish,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #spellbound_weapons:permeable run tp @s ^ ^ ^.33
execute at @s[tag=!spellbound_cursedfish_boom] facing entity @e[sort=nearest,limit=1,distance=..4,type=!#spellbound_weapons:misc_pufferfish,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] eyes if block ^ ^ ^.1 #spellbound_weapons:permeable run tp @s ^ ^ ^.33

execute at @s[tag=!spellbound_cursedfish_boom] run particle falling_water ~ ~ ~ 0 0 0 0 1 force @a[distance=..16]

execute at @s[tag=!spellbound_cursedfish_boom] unless entity @e[sort=nearest,limit=1,distance=..10,type=!#spellbound_weapons:misc_pufferfish,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] at @s at @p[scores={spellbound_curse=1..}] run tp @s ~ ~3 ~

execute at @s[tag=!spellbound_cursedfish_boom] if entity @e[sort=nearest,limit=1,distance=..3,type=!#spellbound_weapons:misc_pufferfish,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] run scoreboard players add @s spellbound_curse_count 1

execute if score @s spellbound_curse_count matches 25.. run kill @s


execute as @s[tag=spellbound_cursedfish_boom] if predicate spellbound_weapons:chance/5_percent run kill @s