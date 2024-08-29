scoreboard players add @s spellbound_count 1

#execute if score @s spellbound_count matches 4 unless block ~ ~-.4 ~ vault[vault_state=unlocking] run kill @s

execute if entity @s[tag=!spellbound_marker_vault_ominous] if score @s spellbound_count matches 34 if predicate spellbound_weapons:chance/10_percent run loot spawn ~ ~ ~ loot spellbound_weapons:item/mega_hammer

execute if entity @s[tag=spellbound_marker_vault_ominous] if score @s spellbound_count matches 34 if predicate spellbound_weapons:chance/25_percent run loot spawn ~ ~ ~ loot spellbound_weapons:item/mega_hammer_enchanted

execute if score @s spellbound_count matches 34 run kill @s