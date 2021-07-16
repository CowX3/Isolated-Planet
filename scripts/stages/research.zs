// Isolated Planet
// stages\research.zs
// by CowX3

print("Initializing 'stages_research.zs'...");

recipes.addShaped(<researchtable:table>,
				[[<ore:stone>, <contenttweaker:stardust>, <ore:stone>],
				 [null, <ore:stone>, null],
				 [<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]]);
recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:stardust"}),
				[<minecraft:book>, <contenttweaker:stardust>]);

var researchType = mods.ResearchTable.addCategory(<contenttweaker:stardust>);

// Stardust Age 2 Research
mods.ResearchTable.builder("stardust_2", researchType)
	.setIcons(<contenttweaker:research_stardust2>)
	.setTitle("key.research.stardust2.title")
	.setDescription(" ")
	.setRequiredStages(STAGE.stardust1, STAGE.C_stardust2)
	.addCondition(<contenttweaker:stardust>*64)
	.addCondition(<minecraft:stone>*64)
	.addCondition(<minecraft:log>*64)
	.addCondition(<minecraft:cobblestone>*32)
	.addCondition(<minecraft:gravel>*32)
	.addCondition(<minecraft:sand>*32)
	.addCondition(<minecraft:dirt>*32)
	.addCondition(<minecraft:stone:1>*16)
	.addCondition(<minecraft:stone:3>*16)
	.addCondition(<minecraft:stone:5>*16)
	.addCondition(<chisel:marble2:7>*16)
	.addCondition(<chisel:limestone2:7>*16)
	.addCondition(<chisel:basalt2:7>*16)
	.addEnergyCondition(1000)
	.setRewardItems(<contenttweaker:research_stardust2>.withLore(["§bRight click!"]))
	.setMaxCount(1)
	.build();


print("Initialized 'stages_research.zs'.");