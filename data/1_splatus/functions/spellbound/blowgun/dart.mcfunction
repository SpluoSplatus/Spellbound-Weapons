

scoreboard players add @s spellbound_count 1
scoreboard players add @s spellbound_count2 1

execute at @s if score @s spellbound_count2 matches 30.. run tp @s ~ ~-.02 ~
execute at @s if score @s spellbound_count2 matches 60.. run tp @s ~ ~-.02 ~
execute at @s if score @s spellbound_count2 matches 90.. run tp @s ~ ~-.02 ~



execute unless block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run function 1_splatus:spellbound/blowgun/dart_notwater
execute if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run function 1_splatus:spellbound/blowgun/dart_water


particle dust 0.882 0.933 0.922 .8 ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]

#hit
execute at @s[tag=!spellbound_blowgun_arrow_raycast_dead] positioned ~ ~-1 ~ as @e[distance=..1,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] as @s[type=!#1_splatus:spellbound/large] positioned ~ ~1 ~ as @e[sort=nearest,limit=1] run function 1_splatus:spellbound/blowgun/hit

execute at @s[tag=!spellbound_blowgun_arrow_raycast_dead] positioned ~ ~-1.5 ~ as @e[distance=..3,sort=nearest,limit=1,type=!player,type=!#1_splatus:spellbound/misc] as @s[type=#1_splatus:spellbound/large] positioned ~ ~1.5 ~ as @e[sort=nearest,limit=1] run function 1_splatus:spellbound/blowgun/hit


execute at @s unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/blowgun/hit

execute at @s[tag=!spellbound_blowgun_arrow_raycast_dead] unless score @s spellbound_count matches 7.. run function 1_splatus:spellbound/blowgun/dart
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_dead] spellbound_count matches 7.. run scoreboard players reset @s spellbound_count
execute if score @s[tag=!spellbound_blowgun_arrow_raycast_dead] spellbound_count2 matches 96.. run function 1_splatus:spellbound/blowgun/hit_out

kill @s[tag=spellbound_blowgun_arrow_raycast_dead]



