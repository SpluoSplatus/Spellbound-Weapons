execute as @p at @s positioned ~ ~1.4 ~ run particle block{block_state:"yellow_glazed_terracotta"} ^ ^ ^1 .1 .1 .1 1 10 normal
playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..20] ~ ~ ~ .5 2
playsound minecraft:block.dripstone_block.break player @a[distance=..20] ~ ~ ~ 1 2
kill @s