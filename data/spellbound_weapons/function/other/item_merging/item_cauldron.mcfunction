execute if entity @s[type=item,nbt={Item:{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{"SpellboundCrucible":1b}}}}] run function spellbound_weapons:other/dyes/crucible/check
execute if score spellbound_dyes spellbound_settings matches 1 if entity @s[type=item,nbt={Item:{id:"minecraft:iron_shovel",components:{"minecraft:custom_data":{"SpellboundDagger":1b}}}}] run function spellbound_weapons:other/dyes/dagger/check


execute if score spellbound_dyes spellbound_settings matches 1 if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{"SpellboundThornBlossom":1b}}}}] run function spellbound_weapons:other/dyes/thorn_blossom/check