

scoreboard players add temp spellbound_storage 1

execute positioned ~ ~1.62 ~ if block ~ ~ ~ vault unless data block ~ ~ ~ config.loot_table align zyx positioned ~.5 ~1 ~.5 run function spellbound_weapons:chest_insert/vault/vault_ominous_summon

execute positioned ~ ~1.62 ~ if block ~ ~ ~ vault if data block ~ ~ ~ config{loot_table:"minecraft:chests/trial_chambers/reward_ominous"} align zyx positioned ~.5 ~1 ~.5 run function spellbound_weapons:chest_insert/vault/vault_ominous_summon


execute unless block ~ ~1.62 ~ vault positioned ^ ^ ^.2 run function spellbound_weapons:chest_insert/vault/vault_ominous_raycast

execute if score temp spellbound_storage matches 25.. run scoreboard players reset temp spellbound_storage

advancement revoke @s only spellbound_weapons:interact/vault_ominous

