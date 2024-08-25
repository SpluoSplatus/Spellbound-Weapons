



tag @s[nbt=!{inGround:1b}] add spellbound_chainfiring_spectral
tag @s[nbt=!{inGround:1b}] add spellbound_arrow_checked2
execute if entity @s[nbt=!{inGround:1b}] run scoreboard players set @p[scores={spellbound_chainfiring_cooldown=5}] spellbound_chainfiring_cooldown 101


execute if entity @s[nbt=!{inGround:1b}] run scoreboard players set @s spellbound_uuid 0
execute if entity @s[nbt=!{inGround:1b}] run scoreboard players set @s spellbound_uuid2 0