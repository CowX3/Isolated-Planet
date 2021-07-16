// Isolated Planet
// ExtraUtils2\recipes\StarlightConsender.zs
// by CowX3

print("Initializing 'ExtraUtils2_recipes_StarlightConsender.zs'...");

var starlight_condenser = extrautilities2.Tweaker.IMachineRegistry.getMachine("starlight_condenser");

// MACHINE CRAFTING


starlight_condenser.addRecipe(
  {
    "fluid_input": <liquid:prosperity_solvent>*1000,
    "item_input": <contenttweaker:stardust>
  },
  {
    "fluid_output": <liquid:bluestar_solution>*1000
  },
  6000, 20*20
);
starlight_condenser.addRecipe(
  {
    "fluid_input": <liquid:prosperity_solvent>*250,
    "item_input": <contenttweaker:small_stardust>
  },
  {
    "fluid_output": <liquid:bluestar_solution>*250
  },
  1500, 20*5
);


print("Initialized 'ExtraUtils2_recipes_StarlightConsender.zs'.");