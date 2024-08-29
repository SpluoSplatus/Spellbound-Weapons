playsound minecraft:item.axe.scrape player @a[distance=..20] ~ ~ ~ 1 .75
particle poof ~ ~ ~ 0 0 0 .05 5 force @a[distance=..32]
particle block{block_state:"netherite_block"} ~ ~ ~ 0 0 0 .2 5 force @a[distance=..32]


data modify entity @s Item.id set value "minecraft:diamond_sword"

summon item ~ ~ ~ {Item:{id:"minecraft:netherite_upgrade_smithing_template",count:1},PickupDelay:30,Motion:[-0.08,0.3,-0.1]}

summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",count:1},PickupDelay:30,Motion:[-0.08,0.3,0.1]}

data merge entity @s {PickupDelay:30}
data merge entity @s {PickupDelay:30,Motion:[0.1,0.3,0.0]}