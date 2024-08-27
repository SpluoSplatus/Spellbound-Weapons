
scoreboard players set @s spellbound_withering_cooldown 100
playsound minecraft:entity.phantom.ambient player @a[distance=..32] ~ ~ ~ 1 .5
playsound block.beacon.power_select player @a[distance=..32] ~ ~ ~ 1.5 .85

tag @s[tag=!spellbound_tip.witherblade_1] add spellbound_tip.witherblade_1

particle effect ~ ~1 ~ .3 .3 .3 .2 5 force @a[distance=..32]