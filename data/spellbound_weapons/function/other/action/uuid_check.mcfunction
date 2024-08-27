
execute as @s store result score @s spellbound_uuid run data get entity @s UUID[0]
execute as @s store result score @s spellbound_uuid2 run data get entity @s UUID[1]
execute as @s store result score @s spellbound_uuid3 run data get entity @s UUID[2]
execute as @s store result score @s spellbound_uuid4 run data get entity @s UUID[3]

tag @s add spellbound_uuid_checked