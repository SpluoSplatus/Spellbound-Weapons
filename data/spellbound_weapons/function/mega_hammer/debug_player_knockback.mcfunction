
$execute as @s[type=player,tag=!spellbound_usedhammer] run scoreboard players set @s spellbound_hammer_move $(player_move)
execute as @s[type=player,tag=!spellbound_usedhammer] run function spellbound_weapons:mega_hammer/player_move_vector
execute as @s[type=player,tag=!spellbound_usedhammer] run function spellbound_weapons:mega_hammer/player_move