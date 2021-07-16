// Isolated Planet
// Inspirations.zs
// by CowX3

import mods.inspirations.Cauldron;

print("Initializing 'Inspirations.zs'...");

// Fluid Filling
Cauldron.addFillRecipe(<thermalexpansion:florb>.withTag({Fluid: "water"}), <liquid:water>, 4, null);
Cauldron.addFillRecipe(<thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <liquid:lava>, 4, null);


print("Initialized 'Inspirations.zs'.");