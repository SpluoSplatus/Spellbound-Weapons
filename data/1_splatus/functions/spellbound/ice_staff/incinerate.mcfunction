
execute if entity @s[type=fireball] run particle flame ~ ~ ~ 0 0 0 .05 10 force @a[distance=..32]
execute if entity @s[type=dragon_fireball] run particle dragon_breath ~ ~ ~ 0 0 0 .05 100 force @a[distance=..32]
execute if entity @s[type=dragon_fireball] run particle dragon_breath ~ ~ ~ 0 0 0 .2 20 force @a[distance=..32]
execute if entity @s[type=fireball] run particle lava ~ ~ ~ 0 0 0 .05 25 force @a[distance=..32]
execute if entity @s[type=marker,tag=spellbound_firestaff] run particle lava ~ ~ ~ 0 0 0 .05 25 force @a[distance=..32]
particle poof ~ ~ ~ .3 .3 .3 .2 40 force @a[distance=..128]
particle poof ~ ~ ~ .2 .5 .2 .05 20 force @a[distance=..128]
particle poof ~ ~ ~ .8 .8 .8 .05 3 force @a[distance=..128]
playsound block.fire.extinguish player @a[distance=..40] ~ ~ ~ 2.5 0.9
playsound block.fire.extinguish player @a[distance=..40] ~ ~ ~ 2.5 0.9
playsound block.fire.extinguish player @a[distance=..40] ~ ~ ~ 2.5 2
kill @s
data merge entity @s {Fire:-1,HasVisualFire:false}