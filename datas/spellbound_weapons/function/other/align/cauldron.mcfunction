tag @s add spellbound_itemaligned_cauldron
execute align y run tp @s ~ ~.7 ~
data merge entity @s {NoGravity:1b}
playsound entity.dolphin.splash block @a[distance=..20] ~ ~ ~ .5 1.8
execute align zyx run particle minecraft:falling_water ~.5 ~1 ~.5 .2 .1 .2 10 20 normal