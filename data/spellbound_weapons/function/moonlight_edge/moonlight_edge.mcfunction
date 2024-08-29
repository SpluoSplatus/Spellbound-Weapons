

item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Moonlight Edge"'}}}] weapon.mainhand spellbound_weapons:name/moonlight_edge



execute if score @s spellbound_moonlight_edge_cooldown matches 0..81 run scoreboard players add @s spellbound_moonlight_edge_cooldown 1
execute unless score @s spellbound_moonlight_edge_cooldown matches 59..61 if score spellbound_nocooldown spellbound_settings matches 1 run scoreboard players set @s spellbound_moonlight_edge_cooldown 59

#text
execute if score @s[tag=!spellbound_player_text_moonlight_edge] spellbound_moonlight_edge_cooldown matches 0..59 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging beam... - "},{"score":{"name":"@s","objective": "spellbound_moonlight_edge_cooldown"}},{"translate": "/60"}]
execute if score @s[tag=!spellbound_player_text_moonlight_edge] spellbound_moonlight_edge_cooldown matches 60..80 unless score @s spellbound_moonlight_edge_fall_speed matches ..-2 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Ready! Press "},{"keybind":"key.sneak"},{"translate":" to release beam - 60/60"}]


#im not going to let you cheat fall damage so easily lol
#execute store result score @s spellbound_moonlight_edge_fall_speed run data get entity @s Motion[1]
#execute if score @s spellbound_moonlight_edge_cooldown matches 60.. if score @s spellbound_moonlight_edge_fall_speed matches ..-2 run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Your shield cant be used while falling! - 60/80"}]

# RELEASE !!!
execute if score @s spellbound_moonlight_edge_cooldown matches 60.. if entity @s[predicate=spellbound_weapons:sneaking] run function spellbound_weapons:moonlight_edge/release_heavy_beam



execute if score @s spellbound_moonlight_edge_cooldown matches 60 run playsound entity.ender_eye.death player @a[distance=..20] ~ ~ ~ 1 1
execute if score @s spellbound_moonlight_edge_cooldown matches 60 run item modify entity @s weapon.mainhand spellbound_weapons:moonlight_edge_charged
execute if score @s spellbound_moonlight_edge_cooldown matches 60 run particle end_rod ~ ~1 ~ 0 0 0 .2 5 force @a[distance=..64]
execute if score @s spellbound_moonlight_edge_cooldown matches ..1 run item modify entity @s weapon.mainhand spellbound_weapons:moonlight_edge

item modify entity @s weapon.mainhand spellbound_weapons:stats/moonlight_edge


#advancement grant @s only minecraft:adventure/spellbound_all_weapons moonlight_edge


