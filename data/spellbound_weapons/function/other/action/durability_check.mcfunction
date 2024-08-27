
# Returns the percent of the weapon you are using and how much durability it has left

execute if predicate spellbound_weapons:holding/tag/bow run scoreboard players set @s spellbound_durability_max 384
execute if predicate spellbound_weapons:holding/tag/bow run scoreboard players set @s spellbound_durability_max 465
execute if predicate spellbound_weapons:holding/tag/iron_shovel run scoreboard players set @s spellbound_durability_max 250
execute if predicate spellbound_weapons:holding/tag/iron_sword run scoreboard players set @s spellbound_durability_max 250
execute if predicate spellbound_weapons:holding/tag/diamond_sword run scoreboard players set @s spellbound_durability_max 1561
execute if predicate spellbound_weapons:holding/tag/fishing_rod run scoreboard players set @s spellbound_durability_max 64

execute store result score @s spellbound_durability_percent run data get entity @s SelectedItem.tag.Damage 100

scoreboard players operation @s spellbound_durability_percent /= @s spellbound_durability_max
