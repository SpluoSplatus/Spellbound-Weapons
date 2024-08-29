
item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'"Thorn Blossom"'}}}] weapon.mainhand spellbound_weapons:name/thorn_blossom


item modify entity @s[predicate=!spellbound_weapons:holding/weapon/thorn_blossom_diamond] weapon.mainhand spellbound_weapons:thorn_blossom
item modify entity @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom_diamond] weapon.mainhand spellbound_weapons:stats/thorn_blossom_diamond

execute if predicate spellbound_weapons:holding/weapon/thorn_blossom_diamond if score @s spellbound_thorn_cooldown matches ..4 run scoreboard players add @s spellbound_thorn_cooldown 10

execute unless score @s spellbound_thorn_cooldown matches 35.. run scoreboard players add @s spellbound_thorn_cooldown 1

execute if score @s spellbound_thorn_cooldown matches 35.. if predicate spellbound_weapons:sneaking positioned ~ ~.8 ~ positioned ^ ^ ^.2 run function spellbound_weapons:thorn_blossom/release_thorn


execute as @s[tag=!spellbound_tip.thorn_blossom_1] run function spellbound_weapons:other/tips/thorn_blossom_1
execute as @s[tag=spellbound_tip.thorn_blossom_1,tag=!spellbound_tip.thorn_blossom_2] run function spellbound_weapons:other/tips/thorn_blossom_2

#diamond visuals

#moss normal variant
    execute if predicate spellbound_weapons:chance/15_percent if predicate spellbound_weapons:holding/weapon/thorn_blossom_diamond unless predicate spellbound_weapons:holding/weapon/thorn_blossom_cherry positioned ~ ~1.2 ~ rotated ~ 0 run particle spore_blossom_air ^ ^ ^ .1 .3 .1 .15 1 force @a[distance=..64]


#cherry variant
    execute if predicate spellbound_weapons:chance/5_percent if predicate spellbound_weapons:holding/weapon/thorn_blossom_diamond if predicate spellbound_weapons:holding/weapon/thorn_blossom_cherry positioned ~ ~.9 ~ rotated ~ 0 run particle cherry_leaves ^-.2 ^ ^1 .2 .2 .2 .15 1 force @a[distance=..64]