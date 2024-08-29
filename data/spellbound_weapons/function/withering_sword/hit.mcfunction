execute at @s as @e[distance=0.0001..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:withering_sword/hit_mob

execute at @s unless score @s spellbound_fallspeed matches ..-20 positioned ^ ^ ^2.501 as @e[distance=..2.5,sort=nearest,limit=5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:withering_sword/hit_mob_sweep

playsound minecraft:block.deepslate.break player @a[distance=..15] ~ ~ ~ 1.5 .5
playsound minecraft:block.deepslate.break player @a[distance=..15] ~ ~ ~ 1.5 .5
playsound minecraft:block.beacon.power_select player @a[distance=..15] ~ ~ ~ .2 1
playsound minecraft:block.beacon.power_select player @a[distance=..15] ~ ~ ~ .2 .9
playsound minecraft:entity.iron_golem.hurt player @a[distance=..15] ~ ~ ~ 1.5 .58

execute if score @s spellbound_withering_hitcool matches 20.. run scoreboard players add @s spellbound_withering_energy 80
scoreboard players set @s spellbound_withering_hitcool 0