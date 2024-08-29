

execute if score @s spellbound_hammer_move matches -4 run scoreboard players set @s spellbound_hammer_move 3


execute as @e[type=marker,tag=spellbound_hammervector] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run tag @s add spellbound_hammervector_current

scoreboard players add @s spellbound_hammer_move 1

execute if score @s spellbound_hammer_move matches ..3 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.5
execute if score @s spellbound_hammer_move matches ..3 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.5
execute if score @s spellbound_hammer_move matches 1..6 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.5
execute if score @s spellbound_hammer_move matches 1..6 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.5
execute if score @s spellbound_hammer_move matches 7..10 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.5
execute if score @s spellbound_hammer_move matches 11..13 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.25
execute if score @s spellbound_hammer_move matches 14..15 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.1
execute if score @s spellbound_hammer_move matches 16..17 at @s facing entity @e[type=marker,tag=spellbound_hammervector_current,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #spellbound_weapons:permeable run tp @s ^ ^ ^-.04

execute if score @s spellbound_hammer_move matches 17.. run kill @e[type=marker,tag=spellbound_hammervector_current]


tag @n[type=marker,tag=spellbound_hammervector_current] remove spellbound_hammervector_current


execute if score @s spellbound_hammer_move matches 17.. run scoreboard players reset @s spellbound_hammer_move