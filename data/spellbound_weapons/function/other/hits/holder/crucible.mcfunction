playsound minecraft:entity.player.attack.sweep player @a[distance=..32] ~ ~ ~ .5 .5
playsound minecraft:block.beacon.power_select player @a[distance=..32] ~ ~ ~ 1.25 1.5
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .5 .5
playsound minecraft:block.nether_bricks.hit player @a[distance=..32] ~ ~ ~ .5 .5
playsound block.iron_trapdoor.close player @a[distance=..32] ~ ~ ~ .5 .8

execute if score @s spellbound_crucible_hitcool matches 24.. if entity @e[distance=..5,type=!#spellbound_weapons:crucible_non_energy,nbt={HurtTime:10s}] run scoreboard players add @s spellbound_crucible_energy 80
scoreboard players set @s spellbound_crucible_hitcool 0