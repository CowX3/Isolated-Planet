// Isolated Planet
// contenttweaker\recipes.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import crafttweaker.world.IWorld;
import crafttweaker.recipes.IRecipeFunction;

import crafttweaker.data.IData;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.events.IEventManager;

print("Initializing 'contenttweaker_recipes.zs'...");


// Block Crushed Charcoal
furnace.setFuel(<contenttweaker:block_crushed_charcoal>, 1600);
mods.inworldcrafting.FireCrafting.addRecipe(<contenttweaker:block_crushed_charcoal>, <ore:logWood>, 20*60);


// Snad
scripts.globals.replaceShapeless(<snad:snad>,
  [<contenttweaker:small_stardust>, <minecraft:sand>, <minecraft:sand>]);
scripts.globals.replaceShapeless(<snad:snad:1>,
  [<contenttweaker:small_stardust>, <minecraft:sand:1>, <minecraft:sand:1>]);


// Soulstone
var soulstones = [
  <contenttweaker:soulstone_inferium>,
  <contenttweaker:soulstone_prudentium>,
  <contenttweaker:soulstone_intermedium>,
  <contenttweaker:soulstone_superium>,
  <contenttweaker:soulstone_supremium>,
  <contenttweaker:soulstone_insanium>
] as IItemStack[];
var solvents = [
  <liquid:essence_solvent_inferium>,
  <liquid:essence_solvent_prudentium>,
  <liquid:essence_solvent_intermedium>,
  <liquid:essence_solvent_superium>,
  <liquid:essence_solvent_supremium>,
  <liquid:essence_solvent_insanium>
] as ILiquidStack[];
for i, soulstone in soulstones {
  mods.inworldcrafting.FluidToItem.transform(soulstone*16, solvents[i], [<mysticalagriculture:soulstone>*16], true);
  mods.inspirations.Cauldron.addFluidRecipe(soulstone*8, <mysticalagriculture:soulstone>*8, solvents[i], 1);
}


// SimpleIgniter
recipes.addShapeless(<contenttweaker:simple_igniter>,
					[<ore:plankWood>, <minecraft:stick>, <minecraft:stick>]);


// Broken Dragon Heart
recipes.addShaped(<contenttweaker:broken_dragon_heart>,
				[[null, <mysticalagradditions:awakened_draconium_essence>, null],
				 [<mysticalagradditions:awakened_draconium_essence>, null, <mysticalagradditions:awakened_draconium_essence>],
				 [null, <mysticalagradditions:awakened_draconium_essence>, null]]);


// Stardust
recipes.addShapeless(<contenttweaker:small_stardust>*4,
					[<contenttweaker:stardust>]);
recipes.addShapeless(<contenttweaker:stardust>,
					[<contenttweaker:small_stardust>, <contenttweaker:small_stardust>, <contenttweaker:small_stardust>, <contenttweaker:small_stardust>]);


