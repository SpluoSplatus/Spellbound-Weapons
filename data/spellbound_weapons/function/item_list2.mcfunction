tellraw @s [{"translate":"\nClick the name of an item to receive it\n","color":"yellow"}]

tellraw @s [{"translate":"Witherblade","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:items/withering_sword"}},{"translate": "   ","underlined": false},{"translate":"Windsweeper","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:items/windsweeper"}},{"translate": "   ","underlined": false},{"translate":"Bone Wand","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:items/bone_wand"}}]
tellraw @s [{"translate":"\n"},{"translate":"Fire Staff","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:items/fire_staff"}},{"translate": "   ","underlined": false},{"translate":"Ice Staff","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:items/ice_staff"}},{"translate": "   ","underlined": false},{"translate":"Electric Staff","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to give"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:items/electric_staff"}}]
#tellraw @s [{"translate":"                ","color": "yellow"},{"translate":"Page 2 --->\n","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:item_list2"}}]

tellraw @s [{"translate":"\n"},{"translate": ""},{"translate":"<-- Page 1","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:item_list"}},{"translate":"    - 2/4 -     ","color": "gray","italic": false},{"translate":"Page 3 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function spellbound_weapons:item_list3"}},{"translate":"\n"}]


