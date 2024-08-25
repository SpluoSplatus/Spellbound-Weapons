execute at @s run effect give @s[type=!wither_skeleton] wither 4 2 false

execute at @s if entity @s[type=!wither_skeleton] run particle squid_ink ~ ~1 ~ .3 .3 .3 .11 5 force
execute at @s if entity @s[type=!wither_skeleton] run playsound minecraft:block.deepslate.break player @a[distance=..15] ~ ~ ~ 1 .5
execute at @s if entity @s[type=!wither_skeleton] run playsound minecraft:block.deepslate.break player @a[distance=..15] ~ ~ ~ 1 .5
execute at @s if entity @s[type=!wither_skeleton] run playsound minecraft:block.beacon.power_select player @a[distance=..15] ~ ~ ~ .2 1
execute at @s if entity @s[type=!wither_skeleton] run playsound minecraft:block.beacon.power_select player @a[distance=..15] ~ ~ ~ .2 1
execute at @s if entity @s[type=!wither_skeleton] run playsound minecraft:entity.iron_golem.hurt player @a[distance=..15] ~ ~ ~ .6 .6

summon minecraft:marker ~ ~1.5 ~ {Tags:["spellbound_dusties","spellbound_marker"]}