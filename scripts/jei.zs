// Isolated Planet
// jei.zs
// by CowX3

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("Initializing 'jei.zs'...");


// hide
var hItemList = [
  // AppliedEnergistics
  <appliedenergistics2:facade:*>,

] as IItemStack[];

for hItem in hItemList {
  mods.jei.JEI.hide(hItem);
}

mods.jei.JEI.hide(<liquid:vasholine>);


// removeAndHide
var rhItemList = [
  // AppliedEnergistics
  <appliedenergistics2:material:40>,

  // EnderIO
  <enderio:item_broken_spawner:*>,
  <enderio:item_soul_vial:*>,
  <enderio:block_decoration1:*>,
  <enderio:block_decoration2:*>,
  <enderio:block_decoration3:*>,
  <enderio:item_alloy_ball:*>,
  <enderio:item_alloy_endergy_ball:*>,
  <enderio:item_power_conduit:*>,
  <enderio:item_endergy_conduit>,
  <enderio:item_endergy_conduit:1>,
  <enderio:item_endergy_conduit:2>,
  <enderio:item_endergy_conduit:3>,
  <enderio:item_material:9>,
  <enderio:item_material:10>,

  // ExtraUtils2
  <extrautils2:teleporter:*>,

  // MysticalAgriculture
  <mysticalagriculture:prosperity_ore>,
  <mysticalagriculture:nether_prosperity_ore>,
  <mysticalagriculture:end_prosperity_ore>,
  <mysticalagriculture:inferium_ore>,
  <mysticalagriculture:nether_inferium_ore>,
  <mysticalagriculture:end_inferium_ore>,
  <mysticalagriculture:infusion_crystal>,
  <mysticalagriculture:fertilized_essence>,
  <mysticalagriculture:tinkering_table:*>,
  <mysticalagradditions:tinkering_table>,
  <mysticalagriculture:charm:20>,
  <mysticalagradditions:charm>,
  <mysticalagriculture:inferium_arrow>,
  <mysticalagriculture:inferium_sword>,
  <mysticalagriculture:inferium_pickaxe>,
  <mysticalagriculture:inferium_shovel>,
  <mysticalagriculture:inferium_axe>,
  <mysticalagriculture:inferium_hoe>,
  <mysticalagriculture:inferium_shears>,
  <mysticalagriculture:inferium_bow>,
  <mysticalagriculture:inferium_sickle>,
  <mysticalagriculture:inferium_scythe>,
  <mysticalagriculture:inferium_fishing_rod>,
  <mysticalagriculture:inferium_helmet>,
  <mysticalagriculture:inferium_chestplate>,
  <mysticalagriculture:inferium_leggings>,
  <mysticalagriculture:inferium_boots>,
  <mysticalagradditions:inferium_paxel>,
  <mysticalagriculture:prudentium_arrow>,
  <mysticalagriculture:prudentium_sword>,
  <mysticalagriculture:prudentium_pickaxe>,
  <mysticalagriculture:prudentium_shovel>,
  <mysticalagriculture:prudentium_axe>,
  <mysticalagriculture:prudentium_hoe>,
  <mysticalagriculture:prudentium_shears>,
  <mysticalagriculture:prudentium_bow>,
  <mysticalagriculture:prudentium_sickle>,
  <mysticalagriculture:prudentium_scythe>,
  <mysticalagriculture:prudentium_fishing_rod>,
  <mysticalagriculture:prudentium_helmet>,
  <mysticalagriculture:prudentium_chestplate>,
  <mysticalagriculture:prudentium_leggings>,
  <mysticalagriculture:prudentium_boots>,
  <mysticalagradditions:prudentium_paxel>,
  <mysticalagriculture:intermedium_arrow>,
  <mysticalagriculture:intermedium_sword>,
  <mysticalagriculture:intermedium_pickaxe>,
  <mysticalagriculture:intermedium_shovel>,
  <mysticalagriculture:intermedium_axe>,
  <mysticalagriculture:intermedium_hoe>,
  <mysticalagriculture:intermedium_shears>,
  <mysticalagriculture:intermedium_bow>,
  <mysticalagriculture:intermedium_sickle>,
  <mysticalagriculture:intermedium_scythe>,
  <mysticalagriculture:intermedium_fishing_rod>,
  <mysticalagriculture:intermedium_helmet>,
  <mysticalagriculture:intermedium_chestplate>,
  <mysticalagriculture:intermedium_leggings>,
  <mysticalagriculture:intermedium_boots>,
  <mysticalagradditions:intermedium_paxel>,
  <mysticalagriculture:superium_arrow>,
  <mysticalagriculture:superium_sword>,
  <mysticalagriculture:superium_pickaxe>,
  <mysticalagriculture:superium_shovel>,
  <mysticalagriculture:superium_axe>,
  <mysticalagriculture:superium_hoe>,
  <mysticalagriculture:superium_shears>,
  <mysticalagriculture:superium_bow>,
  <mysticalagriculture:superium_sickle>,
  <mysticalagriculture:superium_scythe>,
  <mysticalagriculture:superium_fishing_rod>,
  <mysticalagriculture:superium_helmet>,
  <mysticalagriculture:superium_chestplate>,
  <mysticalagriculture:superium_leggings>,
  <mysticalagriculture:superium_boots>,
  <mysticalagradditions:superium_paxel>,
  <mysticalagriculture:supremium_scythe>,
  <mysticalagradditions:supremium_paxel>,
  <mysticalagriculture:chunk>,
  <mysticalagriculture:chunk:1>,
  <mysticalagriculture:chunk:2>,
  <mysticalagriculture:chunk:3>,
  <mysticalagriculture:chunk:4>,
  <mysticalagradditions:insanium:4>,
  <mysticalagriculture:soulium_dagger>,

  // NotEnoughWands
  <notenoughwands:teleportation_wand>,
  <notenoughwands:building_wand>,
  <notenoughwands:swapping_wand>,
  <notenoughwands:capturing_wand>,
  <notenoughwands:illumination_wand>,
  <notenoughwands:displacement_wand>,
  <notenoughwands:moving_wand>,
  <notenoughwands:protection_wand>,
  <notenoughwands:master_protection_wand>,
  <notenoughwands:freezing_wand>,
  <notenoughwands:potion_wand>,

  // TinyProgressions
  <tp:colored_glowstone:*>,
  <tp:colored_dust:*>,
  <tp:asphalt_block>,
  <tp:ghost_block>,
  <tp:quick_sand>,
  <tp:soul_sandstone>,
  <tp:charcoal_block>,
  <tp:reinforced_glass>,
  <tp:reinforced_obsidian>,
  <tp:juicer>,
  <tp:stone_hammer>,
  <tp:reinforced_obsidian_ingot>,
  <tp:obsidian_dust>,

] as IItemStack[];

for rhItem in rhItemList {
  recipes.remove(rhItem);
  mods.jei.JEI.removeAndHide(rhItem);
}


// addItem
var addItemList = [
  // EnderIO
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

for addItem in addItemList {
  mods.jei.JEI.addItem(addItem.withEmptyTag());
}

print("Initialized 'jei.zs'.");