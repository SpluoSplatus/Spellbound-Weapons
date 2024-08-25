scoreboard players add @s spellbound_count 1
#particle end_rod ~ ~1 ~
execute if score @s spellbound_count matches 10.. if predicate 1_splatus:spellbound/chance/4_percent run function 1_splatus:spellbound/other/asset/fire_remove