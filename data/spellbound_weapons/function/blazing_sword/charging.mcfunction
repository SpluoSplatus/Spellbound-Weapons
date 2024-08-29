
execute if score @s spellbound_blazing_cooldown matches 82.. run particle flame ~ ~1 ~ .1 .1 .1 .15 3 force @a[distance=..64]
execute if score @s spellbound_blazing_cooldown matches 83 run playsound minecraft:block.bell.resonate player @a[distance=..32] ~ ~ ~ 1 1.7


execute if score @s spellbound_blazing_cooldown matches 90 run playsound minecraft:block.respawn_anchor.charge player @a[distance=..32] ~ ~ ~ 1 .82
execute if score @s spellbound_blazing_cooldown matches 92 run playsound minecraft:block.respawn_anchor.charge player @a[distance=..32] ~ ~ ~ 1 1.04
execute if score @s spellbound_blazing_cooldown matches 94 run playsound minecraft:block.respawn_anchor.charge player @a[distance=..32] ~ ~ ~ 1 1.26
execute if score @s spellbound_blazing_cooldown matches 96 run playsound minecraft:block.respawn_anchor.charge player @a[distance=..32] ~ ~ ~ 1 1.48
execute if score @s spellbound_blazing_cooldown matches 98 run playsound minecraft:block.respawn_anchor.charge player @a[distance=..32] ~ ~ ~ 1 1.7
execute if score @s spellbound_blazing_cooldown matches 100 run playsound minecraft:block.respawn_anchor.charge player @a[distance=..32] ~ ~ ~ 1 2

execute if score 2tick spellbound_clock matches 1 run playsound minecraft:block.netherrack.place player @a[distance=..32] ~ ~ ~ 1 2

#no you cant
#execute as @s[advancements={spellbound_weapons:player_hurt=true}] run scoreboard players set @s spellbound_blazing_cooldown 81
execute unless predicate spellbound_weapons:sneaking run scoreboard players set @s spellbound_blazing_cooldown 81

execute if score @s spellbound_blazing_cooldown matches 100.. at @s run function spellbound_weapons:blazing_sword/explosion