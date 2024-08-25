scoreboard players set @s[predicate=!1_splatus:spellbound/not_creative_spec,nbt=!{Invulnerable:1b}] smithed.damage 6
function #smithed.damage:entity/apply/armor

#if no damage dealt because of high prot armor (command above fails), it'll do always at least 1 damage
scoreboard players set @s[predicate=!1_splatus:spellbound/not_creative_spec,nbt=!{Invulnerable:1b}] smithed.damage 1
function #smithed.damage:entity/apply

scoreboard players set @s[predicate=!1_splatus:spellbound/not_creative_spec,nbt=!{Invulnerable:1b}] spellbound_damage 1

execute as @s[type=player,predicate=!1_splatus:spellbound/not_creative_spec] run playsound entity.player.hurt player @a[distance=..32] ~ ~ ~ 1 1