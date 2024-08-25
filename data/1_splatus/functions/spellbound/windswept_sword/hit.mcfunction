

execute as @s[distance=..0.8,type=player] at @s run function 1_splatus:spellbound/windswept_sword/jump
execute as @s[distance=..0.8,type=!player] at @s facing entity @p[scores={spellbound_sand=1..}] eyes run function 1_splatus:spellbound/windswept_sword/move
execute as @s[distance=..0.8,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/damage/entity_damage1
