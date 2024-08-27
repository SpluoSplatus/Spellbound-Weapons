

#flame

execute as @s[tag=spellbound_blowgun_arrow_raycast_flame] run function spellbound_weapons:blowgun/boom

execute as @s[tag=!spellbound_blowgun_arrow_raycast_infinity] run loot spawn ^ ^ ^-.2 loot spellbound_weapons:item/arrow

tag @s add spellbound_blowgun_arrow_raycast_infinity

kill @s