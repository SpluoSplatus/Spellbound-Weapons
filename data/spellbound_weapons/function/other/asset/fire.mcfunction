scoreboard players add @s spellbound_count 1
#particle end_rod ~ ~1 ~
execute if score @s spellbound_count matches 10.. if predicate spellbound_weapons:chance/4_percent run function spellbound_weapons:other/asset/fire_remove