execute at @s run particle minecraft:poof ~ ~.5 ~ .3 .3 .3 .2 30 force @a[distance=..64]
execute at @s run playsound minecraft:block.anvil.land player @a[distance=..30] ~ ~ ~ .75 .75
execute at @s run playsound minecraft:block.netherite_block.break player @a[distance=..30] ~ ~ ~ 2 .5

execute at @s[type=!player] run function spellbound_weapons:mega_hammer/move
damage @s 2 spellbound_weapons:melee_force by @p

execute at @s[type=player] run scoreboard players set @s spellbound_hammer_move -4
execute at @s[type=player] run function spellbound_weapons:mega_hammer/player_move
execute at @s[type=player] at @p[scores={spellbound_hammer=1..}] run function spellbound_weapons:mega_hammer/player_move_vector