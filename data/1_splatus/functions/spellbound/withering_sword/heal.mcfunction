playsound minecraft:block.conduit.attack.target player @a[distance=..32] ~ ~ ~ 2 .6
playsound minecraft:block.conduit.attack.target player @a[distance=..32] ~ ~ ~ 2 1.5

#particle end_rod ~ ~1 ~ 0 0 0 .3 8 force @a[distance=..32]
particle glow ~ ~1 ~ .5 .5 .5 .3 15 force @a[distance=..32]

particle soul ~ ~1 ~ .3 .3 .3 .1 20 force @a[distance=..96]
particle poof ~ ~1 ~ .3 .3 .3 .1 10 force @a[distance=..96]

particle dust_color_transition 0.129 0.192 0.361 2 1.000 0.000 0.467 ~ ~1 ~ .4 .6 .4 1 20 force @a[distance=..64]


execute as @s[tag=!spellbound_tip.witherblade_2] run function 1_splatus:spellbound/other/tips/checkmark
tag @s[tag=!spellbound_tip.witherblade_2] add spellbound_tip.witherblade_2

playsound minecraft:block.sculk_shrieker.break player @a[distance=..20] ~ ~ ~ 1 .5
effect give @s minecraft:regeneration 1 4 false
scoreboard players set @s spellbound_withering_energy 0


execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty
execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/summon_dusty

execute positioned ~ ~1 ~ run function 1_splatus:spellbound/withering_sword/wave_particle

# break
execute as @s[predicate=!1_splatus:spellbound/holding/enchant/unbreaking2,predicate=!1_splatus:spellbound/holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5
execute as @s[predicate=1_splatus:spellbound/holding/enchant/unbreaking2] if predicate 1_splatus:spellbound/chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5
execute as @s[predicate=1_splatus:spellbound/holding/enchant/unbreaking3] if predicate 1_splatus:spellbound/chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:spellbound/damage0.5


execute as @s[predicate=1_splatus:spellbound/holding/tag/0_durability] run particle minecraft:block blackstone ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=1_splatus:spellbound/holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=1_splatus:spellbound/holding/tag/0_durability] run item replace entity @s weapon.mainhand with air




scoreboard players set @s spellbound_withering_cooldown 0
scoreboard players set @s spellbound_withering_hit 0