#priority 90
#loader contenttweaker
// Isolated Planet
// contenttweaker\fluids.zs
// by CowX3

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

print("Initializing 'contenttweaker_fluids.zs'...");

// Fluid
function createFluid(name as string, color as string) {
  var fluid = VanillaFactory.createFluid(name, Color.fromHex(color));
  fluid.stillLocation = "contenttweaker:fluids/blank_still";
  fluid.flowingLocation = "contenttweaker:fluids/blank_flow";
  fluid.density = 800;
  fluid.viscosity = 800;
  fluid.register();
}
var fluidList = [
  "prosperity_solvent",
  "essence_solvent_inferium",
  "essence_solvent_prudentium",
  "essence_solvent_intermedium",
  "essence_solvent_superium",
  "essence_solvent_supremium",
  "essence_solvent_insanium",
  "bluestar_solution"
] as string[];
var colorList = [
  "BBDDDD",
  "748E00",
  "008C23",
  "B74900",
  "007FDB",
  "C40000",
  "5D008C",
  "002FFF"
] as string[];
for i in 0 to 8 {
  createFluid(fluidList[i], colorList[i]);
}

print("Initialized 'contenttweaker_fluids.zs'.");