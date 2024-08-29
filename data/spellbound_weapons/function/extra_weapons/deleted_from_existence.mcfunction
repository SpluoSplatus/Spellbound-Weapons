
stopsound @a[distance=..20] hostile
stopsound @a[distance=..20] neutral
stopsound @a[distance=..20] player
stopsound @a[distance=..20] * entity.player.attack.sweep
particle block_marker{block_state:"minecraft:barrier"} ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
tp @s ~ -256 ~
kill @s

