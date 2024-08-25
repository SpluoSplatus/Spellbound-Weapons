scoreboard players add @s spellbound_count 1

execute if score @s[tag=spellbound_magmus_charger_arrow_max] spellbound_count matches 1 run playsound minecraft:item.firecharge.use player @a[distance=..32] ~ ~ ~ 2 .6
particle flame ~ ~ ~ .3 .3 .3 .005 1 force @a[distance=..64]


execute as @s[tag=spellbound_magmus_charger_arrow_mid] if score @s spellbound_count matches 1 store result entity @s Motion[0] double 0.00008 run data get entity @s Motion[0] 10000
execute as @s[tag=spellbound_magmus_charger_arrow_mid] if score @s spellbound_count matches 1 store result entity @s Motion[1] double 0.00008 run data get entity @s Motion[1] 10000
execute as @s[tag=spellbound_magmus_charger_arrow_mid] if score @s spellbound_count matches 1 store result entity @s Motion[2] double 0.00008 run data get entity @s Motion[2] 10000

execute if score @s[tag=spellbound_magmus_charger_arrow_mid] spellbound_count matches 1 run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_magmus_charger_arrow_area","spellbound_magmus_charger_arrow_area_mid"]}

execute at @s if score @s[tag=spellbound_magmus_charger_arrow_mid] spellbound_count matches 1 store result score @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid run data get entity @s Owner[0]
execute at @s if score @s[tag=spellbound_magmus_charger_arrow_mid] spellbound_count matches 1 store result score @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid2 run data get entity @s Owner[1]
execute at @s if score @s[tag=spellbound_magmus_charger_arrow_mid] spellbound_count matches 1 store result score @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid3 run data get entity @s Owner[2]
execute at @s if score @s[tag=spellbound_magmus_charger_arrow_mid] spellbound_count matches 1 store result score @e[sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] spellbound_uuid4 run data get entity @s Owner[3]


tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area] @s



execute if block ~ ~-0.25 ~ lava run kill @s



execute if entity @s[tag=spellbound_magmus_charger_arrow_mid,nbt={inGround:1b}] run function 1_splatus:spellbound/other/hits/magmus_mid

execute if entity @s[tag=spellbound_magmus_charger_arrow_max] run function 1_splatus:spellbound/magmus_charger/summon
execute if entity @s[tag=spellbound_magmus_charger_arrow_max] run kill @s









execute if entity @s[tag=spellbound_magmus_charger_arrow_mid] run particle lava ~ ~ ~ 0 0 0 .1 1 force @a[distance=..128]


