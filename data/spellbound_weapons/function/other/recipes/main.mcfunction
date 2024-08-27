

execute as @s[scores={spellbound_recipes=..-1}] run function spellbound_weapons:other/recipes/page/1

execute as @s[scores={spellbound_recipes=1}] run function spellbound_weapons:other/recipes/page/1
execute as @s[scores={spellbound_recipes=2}] run function spellbound_weapons:other/recipes/page/2
execute as @s[scores={spellbound_recipes=3}] run function spellbound_weapons:other/recipes/page/3
execute as @s[scores={spellbound_recipes=4..}] run function spellbound_weapons:other/recipes/page/4
scoreboard players set @s spellbound_recipes 0