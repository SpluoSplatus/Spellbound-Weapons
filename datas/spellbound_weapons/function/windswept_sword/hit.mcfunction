

execute as @s[distance=..0.8,type=player] at @s run function spellbound_weapons:windswept_sword/jump
execute as @s[distance=..0.8,type=!player] at @s facing entity @p[scores={spellbound_sand=1..}] eyes run function spellbound_weapons:windswept_sword/move
execute as @s[distance=..0.8,type=!#spellbound_weapons:misc] at @s run function spellbound_weapons:other/damage/entity_damage1
