
tellraw @s [{"translate": " "}]




execute if score spellbound_survival spellbound_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"Determines whether Spellbound Weapons can be naturally found in the world (chests, mob drops, etc) otherwise if disabled, weapons can only be accessed through commands"}]}},{"translate":"Weapons Obtainable: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/survival_disable"}}]
execute if score spellbound_survival spellbound_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"Determines whether Spellbound Weapons can be naturally found in the world (chests, mob drops, etc) otherwise if disabled, weapons can only be accessed through commands"}]}},{"translate":"Weapons Obtainable: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/survival_enable"}}]



tellraw @s [{"translate": " "}]


execute if score spellbound_dyes spellbound_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"Determines whether players can create weapon variants like dyed Crucibles and dagger variants"}]}},{"translate":"Weapon Variants: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/dye_disable"}}]
execute if score spellbound_dyes spellbound_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"Determines whether players can create weapon variants like dyed Crucibles and dagger variants"}]}},{"translate":"Weapon Variants: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/dye_enable"}}]



tellraw @s [{"translate": " "}]


execute if score spellbound_tips spellbound_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"Gives a short text tip above your hotbar when first holding certain weapons that have sneak abilities to better explain it to first time users"}]}},{"translate":"Weapon Tips: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/tip_disable"}}]
execute if score spellbound_tips spellbound_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"Gives a short text tip above your hotbar when first holding certain weapons that have sneak abilities to better explain it to first time users"}]}},{"translate":"Weapon Tips: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/tip_enable"}}]



tellraw @s [{"translate": " "}]



tellraw @s [{"translate": "","color": "yellow"},{"translate":"            ","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]}},{"translate":"    - 1/2 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"Page 2 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/menus/settings2"}},{"translate":"\n"}]

