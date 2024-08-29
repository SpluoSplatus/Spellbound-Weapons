tag @s add spellbound_temp
#execute unless score @s spellbound_count matches 1000.. at @a if score @p spellbound_uuid = @s spellbound_uuid if score @p spellbound_uuid2 = @s spellbound_uuid2 if score @p spellbound_uuid3 = @s spellbound_uuid3 if score @p spellbound_uuid4 = @s spellbound_uuid4 run tp @p @p



execute at @s unless score @s spellbound_count matches 1000.. run function spellbound_weapons:thorn_blossom/thorn_raycast
execute at @s if score @s spellbound_count matches 1000.. run function spellbound_weapons:thorn_blossom/thorn_hit

tag @s remove spellbound_temp