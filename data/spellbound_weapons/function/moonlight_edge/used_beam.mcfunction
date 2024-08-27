
scoreboard players add @s spellbound_moonlight_edge_usedbeam 1
execute if score @s spellbound_moonlight_edge_usedbeam matches 3.. run tag @s remove spellbound_player_usingbeam
execute if score @s spellbound_moonlight_edge_usedbeam matches 3.. run scoreboard players reset @s spellbound_moonlight_edge_usedbeam
