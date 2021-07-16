#priority 100
#loader contenttweaker
// Isolated Planet
// contenttweaker\creativetab.zs
// by CowX3

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

print("Initializing 'contenttweaker_creativetab.zs'...");

VanillaFactory.createCreativeTab("isolatedplanet", <item:contenttweaker:stardust>).register();

print("Initialized 'contenttweaker_creativetab.zs'.");

