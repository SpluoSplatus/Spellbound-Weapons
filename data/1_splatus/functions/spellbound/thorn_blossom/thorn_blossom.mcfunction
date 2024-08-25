
item modify entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Thorn Blossom"}'}}}}] weapon.mainhand 1_splatus:spellbound/name/thorn_blossom


item modify entity @s weapon.mainhand 1_splatus:spellbound/thorn_blossom

execute unless score @s spellbound_thorn_cooldown matches 25.. run scoreboard players add @s spellbound_thorn_cooldown 1
item modify entity @s weapon.mainhand 1_splatus:spellbound/stats/thorn_blossom
execute if score @s spellbound_thorn_cooldown matches 25.. if predicate 1_splatus:spellbound/sneaking run function 1_splatus:spellbound/thorn_blossom/release_thorn



execute as @s[tag=!spellbound_tip.thorn_blossom_1] run function 1_splatus:spellbound/other/tips/thorn_blossom_1
execute as @s[tag=spellbound_tip.thorn_blossom_1,tag=!spellbound_tip.thorn_blossom_2] run function 1_splatus:spellbound/other/tips/thorn_blossom_2