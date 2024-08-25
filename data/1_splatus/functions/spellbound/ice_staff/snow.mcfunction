scoreboard players add @s spellbound_count 1
particle snowflake ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
particle dust_color_transition 1 1 1 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1 run data modify entity @s Rotation set from entity @p Rotation
execute at @s if score @s spellbound_count matches 1..10 run tp @s ^ ^ ^.3
execute at @s if score @s spellbound_count matches 11..20 run tp @s ^ ^ ^.15
execute at @s if score @s spellbound_count matches 21.. run tp @s ^ ^ ^.05


execute at @s if block ~ ~-.25 ~ #1_splatus:spellbound/permeable if score @s spellbound_count matches 6..10 run tp @s ~ ~-.05 ~
execute at @s if block ~ ~-.25 ~ #1_splatus:spellbound/permeable if score @s spellbound_count matches 11..15 run tp @s ~ ~-.1 ~
execute at @s if block ~ ~-.25 ~ #1_splatus:spellbound/permeable if score @s spellbound_count matches 16..20 run tp @s ~ ~-.2 ~
execute at @s if block ~ ~-.25 ~ #1_splatus:spellbound/permeable if score @s spellbound_count matches 21.. run tp @s ~ ~-.3 ~



execute if score @s spellbound_count matches 40.. unless block ~ ~-.25 ~ #1_splatus:spellbound/permeable run kill @s

execute at @s unless block ~ ~ ~ #1_splatus:spellbound/permeable run tp @s ~ ~.25 ~