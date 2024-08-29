summon marker ~ ~ ~ {Tags:["spellbound_thorn","spellbound_marker"]}
data modify entity @n[type=marker,tag=spellbound_thorn] Rotation set from entity @s Rotation

execute if predicate spellbound_weapons:holding/weapon/thorn_blossom_cherry run tag @n[type=marker,tag=spellbound_thorn] add spellbound_thorn_cherry

execute store result score @n[type=marker,tag=spellbound_thorn] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute store result score @n[type=marker,tag=spellbound_thorn] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute store result score @n[type=marker,tag=spellbound_thorn] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute store result score @n[type=marker,tag=spellbound_thorn] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4

execute as @n[type=marker,tag=spellbound_thorn] store result score @s spellbound_rotation2 run data get entity @s Rotation[1]
execute as @n[type=marker,tag=spellbound_thorn] if score @s spellbound_rotation2 matches ..-20 run tag @s add spellbound_thorn_end
execute as @n[type=marker,tag=spellbound_thorn] if score @s spellbound_rotation2 matches 45.. run tag @s add spellbound_thorn_end



execute if score @s spellbound_rotation matches 80..90 as @s[tag=!spellbound_tip.thorn_blossom_2,tag=spellbound_tip.thorn_blossom_1] run function spellbound_weapons:other/tips/checkmark
execute if score @s spellbound_rotation matches 80..90 run tag @s[tag=!spellbound_tip.thorn_blossom_2,tag=spellbound_tip.thorn_blossom_1] add spellbound_tip.thorn_blossom_2

playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.5
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.7
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 2

scoreboard players set @s spellbound_thorn_cooldown 0