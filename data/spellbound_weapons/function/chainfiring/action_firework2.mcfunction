execute as @p[scores={spellbound_chainfiring_cooldown=1..5}] as @s[gamemode=!creative,gamemode=!spectator] run item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand spellbound_weapons:remove_two_offhand


tag @s[nbt=!{inGround:1b}] add spellbound_chainfiring_firework
tag @s[nbt=!{inGround:1b}] add spellbound_arrow_checked2
execute if entity @s[nbt=!{inGround:1b}] run scoreboard players set @p[scores={spellbound_chainfiring_cooldown=1..5}] spellbound_chainfiring_cooldown 201


execute if entity @s[nbt=!{inGround:1b}] run scoreboard players set @s spellbound_uuid 0
execute if entity @s[nbt=!{inGround:1b}] run scoreboard players set @s spellbound_uuid2 0
