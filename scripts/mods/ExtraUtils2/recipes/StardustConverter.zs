// Isolated Planet
// ExtraUtils2\recipes\StardustConverter.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("Initializing 'ExtraUtils2_recipes_StardustConverter.zs'...");

var stardust_converter = extrautilities2.Tweaker.IMachineRegistry.getMachine("stardust_converter");

// MACHINE CRAFTING
recipes.addShaped(<extrautils2:machine>.withTag({Type: "crafttweaker:stardust_converter"}),
				[[<ore:stone>, <ore:stone>, <ore:stone>],
				 [<minecraft:furnace>, <ore:gearStone>, <minecraft:furnace>],
				 [<contenttweaker:stardust>, <ore:logWood>, <contenttweaker:stardust>]]);

// LV.1 Essences
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <mysticalagriculture:crafting:5>*2
  },
  {
    "item_output": <mysticalagriculture:crafting>
  },
  12000, 20*30
);

// Sky Stone 
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <chisel:marble2:7>*4
  },
  {
    "item_output": <appliedenergistics2:sky_stone_block>*4
  },
  3000, 20*15
);

// End Stone
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <chisel:limestone2:7>*4
  },
  {
    "item_output": <minecraft:end_stone>*4
  },
  3000, 20*15
);

// Nether Rack
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <chisel:basalt2:7>*4
  },
  {
    "item_output": <minecraft:netherrack>*4
  },
  3000, 20*15
);

// Soul Sand
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <minecraft:sand>*4
  },
  {
    "item_output": <minecraft:soul_sand>*4
  },
  3000, 20*15
);

// Grass
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <minecraft:dirt>*4
  },
  {
    "item_output": <minecraft:grass>*4
  },
  3000, 20*15
);

// Sapling 
var logWoods = [
  <minecraft:log>,
  <minecraft:log:1>,
  <minecraft:log:2>,
  <minecraft:log:3>,
  <minecraft:log2>,
  <minecraft:log2:1>
] as IItemStack[];
var saplings = [
  <minecraft:sapling>,
  <minecraft:sapling:1>,
  <minecraft:sapling:2>,
  <minecraft:sapling:3>,
  <minecraft:sapling:4>,
  <minecraft:sapling:5>
] as IItemStack[];
var leaves = [
  <minecraft:leaves>,
  <minecraft:leaves:1>,
  <minecraft:leaves:2>,
  <minecraft:leaves:3>,
  <minecraft:leaves2>,
  <minecraft:leaves2:1>
] as IItemStack[];
for i in 0 to 6 {
  stardust_converter.addRecipe(
    {
      "SD_input": <contenttweaker:small_stardust>,
	    "item_input": logWoods[i]*4
    },
    {
      "item_output": saplings[i]*2
    },
    3000, 20*15
  );
  stardust_converter.addRecipe(
    {
      "SD_input": <contenttweaker:stardust>,
	    "item_input": saplings[i]*4
    },
    {
      "item_output": <thermalexpansion:florb>.withTag({Fluid: "water"})
    },
    3000, 20*15
  );
  stardust_converter.addRecipe(
    {
      "SD_input": <contenttweaker:stardust>,
	    "item_input": leaves[i]*16
    },
    {
      "item_output": <thermalexpansion:florb>.withTag({Fluid: "water"})*8
    },
    3000, 20*15
  );
}

// Lava Ball
stardust_converter.addRecipe(
  {
    "SD_input": <contenttweaker:stardust>,
	  "item_input": <minecraft:netherrack>*4
  },
  {
    "item_output": <thermalexpansion:florb>.withTag({Fluid: "lava"})*4
  },
  6000, 20*30
);

print("Initialized 'ExtraUtils2_recipes_StardustConverter.zs'.");