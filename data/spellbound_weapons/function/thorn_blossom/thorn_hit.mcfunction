scoreboard players add @s spellbound_count 1
#you stay buddy.
#execute unless score @s spellbound_count matches 1005.. at @a if score @s spellbound_uuid = @n spellbound_uuid if score @s spellbound_uuid2 = @n spellbound_uuid2 if score @s spellbound_uuid3 = @n spellbound_uuid3 if score @s spellbound_uuid4 = @n spellbound_uuid4 run tp @p @p



execute if score @s spellbound_count matches 1001 run playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .8
execute if score @s spellbound_count matches 1001 run playsound minecraft:block.gravel.break player @a[distance=..32] ~ ~ ~ 1 1.2
execute if score @s spellbound_count matches 1001 run particle block{block_state:"moss_block"} ~ ~ ~ .3 .3 .3 0 50 force @a[distance=..32]

#if it didnt hit anything, burst without teleporting
execute as @s[tag=spellbound_thorn_end] if score @s spellbound_count matches 1003.. as @a if score @s spellbound_uuid = @n spellbound_uuid if score @s spellbound_uuid2 = @n spellbound_uuid2 if score @s spellbound_uuid3 = @n spellbound_uuid3 if score @s spellbound_uuid4 = @n spellbound_uuid4 at @s run tag @s add spellbound_temp2
execute as @s[tag=spellbound_thorn_end] if score @s spellbound_count matches 1003.. run function spellbound_weapons:thorn_blossom/thorns_attack

#come over here buddy.
execute as @s[tag=!spellbound_thorn_end] if score @s spellbound_count matches 1003.. as @a if score @s spellbound_uuid = @n spellbound_uuid if score @s spellbound_uuid2 = @n spellbound_uuid2 if score @s spellbound_uuid3 = @n spellbound_uuid3 if score @s spellbound_uuid4 = @n spellbound_uuid4 at @s run function spellbound_weapons:thorn_blossom/thorn_player_teleport

#now we....
#ATTACK!!!!
execute if entity @p[distance=..1,tag=spellbound_temp2] run function spellbound_weapons:thorn_blossom/thorns_attack
tag @a remove spellbound_temp2

execute if score @s spellbound_count matches 1024.. run kill @s