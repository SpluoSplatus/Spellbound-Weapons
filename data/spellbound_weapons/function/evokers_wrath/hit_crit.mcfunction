
execute run summon evoker_fangs ~ ~ ~ {Tags:["spellbound_temp_uuid","spellbound_fangs"]}
execute run summon evoker_fangs ~ ~ ~1.0 {Tags:["spellbound_temp_uuid","spellbound_fangs"]}
execute run summon evoker_fangs ~ ~ ~-1.0 {Tags:["spellbound_temp_uuid","spellbound_fangs"]}
execute run summon evoker_fangs ~1.0 ~ ~ {Tags:["spellbound_temp_uuid","spellbound_fangs"]}
execute run summon evoker_fangs ~-1.0 ~ ~ {Tags:["spellbound_temp_uuid","spellbound_fangs"]}

execute run summon marker ~1.0 ~ ~1.0 {Tags:["spellbound_evokerattack","spellbound_temp","spellbound_marker","spellbound_evokerattack_crit"]}
execute run summon marker ~-1.0 ~ ~-1.0 {Tags:["spellbound_evokerattack","spellbound_temp","spellbound_marker","spellbound_evokerattack_crit"]}
execute run summon marker ~1.0 ~ ~-1.0 {Tags:["spellbound_evokerattack","spellbound_temp","spellbound_marker","spellbound_evokerattack_crit"]}
execute run summon marker ~-1.0 ~ ~1.0 {Tags:["spellbound_evokerattack","spellbound_temp","spellbound_marker","spellbound_evokerattack_crit"]}

execute if predicate spellbound_weapons:holding/enchant/sweeping_edge3 run summon marker ~ ~ ~2 {Tags:["spellbound_evokerattack","spellbound_temp2","spellbound_marker","spellbound_evokerattack_crit"]}
execute if predicate spellbound_weapons:holding/enchant/sweeping_edge3 run summon marker ~ ~ ~-2 {Tags:["spellbound_evokerattack","spellbound_temp2","spellbound_marker","spellbound_evokerattack_crit"]}
execute if predicate spellbound_weapons:holding/enchant/sweeping_edge3 run summon marker ~2 ~ ~ {Tags:["spellbound_evokerattack","spellbound_temp2","spellbound_marker","spellbound_evokerattack_crit"]}
execute if predicate spellbound_weapons:holding/enchant/sweeping_edge3 run summon marker ~-2 ~ ~ {Tags:["spellbound_evokerattack","spellbound_temp2","spellbound_marker","spellbound_evokerattack_crit"]}

#############################

execute at @e[type=evoker_fangs,tag=spellbound_temp_uuid] run data modify entity @e[type=evoker_fangs,limit=1,sort=nearest] Owner set from entity @s UUID
execute as @e[type=evoker_fangs,tag=spellbound_temp_uuid] run tag @s remove spellbound_temp_uuid

execute at @e[type=marker,tag=spellbound_temp] run data modify entity @e[type=marker,limit=1,sort=nearest] data.Owner set from entity @s UUID
execute as @e[type=marker,tag=spellbound_temp] run tag @s remove spellbound_temp

execute if predicate spellbound_weapons:holding/enchant/sweeping_edge3 at @e[type=marker,tag=spellbound_temp2] run data modify entity @e[type=marker,limit=1,sort=nearest] data.Owner set from entity @s UUID
execute if predicate spellbound_weapons:holding/enchant/sweeping_edge3 as @e[type=marker,tag=spellbound_temp2] run tag @s remove spellbound_temp2

#############################


summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}
execute if predicate spellbound_weapons:chance/10_percent run summon allay ~ ~2 ~ {Tags:["spellbound_evoker_vex","spellbound_marker"],Invulnerable:1b,Attributes:[{Base:-999.00d,Name:"generic.attack_damage"}]}




playsound minecraft:entity.vex.charge ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.vex.ambient ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.vex.charge ambient @a[distance=..20] ~ ~ ~ 1 .9
playsound minecraft:entity.vex.hurt ambient @a[distance=..20] ~ ~ ~ 1 .5

#execute at @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge3] run summon evoker_fangs ^ ^1 ^11 {Tags:["spellbound_evokerattack","spellbound_temp","spellbound_marker","spellbound_evokerattack_crit0"]}


execute as @s[tag=spellbound_tip.evokers_wrath_2,tag=!spellbound_tip.evokers_wrath_3] run function spellbound_weapons:other/tips/checkmark
tag @s[tag=spellbound_tip.evokers_wrath_2] add spellbound_tip.evokers_wrath_3

execute run scoreboard players set @s[scores={spellbound_evoker=1..}] spellbound_evoker_cooldown 0
