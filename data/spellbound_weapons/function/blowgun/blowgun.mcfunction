#advancement grant @s only minecraft:adventure/spellbound_all_weapons blowgun


item modify entity @s[predicate=spellbound_weapons:holding/weapon/blowgun,nbt={SelectedItem:{components:{"minecraft:custom_name":'"Blowgun"'}}}] weapon.mainhand spellbound_weapons:name/blowgun

execute if entity @s[advancements={spellbound_weapons:blowgun=true}] run scoreboard players add @s spellbound_blowgun_cooldown 1
execute if entity @s[advancements={spellbound_weapons:blowgun=false}] run scoreboard players set @s spellbound_blowgun_cooldown 0

execute as @s[predicate=spellbound_weapons:holding/weapon/blowgun,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/blowgun_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged

advancement revoke @s only spellbound_weapons:blowgun

execute as @e[distance=..6,type=arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_endlight_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function spellbound_weapons:blowgun/shoot
execute as @e[distance=..6,type=spectral_arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_endlight_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function spellbound_weapons:blowgun/spectral_lol

tag @s[advancements={spellbound_weapons:arrow=true}] add spellbound_tip.blowgun_1
tag @s[gamemode=creative] add spellbound_tip.blowgun_1

execute as @s[tag=!spellbound_tip.blowgun_1] run function spellbound_weapons:other/tips/blowgun_1

execute as @s[tag=!spellbound_tip.blowgun_2,tag=spellbound_tip.blowgun_1,gamemode=!creative] run function spellbound_weapons:other/tips/blowgun_2
execute as @s[tag=!spellbound_tip.blowgun_2,tag=spellbound_tip.blowgun_1,gamemode=creative] run function spellbound_weapons:other/tips/blowgun_2_alt