playsound minecraft:item.axe.scrape player @a[distance=..20] ~ ~ ~ 1 .75
particle poof ~ ~ ~ 0 0 0 .05 5 force @a[distance=..32]
particle block netherite_block ~ ~ ~ 0 0 0 .2 5 force @a[distance=..32]


data modify entity @s Item.id set value "minecraft:diamond_sword"
summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b},PickupDelay:30,Motion:[-0.1,0.3,0.0]}

data merge entity @s {PickupDelay:30}
data merge entity @s {PickupDelay:30,Motion:[0.1,0.3,0.0]}