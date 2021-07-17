// Isolated Planet
// minecraft.zs
// by CowX3

import crafttweaker.item.IItemStack;

print("Initializing 'minecraft.zs'...");

// Basic Materials
recipes.addShaped("stardust_stone", <minecraft:stone>*32,
				[[<contenttweaker:stardust>, <contenttweaker:stardust>, <contenttweaker:stardust>],
				 [<contenttweaker:stardust>, null, <contenttweaker:stardust>],
				 [<contenttweaker:stardust>, <contenttweaker:stardust>, <contenttweaker:stardust>]]);
recipes.addShaped("stardust_cobblestone", <minecraft:cobblestone>*8,
				[[<ore:stone>, <ore:stone>, <ore:stone>],
				 [<ore:stone>, <contenttweaker:stardust>, <ore:stone>],
				 [<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShaped("stardust_gravel", <minecraft:gravel>*8,
				[[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
				 [<ore:cobblestone>, <contenttweaker:stardust>, <ore:cobblestone>],
				 [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShaped("stardust_sand", <minecraft:sand>*8,
				[[<ore:gravel>, <ore:gravel>, <ore:gravel>],
				 [<ore:gravel>, <contenttweaker:stardust>, <ore:gravel>],
				 [<ore:gravel>, <ore:gravel>, <ore:gravel>]]);
recipes.addShaped("stardust_dirt", <minecraft:dirt>*8,
				[[<ore:sand>, <ore:gravel>, <ore:sand>],
				 [<ore:gravel>, <contenttweaker:stardust>, <ore:gravel>],
				 [<ore:sand>, <ore:gravel>, <ore:sand>]]);
recipes.addShaped("stardust_log", <minecraft:log>*16,
				[[<contenttweaker:stardust>, <contenttweaker:stardust>],
				 [<contenttweaker:stardust>, <contenttweaker:stardust>]]);

// Seeds
var seedsList = [
  <minecraft:pumpkin_seeds>,
  <minecraft:melon_seeds>,
  <minecraft:beetroot_seeds>,
  <inspirations:cactus_seeds>,
  <inspirations:sugar_cane_seeds>,
  <inspirations:carrot_seeds>,
  <inspirations:potato_seeds>,
  <immersiveengineering:seed>
] as IItemStack[];
for seeds in seedsList{
  vanilla.seeds.addSeed(seeds % 10);
}
vanilla.seeds.removeSeed(<extrautils2:redorchid>);
vanilla.seeds.removeSeed(<extrautils2:enderlilly>);

// Charcoal
furnace.remove(<minecraft:coal:1>);

// Clay
mods.inworldcrafting.FluidToItem.transform(<minecraft:clay>*4, <liquid:water>, [<minecraft:sand>*4, <contenttweaker:stardust>], true);
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:clay>*2, <minecraft:sand>*2, <liquid:water>, 1, true);

// Flint
recipes.addShapeless("gravel_flint", <minecraft:flint>,
				 [<ore:gravel>, <ore:gravel>, <ore:gravel>]);

// Obsidian
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:obsidian>, <thermalexpansion:florb>.withTag({Fluid: "water"}), <liquid:lava>, 4);
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:obsidian>, <thermalexpansion:florb:1>.withTag({Fluid: "lava"}), <liquid:water>, 4);

// Paper
recipes.addShaped("stardust_paper", <minecraft:paper>,
				[[<contenttweaker:small_stardust>, <contenttweaker:small_stardust>, <contenttweaker:small_stardust>]]);


print("Initialized 'minecraft.zs'.");