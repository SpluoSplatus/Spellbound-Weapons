execute at @s[predicate=!1_splatus:spellbound/holding/enchant/fire_aspect,predicate=!1_splatus:spellbound/holding/enchant/fire_aspect2] as @e[distance=0.001..5,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s run function 1_splatus:spellbound/other/hits/blazing
execute at @s[predicate=1_splatus:spellbound/holding/enchant/fire_aspect] as @e[distance=0.001..5,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s run data modify entity @s Fire set value 120s
execute at @s[predicate=1_splatus:spellbound/holding/enchant/fire_aspect2] as @e[distance=0.001..5,type=!#1_splatus:spellbound/misc,nbt={HurtTime:10s}] at @s run data modify entity @s Fire set value 200s
