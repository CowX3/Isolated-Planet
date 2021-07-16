#priority 100
// Isolated Planet
// stages\stageslist.zs
// by CowX3

print("Initializing 'stages_stageslist.zs'...");

global STAGE as string[string] = {
  // Main Stages
  stardust1: "stardust_1",
  stardust2: "stardust_2",
  stardust3: "stardust_3",
  lightIndustry: "light_industry",
  heavyIndustry: "heavy_industry",
  automation: "automation",
  draconic: "draconic",

  // Branch Stages
  crafting5: "crafting_5",
  crafting7: "crafting_7",
  crafting9: "crafting_9",
  creative: "creative",

  // Research

  // others
  disabledMobs: "mobs",
  disabledDimension: "dimension",

  // Checking Stages
  C_stardust1: "check_stardust_1",
  C_stardust2: "check_stardust_2",
  C_stardust3: "check_stardust_3",
  C_lightIndustry: "check_light_industry",
  C_heavyIndustry: "check_heavy_industry",
  C_automation: "check_automation",
  C_draconic: "check_draconic"
};

print("Initialized 'stages_stageslist.zs'.");