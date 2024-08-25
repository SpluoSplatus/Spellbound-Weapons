


scoreboard players add @s spellbound_count 1


### if someone tries being sneaky and taking the bone block
execute if entity @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3] if block ~ ~ ~ air run scoreboard players set @s spellbound_count 100
execute if entity @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]


## break (no lure) - 3 seconds
execute as @s[scores={spellbound_count=60..},tag=!spellbound_bone_wand_area_lure] run function 1_splatus:spellbound/bone_wand/break

## break (lure I) - 4 seconds
execute as @s[scores={spellbound_count=80..},tag=spellbound_bone_wand_area_lureI] run function 1_splatus:spellbound/bone_wand/break

## break (lure II) - 5 seconds
execute as @s[scores={spellbound_count=100..},tag=spellbound_bone_wand_area_lureII] run function 1_splatus:spellbound/bone_wand/break

## break (lure III) - 6 seconds
execute as @s[scores={spellbound_count=120..},tag=spellbound_bone_wand_area_lureIII] run function 1_splatus:spellbound/bone_wand/break


### huh there's no bone block
execute unless block ~ ~ ~ bone_block run scoreboard players set @s spellbound_count 100
execute unless block ~ ~ ~ bone_block run kill @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]


execute unless block ~ ~ ~ bone_block run function 1_splatus:spellbound/bone_wand/break
