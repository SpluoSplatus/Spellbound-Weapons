scoreboard players add @s spellbound_count2 1
scoreboard players add @s spellbound_count 1

tp @s ^ ^ ^.5


execute at @s run particle dust{color:[0.114,0.522,0.059],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]




execute at @s unless block ^ ^ ^.5 #spellbound_weapons:permeable run scoreboard players set @s spellbound_count 1000


#max distance
execute at @s if score @s spellbound_count matches 11..999 run function spellbound_weapons:thorn_blossom/thorn_raycast_end

#repeat
execute at @s if score @s spellbound_count matches ..999 unless score @s spellbound_count2 matches 6.. run function spellbound_weapons:thorn_blossom/thorn_raycast


execute if score @s spellbound_count2 matches 6.. run scoreboard players reset @s spellbound_count2
