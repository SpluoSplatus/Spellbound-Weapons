
execute if predicate spellbound_weapons:chance/15_percent run data merge entity @s {HandItems:[{id:"minecraft:crossbow",count:1,components:{custom_model_data:{"floats":[47030]},custom_data:{SpellboundItem:1,SpellboundChainfiring:1},attribute_modifiers:{modifiers:[]},item_name:"{\"translate\":\"Chainfiring Crossbow\",\"color\":\"#c5e0e0\",\"italic\":false}",custom_name:"{\"translate\":\"Chainfiring Crossbow\",\"color\":\"#c5e0e0\",\"italic\":false}",lore:["[ {\"translate\":\"Grindstone Repair: \",\"color\":\"gray\",\"italic\": false}]","[{\"translate\":\"  \",\"color\":\"gray\",\"italic\": false},{\"color\":\"blue\",\"italic\": false,\"translate\":\"item.minecraft.crossbow\"}]","{\"translate\":\"Spellbound Weapons\",\"color\":\"#676e75\",\"italic\": true}"]}},{}],HandDropChances:[0.0f,0.0f],DeathLootTable:"spellbound_weapons:entity/chainfiring_pillager"}

tag @s add spellbound_spawnattempted
