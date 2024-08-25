scoreboard players add @s spellbound_count 1




execute if score @s spellbound_count matches 1.. run particle poof ~ ~.3 ~ 0 0 0 .05 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1.. run particle block sand ~ ~.2 ~ 0 0 0 0 1 force @a[distance=..32] 

execute if score @s spellbound_count matches 1.. run playsound block.sand.place block @a[distance=..24] ~ ~ ~ 1 1

execute if score @s spellbound_count matches 1.. run playsound minecraft:ui.stonecutter.take_result block @a[distance=..24] ~ ~ ~ 1 2



execute if score @s spellbound_count matches 7.. run particle cloud ~ ~.3 ~ 0 0 0 .1 2 force @a[distance=..64]

execute if score @s spellbound_count matches 7 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 .5
execute if score @s spellbound_count matches 8 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 .7
execute if score @s spellbound_count matches 9 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 .9
execute if score @s spellbound_count matches 10 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 1.1
execute if score @s spellbound_count matches 11 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 1.3
execute if score @s spellbound_count matches 12 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 1.5
execute if score @s spellbound_count matches 13 run playsound block.sand.break block @a[distance=..24] ~ ~ ~ 1 1.7


execute if score @s spellbound_count matches 11 run playsound block.wool.break block @a[distance=..24] ~ ~ ~ 1 .55
execute if score @s spellbound_count matches 12 run playsound block.wool.break block @a[distance=..24] ~ ~ ~ 1 .55
execute if score @s spellbound_count matches 13 run playsound block.wool.break block @a[distance=..24] ~ ~ ~ 1 .55


execute if score @s spellbound_count matches 10 run playsound entity.allay.ambient_without_item block @a[distance=..24] ~ ~ ~ 1 .65
execute if score @s spellbound_count matches 10 run playsound entity.allay.ambient_without_item block @a[distance=..24] ~ ~ ~ 1 .65
execute if score @s spellbound_count matches 10 run playsound entity.allay.ambient_without_item block @a[distance=..24] ~ ~ ~ 1 .65

execute if score @s spellbound_count matches 7.. run particle end_rod ~ ~.15 ~ 0 0 0 .2 3 force @a[distance=..128]


execute if score @s spellbound_count matches 1..4 run particle enchant ~ ~1.8 ~ 0 0 0 12 110 normal


execute if score @s spellbound_count matches 12.. run particle flash ~ ~ ~ 0 0 0 0 5 force @a[distance=..256]

execute if score @s spellbound_count matches 14.. if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:sand",Count:64b}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:emerald_block"}}] if entity @e[distance=..1,type=item,tag=spellbound_itemaligned,nbt={Item:{id:"minecraft:feather",Count:64b}}] run function 1_splatus:spellbound/other/item_merging/merged_windsweeper


