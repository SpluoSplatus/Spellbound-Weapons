
tellraw @s [{"translate": " "}]


execute if score spellbound_nocooldown spellbound_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"The cooldowns for weapons that take time to charge like the Staffs, when cooldowns are disabled they will immediately reach their final charge state."},{"text": "\n\nNote: This option is just available for the fun of it, but it is not intended nor balanced to be disabled for survival or pvp!","color": "gray"}]}},{"translate":"Weapon Cooldowns: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/cooldown_enable"}}]
execute if score spellbound_nocooldown spellbound_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"The cooldowns for weapons that take time to charge like the Staffs, when cooldowns are disabled they will immediately reach their final charge state."},{"text": "\n\nNote: This option is just available for the fun of it, but it is not intended nor balanced to be disabled for survival or pvp!","color": "gray"}]}},{"translate":"Weapon Cooldowns: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/cooldown_disable"}}]

tellraw @s [{"translate": " "}]


tellraw @s [{"translate": " "}]




#execute if score spellbound_tip spellbound_settings matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"The tips that display when using Bone Wand, Windswept Sword and Evokers Wrath"}]}},{"translate":"Weapon Tips: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/tip_disable"}}]
#execute if score spellbound_tip spellbound_settings matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":""},{"translate":"The tips that display when using Bone Wand, Windswept Sword and Evokers Wrath"}]}},{"translate":"Weapon Tips: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/action/menus/tip_enable"}}]

tellraw @s [{"translate": " "}]






tellraw @s [{"translate": " "}]





tellraw @s [{"translate": "\n","color": "yellow"},{"translate":"<-- Page 1","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:other/menus/settings1"}},{"translate":"    - 2/2 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"}]


tellraw @s [{"translate": " "}]
