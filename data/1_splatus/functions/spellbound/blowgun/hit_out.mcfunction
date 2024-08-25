

#flame

execute as @s[tag=spellbound_blowgun_arrow_raycast_flame] run function 1_splatus:spellbound/blowgun/boom

execute as @s[tag=!spellbound_blowgun_arrow_raycast_infinity] run loot spawn ^ ^ ^-.2 loot 1_splatus:spellbound/item/arrow

tag @s add spellbound_blowgun_arrow_raycast_infinity

kill @s