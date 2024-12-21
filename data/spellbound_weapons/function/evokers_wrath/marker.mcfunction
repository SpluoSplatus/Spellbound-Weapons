

scoreboard players add @s spellbound_count 1


execute at @s unless block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:evokers_wrath/loop_to_ground

execute at @s as @s[scores={spellbound_count=1..}] at @s positioned ~ ~-.5 ~ run function spellbound_weapons:evokers_wrath/summon_fangs


execute at @s as @s[scores={spellbound_count=1..},tag=!spellbound_evokerattack_crit] at @s run tp @s ^ ^ ^1




execute as @s[scores={spellbound_count=2..},tag=spellbound_evokerattack_crit] at @s run kill @s

execute as @s[scores={spellbound_count=12..,spellbound_enchantlevel=0}] at @s run kill @s
execute as @s[scores={spellbound_count=13..,spellbound_enchantlevel=1}] at @s run kill @s
execute as @s[scores={spellbound_count=14..,spellbound_enchantlevel=2}] at @s run kill @s
execute as @s[scores={spellbound_count=15..,spellbound_enchantlevel=3}] at @s run kill @s

#execute as s[scores={spellbound_count=28}] at @s run function spellbound_weapons:evokers_wrath/fangs


