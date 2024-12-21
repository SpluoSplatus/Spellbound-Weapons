playsound entity.zombie.converted_to_drowned block @a[distance=..32] ~ ~ ~ 1.5 1.1
playsound block.conduit.attack.target block @a[distance=..32] ~ ~ ~ 1.5 1.5
playsound block.conduit.attack.target block @a[distance=..32] ~ ~ ~ 1.5 .8
playsound block.conduit.attack.target block @a[distance=..32] ~ ~ ~ 1.5 2
playsound minecraft:item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ 1 .8
particle poof ~ ~.5 ~ .2 0 .2 .02 10 force @a[distance=..64]
particle block{block_state:"iron_block"} ~ ~.75 ~ .25 0 .25 1 5 force @a[distance=..32]

data modify entity @s Item.components.minecraft:custom_data.SpellboundDaggerVariant set value 1b
data modify entity @s Item.components.minecraft:custom_model_data set value {"floats":[47018]}
data modify entity @s Item.components.minecraft:item_name set value "{\"translate\":\"Dagger\",\"color\":\"#91e060\",\"italic\":false}"
data modify entity @s Item.components.minecraft:lore set value ["{\"translate\":\"Variant: Iron-Plated\",\"color\":\"gray\",\"italic\":false}","[ {\"translate\":\"Grindstone Repair: \",\"color\":\"gray\",\"italic\": false}]","[{\"translate\":\"  \",\"color\":\"gray\",\"italic\": false},{\"color\":\"blue\",\"italic\": false,\"translate\":\"item.minecraft.iron_shovel\"}]","{\"translate\":\"Spellbound Weapons\",\"color\":\"#676E75\",\"italic\":true}"]


kill @e[sort=nearest,type=item,nbt={Item:{id:"minecraft:iron_ingot"}},limit=1]
