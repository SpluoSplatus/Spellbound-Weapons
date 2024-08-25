playsound minecraft:block.lava.pop block @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:block.lava.extinguish block @a[distance=..20] ~ ~ ~ 1 1

particle large_smoke ~ ~.3 ~ .1 .4 .1 .05 10 force @a[distance=..128]
particle poof ~ ~.3 ~ .1 .4 .1 .05 20 force @a[distance=..128]
particle lava ~ ~1 ~ .3 0 .3 1 20 force @a[distance=..128]
kill @s