
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=..32] ~ ~ ~ 1 .55
playsound minecraft:entity.wither.break_block ambient @a[distance=..32] ~ ~ ~ .4 1.8
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.3
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 1.5
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .75
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .6
playsound minecraft:block.vine.break player @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:block.grass.break player @a[distance=..32] ~ ~ ~ 1 .5

particle block moss_block ~ ~ ~ 1 1 1 0 100 force @a[distance=..64]


execute as @p[tag=spellbound_temp2] run tag @s[tag=!spellbound_tip.thorn_blossom_1] add spellbound_tip.thorn_blossom_1
execute as @p[tag=spellbound_temp2] at @s[predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @p[tag=spellbound_temp2] at @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @p[tag=spellbound_temp2] at @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5

execute as @p[tag=spellbound_temp2] at @s as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block copper_block ~ ~1 ~ .4 .3 .4 .4 15 normal
execute as @p[tag=spellbound_temp2] at @s as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block moss_block ~ ~1 ~ .4 .3 .4 .4 15 normal
execute as @p[tag=spellbound_temp2] at @s as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run playsound item.shield.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @p[tag=spellbound_temp2] at @s as @s[predicate=spellbound_weapons:holding/weapon/thorn_blossom,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

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

tp @p[tag=spellbound_temp2] ~ ~ ~
scoreboard players set @p[tag=spellbound_temp2] spellbound_thorn_cooldown 0

execute as @a[distance=0.001..3,gamemode=!spectator] run function spellbound_weapons:thorn_blossom/push_player



execute as @e[distance=0.001..3,type=!#spellbound_weapons:misc] at @s facing entity @p[tag=spellbound_temp2] feet run function spellbound_weapons:thorn_blossom/push
execute as @e[distance=0.001..3,type=!#spellbound_weapons:misc] at @s run damage @s 5 spellbound_weapons:melee by @p[tag=spellbound_temp2]


tag @a[tag=spellbound_temp2] remove spellbound_temp2
kill @s[tag=spellbound_thorn]