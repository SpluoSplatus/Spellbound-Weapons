

scoreboard players add temp spellbound_storage 1

execute positioned ~ ~1.62 ~ if block ~ ~ ~ chest run function spellbound_weapons:chest_insert/insert_items {chest_insert:"bone_wand",chance:"166"}

execute unless block ~ ~1.62 ~ chest positioned ^ ^ ^.2 run function spellbound_weapons:chest_insert/raycast/ancient_city

execute if score temp spellbound_storage matches 25.. run scoreboard players reset temp spellbound_storage

advancement revoke @s only spellbound_weapons:chest/ancient_city
