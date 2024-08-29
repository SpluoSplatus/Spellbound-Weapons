playsound minecraft:entity.player.attack.sweep player @a[distance=..32] ~ ~ ~ .5 .5
playsound minecraft:block.beacon.power_select player @a[distance=..32] ~ ~ ~ .8 1.5
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .7 .5
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .7 .5
playsound minecraft:block.vault.break player @a[distance=..32] ~ ~ ~ .5 .5


#add energy
execute store result score temp_mobcount spellbound_count if entity @e[distance=..5,type=!#spellbound_weapons:crucible_non_energy,nbt={HurtTime:10s}]

#1 mob (80 energy)
execute if score @s spellbound_crucible_hitcool matches 24.. unless entity @e[distance=..5,type=#spellbound_weapons:crucible_non_energy,nbt={HurtTime:10s}] run scoreboard players add @s spellbound_crucible_energy 80

#mob sweeping bonus (+10 energy for each additional mob)
execute if score temp_mobcount spellbound_count matches 2.. if score @s spellbound_crucible_hitcool matches 24.. as @e[distance=..5,type=!#spellbound_weapons:crucible_non_energy,nbt={HurtTime:10s}] run scoreboard players add @p spellbound_crucible_energy 10


execute if score @s spellbound_crucible_hitcool matches 24.. at @e[distance=..5,type=!#spellbound_weapons:crucible_non_energy,nbt={HurtTime:10s}] run particle end_rod ~ ~1 ~ 0 0 0 .2 3 force @a[distance=..64]


execute if score @s spellbound_crucible_hitcool matches 24.. unless entity @e[distance=..5,type=!#spellbound_weapons:crucible_non_energy,nbt={HurtTime:10s}] anchored eyes run particle end_rod ^ ^ ^3 0 0 0 .2 3 force @a[distance=..64]


scoreboard players set @s spellbound_crucible_hitcool 0