// Essences -> clumps
var oreEssences = [
  <mysticalagriculture:iron_essence>,
  <mysticalagriculture:gold_essence>,
  <mysticalagriculture:aluminum_essence>,
  <mysticalagriculture:copper_essence>,
  <mysticalagriculture:tin_essence>,
  <mysticalagriculture:silver_essence>,
  <mysticalagriculture:lead_essence>,
  <mysticalagriculture:nickel_essence>,
  <mysticalagriculture:uranium_essence>,
  <mysticalagriculture:platinum_essence>,
  <mysticalagriculture:iridium_essence>,
  <mysticalagriculture:bronze_essence>,
  <mysticalagriculture:steel_essence>,
  <mysticalagriculture:constantan_essence>,
  <mysticalagriculture:electrum_essence>,
  <mysticalagriculture:invar_essence>,
  <mysticalagriculture:mithril_essence>,
  <mysticalagriculture:signalum_essence>,
  <mysticalagriculture:lumium_essence>,
  <mysticalagriculture:enderium_essence>,
  <mysticalagriculture:draconium_essence>,
  <mysticalagradditions:awakened_draconium_essence>,
  <mysticalagriculture:electrical_steel_essence>,
  <mysticalagriculture:energetic_alloy_essence>,
  <mysticalagriculture:vibrant_alloy_essence>,
  <mysticalagriculture:redstone_alloy_essence>,
  <mysticalagriculture:conductive_iron_essence>,
  <mysticalagriculture:pulsating_iron_essence>,
  <mysticalagriculture:dark_steel_essence>,
  <mysticalagriculture:soularium_essence>,
  <mysticalagriculture:end_steel_essence>
] as IItemStack[];
var clump = [
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
var dust = [
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
for i, oreEssence in oreEssences {
  recipes.addShaped(clump[i]*4,
					[[oreEssence, oreEssence, oreEssence],
					 [oreEssence, null, oreEssence],
					 [oreEssence, oreEssence, oreEssence]]);
  if (i != 21) {
    scripts.globals.addCrusher(dust[i]*4, clump[i]);
  } else {
    recipes.removeShaped(dust[i],
						[[oreEssence, oreEssence, oreEssence],
						 [oreEssence, oreEssence, oreEssence],
						 [oreEssence, oreEssence, oreEssence]]);
  }
}


// Clush/Dust -> Ingot
var ingotList = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <thermalfoundation:material:132>,
  <thermalfoundation:material:128>,
  <thermalfoundation:material:129>,
  <thermalfoundation:material:130>,
  <thermalfoundation:material:131>,
  <thermalfoundation:material:133>,
  <immersiveengineering:metal:5>,
  <thermalfoundation:material:134>,
  <thermalfoundation:material:135>,
  <thermalfoundation:material:163>,
  <thermalfoundation:material:160>,
  <thermalfoundation:material:164>,
  <thermalfoundation:material:161>,
  <thermalfoundation:material:162>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:165>,
  <thermalfoundation:material:166>,
  <thermalfoundation:material:167>,
  <draconicevolution:draconium_ingot>,
  <draconicevolution:nugget:1>,
  <enderio:item_alloy_ingot>,
  <enderio:item_alloy_ingot:1>,
  <enderio:item_alloy_ingot:2>,
  <enderio:item_alloy_ingot:3>,
  <enderio:item_alloy_ingot:4>,
  <enderio:item_alloy_ingot:5>,
  <enderio:item_alloy_ingot:6>,
  <enderio:item_alloy_ingot:7>,
  <enderio:item_alloy_ingot:8>
] as IItemStack[];
var specialIngotList = [
  <enderio:item_alloy_endergy_ingot>,
  <enderio:item_alloy_endergy_ingot:1>,
  <enderio:item_alloy_endergy_ingot:2>,
  <enderio:item_alloy_endergy_ingot:3>,
  <enderio:item_alloy_endergy_ingot:4>,
  <enderio:item_alloy_endergy_ingot:5>,
  <enderio:item_alloy_endergy_ingot:6>
] as IItemStack[];
var specialDustList = [
  <contenttweaker:material_part:101>,
  <contenttweaker:material_part:106>,
  <contenttweaker:material_part:111>,
  <contenttweaker:material_part:116>,
  <contenttweaker:material_part:121>,
  <contenttweaker:material_part:126>,
  <contenttweaker:material_part:131>
] as IItemStack[];
for i, ingot in ingotList {
  if (i != 21) {
    furnace.addRecipe(ingot*2, clump[i]);
  } else {
    furnace.addRecipe(ingot*3, clump[i]);
  }
}
for i in 22 to 31 {
  furnace.addRecipe(ingotList[i], dust[i]);
}
for i, specialIngot in specialIngotList {
  furnace.addRecipe(specialIngot, specialDustList[i]);
}


// Plates
var hammers = [
  <thermalfoundation:tool.hammer_copper>,
  <thermalfoundation:tool.hammer_tin>,
  <thermalfoundation:tool.hammer_silver>,
  <thermalfoundation:tool.hammer_lead>,
  <thermalfoundation:tool.hammer_aluminum>,
  <thermalfoundation:tool.hammer_nickel>,
  <thermalfoundation:tool.hammer_platinum>,
  <thermalfoundation:tool.hammer_steel>,
  <thermalfoundation:tool.hammer_electrum>,
  <thermalfoundation:tool.hammer_invar>,
  <thermalfoundation:tool.hammer_bronze>,
  <thermalfoundation:tool.hammer_constantan>,
  <thermalfoundation:tool.hammer_iron>,
  <thermalfoundation:tool.hammer_diamond>,
  <thermalfoundation:tool.hammer_gold>
] as IItemStack[];
var ingots = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <thermalfoundation:material:132>,
  <thermalfoundation:material:128>,
  <thermalfoundation:material:129>,
  <thermalfoundation:material:130>,
  <thermalfoundation:material:131>,
  <thermalfoundation:material:133>,
  <immersiveengineering:metal:5>,
  <thermalfoundation:material:134>,
  <thermalfoundation:material:135>,
  <thermalfoundation:material:163>,
  <thermalfoundation:material:160>,
  <thermalfoundation:material:164>,
  <thermalfoundation:material:161>,
  <thermalfoundation:material:162>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:165>,
  <thermalfoundation:material:166>,
  <thermalfoundation:material:167>,
  <draconicevolution:draconium_ingot>,
  <draconicevolution:draconic_ingot>,
  <enderio:item_alloy_ingot>,
  <enderio:item_alloy_ingot:1>,
  <enderio:item_alloy_ingot:2>,
  <enderio:item_alloy_ingot:3>,
  <enderio:item_alloy_ingot:4>,
  <enderio:item_alloy_ingot:5>,
  <enderio:item_alloy_ingot:6>,
  <enderio:item_alloy_ingot:7>,
  <enderio:item_alloy_ingot:8>,
  <enderio:item_alloy_endergy_ingot>,
  <enderio:item_alloy_endergy_ingot:1>,
  <enderio:item_alloy_endergy_ingot:2>,
  <enderio:item_alloy_endergy_ingot:3>,
  <enderio:item_alloy_endergy_ingot:4>,
  <enderio:item_alloy_endergy_ingot:5>,
  <enderio:item_alloy_endergy_ingot:6>
] as IItemStack[];
var plates = [
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:322>,
  <thermalfoundation:material:323>,
  <thermalfoundation:material:325>,
  <immersiveengineering:metal:35>,
  <thermalfoundation:material:326>,
  <thermalfoundation:material:327>,
  <thermalfoundation:material:355>,
  <thermalfoundation:material:352>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:354>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:358>,
  <thermalfoundation:material:359>,
  <jaopca:item_platedraconium>,
  <contenttweaker:material_part:43>,
  <contenttweaker:material_part:49>,
  <contenttweaker:material_part:55>,
  <contenttweaker:material_part:61>,
  <contenttweaker:material_part:67>,
  <contenttweaker:material_part:73>,
  <contenttweaker:material_part:79>,
  <contenttweaker:material_part:85>,
  <contenttweaker:material_part:91>,
  <contenttweaker:material_part:97>,
  <contenttweaker:material_part:102>,
  <contenttweaker:material_part:107>,
  <contenttweaker:material_part:112>,
  <contenttweaker:material_part:117>,
  <contenttweaker:material_part:122>,
  <contenttweaker:material_part:127>,
  <contenttweaker:material_part:132>
] as IItemStack[];
recipes.removeShapeless(<immersiveengineering:metal:39>, [<minecraft:iron_ingot>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:40>, [<minecraft:gold_ingot>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:31>, [<thermalfoundation:material:132>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:30>, [<thermalfoundation:material:128>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:33>, [<thermalfoundation:material:130>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:32>, [<thermalfoundation:material:131>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:34>, [<thermalfoundation:material:133>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:35>, [<immersiveengineering:metal:5>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:38>, [<thermalfoundation:material:160>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:36>, [<thermalfoundation:material:164>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:37>, [<thermalfoundation:material:161>, <immersiveengineering:tool>]);
for hammer in hammers {
  for i, plate in plates {
    recipes.addShaped(plate, [[hammer.anyDamage().transformDamage(1)], [ingots[i]], [ingots[i]]]);
  }
}
for i in 20 to 37 {
  mods.thermalexpansion.Compactor.addPressRecipe(plates[i], ingots[i], 4000);
  mods.immersiveengineering.MetalPress.addRecipe(plates[i], ingots[i], <immersiveengineering:mold>, 2400);
}


// Gears and Sticks
var gears = [
  <thermalfoundation:material:24>,
  <thermalfoundation:material:25>,
  <thermalfoundation:material:260>,
  <thermalfoundation:material:256>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:258>,
  <thermalfoundation:material:259>,
  <thermalfoundation:material:261>,
  <jaopca:item_gearuranium>,
  <thermalfoundation:material:262>,
  <thermalfoundation:material:263>,
  <thermalfoundation:material:291>,
  <thermalfoundation:material:288>,
  <thermalfoundation:material:292>,
  <thermalfoundation:material:289>,
  <thermalfoundation:material:290>,
  <thermalfoundation:material:264>,
  <thermalfoundation:material:293>,
  <thermalfoundation:material:294>,
  <thermalfoundation:material:295>,
  <contenttweaker:material_part:41>,
  <contenttweaker:material_part:46>,
  <contenttweaker:material_part:52>,
  <contenttweaker:material_part:58>,
  <contenttweaker:material_part:64>,
  <contenttweaker:material_part:70>,
  <contenttweaker:material_part:76>,
  <contenttweaker:material_part:82>,
  <contenttweaker:material_part:88>,
  <contenttweaker:material_part:94>,
  <contenttweaker:material_part:100>,
  <contenttweaker:material_part:105>,
  <contenttweaker:material_part:110>,
  <contenttweaker:material_part:115>,
  <contenttweaker:material_part:120>,
  <contenttweaker:material_part:125>,
  <contenttweaker:material_part:130>,
  <contenttweaker:material_part:135>
] as IItemStack[];
var sticks = [
  <immersiveengineering:material:1>,
  <jaopca:item_stickgold>,
  <immersiveengineering:material:3>,
  <jaopca:item_stickcopper>,
  <jaopca:item_sticktin>,
  <jaopca:item_sticksilver>,
  <jaopca:item_sticklead>,
  <jaopca:item_sticknickel>,
  <jaopca:item_stickuranium>,
  <jaopca:item_stickplatinum>,
  <jaopca:item_stickiridium>,
  <contenttweaker:material_part:13>,
  <contenttweaker:material_part:16>,
  <contenttweaker:material_part:19>,
  <contenttweaker:material_part:22>,
  <contenttweaker:material_part:25>,
  <contenttweaker:material_part:28>,
  <contenttweaker:material_part:31>,
  <contenttweaker:material_part:34>,
  <contenttweaker:material_part:37>,
  <contenttweaker:material_part:40>,
  <contenttweaker:material_part:45>,
  <contenttweaker:material_part:51>,
  <contenttweaker:material_part:57>,
  <contenttweaker:material_part:63>,
  <contenttweaker:material_part:69>,
  <contenttweaker:material_part:75>,
  <contenttweaker:material_part:81>,
  <contenttweaker:material_part:87>,
  <contenttweaker:material_part:93>,
  <contenttweaker:material_part:99>,
  <contenttweaker:material_part:104>,
  <contenttweaker:material_part:109>,
  <contenttweaker:material_part:114>,
  <contenttweaker:material_part:119>,
  <contenttweaker:material_part:124>,
  <contenttweaker:material_part:129>,
  <contenttweaker:material_part:134>
] as IItemStack[];
for hammer in hammers {
  for i, gear in gears {
    recipes.remove(sticks[i]);
    recipes.remove(gear);
    mods.immersiveengineering.MetalPress.removeRecipe(sticks[i]);
    mods.immersiveengineering.MetalPress.removeRecipe(gear);
    recipes.addShaped(sticks[i]*2,
      [[hammer.anyDamage().transformDamage(1), ingots[i]],
       [ingots[i], null]]);
    mods.immersiveengineering.MetalPress.addRecipe(sticks[i]*2, ingots[i], <immersiveengineering:mold:2>, 2400);
    recipes.addShaped(gear,
      [[sticks[i], sticks[i], sticks[i]],
       [sticks[i], hammer.anyDamage().transformDamage(1), sticks[i]],
       [sticks[i], sticks[i], sticks[i]]]);
    mods.immersiveengineering.MetalPress.addRecipe(gear, ingots[i]*4, <immersiveengineering:mold:1>, 3000);
  }
}


// Star Slate
recipes.addShaped(<contenttweaker:star_slate>,
				[[<ore:stoneGranite>, <ore:stoneDiorite>, <ore:stoneAndesite>],
				 [<ore:netherrack>, <contenttweaker:stardust>, <ore:endstone>],
				 [<ore:stoneMarble>, <ore:stoneLimestone>, <ore:stoneBasalt>]]);





print("Initialized 'contenttweaker_recipes.zs'.");