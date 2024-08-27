# break
execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5


execute as @s[predicate=spellbound_weapons:holding/weapon/golden_ocean_edge,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block gold_block ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/golden_ocean_edge,predicate=spellbound_weapons:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/weapon/golden_ocean_edge,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

execute if block ~ ~ ~ lava run particle large_smoke ~ ~1 ~ .3 .5 .3 .05 30 force @a[distance=..32]

execute unless block ~ ~ ~ lava run playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..30] ~ ~ ~ 1.25 1.75
playsound minecraft:entity.generic.swim player @a[distance=..30] ~ ~ ~ 1.25 .75

scoreboard players set @s spellbound_golden_ocean_edge_cooldown 0

summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[45f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[90f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[135f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[180f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[225f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[270f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[315f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[360f,0f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_golden_ocean_edge_wave"]}

execute as @e[distance=..0.0001,type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave,limit=8] run scoreboard players set @s spellbound_count 6


tag @s add spellbound_golden_ocean_edge_player

function spellbound_weapons:other/action/set_cooldowns_to_0