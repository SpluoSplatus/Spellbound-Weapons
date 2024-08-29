execute as @p[scores={spellbound_endlight=1..}] at @s positioned ~ ~1.4 ~ run particle block{block_state:"white_concrete"} ^ ^ ^.5 0 0 0 0 5 force @a[distance=..32]
execute as @p[scores={spellbound_endlight=1..}] at @s positioned ~ ~1.4 ~ run particle end_rod ^ ^ ^.5 0 0 0 .075 3 force @a[distance=..32]
execute at @s run playsound block.amethyst_cluster.break player @a[distance=..32] ~ ~ ~ 1 1.85

kill @s