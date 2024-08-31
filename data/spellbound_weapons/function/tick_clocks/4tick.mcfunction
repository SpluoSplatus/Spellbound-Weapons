
#execute as @e[type=item,tag=!spellbound_itemnearplayer] at @s if entity @p[distance=..16] run tag @s add spellbound_itemnearplayer
#execute as @e[type=item,tag=spellbound_itemnearplayer] at @s unless entity @p[distance=..16] run tag @s remove spellbound_itemnearplayer


# crafting
execute as @e[type=item] at @s if entity @p[distance=..16] run function spellbound_weapons:other/item_merging/item



execute as @a at @s store result score @s spellbound_rotation run data get entity @s Rotation[1]


#fried weapon lol
execute as @a[predicate=spellbound_weapons:holding/tag/netherite_sword,predicate=spellbound_weapons:holding/tag/spellbound_weapon] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate":"Your weapon burned whilst converting to netherite. Drop it on the ground to revert it back"}


execute store result score gamerule_mobGriefing spellbound_count run gamerule mobGriefing

execute as @a at @s run function spellbound_weapons:other/action/durability_check


schedule function spellbound_weapons:tick_clocks/4tick 4t


scoreboard players set 4tick spellbound_clock 0