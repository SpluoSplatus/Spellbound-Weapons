
item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Thorn Blossom"}'}}}}] weapon.mainhand spellbound_weapons:name/thorn_blossom


item modify entity @s weapon.mainhand spellbound_weapons:thorn_blossom

execute unless score @s spellbound_thorn_cooldown matches 25.. run scoreboard players add @s spellbound_thorn_cooldown 1
item modify entity @s weapon.mainhand spellbound_weapons:stats/thorn_blossom
execute if score @s spellbound_thorn_cooldown matches 25.. if predicate spellbound_weapons:sneaking run function spellbound_weapons:thorn_blossom/release_thorn



execute as @s[tag=!spellbound_tip.thorn_blossom_1] run function spellbound_weapons:other/tips/thorn_blossom_1
execute as @s[tag=spellbound_tip.thorn_blossom_1,tag=!spellbound_tip.thorn_blossom_2] run function spellbound_weapons:other/tips/thorn_blossom_2