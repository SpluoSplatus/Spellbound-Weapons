


tellraw @s[advancements={1_splatus:spellbound/unlocked/nether_fortress_core=true}] [{"translate": "\n","color": "yellow"},{"translate":"Blazeblade"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"Nether Fortress Core"},{"translate":" + "},{"translate":"item.minecraft.iron_sword"},{"translate":" + "},{"translate":"item.minecraft.blaze_powder"}]}},{"translate":" "}]
tellraw @s[advancements={1_splatus:spellbound/unlocked/nether_fortress_core=false}] [{"translate": "\n","color": "gray"},{"translate":"Blazeblade"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"Nether Fortress Core"},{"translate":" + "},{"translate":"item.minecraft.iron_sword"},{"translate":" + "},{"translate":"item.minecraft.blaze_powder"}]}},{"translate":" "}]



tellraw @s[advancements={1_splatus:spellbound/unlocked/nether_fortress_core=true}] [{"translate": "\n","color": "yellow"},{"translate":"Witherblade"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"Nether Fortress Core"},{"translate":" + "},{"translate":"item.minecraft.diamond_sword"},{"translate":" + "},{"translate":"block.minecraft.soul_sand"}]}},{"translate":" "}]
tellraw @s[advancements={1_splatus:spellbound/unlocked/nether_fortress_core=false}] [{"translate": "\n","color": "gray"},{"translate":"Witherblade"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"Nether Fortress Core"},{"translate":" + "},{"translate":"item.minecraft.diamond_sword"},{"translate":" + "},{"translate":"block.minecraft.soul_sand"}]}},{"translate":" "}]


tellraw @s[advancements={1_splatus:spellbound/unlocked/magmus_charger=true}] [{"translate": "\n","color": "yellow"},{"translate":"Magmus Charger"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"item.minecraft.bow"},{"translate":" + "},{"translate":"item.minecraft.netherite_ingot"},{"translate":" + "},{"translate":"item.minecraft.fire_charge"}]}}]
tellraw @s[advancements={1_splatus:spellbound/unlocked/magmus_charger=false}] [{"translate": "\n","color": "gray"},{"translate":"Magmus Charger"},{"translate":": "},{"translate":"Hover to View Recipe","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Drop these items ontop of a crafting table to craft"},{"text":"\n"},{"translate":"item.minecraft.bow"},{"translate":" + "},{"translate":"item.minecraft.netherite_ingot"},{"translate":" + "},{"translate":"item.minecraft.fire_charge"}]}}]

tellraw @s [{"translate":""}]

tellraw @s [{"translate":"<-- Page 2","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/trigger spellbound_recipes set 2"}},{"translate":"    - 3/4 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"Page 4 -->","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/trigger spellbound_recipes set 4"}},{"translate":"\n"}]


#playsound entity.experience_orb.pickup player @s