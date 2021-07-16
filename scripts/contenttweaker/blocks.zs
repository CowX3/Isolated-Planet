#priority 90
#loader contenttweaker
// Isolated Planet
// contenttweaker\blocks.zs
// by CowX3

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.DropHandler;

import crafttweaker.item.IItemStack;

print("Initializing 'contenttweaker_blocks.zs'...");

// Soulstone
function createSSE(level as string) {
  var soulstone = VanillaFactory.createBlock("soulstone_"+level, <blockmaterial:rock>);
  soulstone.creativeTab = <creativeTab:isolatedplanet>;
  soulstone.setBlockHardness(1.0);
  soulstone.setBlockResistance(4.0);
  soulstone.setToolClass("pickaxe");
  soulstone.register();
}
var levelList = [
  "inferium",
  "prudentium",
  "intermedium",
  "superium",
  "supremium",
  "insanium"
] as string[];
for level in levelList {
  createSSE(level);
}

// Block Crushed Charcoal
var block_crushed_charcoal = VanillaFactory.createBlock("block_crushed_charcoal", <blockmaterial:wood>);
block_crushed_charcoal.creativeTab = <creativeTab:isolatedplanet>;
block_crushed_charcoal.setBlockHardness(1.0);
block_crushed_charcoal.setBlockResistance(4.0);
block_crushed_charcoal.setToolClass("axe");
block_crushed_charcoal.setDropHandler(function(drops, world, position, state, player) {
  drops.clear();
  drops.add(<item:minecraft:coal:1>*2);
  drops.add(<item:minecraft:coal:1>%50);
  drops.add(<item:minecraft:coal:1>%25);
  return;
});
block_crushed_charcoal.register();



print("Initialized 'contenttweaker_blocks.zs'.");