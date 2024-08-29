
#this file is run with a macro argument specifying the item $(chest_insert) and its chance $(chance)/1000

#chance values is out of 1000
#so a chance value of 1000 = 100%
#a value of 10 = 1%

scoreboard players reset randomizer spellbound_storage
scoreboard players reset randomizer_spawn_chance spellbound_storage

execute store result score randomizer_spawn_chance spellbound_storage run random value 1..1000

$execute if score randomizer_spawn_chance spellbound_storage matches 1..$(chance) store result score randomizer spellbound_storage run random value 1..27
$execute unless score randomizer_spawn_chance spellbound_storage matches 1..$(chance) run return fail


# row 1
    $execute if score randomizer spellbound_storage matches 1 run loot replace block ~ ~ ~ container.0 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 2 run loot replace block ~ ~ ~ container.1 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 3 run loot replace block ~ ~ ~ container.2 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 4 run loot replace block ~ ~ ~ container.3 loot spellbound_weapons:item/$(chest_insert)

        $execute if score randomizer spellbound_storage matches 5 run loot replace block ~ ~ ~ container.4 loot spellbound_weapons:item/$(chest_insert)

    $execute if score randomizer spellbound_storage matches 6 run loot replace block ~ ~ ~ container.5 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 7 run loot replace block ~ ~ ~ container.6 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 8 run loot replace block ~ ~ ~ container.7 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 9 run loot replace block ~ ~ ~ container.8 loot spellbound_weapons:item/$(chest_insert)

# row 2
    $execute if score randomizer spellbound_storage matches 10 run loot replace block ~ ~ ~ container.9 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 11 run loot replace block ~ ~ ~ container.10 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 12 run loot replace block ~ ~ ~ container.11 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 13 run loot replace block ~ ~ ~ container.12 loot spellbound_weapons:item/$(chest_insert)

        $execute if score randomizer spellbound_storage matches 14 run loot replace block ~ ~ ~ container.13 loot spellbound_weapons:item/$(chest_insert)

    $execute if score randomizer spellbound_storage matches 15 run loot replace block ~ ~ ~ container.14 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 16 run loot replace block ~ ~ ~ container.15 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 17 run loot replace block ~ ~ ~ container.16 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 18 run loot replace block ~ ~ ~ container.17 loot spellbound_weapons:item/$(chest_insert)

# row 3
    $execute if score randomizer spellbound_storage matches 19 run loot replace block ~ ~ ~ container.18 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 20 run loot replace block ~ ~ ~ container.19 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 21 run loot replace block ~ ~ ~ container.20 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 22 run loot replace block ~ ~ ~ container.21 loot spellbound_weapons:item/$(chest_insert)

        $execute if score randomizer spellbound_storage matches 23 run loot replace block ~ ~ ~ container.22 loot spellbound_weapons:item/$(chest_insert)

    $execute if score randomizer spellbound_storage matches 24 run loot replace block ~ ~ ~ container.23 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 25 run loot replace block ~ ~ ~ container.24 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 26 run loot replace block ~ ~ ~ container.25 loot spellbound_weapons:item/$(chest_insert)
    $execute if score randomizer spellbound_storage matches 27 run loot replace block ~ ~ ~ container.26 loot spellbound_weapons:item/$(chest_insert)


scoreboard players reset temp spellbound_storage