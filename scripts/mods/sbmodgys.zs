import crafttweaker.command.ICommandSender;
import crafttweaker.events.IEventManager;
import crafttweaker.data.IData;
import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;

var notverysbmod = [
  "\u0061\u0076\u0061\u0072\u0069\u0074\u0069\u0061",
  "\u0063\u0072\u006f\u0070\u0061\u0072\u0069\u0061",
  "\u0064\u0065\u0063\u006f\u006e\u0073\u0074\u0072\u0075\u0063\u0074\u0069\u006f\u006e",
  "\u0065\u0078\u006e\u0069\u0068\u0069\u006c\u006f\u0063\u0072\u0065\u0061\u0074\u0069\u006f",
  "\u0065\u0078\u006e\u0069\u0068\u0069\u006c\u006f\u006f\u006d\u006e\u0069\u0061",
  "\u0066\u006c\u0061\u006d\u006d\u0070\u0066\u0065\u0069\u006c\u002e\u0073\u006c\u0061\u0073\u0068\u0062\u006c\u0061\u0064\u0065",
  "\u0069\u0063\u0032",
  "\u0074\u0077\u0069\u006c\u0069\u0067\u0068\u0074\u0066\u006f\u0072\u0065\u0073\u0074",
  "\u0076\u0065\u0069\u006e\u006d\u0069\u006e\u0065\u0072"
] as string[];

var sbmodgys = [
  "\u0062\u0061\u0063\u0074\u0065\u0072\u0069\u0075\u006d",
  "\u006c\u0075\u0063\u006b\u0079",
  "\u0070\u0072\u006f\u006a\u0065\u0063\u0074\u0065",
  "\u0074\u006f\u0072\u0063\u0068\u0065\u0072\u0069\u006e\u006f",
  "\u0078\u0069\u006a\u0075\u006e"
] as string[];

for sbmod in notverysbmod {
	if (loadedMods in sbmod){
    	recipes.removeAll();
    	for item in loadedMods[sbmod].items {
      	mods.jei.JEI.removeAndHide(item);
    	}
		for mod in loadedMods {
			for item in mod.items {
				item.displayName = "§c§l" + "\u0023\u0045\u0052\u0052\u004f\u0052\u0023\u0020\u0023\u0045\u0052\u0052\u004f\u0052\u0023\u0020\u0023\u0045\u0052\u0052\u004f\u0052\u0023";
			}
		}
	}
}

for sbmod in sbmodgys {
  if (loadedMods in sbmod){
    recipes.removeAll();
    for item in loadedMods[sbmod].items {
      mods.jei.JEI.removeAndHide(item);
    }
    events.onPlayerLoggedIn(
      function (event as crafttweaker.event.PlayerLoggedInEvent) {
        var player = event.player;
		var god as ICommandSender = mods.ctutils.commands.Commands.getServerCommandSender();
		var x = player.position.x;
		var y = player.position.y;
		var z = player.position.z;
		if (player.creative || player.adventure) {
	      server.commandManager.executeCommand(god, "/gamemode survival");
	    }
		if (World.getGameRules(player.world).getBoolean("sendCommandFeedback")) {
		  server.commandManager.executeCommand(god, "/gamerule sendCommandFeedback false");
		}
		player.sendChat("§c§l" + "\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d");
		player.sendChat("§c§l" + "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u004d\u002e\u0053\u002e\u0047\u002e\u0041\u7ec8\u7aef\u0020\u8b66\u544a\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020");
		player.sendChat("§c§l" + "\u0020\u0020\u0020\u68c0\u6d4b\u5230\u6781\u5176\u5f3a\u70c8\u7684\u661f\u5c18\u5171\u9e23\u53cd\u5e94\u0020\u0020\u0020\u0020\u0020");
		player.sendChat("§c§l" + "\u0020\u9884\u8ba1\u5c06\u5728\u0033\u0030\u79d2\u5185\u53d1\u751f\u707e\u96be\u6027\u7a7a\u95f4\u6ce2\u52a8\u0020\u0020\u0020");
		player.sendChat("§c§l" + "\u0020\u9884\u8ba1\u5c06\u5728\u0033\u0030\u79d2\u5185\u53d1\u751f\u707e\u96be\u6027\u7a7a\u95f4\u6ce2\u52a8\u0020\u0020\u0020");
		player.sendChat("§c§l" + "\u0020\u9884\u8ba1\u5c06\u5728\u0033\u0030\u79d2\u5185\u53d1\u751f\u707e\u96be\u6027\u7a7a\u95f4\u6ce2\u52a8\u0020\u0020\u0020");
		player.sendChat("§c§l" + "\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d\u003d");
		server.commandManager.executeCommand(god, "/summon draconicevolution:entitychaosenergyvortex " + x + " " + 128 + " " + z);
	  }
    );
    events.onPlayerRespawn(
      function (event as crafttweaker.event.PlayerRespawnEvent) {
	    var player = event.player;
		var god as ICommandSender = mods.ctutils.commands.Commands.getServerCommandSender();
	    if (player.creative || player.adventure) {
	      server.commandManager.executeCommand(god, "/gamemode survival " + player.name);
	    }
	    player.health = 0.0f;
		player.sendChat(player.name + "\u6b7b\u4e8e\u661f\u5c18\u5171\u9e23\u53cd\u5e94\u6240\u5f15\u8d77\u7684\u707e\u96be\u6027\u7a7a\u95f4\u6ce2\u52a8");
	  }
    );
	events.onPlayerTick(
	  function (event as crafttweaker.event.PlayerTickEvent) {
	    var player = event.player;
		var god as ICommandSender = mods.ctutils.commands.Commands.getServerCommandSender();
	    if (player.creative || player.adventure) {
	      server.commandManager.executeCommand(god, "/gamemode survival " + player.name);
	    }
		if (World.getGameRules(player.world).getBoolean("keepInventory")) {
		  server.commandManager.executeCommand(god, "/gamerule keepInventory false");
		}
	  }
	);
  }
}

