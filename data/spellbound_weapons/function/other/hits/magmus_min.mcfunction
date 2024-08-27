
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant6"]}




execute if predicate spellbound_weapons:chance/25_percent run summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant6"]}
execute if predicate spellbound_weapons:chance/25_percent run summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant7"]}
execute if predicate spellbound_weapons:chance/25_percent run summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant8"]}
execute if predicate spellbound_weapons:chance/25_percent run summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}





kill @e[distance=..5,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area,sort=nearest,limit=1]

kill @s