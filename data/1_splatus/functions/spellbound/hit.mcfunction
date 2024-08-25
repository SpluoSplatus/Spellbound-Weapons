

#### END SWORD ####


execute at @s if score @s spellbound_end matches 1 run function 1_splatus:spellbound/other/hits/holder/end_excalibur

execute unless entity @s[predicate=1_splatus:spellbound/holding/weapon/crucible] if score @s spellbound_crucible_energy matches 1.. run scoreboard players set @s spellbound_crucible_energy 0
execute unless entity @s[predicate=1_splatus:spellbound/holding/weapon/withering_sword] if score @s spellbound_withering_energy matches 1.. run scoreboard players set @s spellbound_withering_energy 0

scoreboard players set @s spellbound_e_staff_cooldown 0
scoreboard players set @s spellbound_i_staff_cooldown 0
scoreboard players set @s spellbound_f_staff_cooldown 0
scoreboard players set @s spellbound_echo_wand_cooldown 0


#### blazing ####

execute at @s if score @s spellbound_blazing matches 1 run function 1_splatus:spellbound/other/hits/holder/blazing
#### SEA ####
execute at @s if score @s spellbound_curse matches 1 as @e[distance=0.001..5,nbt={HurtTime:10s},type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/hits/cursed_sea_blade
#### Golden Sea Blade ####
execute at @s as @p[distance=..5,scores={spellbound_golden_ocean_edge=1..}] if score @s spellbound_golden_ocean_edge matches 1 run function 1_splatus:spellbound/other/hits/holder/golden_sea_blade



### SLOWNESS SWORD ###
execute as @s[scores={spellbound_sand=1..}] at @s if score @s spellbound_sand matches 1 run function 1_splatus:spellbound/other/hits/holder/windswept
### BONE WAND lol
execute unless entity @s[predicate=!1_splatus:spellbound/holding/weapon/bone_wand,predicate=!1_splatus:spellbound/holding/weapon/bone_wand_offhand] run playsound minecraft:block.bone_block.break player @a[distance=..20] ~ ~ ~ .5 1.6


### STAFFS LOL
execute if entity @s[predicate=1_splatus:spellbound/holding/tag/staff_both] run function 1_splatus:spellbound/other/hits/holder/staffs

### WITHERING ###
execute at @s as @s[scores={spellbound_withering=1..}] run function 1_splatus:spellbound/other/hits/holder/withering
#delete
execute at @s as @s[scores={spellbound_delete=1..},distance=..5] if score @s spellbound_delete matches 1 as @e[distance=1..5,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/hits/deleted_from_existence




### MEGA HAMMER
execute as @s[scores={spellbound_hammer=1..}] at @s run function 1_splatus:spellbound/other/hits/holder/mega_hammer
### DAGGER


execute at @s as @s[scores={spellbound_dagger=1..}] at @s run function 1_splatus:spellbound/other/hits/holder/dagger



#### evokers wrath ####

execute at @s as @s[scores={spellbound_evoker=1..}] at @s run function 1_splatus:spellbound/other/hits/holder/evokers_wrath


#### netherlight op

execute at @s as @s[scores={spellbound_netherlight=1..},distance=..5] at @s if score @s spellbound_netherlight matches 1 if score @s spellbound_netherlight_cooldown matches 20 run function 1_splatus:spellbound/netherlight/summon_beam2



### CRUCIBLE 
execute at @s as @s[scores={spellbound_crucible=1..}] at @s run function 1_splatus:spellbound/other/hits/holder/crucible

### MOONLIGHT 
execute at @s as @s[scores={spellbound_moonlight_edge=1..}] run function 1_splatus:spellbound/other/hits/moonlight_edge

### THORN BLOSSOM
execute at @s as @s[scores={spellbound_thorn=1..}] run function 1_splatus:spellbound/other/hits/holder/thorn_blossom
