execute store result score randomizer spellbound_storage run random value 1..2

execute if score randomizer spellbound_storage matches 1 run function spellbound_weapons:chest_insert/insert_items {chest_insert:"dagger_diamond_enchanted",chance:"1000"}
execute if score randomizer spellbound_storage matches 2 run function spellbound_weapons:chest_insert/insert_items {chest_insert:"mega_hammer",chance:"1000"}