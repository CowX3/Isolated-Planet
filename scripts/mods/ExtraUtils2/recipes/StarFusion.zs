// Isolated Planet
// ExtraUtils2\recipes\StarFusion.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("Initializing 'ExtraUtils2_recipes_StarFusion.zs'...");

var star_fusion = extrautilities2.Tweaker.IMachineRegistry.getMachine("star_fusion");

// MACHINE CRAFTING


var stoneList = [
  <minecraft:stone>,
  <minecraft:stone:1>,
  <minecraft:stone:3>,
  <minecraft:stone:5>,
  <chisel:marble2:7>,
  <chisel:limestone2:7>,
  <chisel:basalt2:7>,
  <minecraft:stone>
] as IItemStack[];
var logList = [
  <minecraft:log>,
  <minecraft:log:1>,
  <minecraft:log:2>,
  <minecraft:log:3>,
  <minecraft:log2>,
  <minecraft:log2:1>,
  <minecraft:log>
] as IItemStack[];

// Stone Transform
for i in 0 to 7 {
  star_fusion.addRecipe(
    {
      "fluid_input": <liquid:bluestar_solution>*125,
      "item_input1": stoneList[i]*8
    },
    {
      "item_output": stoneList[i+1]*8
    },
    4000, 20*5
  );
}

// Log Transform
for i in 0 to 6 {
  star_fusion.addRecipe(
    {
      "fluid_input": <liquid:bluestar_solution>*125,
      "item_input1": logList[i]*8
    },
    {
      "item_output": logList[i+1]*8
    },
    4000, 20*5
  );
}

// 



print("Initialized 'ExtraUtils2_recipes_StarFusion.zs'.");