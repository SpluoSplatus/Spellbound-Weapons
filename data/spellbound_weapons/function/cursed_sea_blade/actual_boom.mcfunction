

execute if score @s spellbound_curse_cooldown matches 30 as @e[distance=..3] run function spellbound_weapons:other/damage/entity_damage6

particle poof ~ ~1 ~ .4 .4 .4 .2 60 force @a[distance=..128]
particle poof ~ ~1 ~ 0 0 0 .4 10 force @a[distance=..128]

playsound entity.generic.explode player @a[distance=..64] ~ ~ ~ 3 1.2

playsound entity.puffer_fish.blow_out player @a[distance=..32] ~ ~ ~ 2 .8
playsound entity.puffer_fish.blow_out player @a[distance=..32] ~ ~ ~ 2 1
playsound entity.puffer_fish.blow_out player @a[distance=..32] ~ ~ ~ 2 1.2
playsound entity.puffer_fish.blow_out player @a[distance=..32] ~ ~ ~ 2 1.4

#random
summon salmon ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"]}
summon salmon ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"]}
summon cod ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"]}
summon cod ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"]}
summon tropical_fish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"]}
summon tropical_fish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"]}


#1
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.25,0.0,0.25]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.25,0.0,-0.25]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.25,0.0,-0.25]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.25,0.0,0.25]}

#2
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.5,0.0,0.0]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.5,0.0,-0.0]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.0,0.0,-0.5]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.0,0.0,0.5]}






#1
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.125,0.5,0.125]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.125,0.5,-0.125]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.125,0.5,-0.125]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.125,0.5,0.125]}

#2
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.5,0.5,0.0]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.5,0.5,-0.0]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.0,0.5,-0.5]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.0,0.5,0.5]}


#1
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.125,-0.5,0.125]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.125,-0.5,-0.125]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.125,-0.5,-0.125]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.125,-0.5,0.125]}

#2
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.5,-0.5,0.0]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.5,-0.5,-0.0]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[0.0,-0.5,-0.5]}
summon pufferfish ~ ~1 ~ {PuffState:1,DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish","spellbound_cursedfish_boom"],Motion:[-0.0,-0.5,0.5]}


particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]


execute if score @s spellbound_curse_cooldown matches 30 run scoreboard players set @s spellbound_curse_cooldown 100
