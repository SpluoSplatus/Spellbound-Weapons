


title @s actionbar {"translate": "You can't use two ranged weapons on your mainhand and offhand at the same time"}

execute as @e[distance=..6,type=#spellbound_weapons:arrow,limit=1,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b}] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function spellbound_weapons:other/action/ranged_both_arrow
