
execute at @s run loot spawn ~ ~ ~ loot 1_splatus:spellbound/other/randomize_4

execute store result score @s spellbound_randomizer_output run data get entity @e[distance=..0.001,type=item,limit=1,nbt={Item:{tag:{SpellboundRandomizerItem:1}}}] Item.tag.SpellboundRandomizerOutput

kill @e[distance=..0.001,type=item,nbt={Item:{tag:{SpellboundRandomizerItem:1}}}]


execute run playsound minecraft:entity.witch.drink block @a[distance=..20] ~ ~ ~ 1 .9
execute if score @s spellbound_randomizer_output matches 1 run summon pufferfish ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}
execute if score @s spellbound_randomizer_output matches 2 run summon tropical_fish ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}
execute if score @s spellbound_randomizer_output matches 3 run summon salmon ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}
execute if score @s spellbound_randomizer_output matches 4 run summon cod ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}


summon pufferfish ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}

kill @s

