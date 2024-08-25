#execute if entity @s[scores={spellbound_netherlight_stun=1}] run particle flash ~ ~1 ~ .3 .5 .3 .1 1 force @a[distance=..128]
execute if entity @s[scores={spellbound_netherlight_stun=1}] run particle end_rod ~ ~1 ~ .3 .5 .3 .075 3 force @a[distance=..128]

scoreboard players add @s spellbound_netherlight_stun 1

execute if entity @s[scores={spellbound_netherlight_stun=1..}] run tp @s ~ ~ ~
execute if entity @s[scores={spellbound_netherlight_stun=1..}] run tp @s ~ ~ ~

execute if entity @s[scores={spellbound_netherlight_stun=6..}] run scoreboard players set @s spellbound_netherlight_stun 0

