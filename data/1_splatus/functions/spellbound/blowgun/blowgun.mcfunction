#advancement grant @s only minecraft:adventure/spellbound_all_weapons blowgun


item modify entity @s[predicate=1_splatus:spellbound/holding/weapon/blowgun,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Blowgun"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/blowgun

execute if entity @s[advancements={1_splatus:spellbound/blowgun=true}] run scoreboard players add @s spellbound_blowgun_cooldown 1
execute if entity @s[advancements={1_splatus:spellbound/blowgun=false}] run scoreboard players set @s spellbound_blowgun_cooldown 0

execute as @s[predicate=1_splatus:spellbound/holding/weapon/blowgun,predicate=!1_splatus:spellbound/holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/ranged
execute as @s[predicate=1_splatus:spellbound/holding/weapon/blowgun_offhand,predicate=!1_splatus:spellbound/holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:spellbound/ranged

advancement revoke @s only 1_splatus:spellbound/blowgun

execute as @e[distance=..6,type=arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_endlight_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function 1_splatus:spellbound/blowgun/shoot
execute as @e[distance=..6,type=spectral_arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_endlight_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function 1_splatus:spellbound/blowgun/spectral_lol

tag @s[advancements={1_splatus:spellbound/arrow=true}] add spellbound_tip.blowgun_1
tag @s[gamemode=creative] add spellbound_tip.blowgun_1

execute as @s[tag=!spellbound_tip.blowgun_1] run function 1_splatus:spellbound/other/tips/blowgun_1

execute as @s[tag=!spellbound_tip.blowgun_2,tag=spellbound_tip.blowgun_1,gamemode=!creative] run function 1_splatus:spellbound/other/tips/blowgun_2
execute as @s[tag=!spellbound_tip.blowgun_2,tag=spellbound_tip.blowgun_1,gamemode=creative] run function 1_splatus:spellbound/other/tips/blowgun_2_alt