

scoreboard players add temp spellbound_storage 1

execute positioned ~ ~1.62 ~ if block ~ ~ ~ chest run function spellbound_weapons:chest_insert/raycast/simple_dungeon_insert

execute unless block ~ ~1.62 ~ chest positioned ^ ^ ^.2 run function spellbound_weapons:chest_insert/raycast/simple_dungeon

execute if score temp spellbound_storage matches 25.. run scoreboard players reset temp spellbound_storage

advancement revoke @s only spellbound_weapons:chest/simple_dungeon
