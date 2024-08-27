particle dust 0.835 0.886 0.894 0.2 ~.5 ~ ~ 0 0 .25 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~-.5 ~ ~ 0 0 .25 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~ ~ ~.5 .25 0 0 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~ ~ ~-.5 .25 0 0 0.01 10 force @s


particle dust 0.835 0.886 0.894 0.2 ~.5 ~.5 ~.5 0 .25 0 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~.5 ~.5 ~-.5 0 .25 0 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~-.5 ~.5 ~-.5 0 .25 0 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~-.5 ~.5 ~.5 0 .25 0 0.01 10 force @s

particle dust 0.835 0.886 0.894 0.2 ~.5 ~1 ~ 0 0 .25 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~-.5 ~1 ~ 0 0 .25 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~ ~1 ~.5 .25 0 0 0.01 10 force @s
particle dust 0.835 0.886 0.894 0.2 ~ ~1 ~-.5 .25 0 0 0.01 10 force @s

execute if entity @s[scores={spellbound_right_click=1..,spellbound_count=1..}] run function spellbound_weapons:bone_wand/place_raycast
