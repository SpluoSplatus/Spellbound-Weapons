

scoreboard players add @s spellbound_count 1


execute if predicate 1_splatus:spellbound/chance/4_percent run tp @s ~ ~ ~ 90 ~
execute if predicate 1_splatus:spellbound/chance/4_percent run tp @s ~ ~ ~ -90 ~
execute if predicate 1_splatus:spellbound/chance/4_percent run tp @s ~ ~ ~ 180 ~
execute if predicate 1_splatus:spellbound/chance/4_percent run tp @s ~ ~ ~ -180 ~


execute if predicate 1_splatus:spellbound/chance/4_percent at @s run tp @s ~ ~ ~ ~ 90
execute if predicate 1_splatus:spellbound/chance/4_percent at @s run tp @s ~ ~ ~ ~ 0
execute if predicate 1_splatus:spellbound/chance/4_percent at @s run tp @s ~ ~ ~ ~ -90




execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if block ^ ^ ^.2 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.2
execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if block ^ ^ ^.2 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.2


execute unless block ~ ~ ~ #1_splatus:spellbound/permeable run tp @s ~ ~.2 ~


execute if score @s spellbound_count matches 10.. if predicate 1_splatus:spellbound/chance/10_percent run kill @s