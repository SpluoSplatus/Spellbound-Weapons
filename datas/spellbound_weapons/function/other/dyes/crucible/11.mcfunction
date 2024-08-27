playsound entity.zombie.converted_to_drowned block @a[distance=..32] ~ ~ ~ 1.5 1.1
playsound block.conduit.attack.target block @a[distance=..32] ~ ~ ~ 1.5 1.5
playsound block.conduit.attack.target block @a[distance=..32] ~ ~ ~ 1.5 .8
playsound block.conduit.attack.target block @a[distance=..32] ~ ~ ~ 1.5 2
playsound minecraft:item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ 1 .8
particle poof ~ ~.5 ~ .2 0 .2 .02 10 force @a[distance=..64]
particle block pink_concrete ~ ~.75 ~ .25 0 .25 1 5 force @a[distance=..32]

data modify entity @s Item.tag.CrucibleDye set value 11
data modify entity @s Item.tag.CustomModelData set value 47211
data modify entity @s Item.tag.display set value {Name:'{"translate":"Crucible","color":"#F38BAA","italic":false}',Lore:['{"translate":"Color: Pink","color":"gray","italic":false}','[{"translate":"Grindstone Repair: ","color":"gray","italic": false},{"translate":"item.minecraft.diamond_sword"}]','{"translate":"Spellbound Weapons","color":"#676E75","italic":true}']}
kill @e[sort=nearest,type=item,nbt={Item:{id:"minecraft:pink_dye"}},limit=1]