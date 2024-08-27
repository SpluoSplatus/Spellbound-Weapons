scoreboard players add @s spellbound_count 1
#you stay buddy.
#execute unless score @s spellbound_count matches 1005.. at @a if score @p spellbound_uuid = @s spellbound_uuid if score @p spellbound_uuid2 = @s spellbound_uuid2 if score @p spellbound_uuid3 = @s spellbound_uuid3 if score @p spellbound_uuid4 = @s spellbound_uuid4 run tp @p @p




execute if score @s spellbound_count matches 1001 run playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8
execute if score @s spellbound_count matches 1001 run playsound minecraft:block.gravel.break player @a[distance=..32] ~ ~ ~ 1 1.2
execute if score @s spellbound_count matches 1001 run particle block moss_block ~ ~ ~ .3 .3 .3 0 50 force @a[distance=..32]

#come over here buddy.
execute if score @s spellbound_count matches 1004.. at @a if score @p spellbound_uuid = @s spellbound_uuid if score @p spellbound_uuid2 = @s spellbound_uuid2 if score @p spellbound_uuid3 = @s spellbound_uuid3 if score @p spellbound_uuid4 = @s spellbound_uuid4 as @p at @s run function spellbound_weapons:thorn_blossom/thorn_player_teleport

#now we....
#ATTACK!!!!
execute if entity @p[distance=..1,tag=spellbound_temp2] run function spellbound_weapons:thorn_blossom/thorns_attack
tag @a remove spellbound_temp2

execute if score @s spellbound_count matches 1024.. run kill @s