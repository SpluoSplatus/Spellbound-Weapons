
######### ATTACK SPEEDS FOR CERTAIN WEAPONS ############

execute as @a[scores={spellbound_blowgun=0}] run advancement revoke @s only spellbound_weapons:blowgun


execute as @a unless entity @s[scores={spellbound_crucible=1..}] at @s unless score @s spelbloud_crucible_lastused matches 101.. run scoreboard players add @s spelbloud_crucible_lastused 1
execute as @a unless entity @s[scores={spellbound_withering=1..}] at @s unless score @s spellbound_wither_lastused matches 101.. run scoreboard players add @s spellbound_wither_lastused 1


### SET COOLDOWNS TO 0 (if not holding)

execute as @a[scores={spellbound_sand=0}] at @s run scoreboard players set @s spellbound_sand_cooldown -1
execute as @a[scores={spellbound_e_staff=0}] at @s run scoreboard players set @s spellbound_e_staff_cooldown -1
execute as @a[scores={spellbound_i_staff=0}] at @s run scoreboard players set @s spellbound_i_staff_cooldown -1
execute as @a[scores={spellbound_f_staff=0}] at @s run scoreboard players set @s spellbound_f_staff_cooldown -1
execute as @a[scores={spellbound_end=0}] at @s run scoreboard players set @s spellbound_cooldown -1
execute as @a[scores={spellbound_blazing=0}] at @s run scoreboard players set @s spellbound_blazing_cooldown -1
execute as @a[scores={spellbound_hammer=0}] at @s run scoreboard players set @s spellbound_hammer_cooldown -1
execute as @a[scores={spellbound_dagger=0}] at @s run scoreboard players set @s spellbound_dagger_cooldown -1
execute as @a[scores={spellbound_evoker=0}] at @s run scoreboard players set @s spellbound_evoker_cooldown -1
execute as @a[scores={spellbound_chainfiring=0}] at @s run scoreboard players set @s spellbound_chainfiring_cooldown -1
execute as @a[scores={spellbound_endlight=0}] at @s run scoreboard players set @s spellbound_endlight_cooldown -1
execute as @a[scores={spellbound_magmus_charger=0}] at @s run scoreboard players set @s spellbound_magmus_charger_cooldown -1
execute as @a[advancements={spellbound_weapons:magmus_charger=false}] at @s run scoreboard players set @s spellbound_magmus_charger_cooldown -1
execute as @a[scores={spellbound_crucible=0,spelbloud_crucible_lastused=100..}] at @s run scoreboard players set @s spellbound_crucible_energy 0
execute as @a[scores={spellbound_sand=0}] at @s run scoreboard players set @s spellbound_windswept_cooldown -1
execute as @a[scores={spellbound_thorn=0}] at @s run scoreboard players set @s spellbound_thorn_cooldown -1

execute as @a[scores={spellbound_withering=0}] at @s run scoreboard players set @s spellbound_withering_hitcool 0
execute as @a[scores={spellbound_crucible=0}] at @s run scoreboard players set @s spellbound_crucible_hitcool 0

execute as @a[scores={spellbound_withering=0,spellbound_wither_lastused=100..}] at @s run scoreboard players set @s spellbound_withering_energy 0

execute as @a[scores={spellbound_withering=0}] at @s run scoreboard players set @s spellbound_withering_cooldown -1


execute as @a[scores={spellbound_golden_ocean_edge=0,spellbound_golden_ocean_edge_cooldown=0..}] at @s run tag @s remove spellbound_golden_ocean_edge_player
execute as @a[scores={spellbound_golden_ocean_edge=0,spellbound_golden_ocean_edge_cooldown=0..}] at @s run scoreboard players set @s spellbound_golden_ocean_edge_cooldown -1
execute as @a[scores={spellbound_moonlight_edge=0,spellbound_moonlight_edge_cooldown=0..}] at @s run scoreboard players set @s spellbound_moonlight_edge_cooldown -1
execute as @a[scores={spellbound_echo_wand=0,spellbound_echo_wand_cooldown=0..}] at @s run scoreboard players set @s spellbound_echo_wand_cooldown -1
