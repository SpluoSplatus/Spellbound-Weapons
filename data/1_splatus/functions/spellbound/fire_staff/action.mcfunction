execute as @s[scores={spellbound_f_staff_cooldown=49}] at @s run playsound minecraft:entity.illusioner.prepare_mirror ambient @a[distance=..20] ~ ~ ~ 1 1.5
execute as @s[scores={spellbound_f_staff_cooldown=49}] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 1.5 1.5


execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff,scores={spellbound_f_staff_cooldown=50}] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound/fire_staff_ready
execute as @s[predicate=1_splatus:spellbound/holding/weapon/fire_staff_offhand,scores={spellbound_f_staff_cooldown=50}] at @s run item modify entity @s weapon.offhand 1_splatus:spellbound/fire_staff_ready



#execute as @s[scores={spellbound_f_staff_cooldown=49..}] at @s positioned ~ ~0.75 ~ run particle electric_spark ^-.2 ^ ^.6 .1 .1 .1 .2 2 force @a[distance=..64]

#execute as @s[scores={spellbound_f_staff_cooldown=50..62}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar  [{"translate": "Fire Staff"},{"translate":" is charged! - 50/50"}]

#click
execute as @s[scores={spellbound_f_staff_cooldown=50..,spellbound_right_click=1..}] at @s positioned ~ ~1.5 ~ run function 1_splatus:spellbound/fire_staff/attack

execute as @s[scores={spellbound_f_staff_cooldown=..49,spellbound_right_click=1..}] anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_f_staff_cooldown=..49,spellbound_right_click=1..}] positioned ~ ~1.5 ~ run playsound entity.egg.throw player @a[distance=..32] ~ ~ ~ .5 .55

scoreboard players set @s[scores={spellbound_f_staff_cooldown=50..,spellbound_right_click=1..}] spellbound_f_staff_cooldown 0


