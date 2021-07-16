// Isolated Planet
// ExtraUtils2\recipes\EssenceSeedFusion.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("Initializing 'ExtraUtils2_recipes_EssenceSeedFusion.zs'...");

var essence_seed_fusion = extrautilities2.Tweaker.IMachineRegistry.getMachine("essence_seed_fusion");

recipes.addShaped(<extrautils2:machine>.withTag({Type: "crafttweaker:essence_seed_fusion"}),
				[[<ore:stone>, <ore:stone>, <ore:stone>],
				 [<minecraft:furnace>, <contenttweaker:star_slate>.reuse(), <minecraft:furnace>],
				 [<mysticalagriculture:crafting>, <contenttweaker:stardust>, <mysticalagriculture:crafting>]]);

// Inferium Seeds
var essences = [
  <mysticalagriculture:crafting>,
  <mysticalagriculture:crafting:1>,
  <mysticalagriculture:crafting:2>,
  <mysticalagriculture:crafting:3>,
  <mysticalagriculture:crafting:4>,
  <mysticalagradditions:insanium>
] as IItemStack[];
var inferiumSeeds = [
  <mysticalagriculture:tier1_inferium_seeds>,
  <mysticalagriculture:tier2_inferium_seeds>,
  <mysticalagriculture:tier3_inferium_seeds>,
  <mysticalagriculture:tier4_inferium_seeds>,
  <mysticalagriculture:tier5_inferium_seeds>,
  <mysticalagradditions:tier6_inferium_seeds>
] as IItemStack[];
var count1 = 1;
var count2 = 10;
for i in 0 to 6 {
  essence_seed_fusion.addRecipe(
  {
	  "item_input": <mysticalagriculture:crafting:16>,
	  "SS_input": essences[i]*8
	},
	{
	  "item_output": inferiumSeeds[i]
	},
	500*count1, 20*count2
  );
  count1 *= 4;
  count2 += 10;
}

