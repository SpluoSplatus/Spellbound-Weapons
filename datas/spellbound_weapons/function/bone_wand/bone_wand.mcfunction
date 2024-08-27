#advancement grant @s only minecraft:adventure/spellbound_all_weapons bone_wand


item modify entity @s[predicate=spellbound_weapons:holding/weapon/bone_wand,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Bone Wand"}'}}}}] weapon.mainhand spellbound_weapons:name/bone_wand

execute if score count spellbound_count matches 1 if score spellbound_tip spellbound_count matches 1 run tellraw @s[tag=!spellbound_player_hasbeenchecked_bonewand] [{"translate":"","color":"gray"},{"translate": "Weapon Tip:","color": "yellow"},{"translate":" Triple clicking "},{"keybind":"key.sneak","color": "gray"},{"translate":" will break your currently existing bone blocks.","color": "gray"}]
execute if score count spellbound_count matches 1 if score spellbound_tip spellbound_count matches 1 run tag @s add spellbound_player_hasbeenchecked_bonewand


execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged



#execute as @s[predicate=!spellbound_weapons:sneaking] positioned ^ ^ ^1.5 positioned ~ ~1 ~ align zyx run tp @e[type=magma_cube,tag=spellbound_bone_wand_selection] ~.5 ~-.05 ~.5
#execute as @s[predicate=spellbound_weapons:sneaking] positioned ^ ^ ^1.5 positioned ~ ~ ~ align zyx run tp @e[type=magma_cube,tag=spellbound_bone_wand_selection] ~.5 ~-.05 ~.5

execute positioned ^ ^ ^1.5 align zyx positioned ~.5 ~1 ~.5 run function spellbound_weapons:bone_wand/box
#execute if entity @s[predicate=spellbound_weapons:sneaking] positioned ~ ~1.65 ~ align zyx positioned ~.5 ~.5 ~.5 run function spellbound_weapons:bone_wand/raycast






kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]

execute run item modify entity @s[predicate=spellbound_weapons:holding/weapon/bone_wand] weapon.mainhand spellbound_weapons:bone_wand
execute run item modify entity @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand] weapon.offhand spellbound_weapons:bone_wand




### right click
execute as @s[scores={spellbound_right_click=1..}] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align zyx positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #spellbound_weapons:bone_wand_replaceable run function spellbound_weapons:bone_wand/right_click




# break
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block bone_block ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/tag/0_durability] at @s run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 1.5
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/tag/0_durability] at @s run playsound entity.skeleton.death player @a[distance=..10] ~ ~ ~ 1 2
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/tag/0_durability_offhand] run particle minecraft:block bone_block ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/tag/0_durability_offhand] at @s run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 1.5
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/tag/0_durability_offhand] at @s run playsound entity.skeleton.death player @a[distance=..10] ~ ~ ~ 1 2
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/tag/0_durability_offhand] run item replace entity @s weapon.offhand with air



# break all with triple shift
execute as @s[scores={spellbound_bonewand=1,spellbound_sneak_count=3..}] at @s run function spellbound_weapons:bone_wand/remove_existing_bone_blocks

execute if score @s spellbound_movement matches ..0 if predicate spellbound_weapons:sneaking as @s[scores={spellbound_right_click=1..}] run function spellbound_weapons:bone_wand/right_click_wall
scoreboard players set @s spellbound_movement 0


#tips
execute as @s[tag=!spellbound_tip.bone_wand_1] run function spellbound_weapons:other/tips/bone_wand_1
execute as @s[tag=spellbound_tip.bone_wand_1,tag=!spellbound_tip.bone_wand_2] run function spellbound_weapons:other/tips/bone_wand_2
execute as @s[tag=spellbound_tip.bone_wand_2,tag=!spellbound_tip.bone_wand_3] run function spellbound_weapons:other/tips/bone_wand_3
