
#execute as @e[type=item,tag=!spellbound_itemnearplayer] at @s if entity @p[distance=..16] run tag @s add spellbound_itemnearplayer
#execute as @e[type=item,tag=spellbound_itemnearplayer] at @s unless entity @p[distance=..16] run tag @s remove spellbound_itemnearplayer


# crafting
execute as @e[type=item] at @s if entity @p[distance=..16] run function 1_splatus:spellbound/other/item_merging/item



execute as @a at @s store result score @s spellbound_rotation run data get entity @s Rotation[1]


execute unless score spellbound_recipes spellbound_count matches 0 run function 1_splatus:spellbound/other/recipe_message



#fried weapon lol
execute as @a[predicate=1_splatus:spellbound/holding/tag/spellbound_netherite_sword] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate":"Your weapon burned whilst converting to netherite. Drop it on the ground to revert it back"}


execute store result score gamerule_mobGriefing spellbound_count run gamerule mobGriefing

execute as @a at @s run function 1_splatus:spellbound/other/action/durability_check





scoreboard players set 4tick spellbound_count 0