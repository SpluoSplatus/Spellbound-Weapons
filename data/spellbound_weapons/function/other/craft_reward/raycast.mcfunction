scoreboard players add temp spellbound_count 1


execute if block ~ ~ ~ crafting_table align zyx positioned ~.5 ~1 ~.5 run function spellbound_weapons:other/craft_reward/animation_particle

execute unless score temp spellbound_count matches 25.. positioned ^ ^ ^.2 run function spellbound_weapons:other/craft_reward/raycast