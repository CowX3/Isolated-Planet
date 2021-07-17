// Isolated Planet
// ExtraUtils2\recipes\BluestarCrystallizer.zs
// by CowX3

import crafttweaker.item.IItemStack;

print("Initializing 'ExtraUtils2_recipes_BluestarCrystallizer.zs'...");

var bluestar_crystallizer = extrautilities2.Tweaker.IMachineRegistry.getMachine("bluestar_crystallizer");

// MACHINE CRAFTING

var crystals = [
  <environmentaltech:litherite_crystal>,
  <environmentaltech:erodium_crystal>,
  <environmentaltech:kyronite_crystal>,
  <environmentaltech:pladium_crystal>,
  <environmentaltech:ionite_crystal>,
  <environmentaltech:aethium_crystal>,
  <environmentaltech:lonsdaleite_crystal>
] as IItemStack[];
var dustCrystals = [
  <contenttweaker:material_part:136>,
  <contenttweaker:material_part:139>,
  <contenttweaker:material_part:142>,
  <contenttweaker:material_part:145>,
  <contenttweaker:material_part:148>,
  <contenttweaker:material_part:151>,
  <contenttweaker:material_part:154>
] as IItemStack[];

for i, crystal in crystals{
  bluestar_crystallizer.addRecipe(
    {
      "fluid_input": <liquid:bluestar_solution>*1000,
      "item_input": dustCrystals[i]
    },
    {
      "item_output": crystal
    },
    12000, 20*30
  );
}

print("Initialized 'ExtraUtils2_recipes_BluestarCrystallizer.zs'.");