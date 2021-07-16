// Isolated Planet
// ExtraUtils2\others.zs
// by CowX3

print("Initializing 'ExtraUtils2_others.zs'...");

scripts.globals.replaceShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
  [[<ore:stone>, <ore:stone>, <ore:stone>],
   [<ore:stone>, <ore:blockCharcoal>, <ore:stone>],
   [<ore:gearStone>, <minecraft:furnace>, <ore:gearStone>]]);


print("Initialized 'ExtraUtils2_others.zs'.");