#priority 90
#loader contenttweaker
// Isolated Planet
// contenttweaker\items.zs
// by CowX3

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.World;
import mods.contenttweaker.Random;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands;

import crafttweaker.block.IBlock;
//import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockDefinition;
//import mods.contenttweaker.BlockState;
import mods.contenttweaker.BlockPos;
//import mods.contenttweaker.IBlockAction;

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.util.Position3f;


print("Initializing 'contenttweaker_items.zs'...");


// Small Stardust
var smallStardust = VanillaFactory.createItem("small_stardust");
smallStardust.creativeTab = <creativeTab:isolatedplanet>;
smallStardust.maxStackSize = 64;
smallStardust.onItemUse = function(player, world, pos, hand, facing, blockHit) {
  var blockPos = pos.getOffset(facing, 0);
  var blockInfo = world.getBlockState(blockPos).getBlock();
  var blockID = blockInfo.definition.id;
  var blockMeta = blockInfo.meta;
  var finishRecipe = false;
  // 石头 -> 其他岩石
  if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)){
    if (blockID == "minecraft:stone") {
      if (blockMeta == 0) {			// 花岗岩
        world.setBlockState(<block:minecraft:stone:1>, blockPos);
	  } else if (blockMeta == 1) {	// 闪长岩
	    world.setBlockState(<block:minecraft:stone:3>, blockPos);
	  } else if (blockMeta == 3) {	// 安山岩
	    world.setBlockState(<block:minecraft:stone:5>, blockPos);
	  } else if (blockMeta == 5) {	// 大理石
	    world.setBlockState(<block:chisel:marble2:7>, blockPos);
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    if (blockMeta == 7) {
      if (blockID == "chisel:marble2"){				// 石灰石
        world.setBlockState(<block:chisel:limestone2:7>, blockPos);
	  } else if (blockID == "chisel:limestone2") {	// 玄武岩
	    world.setBlockState(<block:chisel:basalt2:7>, blockPos);
	  } else if (blockID == "chisel:basalt2") {		// 石头
	    world.setBlockState(<block:minecraft:stone>, blockPos);
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    // 原木转换
    if (blockID == "minecraft:log") {
      // y轴
      if (blockMeta == 0) {			// 云杉
	    world.setBlockState(<block:minecraft:log:1>, blockPos);
	  } else if (blockMeta == 1) {	// 白桦
	    world.setBlockState(<block:minecraft:log:2>, blockPos);
	  } else if (blockMeta == 2) {	// 丛林
	    world.setBlockState(<block:minecraft:log:3>, blockPos);
	  } else if (blockMeta == 3) {	// 金合欢
	    world.setBlockState(<block:minecraft:log2:0>, blockPos);
	  }
	  // x轴
	  if (blockMeta == 4) {			// 云杉
	    world.setBlockState(<block:minecraft:log:5>, blockPos);
	  } else if (blockMeta == 5) {	// 白桦
	    world.setBlockState(<block:minecraft:log:6>, blockPos);
	  } else if (blockMeta == 6) {	// 丛林
	    world.setBlockState(<block:minecraft:log:7>, blockPos);
	  } else if (blockMeta == 7) {	// 金合欢
	    world.setBlockState(<block:minecraft:log2:4>, blockPos);
	  }
	  // z轴
	  if (blockMeta == 8) {			// 云杉
	    world.setBlockState(<block:minecraft:log:9>, blockPos);
	  } else if (blockMeta == 9) {	// 白桦
	    world.setBlockState(<block:minecraft:log:10>, blockPos);
	  } else if (blockMeta == 10) {	// 丛林
	    world.setBlockState(<block:minecraft:log:11>, blockPos);
	  } else if (blockMeta == 11) {	// 金合欢
	    world.setBlockState(<block:minecraft:log2:8>, blockPos);
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    if (blockID == "minecraft:log2") {
      // y轴
      if (blockMeta == 0) {			// 深色橡木
	    world.setBlockState(<block:minecraft:log2:1>, blockPos);
	  } else if (blockMeta == 1) {	// 橡木
	    world.setBlockState(<block:minecraft:log>, blockPos);
	  }
	  // x轴
	  if (blockMeta == 4) {			// 深色橡木
	    world.setBlockState(<block:minecraft:log2:5>, blockPos);
	  } else if (blockMeta == 5) {	// 橡木
	    world.setBlockState(<block:minecraft:log:4>, blockPos);
	  }
	  // z轴
	  if (blockMeta == 8) {			// 深色橡木
	    world.setBlockState(<block:minecraft:log2:9>, blockPos);
	  } else if (blockMeta == 9) {	// 橡木
	    world.setBlockState(<block:minecraft:log:8>, blockPos);
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
	// 沙子红沙转换
	if (blockID == "minecraft:sand") {
	  if (blockMeta == 0) {			// 红沙
        world.setBlockState(<block:minecraft:sand:1>, blockPos);
	  } else if (blockMeta == 1) {	// 沙子
	    world.setBlockState(<block:minecraft:sand>, blockPos);
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
	}
    // 玻璃 -> 1~4 活化水晶碎片
    if (blockID == "minecraft:glass") {
      if (player.hasGameStage("stardust_2")) {
        var count = world.getRandom().nextInt(4)+1;
        world.setBlockState(<block:minecraft:air>, blockPos);
	    Commands.call("give @p mysticalagriculture:crafting "+count+" 5", player, world, false, true);
	    player.getHeldItem(hand).shrink(1);
	    finishRecipe = true;
	  } else {
	    player.sendStatusMessage("需要进入'星尘时代 阶段2'");
	  }
    }
    // 泥土 -> 1~3 种子
    if (blockID == "minecraft:dirt") {
	  if (player.hasGameStage("stardust_2")) {
        var count = world.getRandom().nextInt(3)+1;
	    world.setBlockState(<block:minecraft:air>, blockPos);
	    if (count != 0) {
	      Commands.call("give @p minecraft:wheat_seeds "+count, player, world, false, true);
	    }
	    player.getHeldItem(hand).shrink(1);
	    finishRecipe = true;
	  } else {
	    player.sendStatusMessage("需要进入'星尘时代 阶段2'");
	  }
    }
    // 离魂石 -> 灵魂碎片
    // LV.1
    if (blockID == "contenttweaker:soulstone_inferium") {
      var prob = world.getRandom().nextInt(100);
	  world.setBlockState(<block:minecraft:air>, blockPos);
	  if (prob>=70) {
	    var count = world.getRandom().nextInt(4);
	    if (count == 0) {
	      Commands.call("give @p mysticalagriculture:chunk 1 6", player, world, false, true);
	    } else if (count == 1) {
	      Commands.call("give @p mysticalagriculture:chunk 1 12", player, world, false, true);
	    } else if (count == 2) {
	      Commands.call("give @p mysticalagriculture:chunk 1 13", player, world, false, true);
	    } else if (count == 3) {
	      Commands.call("give @p mysticalagriculture:chunk 1 14", player, world, false, true);
	    }
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    // LV.2
    if (blockID == "contenttweaker:soulstone_prudentium") {
      var prob1 = world.getRandom().nextInt(100);
	  var prob2 = world.getRandom().nextInt(100);
	  world.setBlockState(<block:minecraft:air>, blockPos);
	  if (prob1>=90) {
	    Commands.call("give @p mysticalagriculture:chunk 1 5", player, world, false, true);
	  }
	  if (prob2>=75) {
	    var count = world.getRandom().nextInt(2);
	    if (count == 0) {
	      Commands.call("give @p mysticalagriculture:chunk 1 11", player, world, false, true);
	    } else if (count == 1) {
	      Commands.call("give @p mysticalagriculture:chunk 1 16", player, world, false, true);
	    }
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    // LV.3
    if (blockID == "contenttweaker:soulstone_intermedium") {
      var prob = world.getRandom().nextInt(100);
	  world.setBlockState(<block:minecraft:air>, blockPos);
	  if (prob>=80) {
	    var count = world.getRandom().nextInt(4);
	    if (count == 0) {
	      Commands.call("give @p mysticalagriculture:chunk 1 17", player, world, false, true);
	    } else if (count == 1) {
	      Commands.call("give @p mysticalagriculture:chunk 1 21", player, world, false, true);
	    } else if (count == 2) {
	      Commands.call("give @p mysticalagriculture:chunk 1 22", player, world, false, true);
	    } else if (count == 3) {
	      Commands.call("give @p mysticalagriculture:chunk 1 23", player, world, false, true);
	    }
      }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    // LV.4
    if (blockID == "contenttweaker:soulstone_superium") {
      var prob = world.getRandom().nextInt(100);
	  world.setBlockState(<block:minecraft:air>, blockPos);
	  if (prob>=85) {
	  var count = world.getRandom().nextInt(2);
	    if (count == 0) {
	      Commands.call("give @p mysticalagriculture:chunk 1 18", player, world, false, true);
	    } else if (count == 1) {
	      Commands.call("give @p mysticalagriculture:chunk 1 19", player, world, false, true);
	    }
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    // LV.5
    if (blockID == "contenttweaker:soulstone_supremium") {
      var prob = world.getRandom().nextInt(100);
	  world.setBlockState(<block:minecraft:air>, blockPos);
	  if (prob>=90) {
	    var count = world.getRandom().nextInt(2);
	    if (count == 0) {
	      Commands.call("give @p mysticalagriculture:chunk 1 20", player, world, false, true);
	    } else if (count == 1) {
	      Commands.call("give @p mysticalagradditions:stuff 1 3", player, world, false, true);
	    }
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
	// LV.6
	if (blockID == "contenttweaker:soulstone_insanium") {
      var prob = world.getRandom().nextInt(100);
	  world.setBlockState(<block:minecraft:air>, blockPos);
	  if (prob>=95) {
	    var count = world.getRandom().nextInt(3);
	    if (count == 0) {
	      Commands.call("give @p mysticalagradditions:stuff 1", player, world, false, true);
	    } else if (count == 1) {
	      Commands.call("give @p mysticalagradditions:stuff 1 2", player, world, false, true);
	    } else if (count == 2) {
	      Commands.call("give @p contenttweaker:broken_dragon_heart 1", player, world, false, true);
	    }
	  }
	  player.getHeldItem(hand).shrink(1);
	  finishRecipe = true;
    }
    if(finishRecipe){
	  Commands.call("particle happyVillager "+pos.getX()+" "+pos.getY()+" "+pos.getZ()+" 0.5 0.5 0.5 0 20", player, world, false, true);
      Commands.call("playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.5", player, world, false, true);
    }
  }
  return ActionResult.success();
};
smallStardust.register();

// Stardust
var stardust = VanillaFactory.createItem("stardust");
stardust.creativeTab = <creativeTab:isolatedplanet>;
stardust.maxStackSize = 64;
/*
stardust.onItemUse = function(player, world, pos, hand, facing, blockHit) {

};
*/
stardust.register();

// Stardust Ingot
var ingotStardust = VanillaFactory.createItem("stardust_ingot");
ingotStardust.creativeTab = <creativeTab:isolatedplanet>;
ingotStardust.maxStackSize = 64;
ingotStardust.register();

// Star Slate
var starSlate = VanillaFactory.createItem("star_slate");
starSlate.creativeTab = <creativeTab:isolatedplanet>;
starSlate.maxStackSize = 1;
//starSlate.maxDamage = 1000;
starSlate.register();

// Broken Dragon Heart
var brokenDragonHeart = VanillaFactory.createItem("broken_dragon_heart");
brokenDragonHeart.creativeTab = <creativeTab:isolatedplanet>;
brokenDragonHeart.maxStackSize = 64;
brokenDragonHeart.register();

// Simple Igniter
var simpleIgniter = VanillaFactory.createItem("simple_igniter");
simpleIgniter.creativeTab = <creativeTab:isolatedplanet>;
simpleIgniter.maxStackSize = 1;
simpleIgniter.maxDamage = 50;
simpleIgniter.onItemUse = function(player, world, pos, hand, facing, blockHit) {
  var firePos = pos.getOffset(facing, 1);
  var prob = world.getRandom().nextInt(100);
  if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
    if (prob<20) {
	  world.setBlockState(<block:minecraft:fire>, firePos);
	}
    player.getHeldItem(hand).damage(1, player);
    return ActionResult.success();
  }
  return ActionResult.pass();
};
simpleIgniter.register();




// Debugging Stick
var debuggingStick = VanillaFactory.createItem("debugging_stick");
debuggingStick.creativeTab = <creativeTab:isolatedplanet>;
debuggingStick.maxStackSize = 1;
/*
debuggingStick.onItemUse = function(player, world, pos, hand, facing, blockHit) {
  if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)) {
    var worldtime = world.getWorldTime() % 24000;
	var hour = (worldtime / 1000) + 6;
	var minute = ((worldtime % 1000) * 60) / 1000;
	var hourStr as string;
	var minuteStr as string;
	if (hour>=24) {
	  hour -= 24;
	}
	if (hour<10) {
	  hourStr = "0" + hour;
	} else {
	  hourStr = "" + hour;
	}
	if (minute<10) {
	  minuteStr = "0" + minute;
	} else {
	  minuteStr = "" + minute;
	}
	player.sendStatusMessage(hourStr + " : " + minuteStr);
  }
  return ActionResult.pass();
};
*/
debuggingStick.register();



print("Initialized 'contenttweaker_items.zs'.");