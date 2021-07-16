#priority 90
#loader contenttweaker
// Isolated Planet
// contenttweaker\researchnote.zs
// by CowX3

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.World;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;

print("Initializing 'contenttweaker_researchnote.zs'...");

// Stardust Age 1 Research
var stardust1 = VanillaFactory.createItem("research_stardust1");
stardust1.creativeTab = <creativeTab:isolatedplanet>;
stardust1.maxStackSize = 1;
stardust1.itemRightClick = function(stack, world, player, hand) {
  if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)){
    if (player.hasGameStage("check_stardust_1") && !player.hasGameStage("stardust_1")) {
      player.removeGameStage("check_stardust_1");
	    player.addGameStage("stardust_1");
	    Commands.call("playsound minecraft:entity.player.levelup player @p ~ ~ ~ 0.5", player, world, false, true);
      Commands.call("title @p reset", player, world, false, true);
	    Commands.call("title @p title {\"text\":\"星尘时代 阶段1\", \"color\":\"aqua\"}", player, world, false, true);
	    Commands.call("title @p subtitle {\"text\":\"Stardust Age 1\", \"color\":\"aqua\"}", player, world, false, true);
	    Commands.call("title @p times 20 40 20", player, world, false, true);
	    stack.shrink(1);
    } else if (player.hasGameStage("stardust_1")) {
      player.sendStatusMessage("你已经完成了这项研究！");
    } else if (!player.hasGameStage("check_stardust_1")) {
      player.sendStatusMessage("你还没有完成这项研究！");
    }
  }
  return "SUCCESS";
};
stardust1.register();

// Stardust Age 2 Research
var stardust2 = VanillaFactory.createItem("research_stardust2");
stardust2.creativeTab = <creativeTab:isolatedplanet>;
stardust2.maxStackSize = 1;
stardust2.itemRightClick = function(stack, world, player, hand) {
  if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)){
    if (player.hasGameStage("check_stardust_2") && !player.hasGameStage("stardust_2")) {
      player.removeGameStage("check_stardust_2");
	    player.addGameStage("stardust_2");
	    Commands.call("playsound minecraft:entity.player.levelup master @p ~ ~ ~ 0.5", player, world, false, true);
      Commands.call("title @p reset", player, world, false, true);
	    Commands.call("title @p title {\"text\":\"星尘时代 阶段2\", \"color\":\"aqua\"}", player, world, false, true);
	    Commands.call("title @p subtitle {\"text\":\"Stardust Age 2\", \"color\":\"aqua\"}", player, world, false, true);
	    Commands.call("title @p times 20 40 20", player, world, false, true);
	    stack.shrink(1);
    } else if (player.hasGameStage("stardust_2")) {
      player.sendStatusMessage("你已经完成了这项研究！");
    } else if (!player.hasGameStage("check_stardust_2")) {
      player.sendStatusMessage("你还没有完成这项研究！");
    }
  }
  return "SUCCESS";
};
stardust2.register();

// Stardust Age 3 Research
var stardust3 = VanillaFactory.createItem("research_stardust3");
stardust3.creativeTab = <creativeTab:isolatedplanet>;
stardust3.maxStackSize = 1;
stardust3.itemRightClick = function(stack, world, player, hand) {
  if (!world.remote && !extrautilities2.Tweaker.XUTweaker.isPlayerFake(player)){
    if (player.hasGameStage("check_stardust_3") && !player.hasGameStage("stardust_3")) {
      player.removeGameStage("check_stardust_3");
	    player.addGameStage("stardust_3");
	    Commands.call("playsound minecraft:entity.player.levelup master @p ~ ~ ~ 0.5", player, world, false, true);
      Commands.call("title @p reset", player, world, false, true);
	    Commands.call("title @p title {\"text\":\"星尘时代 阶段3\", \"color\":\"aqua\"}", player, world, false, true);
	    Commands.call("title @p subtitle {\"text\":\"Stardust Age 3\", \"color\":\"aqua\"}", player, world, false, true);
	    Commands.call("title @p times 20 40 20", player, world, false, true);
	    stack.shrink(1);
    } else if (player.hasGameStage("stardust_3")) {
      player.sendStatusMessage("你已经完成了这项研究！");
    } else if (!player.hasGameStage("check_stardust_3")) {
      player.sendStatusMessage("你还没有完成这项研究！");
    }
  }
  return "SUCCESS";
};
stardust3.register();

// Light Industry Research
var lightIndustry = VanillaFactory.createItem("research_light_industry");
lightIndustry.creativeTab = <creativeTab:isolatedplanet>;
lightIndustry.maxStackSize = 1;
lightIndustry.register();

// Heavy Industry Research
var heavyIndustry = VanillaFactory.createItem("research_heavy_industry");
heavyIndustry.creativeTab = <creativeTab:isolatedplanet>;
heavyIndustry.maxStackSize = 1;
heavyIndustry.register();

// Automation Research
var automation = VanillaFactory.createItem("research_automation");
automation.creativeTab = <creativeTab:isolatedplanet>;
automation.maxStackSize = 1;
automation.register();

// Draconic Research
var draconic = VanillaFactory.createItem("research_draconic");
draconic.creativeTab = <creativeTab:isolatedplanet>;
draconic.maxStackSize = 1;
draconic.register();



// Crafting 5*5 Research
var crafting5 = VanillaFactory.createItem("research_crafting5");
crafting5.creativeTab = <creativeTab:isolatedplanet>;
crafting5.maxStackSize = 1;
crafting5.register();

// Crafting 7*7 Research
var crafting7 = VanillaFactory.createItem("research_crafting7");
crafting7.creativeTab = <creativeTab:isolatedplanet>;
crafting7.maxStackSize = 1;
crafting7.register();

// Crafting 9*9 Research
var crafting9 = VanillaFactory.createItem("research_crafting9");
crafting9.creativeTab = <creativeTab:isolatedplanet>;
crafting9.maxStackSize = 1;
crafting9.register();

// Creative Research
var creative = VanillaFactory.createItem("research_creative");
creative.creativeTab = <creativeTab:isolatedplanet>;
creative.maxStackSize = 1;
creative.register();


print("Initialized 'contenttweaker_researchnote.zs'.");