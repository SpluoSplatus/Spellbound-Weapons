playsound entity.item.pickup block @a[distance=..20] ~ ~ ~ 1 1
execute align zyx run tp @s ~.5 ~ ~.5
data remove entity @s Motion
#execute align zyx positioned ~.5 ~.1 ~.5 run function 1_splatus:spellbound/other/action/box2
tag @s add spellbound_itemaligned