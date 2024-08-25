
tellraw @s[advancements={1_splatus:spellbound/unlocked/crucible=true}] [{"translate": "\n","color": "yellow"},{"translate":"Crucible"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"Broken Crucible"},{"translate":" + "},{"translate":"block.minecraft.wither_skeleton_skull"},{"translate":" + "},{"translate":"item.minecraft.netherite_ingot"},{"translate":" + "},{"translate":"block.minecraft.redstone_block"}]}},{"translate":" "}]
tellraw @s[advancements={1_splatus:spellbound/unlocked/crucible=false}] [{"translate": "\n","color": "gray"},{"translate":"Crucible"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"Broken Crucible"},{"translate":" + "},{"translate":"block.minecraft.wither_skeleton_skull"},{"translate":" + "},{"translate":"item.minecraft.netherite_ingot"},{"translate":" + "},{"translate":"block.minecraft.redstone_block"}]}},{"translate":" "}]

tellraw @s [{"translate":""}]

tellraw @s [{"translate":"<-- Page 3","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/trigger spellbound_recipes set 3"}},{"translate":"    - 4/4 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"\n"}]


#playsound entity.experience_orb.pickup player @s