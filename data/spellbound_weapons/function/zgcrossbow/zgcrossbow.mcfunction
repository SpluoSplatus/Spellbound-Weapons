#advancement grant @s only minecraft:adventure/spellbound_all_weapons warped_crossbow


item modify entity @s[predicate=spellbound_weapons:holding/weapon/zg_crossbow,nbt={SelectedItem:{components:{"minecraft:custom_name":'"Warped Crossbow"'}}}] weapon.mainhand spellbound_weapons:name/zg_crossbow



execute as @s[predicate=spellbound_weapons:holding/weapon/zg_crossbow,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/zg_crossbow_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged


execute at @s as @e[distance=..3,tag=!spellbound_arrow_checked2,type=arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run tag @s add spellbound_zgcrossbow_arrow
execute at @s as @e[distance=..3,tag=!spellbound_arrow_checked2,type=spectral_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run tag @s add spellbound_zgcrossbow_arrow




