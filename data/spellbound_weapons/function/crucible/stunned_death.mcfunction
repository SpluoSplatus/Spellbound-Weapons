#death
#execute as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid4 run tellraw @a [{"selector": "@p"},{"translate":" was stunned by "},{"translate":"Crucible"},{"translate":" energy from "},{"selector": "@s"}]
#execute as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid4 run function #spellbound_weapons:on_custom_kill
