
execute if score @s spellbound_chainfiring_cooldown matches 202 run summon minecraft:firework_rocket ~ ~1.25 ~ {LifeTime:13,ShotAtAngle:1,Tags:["spellbound_player3","spellbound_chainfiring_firework_add"]}
execute if score @s spellbound_chainfiring_cooldown matches 204 run summon minecraft:firework_rocket ~ ~1.25 ~ {LifeTime:13,ShotAtAngle:1,Tags:["spellbound_player3","spellbound_chainfiring_firework_add"]}
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 206 run summon minecraft:firework_rocket ~ ~-.5 ~ {LifeTime:13,ShotAtAngle:1b,Tags:["spellbound_player3","spellbound_chainfiring_firework_add"]}

execute if score @s spellbound_chainfiring_cooldown matches 202 run data modify entity @e[distance=..5,type=firework_rocket,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s spellbound_chainfiring_cooldown matches 204 run data modify entity @e[distance=..5,type=firework_rocket,limit=1,sort=nearest] Owner set from entity @s UUID

execute if score @s spellbound_chainfiring_cooldown matches 202 run data modify entity @e[distance=..5,type=firework_rocket,limit=1,sort=nearest] FireworksItem set from entity @s Inventory[{Slot:-106b}]
execute if score @s spellbound_chainfiring_cooldown matches 204 run data modify entity @e[distance=..5,type=firework_rocket,limit=1,sort=nearest] FireworksItem set from entity @s Inventory[{Slot:-106b}]


#execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 206 run data modify entity @e[distance=..5,type=firework_rocket,limit=1,sort=nearest] Owner set from entity @s UUID

#execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 206 run data modify entity @e[distance=..5,type=firework_rocket,limit=1,sort=nearest] FireworksItem set from entity @s Inventory[{Slot:-106b}]



execute if score @s spellbound_chainfiring_cooldown matches 202 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute if score @s spellbound_chainfiring_cooldown matches 204 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
#execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 206 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1


#execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 206 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1


#execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 206 run item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand spellbound_weapons:remove_one_offhand



#execute if score @s spellbound_chainfiring_cooldown matches 210 run item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand spellbound_weapons:remove_one_offhand

