

scoreboard players add temp spellbound_storage 1

execute positioned ~ ~1.62 ~ if block ~ ~ ~ chest run function spellbound_weapons:chest_insert/insert_items {chest_insert:"end_excalibur",chance:"250"}
execute positioned ~ ~1.62 ~ if block ~ ~ ~ chest run function spellbound_weapons:chest_insert/insert_items {chest_insert:"endlight",chance:"250"}

execute unless block ~ ~1.62 ~ chest positioned ^ ^ ^.2 run function spellbound_weapons:chest_insert/raycast/end_city_treasure

execute if score temp spellbound_storage matches 25.. run scoreboard players reset temp spellbound_storage

advancement revoke @s only spellbound_weapons:chest/end_city_treasure
