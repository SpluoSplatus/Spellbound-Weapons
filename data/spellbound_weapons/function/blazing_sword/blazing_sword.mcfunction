item modify entity @s weapon.mainhand spellbound_weapons:stats/blazeblade

item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Blazeblade"'}}}] weapon.mainhand spellbound_weapons:name/blazeblade



#advancement grant @s only minecraft:adventure/spellbound_all_weapons blazing_sword

execute unless score @s spellbound_blazing_cooldown matches 79.. run scoreboard players add @s spellbound_blazing_cooldown 1

execute if score @s spellbound_blazing_cooldown matches 79 if score @s spellbound_playerhit matches 1.. run scoreboard players add @s spellbound_blazing_cooldown 1


execute as @s[scores={spellbound_blazing_cooldown=1}] run item modify entity @s weapon.mainhand spellbound_weapons:blazing_sword

# ready
execute as @s[scores={spellbound_blazing_cooldown=80}] at @s run function spellbound_weapons:blazing_sword/ready
execute as @s[scores={spellbound_blazing_cooldown=80..}] at @s if predicate spellbound_weapons:chance/20_percent run particle smoke ~ ~1 ~ .3 .3 .3 .02 1 force @a[distance=..32]

execute if score @s spellbound_blazing_cooldown matches 80 run scoreboard players add @s spellbound_blazing_cooldown 1

#execute if score @s spellbound_blazing_cooldown matches 80 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate":"Blazeblade"},{"translate":" charged! Hold "},{"keybind":"key.sneak"},{"translate": " to release flames"}]
execute if score @s spellbound_blazing_cooldown matches 81.. if predicate spellbound_weapons:sneaking run scoreboard players add @s spellbound_blazing_cooldown 1
execute if score @s spellbound_blazing_cooldown matches 82.. run function spellbound_weapons:blazing_sword/charging

execute as @s[tag=!spellbound_tip.blazeblade_1] run function spellbound_weapons:other/tips/blazeblade_1