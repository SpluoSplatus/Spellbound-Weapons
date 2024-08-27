

execute if score @s spellbound_chainfiring_cooldown matches 101 run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5

execute if score @s spellbound_chainfiring_cooldown matches 102 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}
execute if score @s spellbound_chainfiring_cooldown matches 104 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}
execute if score @s spellbound_chainfiring_cooldown matches 106 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}
execute if score @s spellbound_chainfiring_cooldown matches 108 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}
execute if score @s spellbound_chainfiring_cooldown matches 110 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 112 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 114 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}

execute if score @s spellbound_chainfiring_cooldown matches 102 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s spellbound_chainfiring_cooldown matches 104 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s spellbound_chainfiring_cooldown matches 106 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s spellbound_chainfiring_cooldown matches 108 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s spellbound_chainfiring_cooldown matches 110 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 112 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 114 run data modify entity @e[distance=..5,type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID



#execute if score @s spellbound_chainfiring_cooldown matches 110 run summon minecraft:arrow ~ ~1.25 ~ {crit:1b,Tags:["spellbound_player3","spellbound_chainfiring_arrow_despawn"]}

execute if score @s spellbound_chainfiring_cooldown matches 102 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute if score @s spellbound_chainfiring_cooldown matches 104 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute if score @s spellbound_chainfiring_cooldown matches 106 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute if score @s spellbound_chainfiring_cooldown matches 108 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute if score @s spellbound_chainfiring_cooldown matches 110 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 112 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
execute unless entity @s[predicate=!spellbound_weapons:holding/enchant/multishot_offhand,predicate=!spellbound_weapons:holding/enchant/multishot] if score @s spellbound_chainfiring_cooldown matches 114 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1



#execute if score @s spellbound_chainfiring_cooldown matches 112 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1
#execute if score @s spellbound_chainfiring_cooldown matches 114 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1 1

#execute if score @s spellbound_chainfiring_cooldown matches 108 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 2 1
#execute if score @s spellbound_chainfiring_cooldown matches 110 run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 2 1

execute if score @s spellbound_chainfiring_cooldown matches 104 run clear @s[gamemode=!creative,gamemode=!spectator] arrow 1
execute if score @s spellbound_chainfiring_cooldown matches 108 run clear @s[gamemode=!creative,gamemode=!spectator] arrow 1
#execute if score @s spellbound_chainfiring_cooldown matches 112 run clear @s arrow 1

#execute if score @s spellbound_chainfiring_cooldown matches 110 run clear @s arrow 1

