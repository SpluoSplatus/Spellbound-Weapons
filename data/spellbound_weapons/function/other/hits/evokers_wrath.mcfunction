
execute run summon minecraft:marker ^ ^ ^ {Tags:["spellbound_evokerattack","spellbound_marker","spellbound_evokerattack_sneak","spellbound_evokerattack1"]}

data modify entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_evokerattack] data.Owner set from entity @s Owner

execute as @e[type=marker,tag=spellbound_evokerattack,tag=!spellbound_evokerattack_checked,sort=nearest,limit=1] run data modify entity @s data.Owner set from entity @p UUID
execute if block ~ ~ ~ water as @e[type=marker,tag=spellbound_evokerattack,tag=!spellbound_evokerattack_checked,sort=nearest,limit=1] run data modify entity @s Rotation[1] set from entity @p Rotation[1]
execute as @e[type=marker,tag=spellbound_evokerattack,tag=!spellbound_evokerattack_checked,sort=nearest,limit=1] run data modify entity @s Rotation[0] set from entity @p Rotation[0]

execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge3] run tag @e[type=marker,tag=spellbound_evokerattack,tag=!spellbound_evokerattack_checked,sort=nearest,limit=1] add spellbound_enchanted_sweeping3
execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge2] run tag @e[type=marker,tag=spellbound_evokerattack,tag=!spellbound_evokerattack_checked,sort=nearest,limit=1] add spellbound_enchanted_sweeping2

execute as @e[type=marker,tag=spellbound_evokerattack,tag=!spellbound_evokerattack_checked,sort=nearest,limit=1] run tag @s add spellbound_evokerattack_checked

execute run scoreboard players set @s spellbound_evoker_cooldown 0



function spellbound_weapons:other/action/set_cooldowns_to_0