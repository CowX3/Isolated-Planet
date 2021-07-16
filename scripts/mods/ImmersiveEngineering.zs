// Isolated Planet
// ImmersiveEngineering.zs
// by CowX3

import scripts.globals;

print("Initializing 'ImmersiveEngineering.zs'...");

// Alloy Smelter
recipes.removeShaped(<immersiveengineering:stone_decoration:10>, 
                    [[<ore:sandstone>, <ore:ingotBrick>],
                     [<ore:ingotBrick>, <ore:sandstone>]]);
recipes.addShaped(<enderio:item_material:72>*2, 
                 [[null, <ore:netherrack>, null],
                  [<ore:itemClay>, <contenttweaker:stardust>, <ore:itemClay>],
                  [null, <ore:netherrack>, null]]);
recipes.addShaped(<immersiveengineering:stone_decoration:10>, 
                 [[<ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>],
                  [<ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>]]);

// Alloy Smelter Recipes
//globals.addAlloySmelt();

print("Initializied 'ImmersiveEngineering.zs'.");