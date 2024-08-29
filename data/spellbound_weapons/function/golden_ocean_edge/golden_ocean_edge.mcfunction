execute if entity @s unless score @s spellbound_golden_ocean_edge_cooldown matches 61.. run scoreboard players add @s spellbound_golden_ocean_edge_cooldown 1
execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches ..38 if score spellbound_nocooldown spellbound_settings matches 1 run scoreboard players set @s spellbound_golden_ocean_edge_cooldown 39


item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Golden Sea Blade"'}}}] weapon.mainhand spellbound_weapons:name/golden_ocean_edge

execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches 40 run playsound minecraft:block.conduit.activate player @a[distance=..10] ~ ~ ~ .5 2

#sneak ability
execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches 40.. if entity @s[predicate=spellbound_weapons:sneaking] if score @s spellbound_rotation matches 85..90 unless block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:golden_ocean_edge/release_jump
execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches 40.. if entity @s[predicate=spellbound_weapons:sneaking] unless block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:golden_ocean_edge/release_wave
execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches 40.. if entity @s[predicate=spellbound_weapons:sneaking] if block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:golden_ocean_edge/release_dash

execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches 0..39 run title @s[tag=!1_splatus_actionbar_disabled,tag=!spellbound_player_text_golden] actionbar [{"translate": "Charging Wave... - "},{"score":{"name":"@s","objective": "spellbound_golden_ocean_edge_cooldown"}},{"translate": "/40"}]
execute if entity @s if score @s spellbound_golden_ocean_edge_cooldown matches 40..60 run title @s[tag=!1_splatus_actionbar_disabled,tag=!spellbound_player_text_golden] actionbar [{"translate": "Ready! Press "},{"keybind":"key.sneak"},{"translate":" to Release a Wave - 40/40"}]

#execute if entity @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "You can't use Golden Sea Blade in the Nether! - 40/40"}]

item modify entity @s weapon.mainhand spellbound_weapons:stats/golden_sea_blade
#advancement grant @s only minecraft:adventure/spellbound_all_weapons golden_ocean_edge

