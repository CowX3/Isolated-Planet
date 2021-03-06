#priority 200
// Isolated Planet
// globals.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.world.IWorld;

print("Initializing 'globals.zs'...");

function replaceShaped(id as string, output as IItemStack, input as IIngredient[][]) {
  recipes.remove(output);
  recipes.addShaped(id, output, input);
}

function replaceShapeless(id as string, output as IItemStack, input as IIngredient[]) {
  recipes.remove(output);
  recipes.addShapeless(id, output, input);
}

function addCrusher(output as IItemStack, input as IItemStack) {
  mods.appliedenergistics2.Grinder.addRecipe(output, input, 10);
  mods.extrautils2.Crusher.add(output, input);
  mods.immersiveengineering.Crusher.addRecipe(output, input, 4000);
  mods.thermalexpansion.Pulverizer.addRecipe(output, input, 4000);
}

function addCrusherProb(output1 as IItemStack, input as IItemStack, output2 as IItemStack, prob as float) {
  mods.appliedenergistics2.Grinder.addRecipe(output1, input, 10, output2, prob);
  mods.extrautils2.Crusher.add(output1, input, output2, prob);
  mods.immersiveengineering.Crusher.addRecipe(output1, input, 4000, output2, prob);
  mods.thermalexpansion.Pulverizer.addRecipe(output1, input, 4000, output2, prob*100);
}

function addAlloySmelt(output as IItemStack, input1 as IIngredient, input2 as IIngredient) {
  mods.immersiveengineering.AlloySmelter.addRecipe(output, input1, input2, 2000);
  mods.immersiveengineering.ArcFurnace.addRecipe(output, input1, null, 100, 512, [input2], "Alloying");
}

print("Initialized 'globals.zs'.");