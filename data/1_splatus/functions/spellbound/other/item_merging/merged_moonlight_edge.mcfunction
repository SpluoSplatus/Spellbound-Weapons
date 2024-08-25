

summon item ~ ~ ~ {PickupDelay:20,Tags:["spellbound_item_moonlight_edge","spellbound_crafteditem"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:47046,SpellboundItem:1,SpellboundMoonlightEdge:1,display:{Name:'{"translate":"Moonlight Edge","color":"#9d64ed","italic":false}',Lore:['[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.diamond_sword"}]','{"translate":"Spellbound Weapons","color":"#676e75","italic": true}']},Enchantments:[{id:"unbreaking",lvl:1s}]}}}

function 1_splatus:spellbound/other/item_merging/merged_common

playsound minecraft:entity.vex.hurt block @a[distance=..32] ~ ~ ~ 2.00 .75

playsound minecraft:entity.allay.item_thrown block @a[distance=..32] ~ ~ ~ 2 .5

playsound minecraft:entity.allay.item_thrown block @a[distance=..32] ~ ~ ~ 2 .5

playsound minecraft:block.amethyst_block.chime block @a[distance=..32] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_block.chime block @a[distance=..32] ~ ~ ~ 2.00 .5


playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 .5
playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 1
playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 2
playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 1.5
playsound minecraft:block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ 2.00 2
#playsound minecraft:entity.stray.death block @a[distance=..32] ~ ~ ~ 2.00 1.35




particle end_rod ~ ~.15 ~ 0 0 0 .15 100 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .6 50 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .3 25 force @a[distance=..128]


kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:32b}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:golden_apple"}}]


kill @s