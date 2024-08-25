summon marker ~ ~-.1 ~ {Tags:["spellbound_hammervector","spellbound_marker"]}
data modify entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] data.Hit set from entity @s UUID
execute store result score @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] spellbound_uuid run data get entity @s UUID[0]
execute store result score @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] spellbound_uuid2 run data get entity @s UUID[1]
execute store result score @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] spellbound_uuid3 run data get entity @s UUID[2]
execute store result score @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] spellbound_uuid4 run data get entity @s UUID[3]

execute at @s[type=player] run scoreboard players set @s spellbound_hammer_move 5