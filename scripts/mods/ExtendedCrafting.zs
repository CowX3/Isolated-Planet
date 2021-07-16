// Isolated Planet
// ExtendedCrafting.zs
// by CowX3

import mods.extendedcrafting.CombinationCrafting;

print("Initializing 'ExtendedCrafting.zs'...");

// Combination Crafting
// Nether Star
recipes.removeShapeless(<minecraft:nether_star>,
						[<mysticalagradditions:stuff>, <mysticalagradditions:stuff>, <mysticalagradditions:stuff>]);
CombinationCrafting.addRecipe(<minecraft:nether_star>, 1000000, 1000,
								<contenttweaker:stardust>,
								[<mysticalagradditions:stuff>,
								 <mysticalagradditions:stuff>,
								 <mysticalagriculture:crafting:4>,
								 <mysticalagradditions:stuff>,
								 <mysticalagradditions:stuff>,
								 <mysticalagriculture:crafting:4>]);
// Dragon Egg
recipes.removeShapeless(<minecraft:dragon_egg>,
						[<mysticalagradditions:stuff:2>, <mysticalagradditions:stuff:2>, <mysticalagradditions:stuff:2>]);
CombinationCrafting.addRecipe(<minecraft:dragon_egg>, 1000000, 1000,
								<contenttweaker:stardust>,
								[<mysticalagradditions:stuff:2>,
								 <mysticalagradditions:stuff:2>,
								 <mysticalagriculture:crafting:4>,
								 <mysticalagradditions:stuff:2>,
								 <mysticalagradditions:stuff:2>,
								 <mysticalagriculture:crafting:4>]);
// Dragon Heart
CombinationCrafting.addRecipe(<draconicevolution:dragon_heart>, 1000000, 1000,
								<contenttweaker:stardust>,
								[<contenttweaker:broken_dragon_heart>,
								 <contenttweaker:broken_dragon_heart>,
								 <mysticalagriculture:crafting:4>,
								 <contenttweaker:broken_dragon_heart>,
								 <contenttweaker:broken_dragon_heart>,
								 <mysticalagriculture:crafting:4>]);
// Lv.6 Seeds
CombinationCrafting.addRecipe(<mysticalagradditions:nether_star_seeds>, 512000, 2048,
								<mysticalagradditions:insanium:1>,
								[<mysticalagradditions:stuff>,
								 <contenttweaker:stardust>,
								 <mysticalagriculture:chunk:20>,
								 <mysticalagriculture:crafting:4>,
								 <mysticalagradditions:stuff>,
								 <contenttweaker:stardust>,
								 <mysticalagriculture:chunk:20>,
								 <mysticalagriculture:crafting:4>]);
CombinationCrafting.addRecipe(<mysticalagradditions:dragon_egg_seeds>, 512000, 2048,
								<mysticalagradditions:insanium:1>,
								[<mysticalagradditions:stuff:2>,
								 <contenttweaker:stardust>,
								 <mysticalagradditions:stuff:3>,
								 <mysticalagriculture:crafting:4>,
								 <mysticalagradditions:stuff:2>,
								 <contenttweaker:stardust>,
								 <mysticalagradditions:stuff:3>,
								 <mysticalagriculture:crafting:4>]);
CombinationCrafting.addRecipe(<mysticalagradditions:awakened_draconium_seeds>, 512000, 2048,
								<mysticalagradditions:insanium:1>,
								[<contenttweaker:broken_dragon_heart>,
								 <contenttweaker:stardust>,
								 <draconicevolution:nugget:1>,
								 <mysticalagriculture:crafting:4>,
								 <contenttweaker:broken_dragon_heart>,
								 <contenttweaker:stardust>,
								 <draconicevolution:nugget:1>,
								 <mysticalagriculture:crafting:4>]);
print("Initialized 'ExtendedCrafting.zs'.");