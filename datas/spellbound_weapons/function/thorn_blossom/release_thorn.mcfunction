summon marker ~ ~.9 ~ {Tags:["spellbound_thorn","spellbound_marker"]}
data modify entity @e[type=marker,tag=spellbound_thorn,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute store result score @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4

execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge1] run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_enchantlevel 1
execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge2] run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_enchantlevel 2
execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge3] run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_thorn] spellbound_enchantlevel 3 




execute if score @s spellbound_rotation matches 80..90 as @s[tag=!spellbound_tip.thorn_blossom_2,tag=spellbound_tip.thorn_blossom_1] run function spellbound_weapons:other/tips/checkmark
execute if score @s spellbound_rotation matches 80..90 run tag @s[tag=!spellbound_tip.thorn_blossom_2,tag=spellbound_tip.thorn_blossom_1] add spellbound_tip.thorn_blossom_2

playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.5
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.7
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 2

scoreboard players set @s spellbound_thorn_cooldown 0