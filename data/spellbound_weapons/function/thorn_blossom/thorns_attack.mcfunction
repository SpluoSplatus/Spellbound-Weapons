
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..32] ~ ~ ~ 1 .55
playsound minecraft:entity.wither.break_block ambient @a[distance=..32] ~ ~ ~ .4 1.8
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.5
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .75
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .6
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:block.grass.break player @a[distance=..32] ~ ~ ~ 1 .5

particle block{block_state:"moss_block"} ~ ~ ~ 1 1 1 0 100 force @a[distance=..64]


function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast
function spellbound_weapons:thorn_blossom/jab_raycast

execute facing entity @e[distance=0.001..3,type=!#spellbound_weapons:misc] eyes run function spellbound_weapons:thorn_blossom/jab_raycast


execute as @a[distance=0.001..3,gamemode=!spectator] run function spellbound_weapons:thorn_blossom/push_player



execute as @e[distance=0.001..3,type=!#spellbound_weapons:misc,tag=!spellbound_temp2] at @s facing entity @p[tag=spellbound_temp2] feet run function spellbound_weapons:thorn_blossom/push
execute as @e[distance=0.001..3,type=!#spellbound_weapons:misc,tag=!spellbound_temp2] at @s run damage @s 5 spellbound_weapons:melee by @p[tag=spellbound_temp2]

#teleport player back
execute if entity @s[tag=!spellbound_thorn_end] run tp @p[tag=spellbound_temp2] ~ ~ ~

execute as @p[tag=spellbound_temp2] at @s run function spellbound_weapons:thorn_blossom/thorns_attack_on_owner


kill @s[tag=spellbound_thorn]