particle minecraft:poof ~ ~ ~ .3 .3 .3 .02 2 force @a[distance=..128]

particle block bone_block ~ ~ ~ .3 .3 .3 .2 40 normal
fill ~ ~ ~ ~ ~ ~ air replace bone_block
playsound block.bone_block.break block @a[distance=..20] ~ ~ ~ 1 1
kill @s