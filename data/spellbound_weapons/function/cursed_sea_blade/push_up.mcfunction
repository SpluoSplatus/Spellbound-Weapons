scoreboard players add @s spellbound_curse_cooldown 1



execute if score @s spellbound_curse_cooldown matches 101 run effect give @s levitation 1 50 true
execute if score @s spellbound_curse_cooldown matches 105 run effect clear @s levitation


execute unless block ~ ~1.62 ~ #spellbound_weapons:permeable run effect clear @s levitation


execute if score @s spellbound_curse_cooldown matches 105.. run scoreboard players set @s spellbound_curse_cooldown -40