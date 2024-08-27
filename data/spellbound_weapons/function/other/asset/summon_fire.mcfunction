execute align zyx run summon marker ~.5 ~.5 ~.5 {Tags:["spellbound_marker","spellbound_fire"]}
fill ~ ~2 ~ ~ ~-2 ~ fire replace air
execute unless block ~ ~-1 ~ #spellbound_weapons:air run particle large_smoke ~ ~ ~ .3 .3 .3 .075 3 normal @a[distance=..32]