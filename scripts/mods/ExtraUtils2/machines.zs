#loader contenttweaker
// Isolated Planet
// ExtraUtils2\machines.zs
// by CowX3
import mods.zenutils.HexHelper;

print("Initializing 'ExtraUtils2_machines.zs'...");

// Essence Seed Fusion 精华种子融合器
var essence_seed_fusion = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("essence_seed_fusion", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("SS_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("SS_output", true, 64)],
  "contenttweaker:blocks/exu_machines/essence_seed_fusion",
  "contenttweaker:blocks/exu_machines/essence_seed_fusion_active",
  HexHelper.toDecInteger("AACCCC")
);

// Stardust Converter 星尘转化器
var stardust_converter = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("stardust_converter", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("SD_input", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  HexHelper.toDecInteger("11CFFF")
);

// Starlight Condenser 星光凝聚器
var starlight_condenser = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("starlight_condenser", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_input", 16000),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_output", 16000)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  HexHelper.toDecInteger("22A3FF")
);

// Star Fusion 繁星融合器
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
  HexHelper.toDecInteger("3377FF")
);

// Prosperity Dip-Washing Machine 活化浸洗机
var pro_dip_washing_machine = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("pro_dip_washing_machine", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_input", 16000),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64),
   extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_output", 16000)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  HexHelper.toDecInteger("AACCCC")
);

// Bluestar Crystallizer 蓝星结晶厂
var bluestar_crystallizer = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("bluestar_crystallizer", 400000, 400000,
  // input
  [extrautilities2.Tweaker.IMachineSlot.newFluidSlot("fluid_input", 16000),
   extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_input", true, 64)],
  // output
  [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("item_output", true, 64)],
  "contenttweaker:blocks/exu_machines/stardust_converter",
  "contenttweaker:blocks/exu_machines/stardust_converter_active",
  HexHelper.toDecInteger("3333FF")
);


print("Initialized 'ExtraUtils2_machines.zs'.");