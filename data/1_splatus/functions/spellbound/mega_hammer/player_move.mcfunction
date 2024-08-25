

execute if score @s spellbound_hammer_move matches -4 run scoreboard players set @s spellbound_hammer_move 3

scoreboard players add @s spellbound_hammer_move 1
execute if score @s spellbound_hammer_move matches 1..3 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-1
execute if score @s spellbound_hammer_move matches 1..3 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-1
execute if score @s spellbound_hammer_move matches 1..6 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-1
execute if score @s spellbound_hammer_move matches 1..6 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-1
execute if score @s spellbound_hammer_move matches 7..10 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-.5
execute if score @s spellbound_hammer_move matches 11..14 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-.25
execute if score @s spellbound_hammer_move matches 15..20 at @s facing entity @e[type=marker,tag=spellbound_hammervector,sort=nearest,limit=1] eyes if block ^ ^ ^-1 #1_splatus:spellbound/permeable run tp @s ^ ^ ^-.1

execute if score @s spellbound_hammer_move matches 20.. as @e[type=marker,tag=spellbound_hammervector] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run kill @s
execute if score @s spellbound_hammer_move matches 20.. run scoreboard players reset @s spellbound_hammer_move