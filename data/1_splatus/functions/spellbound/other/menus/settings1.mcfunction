
tellraw @s [{"translate": " "}]


execute if score spellbound_nocooldown spellbound_count matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"translate":"The cooldowns for weapons that take time to charge like the Staffs, when cooldowns are disabled they will immediately reach their final charge state."}]}},{"translate":"Weapon Cooldowns: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/cooldown_enable"}}]
execute if score spellbound_nocooldown spellbound_count matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"translate":"The cooldowns for weapons that take time to charge like the Staffs, when cooldowns are disabled they will immediately reach their final charge state."}]}},{"translate":"Weapon Cooldowns: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/cooldown_disable"}}]

tellraw @s [{"translate": " "}]




execute if score spellbound_survival spellbound_count matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"translate":"Determines whether Spellbound Weapons can be naturally found in Survival Mode (chests, mob drops, etc) otherwise if disabled, weapons can only be accessed through commands"}]}},{"translate":"Weapons Achieveable: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/survival_disable"}}]
execute if score spellbound_survival spellbound_count matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"translate":"Determines whether Spellbound Weapons can be naturally found in Survival Mode (chests, mob drops, etc) otherwise if disabled, weapons can only be accessed through commands"}]}},{"translate":"Weapons Achieveable: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/survival_enable"}}]



tellraw @s [{"translate": " "}]




execute if score spellbound_recipes spellbound_count matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"translate":"Messages in chat that display to the player when the required item for a certain weapon's recipe is achieved"}]}},{"translate":"Weapon Recipes Notification: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/recipe_disable"}}]
execute if score spellbound_recipes spellbound_count matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hoverEvent":{"action":"show_text","contents":[{"translate":"Description:"},{"translate":" "},{"translate":"Messages in chat that display to the player when the required item for a certain weapon's recipe is achieved"}]}},{"translate":"Weapon Recipes Notification: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to change this setting"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/action/menus/recipe_enable"}}]




tellraw @s [{"translate": " "}]



tellraw @s [{"translate": "","color": "yellow"},{"translate":"            ","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":""}},{"translate":"    - 1/2 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"Page 2 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/other/menus/settings2"}},{"translate":"\n"}]

