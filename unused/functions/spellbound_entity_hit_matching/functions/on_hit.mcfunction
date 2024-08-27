

#### END SWORD ####


execute at @s as @p[scores={spellbound_end=1..},distance=..5] if score @s spellbound_end matches 1 if score @s spellbound_cooldown matches 60..199 as @e[sort=nearest,limit=1] run function spellbound_weapons:other/hits/end_excalibur


#### blazing ####

execute at @s as @p[scores={spellbound_blazing=1..},distance=..5] at @s if score @s spellbound_blazing matches 1 run function spellbound_weapons:other/hits/blazing

#### SEA ####
execute at @s as @p[distance=..5,scores={spellbound_curse=1..}] if score @s spellbound_curse matches 1 as @e[sort=nearest,limit=1] run function spellbound_weapons:other/hits/cursed_sea_blade
#### Golden Sea Blade ####
execute at @s as @p[distance=..5,scores={spellbound_golden_ocean_edge=1..}] if score @s spellbound_golden_ocean_edge matches 1 if entity @s as @e[sort=nearest,limit=1] run playsound minecraft:entity.puffer_fish.blow_out player @a[distance=..20] ~ ~ ~ .75 .5
execute at @s as @p[distance=..5,scores={spellbound_golden_ocean_edge=1..}] if score @s spellbound_golden_ocean_edge matches 1 if entity @s as @e[sort=nearest,limit=1] run playsound minecraft:entity.generic.swim player @a[distance=..20] ~ ~ ~ .75 1.5
execute at @s as @p[distance=..5,scores={spellbound_golden_ocean_edge=1..}] if score @s spellbound_golden_ocean_edge matches 1 if entity @s as @e[sort=nearest,limit=1] run particle minecraft:block water ~ ~1 ~ .5 .1 .5 .2 20 force
execute at @s as @p[distance=..5,scores={spellbound_golden_ocean_edge=1..}] if score @s spellbound_golden_ocean_edge matches 1 if entity @s as @e[sort=nearest,limit=1] run particle minecraft:falling_water ~ ~1 ~ .5 .1 .5 .2 20 force


### SLOWNESS SWORD ###
execute at @s as @p[distance=..5,scores={spellbound_sand=1..}] if score @s spellbound_sand matches 1 as @e[sort=nearest,limit=1] run function spellbound_weapons:other/hits/windswept


### WITHERING ###
execute at @s as @p[scores={spellbound_withering=1..},distance=..5] if score @s spellbound_withering matches 1 as @e[sort=nearest,limit=1] run function spellbound_weapons:other/hits/withering


#delete
execute at @s as @p[scores={spellbound_delete=1..},distance=..5] if score @s spellbound_delete matches 1 as @e[sort=nearest,limit=1] run scoreboard players set @s spellbound_delete_isdeleted 1




### MEGA HAMMER
execute at @s as @p[scores={spellbound_hammer=1..},distance=..5] if score @s spellbound_hammer matches 1 as @e[sort=nearest,limit=1] run function spellbound_weapons:other/hits/mega_hammer

### DAGGER
execute at @s as @p[distance=..5,scores={s=1..}] at @s if score @s spellbound_dagger matches 1 run particle minecraft:poof ~ ~ ~ .3 .3 .3 .265 2 force @a[distance=..32]
execute at @s as @p[scores={spellbound_dagger=1..},distance=..5] at @s if score @s spellbound_dagger matches 1 if score @s spellbound_dagger_cooldown matches 10 run effect give @p speed 1 0 false
execute at @s as @p[scores={spellbound_dagger=1..},distance=..5] at @s if score @s spellbound_dagger matches 1 if score @s spellbound_dagger_cooldown matches 10 run scoreboard players set @p spellbound_dagger_cooldown 0


#### evokers wrath ####

execute at @s as @p[scores={spellbound_evoker=1..},distance=..5] at @s if score @s spellbound_evoker matches 1 if score @s spellbound_evoker_cooldown matches 50.. run function spellbound_weapons:other/hits/evokers_wrath



#### netherlight op

execute at @s as @p[scores={spellbound_netherlight=1..},distance=..5] at @s if score @s spellbound_netherlight matches 1 if score @s spellbound_netherlight_cooldown matches 20 run function spellbound_weapons:netherlight/summon_beam2



### CRUCIBLE 
execute at @s as @p[scores={spellbound_crucible=1..},distance=..5] at @s if score @s spellbound_crucible matches 1 run playsound minecraft:entity.player.attack.sweep player @a[distance=..20] ~ ~ ~ .5 .9
execute at @s as @p[scores={spellbound_crucible=1..},distance=..5] at @s if score @s spellbound_crucible matches 1 run playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 1.25 1.5


### MOONLIGHT 
execute at @s as @p[scores={spellbound_moonlight_edge=1..},distance=..5] at @s if score @s spellbound_moonlight_edge matches 1 run function spellbound_weapons:other/hits/moonlight_edge
