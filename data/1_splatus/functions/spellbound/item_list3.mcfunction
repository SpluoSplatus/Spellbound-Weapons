tellraw @s [{"translate":"\nClick the name of an item to receive it\n","color":"yellow"}]

tellraw @s [{"translate":"Blowgun","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/items/blowgun"}},{"translate": "   ","underlined": false},{"translate":"Warped Crossbow","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/items/zg_crossbow"}},{"translate": "   ","underlined": false},{"translate":"Chainfiring Crossbow","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/items/chainfiring"}}]
tellraw @s [{"translate":"\n"},{"translate":"Endlight Bow","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/items/endlight"}},{"translate": "   ","underlined": false},{"translate":"Moonlight Edge","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/items/moonlight_edge"}},{"translate": "   ","underlined": false},{"translate":"Golden Sea Blade","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/items/golden_ocean_edge"}}]
#tellraw @s [{"translate":"                ","color": "yellow"},{"translate":"Page 2 --->\n","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/item_list2"}}]

tellraw @s [{"translate": "\n"},{"translate":"<-- Page 2","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/item_list2"}},{"translate":"    - 3/4 -     ","color": "gray","italic": false},{"translate":"Page 4 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:spellbound/item_list4"}},{"translate":"\n"}]
