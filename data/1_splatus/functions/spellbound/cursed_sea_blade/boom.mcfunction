particle block water ~ ~1 ~ 0 0 0 0 5 force @a[distance=..64]
execute if score @s spellbound_curse_cooldown matches 20.. run particle poof ~ ~1 ~ 0 0 0 .15 1 force @a[distance=..128]

execute if score @s spellbound_curse_cooldown matches 1 run playsound minecraft:entity.guardian.attack player @a[distance=..32] ~ ~ ~ 2 1.5
execute if score @s spellbound_curse_cooldown matches 1 run playsound minecraft:entity.guardian.attack player @a[distance=..32] ~ ~ ~ 2 1.25
execute if score @s spellbound_curse_cooldown matches 1 run playsound minecraft:entity.guardian.attack player @a[distance=..32] ~ ~ ~ 2 1.75


execute if score @s spellbound_curse_cooldown matches 30 run function 1_splatus:spellbound/cursed_sea_blade/actual_boom


execute if score @s spellbound_curse_cooldown matches 100.. at @s run function 1_splatus:spellbound/cursed_sea_blade/push_up



execute unless predicate 1_splatus:spellbound/sneaking run scoreboard players set @s spellbound_curse_cooldown 0
execute unless score @s spellbound_rotation matches 90 run scoreboard players set @s spellbound_curse_cooldown 0
execute unless score @s spellbound_curse matches 1.. run scoreboard players set @s spellbound_curse_cooldown 0
