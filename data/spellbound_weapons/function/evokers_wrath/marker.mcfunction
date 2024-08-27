

scoreboard players add @s spellbound_count 1


execute as @s[scores={spellbound_count=2..}] at @s positioned ~ ~-.5 ~ run function spellbound_weapons:evokers_wrath/fangs



execute at @s unless block ~ ~ ~ #spellbound_weapons:allows_water_dashing run function spellbound_weapons:evokers_wrath/loop_to_ground

execute as @s[scores={spellbound_count=2..},tag=!spellbound_evokerattack_crit] at @s run tp @s ^ ^ ^1




execute as @s[scores={spellbound_count=2..},tag=spellbound_evokerattack_crit] at @s run kill @s
execute as @s[scores={spellbound_count=11..},tag=!spellbound_enchanted_sweeping2,tag=!spellbound_enchanted_sweeping3] at @s run kill @s
execute as @s[scores={spellbound_count=14..},tag=spellbound_enchanted_sweeping2] at @s run kill @s
execute as @s[scores={spellbound_count=17..},tag=spellbound_enchanted_sweeping3] at @s run kill @s

#execute as s[scores={spellbound_count=28}] at @s run function spellbound_weapons:evokers_wrath/fangs


