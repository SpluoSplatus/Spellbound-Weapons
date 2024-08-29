

scoreboard players add @s spellbound_count 1
scoreboard players add @s spellbound_count2 1

execute at @s if score @s spellbound_count2 matches 30.. run tp @s ~ ~-.02 ~
execute at @s if score @s spellbound_count2 matches 60.. run tp @s ~ ~-.02 ~
execute at @s if score @s spellbound_count2 matches 90.. run tp @s ~ ~-.02 ~



execute unless block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:blowgun/dart_notwater
execute if block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:blowgun/dart_water

particle dust{color:[0.882,0.933,0.925],scale:0.8} ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]

#hit
execute if score @s spellbound_count2 matches 3.. at @s[tag=!spellbound_blowgun_arrow_raycast_dead] as @e[distance=..5,dy=0,sort=nearest,limit=1,type=!#spellbound_weapons:misc] as @e[sort=nearest,limit=1] run function spellbound_weapons:blowgun/hit



execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:blowgun/hit

execute at @s[tag=!spellbound_blowgun_arrow_raycast_dead] unless score @s spellbound_count matches 7.. run function spellbound_weapons:blowgun/dart
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_dead] spellbound_count matches 7.. run scoreboard players reset @s spellbound_count
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_dead] spellbound_count2 matches 96.. run function spellbound_weapons:blowgun/hit_out

kill @s[tag=spellbound_blowgun_arrow_raycast_dead]



