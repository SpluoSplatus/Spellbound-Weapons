
item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Witherblade"}'}}}}] weapon.mainhand spellbound_weapons:name/withering_sword


item modify entity @s weapon.mainhand spellbound_weapons:stats/witherblade



execute unless score @s spellbound_withering_hitcool matches 20.. run scoreboard players add @s spellbound_withering_hitcool 1



execute unless score @s spellbound_withering_cooldown matches 31.. run scoreboard players add @s spellbound_withering_cooldown 1




execute unless score @s spellbound_withering_cooldown matches 100.. if score @s spellbound_withering_energy matches 500.. run function spellbound_weapons:withering_sword/ready

execute if score @s spellbound_withering_cooldown matches 100.. if predicate spellbound_weapons:sneaking run scoreboard players add @s spellbound_withering_cooldown 1



execute if score @s spellbound_withering_cooldown matches 100.. unless predicate spellbound_weapons:sneaking run scoreboard players set @s spellbound_withering_cooldown 100
execute if score @s spellbound_withering_cooldown matches 100.. as @s[advancements={spellbound_weapons:player_hurt=true}] run scoreboard players set @s spellbound_withering_cooldown 100
execute if score @s spellbound_withering_cooldown matches 100.. run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate":"Witherblade has absorbed max souls! Hold down "},{"keybind":"key.sneak"},{"translate": " to heal"}]


execute if score @s spellbound_withering_cooldown matches 100 if predicate spellbound_weapons:chance/25_percent run particle soul ~ ~1 ~ .05 .05 .05 .1 1 force @a[distance=..64]
execute if score @s spellbound_withering_cooldown matches 105.. run particle soul_fire_flame ~ ~1 ~ 0 0 0 .15 3 force @a[distance=..64]
execute if score @s spellbound_withering_cooldown matches 105 run playsound block.bell.resonate player @a[distance=..20] ~ ~ ~ 1 1.5
execute if score @s spellbound_withering_cooldown matches 101 run playsound minecraft:entity.allay.item_given player @a[distance=..20] ~ ~ ~ 1 .65
execute if score @s spellbound_withering_cooldown matches 101 run playsound minecraft:entity.allay.item_given player @a[distance=..20] ~ ~ ~ 1 .5
execute if score @s spellbound_withering_cooldown matches 118.. run function spellbound_weapons:withering_sword/heal


execute as @s[tag=!spellbound_tip.witherblade_1] run function spellbound_weapons:other/tips/witherblade_1

scoreboard players set @s spellbound_wither_lastused 0
