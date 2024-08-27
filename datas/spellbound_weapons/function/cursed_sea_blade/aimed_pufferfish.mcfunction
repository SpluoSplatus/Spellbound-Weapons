tag @s remove spellbound_cursedfish
scoreboard players add @s spellbound_count 1
execute at @s if score @s spellbound_count matches 1 run playsound entity.snowball.throw player @a[distance=..20] ~ ~ ~ 1 .5
execute at @s if score @s spellbound_count matches 1 run data modify entity @s NoAI set value 1
execute at @s if score @s spellbound_count matches 1 run data modify entity @s Rotation set from entity @p[scores={spellbound_curse=1..}] Rotation
execute at @s if score @s spellbound_count matches 1.. if block ~ ~-.1 ~ #spellbound_weapons:permeable if block ^ ^ ^1 #spellbound_weapons:permeable run tp @s ^ ^ ^1



execute at @s if score @s spellbound_count matches 6..10 if block ~ ~-.1 ~ #spellbound_weapons:permeable run tp @s ~ ~-.1 ~
execute at @s if score @s spellbound_count matches 11..15 if block ~ ~-.1 ~ #spellbound_weapons:permeable run tp @s ~ ~-.2 ~
execute at @s if score @s spellbound_count matches 16..20 if block ~ ~-.1 ~ #spellbound_weapons:permeable run tp @s ~ ~-.3 ~
execute at @s if score @s spellbound_count matches 21.. if block ~ ~-.1 ~ #spellbound_weapons:permeable run tp @s ~ ~-.3 ~


execute at @s if score @s spellbound_count matches 20.. if predicate spellbound_weapons:chance/2_percent run kill @s
execute at @s if entity @e[sort=nearest,limit=1,distance=..3,type=!#spellbound_weapons:misc,type=!#spellbound_weapons:fish,predicate=!spellbound_weapons:holding/weapon/cursed_sea_blade] if predicate spellbound_weapons:chance/5_percent run kill @s