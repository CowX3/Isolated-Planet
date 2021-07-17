// Isolated Planet
// ExtraUtils2\recipes\ProDipWashing.zs
// by CowX3

import crafttweaker.item.IItemStack;

print("Initializing 'ExtraUtils2_recipes_ProDipWashing.zs'...");

var pro_dip_washing_machine = extrautilities2.Tweaker.IMachineRegistry.getMachine("pro_dip_washing_machine");

// MACHINE CRAFTING

var clumps = [
  <contenttweaker:material_part>,
  <contenttweaker:material_part:1>,
  <contenttweaker:material_part:2>,
  <contenttweaker:material_part:3>,
  <contenttweaker:material_part:4>,
  <contenttweaker:material_part:5>,
  <contenttweaker:material_part:6>,
  <contenttweaker:material_part:7>,
  <contenttweaker:material_part:8>,
  <contenttweaker:material_part:9>,
  <contenttweaker:material_part:10>,
  <contenttweaker:material_part:11>,
  <contenttweaker:material_part:14>,
  <contenttweaker:material_part:17>,
  <contenttweaker:material_part:20>,
  <contenttweaker:material_part:23>,
  <contenttweaker:material_part:26>,
  <contenttweaker:material_part:29>,
  <contenttweaker:material_part:32>,
  <contenttweaker:material_part:35>,
  <contenttweaker:material_part:38>,
  <contenttweaker:material_part:42>,
  <contenttweaker:material_part:47>,
  <contenttweaker:material_part:53>,
  <contenttweaker:material_part:59>,
  <contenttweaker:material_part:65>,
  <contenttweaker:material_part:71>,
  <contenttweaker:material_part:77>,
  <contenttweaker:material_part:83>,
  <contenttweaker:material_part:89>,
  <contenttweaker:material_part:95>
] as IItemStack[];
var dusts = [
  <thermalfoundation:material>,
  <thermalfoundation:material:1>,
  <thermalfoundation:material:68>,
  <thermalfoundation:material:64>,
  <thermalfoundation:material:65>,
  <thermalfoundation:material:66>,
  <thermalfoundation:material:67>,
  <thermalfoundation:material:69>,
  <immersiveengineering:metal:14>,
  <thermalfoundation:material:70>,
  <thermalfoundation:material:71>,
  <thermalfoundation:material:99>,
  <thermalfoundation:material:96>,
  <thermalfoundation:material:100>,
  <thermalfoundation:material:97>,
  <thermalfoundation:material:98>,
  <thermalfoundation:material:72>,
  <thermalfoundation:material:101>,
  <thermalfoundation:material:102>,
  <thermalfoundation:material:103>,
  <draconicevolution:draconium_dust>,
  <draconicevolution:nugget:1>,
  <contenttweaker:material_part:48>,
  <contenttweaker:material_part:54>,
  <contenttweaker:material_part:60>,
  <contenttweaker:material_part:66>,
  <contenttweaker:material_part:72>,
  <contenttweaker:material_part:78>,
  <contenttweaker:material_part:84>,
  <contenttweaker:material_part:90>,
  <contenttweaker:material_part:96>
] as IItemStack[];

for i, clump in clumps{
  pro_dip_washing_machine.addRecipe(
    {
      "fluid_input": <liquid:prosperity_solvent>*500,
      "item_input": clump
    },
    {
      "item_output": dusts[i]*6,
      "fluid_output": <liquid:water>*250
    },
    8000, 20*20
  );
}

print("Initialized 'ExtraUtils2_recipes_ProDipWashing.zs'.");