
execute run scoreboard players add @s spellbound_count 1




execute if score @s spellbound_count matches 1.. run particle poof ~ ~.3 ~ 0 0 0 .05 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1.. run particle flame ~ ~.3 ~ 0 0 0 .02 1 force @a[distance=..64]

execute if score @s spellbound_count matches 1 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 2 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 3 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 4 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 5 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 6 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 7 run playsound block.bamboo.place block @a[distance=..16] ~ ~ ~ 1 1

execute if score @s spellbound_count matches 1 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 2 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 3 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 4 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 5 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 6 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 7 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2


execute if score @s spellbound_count matches 7.. run function 1_splatus:spellbound/other/item_merging/merged_blazeblade