// LV.1 Seeds
var monsterSeedsTier1 = [
  <mysticalagriculture:zombie_seeds>,
  <mysticalagriculture:skeleton_seeds>,
  <mysticalagriculture:creeper_seeds>,
  <mysticalagriculture:spider_seeds>
] as IItemStack[];
var monsterChunksTier1 = [
  <mysticalagriculture:chunk:6>,
  <mysticalagriculture:chunk:12>,
  <mysticalagriculture:chunk:13>,
  <mysticalagriculture:chunk:14>
] as IItemStack[];
for i in 0 to 4 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:17>,
	    "SS_input": monsterChunksTier1[i]*2
    },
    {
      "item_output": monsterSeedsTier1[i]
    },
    500, 20*10
  );
}
// LV.2 Seeds
var basicSeedsTier2 = [
  <mysticalagriculture:dye_seeds>,
  <mysticalagriculture:coal_seeds>,
  <mysticalagriculture:silicon_seeds>,
  <mysticalagriculture:sulfur_seeds>,
  <mysticalagriculture:aluminum_seeds>,
  <mysticalagriculture:copper_seeds>,
  <mysticalagriculture:certus_quartz_seeds>
] as IItemStack[];
var basicItemsTier2 = [
  <mysticalagriculture:dye_essence>,
  <mysticalagriculture:coal_essence>,
  <mysticalagriculture:silicon_essence>,
  <mysticalagriculture:sulfur_essence>,
  <mysticalagriculture:aluminum_essence>,
  <mysticalagriculture:copper_essence>,
  <mysticalagriculture:certus_quartz_essence>
] as IItemStack[];
for i in 0 to 7 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:18>,
	    "SS_input": basicItemsTier2[i]*4
    },
    {
      "item_output": basicSeedsTier2[i]
    },
    2000, 20*15
  );
}
var monsterSeedsTier2 = [
  <mysticalagriculture:slime_seeds>,
  <mysticalagriculture:guardian_seeds>
] as IItemStack[];
var monsterChunksTier2 = [
  <mysticalagriculture:chunk:11>,
  <mysticalagriculture:chunk:16>
] as IItemStack[];
for i in 0 to 2 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:18>,
	    "SS_input": monsterChunksTier2[i]*2
    },
    {
      "item_output": monsterSeedsTier2[i]
    },
    2000, 20*15
  );
}
// LV.3 Seeds
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
var basicItemsTier3 = [
  <mysticalagriculture:iron_essence>,
  <mysticalagriculture:nether_quartz_essence>,
  <mysticalagriculture:glowstone_essence>,
  <mysticalagriculture:redstone_essence>,
  <mysticalagriculture:saltpeter_essence>,
  <mysticalagriculture:tin_essence>,
  <mysticalagriculture:silver_essence>,
  <mysticalagriculture:lead_essence>
] as IItemStack[];
for i in 0 to 8 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:19>,
	    "SS_input": basicItemsTier3[i]*4
    },
    {
      "item_output": basicSeedsTier3[i]
    },
    8000, 20*20
  );
}
var alloySeedsTier3 = [
  <mysticalagriculture:bronze_seeds>,
  <mysticalagriculture:steel_seeds>,
  <mysticalagriculture:redstone_alloy_seeds>,
  <mysticalagriculture:conductive_iron_seeds>,
  <mysticalagriculture:fluix_seeds>
] as IItemStack[];
var alloyItemsTier3 = [
  <thermalfoundation:material:163>,
  <thermalfoundation:material:160>,
  <enderio:item_alloy_ingot:3>,
  <enderio:item_alloy_ingot:4>,
  <appliedenergistics2:material:7>
] as IItemStack[];
for i in 0 to 5 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:19>,
	    "SS_input": alloyItemsTier3[i]*2
    },
    {
      "item_output": alloySeedsTier3[i]
    },
    8000, 20*20
  );
}
var monsterSeedsTier3 = [
  <mysticalagriculture:blaze_seeds>,
  <mysticalagriculture:blizz_seeds>,
  <mysticalagriculture:blitz_seeds>,
  <mysticalagriculture:basalz_seeds>
] as IItemStack[];
var monsterChunksTier3 = [
  <mysticalagriculture:chunk:17>,
  <mysticalagriculture:chunk:21>,
  <mysticalagriculture:chunk:22>,
  <mysticalagriculture:chunk:23>
] as IItemStack[];
for i in 0 to 4 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:19>,
	    "SS_input": monsterChunksTier3[i]*2
    },
    {
      "item_output": monsterSeedsTier3[i]
    },
    8000, 20*20
  );
}
// LV.4 Seeds
var basicSeedsTier4 = [
  <mysticalagriculture:gold_seeds>,
  <mysticalagriculture:lapis_lazuli_seeds>,
  <mysticalagriculture:nickel_seeds>
] as IItemStack[];
var basicItemsTier4 = [
  <mysticalagriculture:gold_essence>,
  <mysticalagriculture:lapis_lazuli_essence>,
  <mysticalagriculture:nickel_essence>
] as IItemStack[];
for i in 0 to 3 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:20>,
	    "SS_input": basicItemsTier4[i]*4
    },
    {
      "item_output": basicSeedsTier4[i]
    },
    32000, 20*25
  );
}
var alloySeedsTier4 = [
  <mysticalagriculture:constantan_seeds>,
  <mysticalagriculture:electrum_seeds>,
  <mysticalagriculture:invar_seeds>,
  <mysticalagriculture:mithril_seeds>,
  <mysticalagriculture:signalum_seeds>,
  <mysticalagriculture:lumium_seeds>,
  <mysticalagriculture:electrical_steel_seeds>,
  <mysticalagriculture:soularium_seeds>,
  <mysticalagriculture:dark_steel_seeds>,
  <mysticalagriculture:pulsating_iron_seeds>,
  <mysticalagriculture:energetic_alloy_seeds>
] as IItemStack[];
var alloyItemsTier4 = [
  <thermalfoundation:material:164>,
  <thermalfoundation:material:161>,
  <thermalfoundation:material:162>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:165>,
  <thermalfoundation:material:166>,
  <enderio:item_alloy_ingot>,
  <enderio:item_alloy_ingot:7>,
  <enderio:item_alloy_ingot:6>,
  <enderio:item_alloy_ingot:5>,
  <enderio:item_alloy_ingot:1>
] as IItemStack[];
for i in 0 to 11 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:20>,
	    "SS_input": alloyItemsTier4[i]*2
    },
    {
      "item_output": alloySeedsTier4[i]
    },
    32000, 20*25
  );
}
var monsterSeedsTier4 = [
  <mysticalagriculture:experience_seeds>,
  <mysticalagriculture:ghast_seeds>,
  <mysticalagriculture:enderman_seeds>
] as IItemStack[];
var monsterChunksTier4 = [
  <mysticalagriculture:chunk:5>,
  <mysticalagriculture:chunk:18>,
  <mysticalagriculture:chunk:19>
] as IItemStack[];
for i in 0 to 3 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:20>,
	    "SS_input": monsterChunksTier4[i]*2
    },
    {
      "item_output": monsterSeedsTier4[i]
    },
    32000, 20*25
  );
}
// LV.5 Seeds
var basicSeedsTier5 = [
  <mysticalagriculture:diamond_seeds>,
  <mysticalagriculture:emerald_seeds>,
  <mysticalagriculture:uranium_seeds>,
  <mysticalagriculture:platinum_seeds>,
  <mysticalagriculture:iridium_seeds>,
  <mysticalagriculture:draconium_seeds>
] as IItemStack[];
var basicItemsTier5 = [
  <mysticalagriculture:diamond_essence>,
  <mysticalagriculture:emerald_essence>,
  <mysticalagriculture:uranium_essence>,
  <mysticalagriculture:platinum_essence>,
  <mysticalagriculture:iridium_essence>,
  <mysticalagriculture:draconium_essence>
] as IItemStack[];
for i in 0 to 6 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:21>,
	    "SS_input": basicItemsTier5[i]*4
    },
    {
      "item_output": basicSeedsTier5[i]
    },
    128000, 20*30
  );
}
var alloySeedsTier5 = [
  <mysticalagriculture:enderium_seeds>,
  <mysticalagriculture:vibrant_alloy_seeds>,
  <mysticalagriculture:end_steel_seeds>
] as IItemStack[];
var alloyItemsTier5 = [
  <thermalfoundation:material:167>,
  <enderio:item_alloy_ingot:2>,
  <enderio:item_alloy_ingot:8>
] as IItemStack[];
for i in 0 to 3 {
  essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:21>,
	    "SS_input": alloyItemsTier5[i]*2
    },
    {
      "item_output": alloySeedsTier5[i]
    },
    128000, 20*30
  );
}
essence_seed_fusion.addRecipe(
    {
	    "item_input": <mysticalagriculture:crafting:21>,
	    "SS_input": <mysticalagriculture:chunk:20>*2
    },
    {
      "item_output": <mysticalagriculture:wither_skeleton_seeds>
    },
    128000, 20*30
  );

print("Initialized 'ExtraUtils2_recipes_EssenceSeedFusion.zs'.");