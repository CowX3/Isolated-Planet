// Isolated Planet
// ImmersiveEngineering.zs
// by CowX3

import scripts.globals;

print("Initializing 'ImmersiveEngineering.zs'...");

// Alloy Smelter
recipes.removeShaped(<immersiveengineering:stone_decoration:10>,
                    [[<ore:sandstone>, <ore:ingotBrick>],
                     [<ore:ingotBrick>, <ore:sandstone>]]);
recipes.addShaped("brick_nether_glazed", <enderio:item_material:72>*2,
                 [[null, <ore:netherrack>, null],
                  [<ore:itemClay>, <contenttweaker:stardust>, <ore:itemClay>],
                  [null, <ore:netherrack>, null]]);
recipes.addShaped("alloy_smelt", <immersiveengineering:stone_decoration:10>,
                 [[<ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>],
                  [<ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>]]);

// Alloy Smelter Recipes
globals.addAlloySmelt(<enderio:item_alloy_ingot>, <ore:ingotSteel>, <ore:itemSilicon>);
globals.addAlloySmelt(<enderio:item_alloy_ingot>, <ore:dustSteel>, <ore:itemSilicon>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:3>, <ore:dustRedstone>, <ore:itemSilicon>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:4>, <ore:ingotIron>, <ore:dustRedstone>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:4>, <ore:dustIron>, <ore:dustRedstone>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:5>, <ore:ingotIron>, <ore:enderpearl>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:5>, <ore:dustIron>, <ore:enderpearl>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:7>, <ore:ingotGold>, <minecraft:soul_sand>);
globals.addAlloySmelt(<enderio:item_alloy_ingot:7>, <ore:dustGold>, <minecraft:soul_sand>);



print("Initializied 'ImmersiveEngineering.zs'.");