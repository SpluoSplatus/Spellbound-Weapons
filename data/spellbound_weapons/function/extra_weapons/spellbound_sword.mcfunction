item modify entity @s weapon.mainhand spellbound_weapons:spellbound_sword
execute if score @s spellbound_moonlight_edge_cooldown matches 0..1 run scoreboard players set @s spellbound_moonlight_edge_cooldown 50
execute if score @s spellbound_evoker_cooldown matches ..40 run scoreboard players set @s spellbound_evoker_cooldown 41