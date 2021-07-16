#loader contenttweaker
// Isolated Planet
// ExtraUtils2\machines.zs
// by CowX3

print("Initializing 'ExtraUtils2_machines.zs'...");

// Essence Seed Fusion
var essence_seed_fusion = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("essence_seed_fusion", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("SS_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("SS_output", true, 64)],
  "contenttweaker:blocks/exu_machines/essence_seed_fusion",
  "contenttweaker:blocks/exu_machines/essence_seed_fusion_active",
  11193548
);

// Stardust Converter
var stardust_converter = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("stardust_converter", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("SD_input", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  1167359
);

// Starlight condenser
var starlight_condenser = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("starlight_condenser", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_input", 16000),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_output", 16000)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  2270207
);

// Star Fusion
var star_fusion = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("star_fusion", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_input", 16000),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input1", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input2", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input3", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  3373055
);

print("Initialized 'ExtraUtils2_machines.zs'.");