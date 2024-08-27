#advancement grant @s only minecraft:adventure/spellbound_all_weapons chainfiring_crossbow


item modify entity @s[predicate=spellbound_weapons:holding/weapon/chainfiring,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Chainfiring Crossbow"}'}}}}] weapon.mainhand spellbound_weapons:name/chainfiring

execute as @s[predicate=spellbound_weapons:holding/weapon/chainfiring,predicate=!spellbound_weapons:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand spellbound_weapons:ranged
execute as @s[predicate=spellbound_weapons:holding/weapon/chainfiring_offhand,predicate=!spellbound_weapons:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand spellbound_weapons:ranged

scoreboard players set @s[scores={spellbound_chainfiring_cooldown=-1}] spellbound_chainfiring_cooldown 5
scoreboard players add @s[scores={spellbound_chainfiring_cooldown=..4}] spellbound_chainfiring_cooldown 1
scoreboard players add @s[scores={spellbound_chainfiring_cooldown=100..}] spellbound_chainfiring_cooldown 1

execute if score @s spellbound_chainfiring_cooldown matches 2 run playsound minecraft:item.crossbow.loading_end player @a[distance=..32] ~ ~ ~ 1 1.8
execute if score @s spellbound_chainfiring_cooldown matches 4 run playsound minecraft:item.crossbow.loading_end player @a[distance=..32] ~ ~ ~ 1 1.8



# woah slow down there!!!
execute unless score @s spellbound_chainfiring_cooldown matches 1..5 as @e[distance=..6,type=#spellbound_weapons:chainfiring_ammo,limit=1,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b}] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function spellbound_weapons:chainfiring/woah_too_fast_buddy


#spectral arrows?

execute as @e[distance=..6,type=spectral_arrow,limit=1,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b}] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function spellbound_weapons:chainfiring/spectral_lol


#arrow event

execute if entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 15.. if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run function spellbound_weapons:chainfiring/action
execute unless entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 15.. run function spellbound_weapons:chainfiring/action

#firework event
execute if entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 200.. if entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Slot:-106b}]}] run function spellbound_weapons:chainfiring/action_firework
execute unless entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 200.. run function spellbound_weapons:chainfiring/action_firework


#firework shoot
execute if score @s spellbound_chainfiring_cooldown matches 1..5 as @e[distance=..6,type=firework_rocket,tag=!spellbound_arrow_checked2] if score @s spellbound_uuid = @p[scores={spellbound_chainfiring_cooldown=1..5}] spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run function spellbound_weapons:chainfiring/action_firework2

#arrow shoot
execute if score @s spellbound_chainfiring_cooldown matches 1..5 as @e[distance=..6,type=arrow,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_arrow_despawn] if score @s spellbound_uuid = @p[scores={spellbound_chainfiring_cooldown=1..5}] spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run function spellbound_weapons:chainfiring/action2


execute if score @s spellbound_chainfiring_cooldown matches 1..5 as @e[distance=..4,type=firework_rocket,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_firework] store result score @s spellbound_uuid run data get entity @s Owner[0]
execute if score @s spellbound_chainfiring_cooldown matches 1..5 as @e[distance=..4,type=firework_rocket,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_firework] store result score @s spellbound_uuid2 run data get entity @s Owner[1]


#meter

execute if score spellbound_chainmeter spellbound_count matches 1 unless score @s spellbound_chainfiring_cooldown matches 5 run function spellbound_weapons:chainfiring/meter

#projectile events end
execute if score @s spellbound_chainfiring_cooldown matches 125..199 run scoreboard players set @s spellbound_chainfiring_cooldown 0
execute if score @s spellbound_chainfiring_cooldown matches 225..299 run scoreboard players set @s spellbound_chainfiring_cooldown 0

