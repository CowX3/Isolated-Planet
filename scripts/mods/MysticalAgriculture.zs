// Isolated Planet
// MysticalAgriculture.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import crafttweaker.events.IEventManager;

import crafttweaker.util.IRandom;

import crafttweaker.recipes.IRecipeFunction;

print("Initializing 'MysticalAgriculture.zs'...");

// Soulstone
recipes.remove(<mysticalagriculture:soulstone>);
mods.inworldcrafting.FluidToItem.transform(<mysticalagriculture:soulstone:1>*8, <liquid:water>, [<minecraft:sand>*4, <minecraft:soul_sand>*4], true);

// Mob Chunks
var mobChunks = [
  <mysticalagriculture:chunk>,
  <mysticalagriculture:chunk:1>,
  <mysticalagriculture:chunk:2>,
  <mysticalagriculture:chunk:3>,
  <mysticalagriculture:chunk:4>,
  <mysticalagriculture:chunk:6>,
  <mysticalagriculture:chunk:11>,
  <mysticalagriculture:chunk:12>,
  <mysticalagriculture:chunk:13>,
  <mysticalagriculture:chunk:14>,
  <mysticalagriculture:chunk:16>,
  <mysticalagriculture:chunk:17>,
  <mysticalagriculture:chunk:18>,
  <mysticalagriculture:chunk:19>,
  <mysticalagriculture:chunk:20>,
  <mysticalagriculture:chunk:21>,
  <mysticalagriculture:chunk:22>,
  <mysticalagriculture:chunk:23>
] as IItemStack[];
for mobChunk in mobChunks {
  recipes.remove(mobChunk);
  furnace.remove(mobChunk);
}

// Inferium Seeds
var inferiumSeeds = [
  <mysticalagriculture:tier1_inferium_seeds>,
  <mysticalagriculture:tier2_inferium_seeds>,
  <mysticalagriculture:tier3_inferium_seeds>,
  <mysticalagriculture:tier4_inferium_seeds>,
  <mysticalagriculture:tier5_inferium_seeds>,
  <mysticalagradditions:tier6_inferium_seeds>
] as IItemStack[];
for inferiumSeed in inferiumSeeds {
  recipes.remove(inferiumSeed);
}

// Tier Seeds
var tierSeeds = [
  <ore:seedsTier1>,
  <ore:seedsTier2>,
  <ore:seedsTier3>,
  <ore:seedsTier4>,
  <ore:seedsTier5>,
  <ore:seedsTier6>
] as IIngredient[];
for tierSeed in tierSeeds {
  recipes.remove(tierSeed);
}

// Ore-Item Essences
var oreItemEssences = [
  <mysticalagriculture:coal_essence>,
  <mysticalagriculture:nether_quartz_essence>,
  <mysticalagriculture:glowstone_essence>,
  <mysticalagriculture:redstone_essence>,
  <mysticalagriculture:lapis_lazuli_essence>,
  <mysticalagriculture:diamond_essence>,
  <mysticalagriculture:emerald_essence>,
  <mysticalagriculture:silicon_essence>,
  <mysticalagriculture:sulfur_essence>,
  <mysticalagriculture:saltpeter_essence>,
  <mysticalagriculture:certus_quartz_essence>,
  <mysticalagriculture:fluix_essence>
] as IItemStack[];
var oreItemPieces = [
  <minecraft:coal>,
  <minecraft:quartz>,
  <minecraft:glowstone_dust>,
  <minecraft:redstone>,
  <minecraft:dye:4>,
  <minecraft:diamond>,
  <minecraft:emerald>,
  <enderio:item_material:5>,
  <thermalfoundation:material:771>,
  <thermalfoundation:material:772>,
  <appliedenergistics2:material>,
  <appliedenergistics2:material:7>
] as IItemStack[];
for i, oreItemEssence in oreItemEssences {
  recipes.addShaped(oreItemPieces[i]*8,
					[[oreItemEssence, oreItemEssence, oreItemEssence],
					 [oreItemEssence, null, oreItemEssence],
					 [oreItemEssence, oreItemEssence, oreItemEssence]]);
}

// Essences to Block
var essences = [
  <mysticalagriculture:crafting>,
  <mysticalagriculture:crafting:1>,
  <mysticalagriculture:crafting:2>,
  <mysticalagriculture:crafting:3>,
  <mysticalagriculture:crafting:4>,
  <mysticalagradditions:insanium>
] as IItemStack[];
var blockEssences = [
  <mysticalagriculture:storage>,
  <mysticalagriculture:storage:1>,
  <mysticalagriculture:storage:2>,
  <mysticalagriculture:storage:3>,
  <mysticalagriculture:storage:4>,
  <mysticalagradditions:storage>
] as IItemStack[];
for i, essence in essences {
  scripts.globals.replaceShapeless(essence*9, [blockEssences[i]]);
  scripts.globals.replaceShaped(blockEssences[i],
								[[essence,essence,essence],
								 [essence,essence,essence],
								 [essence,essence,essence]]);
}

