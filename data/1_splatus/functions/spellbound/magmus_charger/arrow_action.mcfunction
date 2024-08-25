
execute if score @p[scores={spellbound_magmus_charger=1..}] spellbound_magmus_charger_cooldown matches 40.. run tag @s add spellbound_arrow_checked2
execute if score @p[scores={spellbound_magmus_charger=1..}] spellbound_magmus_charger_cooldown matches 40.. run tag @s add spellbound_magmus_charger_arrow
execute if score @p[scores={spellbound_magmus_charger=1..}] spellbound_magmus_charger_cooldown matches 40..89 run tag @s add spellbound_magmus_charger_arrow_mid 
execute as @p[scores={spellbound_magmus_charger=1..}] if score @s spellbound_magmus_charger_cooldown matches 80.. if entity @s as @e[sort=nearest,limit=1,type=#1_splatus:spellbound/arrow] positioned ~ ~1.52 ~ run function 1_splatus:spellbound/magmus_charger/summon

execute as @p[scores={spellbound_magmus_charger=1..}] if score @s[predicate=1_splatus:spellbound/holding/weapon/magmus] spellbound_magmus_charger_cooldown matches 40.. run item modify entity @s weapon.mainhand 1_splatus:spellbound/magmus
execute as @p[scores={spellbound_magmus_charger=1..}] if score @s[predicate=1_splatus:spellbound/holding/weapon/magmus_offhand] spellbound_magmus_charger_cooldown matches 40.. run item modify entity @s weapon.offhand 1_splatus:spellbound/magmus




execute as @p[scores={spellbound_magmus_charger=1..}] if score @s spellbound_magmus_charger_cooldown matches 80.. as @e[sort=nearest,limit=1,type=#1_splatus:spellbound/arrow] anchored eyes run kill @s


effect clear @p[scores={spellbound_magmus_charger=1}] slowness
playsound minecraft:block.fire.extinguish player @a[distance=..20] ~ ~ ~ 1.25 1.1

particle flame ~ ~1.62 ~ 0 0 0 .1 8 force @a[distance=..64]


execute if score @p[scores={spellbound_magmus_charger=1..}] spellbound_magmus_charger_cooldown matches ..39 run kill @s



advancement revoke @p[scores={spellbound_magmus_charger=1}] only 1_splatus:spellbound/magmus_charger
scoreboard players set @p[scores={spellbound_magmus_charger=1}] spellbound_magmus_charger_cooldown 0



