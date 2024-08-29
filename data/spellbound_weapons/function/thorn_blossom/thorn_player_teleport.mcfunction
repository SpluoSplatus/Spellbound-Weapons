tag @s add spellbound_temp2
execute at @s facing entity @e[type=marker,sort=nearest,limit=1,tag=spellbound_temp] feet run tp @s ^ ^ ^1
execute at @s facing entity @e[type=marker,sort=nearest,limit=1,tag=spellbound_temp] feet run function spellbound_weapons:thorn_blossom/particle_raycast

#execute at @s positioned ~ ~-1 ~ if entity @e[distance=..0.8,type=!#spellbound_weapons:misc,type=!#spellbound_weapons:small,tag=!spellbound_temp2] run function spellbound_weapons:thorn_blossom/thorn_player_teleport_ouch
#execute at @s positioned ~ ~-.2 ~ if entity @e[distance=..0.4,type=#spellbound_weapons:small,tag=!spellbound_temp2] run function spellbound_weapons:thorn_blossom/thorn_player_teleport_ouch
execute at @s unless block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:thorn_blossom/thorn_player_teleport_ouch