// Solvent
mods.inspirations.Cauldron.addFluidTransform(<liquid:prosperity_solvent>, <mysticalagriculture:crafting:5>*2, <liquid:water>, 4, true);
var solvents = [
  <liquid:essence_solvent_inferium>,
  <liquid:essence_solvent_prudentium>,
  <liquid:essence_solvent_intermedium>,
  <liquid:essence_solvent_superium>,
  <liquid:essence_solvent_supremium>,
  <liquid:essence_solvent_insanium>
] as ILiquidStack[];
var count1 = 1;
for i, solvent in solvents {
  count1 *= 2;
  mods.inworldcrafting.FluidToFluid.transform(solvent, <liquid:water>, [essences[i], <mysticalagriculture:crafting:5>*count1], true);
  mods.inspirations.Cauldron.addFluidTransform(solvent, essences[i], <liquid:prosperity_solvent>, 4, true);
}

// Crafting Seeds
var craftingSeeds = [
  <mysticalagriculture:crafting:17>,
  <mysticalagriculture:crafting:18>,
  <mysticalagriculture:crafting:19>,
  <mysticalagriculture:crafting:20>,
  <mysticalagriculture:crafting:21>,
  <mysticalagradditions:insanium:1>
] as IItemStack[];
for i, craftingSeed in craftingSeeds {
  recipes.remove(craftingSeed);
  mods.inworldcrafting.FluidToItem.transform(craftingSeed*8, solvents[i], [<mysticalagriculture:crafting:16>*8], true);
  mods.inspirations.Cauldron.addFluidRecipe(craftingSeed*4, <mysticalagriculture:crafting:16>*4, solvents[i], 1, true);
}

// Essences
for i in 0 to 5 {
  recipes.removeShapeless(essences[i]*4, [essences[i+1]]);
  mods.inworldcrafting.FluidToItem.transform(essences[i+1]*4, solvents[i], [essences[i]*16], true);
  mods.inspirations.Cauldron.addFluidRecipe(essences[i+1], essences[i]*2, solvents[i], 1, true);
}

// Fertilizer
var count2 = 2;
for solvent in solvents {
  count2 *= 2;
  recipes.remove(<mysticalagriculture:mystical_fertilizer>);
  mods.inworldcrafting.FluidToItem.transform(<mysticalagriculture:mystical_fertilizer>*count2, solvent, [<minecraft:dye:15>], true);
  mods.inspirations.Cauldron.addFluidRecipe(<mysticalagriculture:mystical_fertilizer>*count2, <minecraft:dye:15>, solvent, 2, true);
}

// Random Seeds
// Lv.2 Seeds
var basicSeedsTier2 = [
  <mysticalagriculture:dye_seeds>,
  <mysticalagriculture:coal_seeds>,
  <mysticalagriculture:silicon_seeds>,
  <mysticalagriculture:sulfur_seeds>,
  <mysticalagriculture:aluminum_seeds>,
  <mysticalagriculture:copper_seeds>,
  <mysticalagriculture:certus_quartz_seeds>
] as IItemStack[];
// Lv.3 Seeds
var basicSeedsTier3 = [
  <mysticalagriculture:iron_seeds>,
  <mysticalagriculture:nether_quartz_seeds>,
  <mysticalagriculture:glowstone_seeds>,
  <mysticalagriculture:redstone_seeds>,
  <mysticalagriculture:saltpeter_seeds>,
  <mysticalagriculture:tin_seeds>,
  <mysticalagriculture:silver_seeds>,
  <mysticalagriculture:lead_seeds>
] as IItemStack[];
// Lv.4 Seeds
var basicSeedsTier4 = [
  <mysticalagriculture:gold_seeds>,
  <mysticalagriculture:lapis_lazuli_seeds>,
  <mysticalagriculture:nickel_seeds>
] as IItemStack[];
// Lv.5 Seeds
var basicSeedsTier5 = [
  <mysticalagriculture:diamond_seeds>,
  <mysticalagriculture:emerald_seeds>,
  <mysticalagriculture:uranium_seeds>,
  <mysticalagriculture:platinum_seeds>,
  <mysticalagriculture:iridium_seeds>,
  <mysticalagriculture:draconium_seeds>
] as IItemStack[];
function randomSeeds(input as IItemStack, seedList as IItemStack[], lore as string[]){
  recipes.addShapeless(input.withLore(lore),
  [<contenttweaker:star_slate>.reuse(), input],
  function(out, ins, cInfo) {
    var randnum = cInfo.player.world.random;
    var index = randnum.nextInt(0, seedList.length - 1);
    return seedList[index];
  } as IRecipeFunction, null);
}
randomSeeds(<mysticalagriculture:crafting:18>, basicSeedsTier2, ["§a此配方可随机获得任意二级矿石种子"]);
randomSeeds(<mysticalagriculture:crafting:19>, basicSeedsTier3, ["§6此配方可随机获得任意三级矿石种子"]);
randomSeeds(<mysticalagriculture:crafting:20>, basicSeedsTier4, ["§b此配方可随机获得任意四级矿石种子"]);
randomSeeds(<mysticalagriculture:crafting:21>, basicSeedsTier5, ["§c此配方可随机获得任意五级矿石种子"]);

print("Initialized 'MysticalAgriculture.zs'.");