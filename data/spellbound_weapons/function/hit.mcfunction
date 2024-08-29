

#### END SWORD ####
execute at @s if score @s spellbound_end matches 1 run function spellbound_weapons:end_excalibur/hit

#reset energy if you switch weapons and attack a mob
    execute unless entity @s[predicate=spellbound_weapons:holding/weapon/crucible] if score @s spellbound_crucible_energy matches 1.. run scoreboard players set @s spellbound_crucible_energy 0
    execute unless entity @s[predicate=spellbound_weapons:holding/weapon/withering_sword] if score @s spellbound_withering_energy matches 1.. run scoreboard players set @s spellbound_withering_energy 0

#reset staffs if you hit a mob
    scoreboard players set @s spellbound_e_staff_cooldown 0
    scoreboard players set @s spellbound_i_staff_cooldown 0
    scoreboard players set @s spellbound_f_staff_cooldown 0
    scoreboard players set @s spellbound_echo_wand_cooldown 0


#### blazing ####

execute at @s if score @s spellbound_blazing matches 1 run function spellbound_weapons:blazing_sword/hit

#### SEA ####
execute at @s if score @s spellbound_curse matches 1 as @e[distance=0.001..5,nbt={HurtTime:10s},type=!#spellbound_weapons:misc] at @s run function spellbound_weapons:cursed_sea_blade/hit

#### Golden Sea Blade ####
execute at @s as @p[distance=..5,scores={spellbound_golden_ocean_edge=1..}] if score @s spellbound_golden_ocean_edge matches 1 run function spellbound_weapons:golden_ocean_edge/hit



# WITHERING 
execute at @s as @s[scores={spellbound_withering=1..}] run function spellbound_weapons:withering_sword/hit

### Windsweeper ###
execute as @s[scores={spellbound_sand=1..}] at @s run function spellbound_weapons:windswept_sword/hit

### Bone Wand
execute unless entity @s[predicate=!spellbound_weapons:holding/weapon/bone_wand,predicate=!spellbound_weapons:holding/weapon/bone_wand_offhand] run playsound minecraft:block.bone_block.break player @a[distance=..20] ~ ~ ~ .5 1.6


#delete
execute at @s as @s[scores={spellbound_delete=1..},distance=..5] if score @s spellbound_delete matches 1 as @e[distance=1..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc] at @s run function spellbound_weapons:extra_weapons/deleted_from_existence




### MEGA HAMMER
execute as @s[scores={spellbound_hammer=1..}] at @s run function spellbound_weapons:mega_hammer/hit

### DAGGER
execute at @s as @s[scores={spellbound_dagger=1..}] at @s run function spellbound_weapons:dagger/hit



#### evokers wrath ####

execute at @s as @s[scores={spellbound_evoker=1..}] at @s run function spellbound_weapons:evokers_wrath/hit


### CRUCIBLE 
execute at @s as @s[scores={spellbound_crucible=1..}] at @s run function spellbound_weapons:crucible/hit


#### netherlight op

execute at @s as @s[scores={spellbound_netherlight=1..},distance=..5] at @s if score @s spellbound_netherlight matches 1 if score @s spellbound_netherlight_cooldown matches 20 run function spellbound_weapons:netherlight/summon_beam2



### THORN BLOSSOM
execute at @s as @s[scores={spellbound_thorn=1..}] run function spellbound_weapons:thorn_blossom/hit


### MOONLIGHT 
execute at @s as @s[scores={spellbound_moonlight_edge=1..}] run function spellbound_weapons:moonlight_edge/hit
