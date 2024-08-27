

scoreboard players add @s spellbound_freeze 1
#execute as @s[scores={spellbound_freeze=2}] at @s run effect give @s slowness 2 0 false
execute as @s[scores={spellbound_freeze=1..}] at @s run tp @s[type=!fireball] @s
execute as @s[scores={spellbound_freeze=1..}] at @s run particle dust 0.722 0.776 0.839 1 ~ ~1 ~ .3 .5 .3 .2 5 force @a[distance=..32]
execute as @s[scores={spellbound_freeze=1..25}] at @s run data merge entity @s {Fire:-1,HasVisualFire:false,NoAI:1b}



#damage
execute as @a if score @s spellbound_uuid = @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid if score @s spellbound_uuid2 = @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid2 if score @s spellbound_uuid3 = @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid3 if score @s spellbound_uuid4 = @e[sort=nearest,limit=1,type=armor_stand,tag=spellbound_ice_staff_ice] spellbound_uuid4 run tag @s add spellbound_temp5

execute as @s[scores={spellbound_freeze=1},type=!blaze] at @s run damage @s 4 spellbound_weapons:magic by @p[tag=spellbound_temp5]
execute as @s[scores={spellbound_freeze=1},type=blaze] at @s run damage @s 12 spellbound_weapons:magic by @p[tag=spellbound_temp5]

tag @a remove spellbound_temp5

### fireball
execute as @s[scores={spellbound_freeze=2},type=#spellbound_weapons:fireball] at @s positioned ~ ~.25 ~ run function spellbound_weapons:ice_staff/incinerate

execute as @s[scores={spellbound_freeze=15..},tag=!spellbound_frostenchanted] at @s run data merge entity @s {NoAI:0b}
execute as @s[scores={spellbound_freeze=15..},tag=!spellbound_frostenchanted] at @s run scoreboard players set @s spellbound_freeze 0


execute as @s[scores={spellbound_freeze=20..}] at @s run data merge entity @s {NoAI:0b}
execute as @s[scores={spellbound_freeze=20..}] at @s run tag @s remove spellbound_frostenchanted
execute as @s[scores={spellbound_freeze=20..}] at @s run scoreboard players set @s spellbound_freeze 0