execute at @s run effect give @s[type=!wither_skeleton] wither 4 1 false

execute at @s if entity @s[type=!wither_skeleton] run particle squid_ink ~ ~1 ~ .3 .3 .3 .11 5 force

summon minecraft:marker ~ ~ ~ {Tags:["spellbound_dusties","spellbound_marker"]}