#priority 90
// Isolated Planet
// contenttweaker\researchaction.zs
// by CowX3

import crafttweaker.recipes.IRecipeAction;
import crafttweaker.recipes.IRecipeFunction;

print("Initializing 'contenttweaker_researchaction.zs'...");

// Stardust Age 1 Research
recipes.addShapeless(<contenttweaker:research_stardust1>.withLore(["§bRight click!"]),
					[<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:stardust"}).reuse()],
					function(out, ins, cInfo) {
					  if (cInfo.player.hasAnyGameStages(STAGE.stardust1, STAGE.C_stardust1)) {
					    return null;
					  }
					  return out;
					} as IRecipeFunction, 
					function(out,cInfo,player){
					  player.addGameStage(STAGE.C_stardust1);
					} as IRecipeAction
);

print("Initialized 'contenttweaker_researchaction.zs'.");