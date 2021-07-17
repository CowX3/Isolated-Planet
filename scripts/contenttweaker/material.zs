#priority 150
#loader contenttweaker
// Isolated Planet
// contenttweaker\materials.zs
// by CowX3

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;

print("Initializing 'contenttweaker_materials.zs'...");

// Parts
static builder as PartBuilder = mods.contenttweaker.MaterialSystem.getPartBuilder();
static wire as Part = builder.setName("wire").setPartType(MaterialSystem.getPartType("item")).setOreDictName("wire").build();

// Material List
static MaterialList as Material[string] = {
  "Iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(Color.fromHex("D3D3D3")).build(),
  "Gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(Color.fromHex("FFFF7A")).build(),
  "Aluminum": MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(Color.fromHex("DDE1E9")).build(),
  "Copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(Color.fromHex("DA9047")).build(),
  "Tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(Color.fromHex("B6CDDC")).build(),
  "Silver": MaterialSystem.getMaterialBuilder().setName("Silver").setColor(Color.fromHex("DBEDF2")).build(),
  "Lead": MaterialSystem.getMaterialBuilder().setName("Lead").setColor(Color.fromHex("6E7898")).build(),
  "Nickel": MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(Color.fromHex("E6E9C8")).build(),
  "Uranium": MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(Color.fromHex("76876B")).build(),
  "Platinum": MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(Color.fromHex("C2FFFF")).build(),
  "Iridium": MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(Color.fromHex("FFFFFF")).build(),

  "Bronze": MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(Color.fromHex("F2BE84")).build(),
  "Steel": MaterialSystem.getMaterialBuilder().setName("Steel").setColor(Color.fromHex("ADADAD")).build(),
  "Constantan": MaterialSystem.getMaterialBuilder().setName("Constantan").setColor(Color.fromHex("F9D27C")).build(),
  "Electrum": MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(Color.fromHex("FFFC8C")).build(),
  "Invar": MaterialSystem.getMaterialBuilder().setName("Invar").setColor(Color.fromHex("AAB3AE")).build(),
  "Mithril": MaterialSystem.getMaterialBuilder().setName("Mithril").setColor(Color.fromHex("7FBCDA")).build(),
  "Signalum": MaterialSystem.getMaterialBuilder().setName("Signalum").setColor(Color.fromHex("E56000")).build(),
  "Lumium": MaterialSystem.getMaterialBuilder().setName("Lumium").setColor(Color.fromHex("E4F16B")).build(),
  "Enderium": MaterialSystem.getMaterialBuilder().setName("Enderium").setColor(Color.fromHex("075353")).build(),

  "Draconium": MaterialSystem.getMaterialBuilder().setName("Draconium").setColor(Color.fromHex("B680ED")).build(),
  "DraconiumAwakened": MaterialSystem.getMaterialBuilder().setName("Draconiumawakened").setColor(Color.fromHex("FFC200")).build(),

  "Electricalsteel": MaterialSystem.getMaterialBuilder().setName("Electricalsteel").setColor(Color.fromHex("BDBDBD")).build(),
  "Energeticalloy": MaterialSystem.getMaterialBuilder().setName("Energeticalloy").setColor(Color.fromHex("FFBB5B")).build(),
  "Vibrantalloy": MaterialSystem.getMaterialBuilder().setName("Vibrantalloy").setColor(Color.fromHex("CFF474")).build(),
  "Redstonealloy": MaterialSystem.getMaterialBuilder().setName("Redstonealloy").setColor(Color.fromHex("DC4F4F")).build(),
  "Conductiveiron": MaterialSystem.getMaterialBuilder().setName("Conductiveiron").setColor(Color.fromHex("DBBBB1")).build(),
  "Pulsatingiron": MaterialSystem.getMaterialBuilder().setName("Pulsatingiron").setColor(Color.fromHex("7CE694")).build(),
  "Darksteel": MaterialSystem.getMaterialBuilder().setName("Darksteel").setColor(Color.fromHex("686868")).build(),
  "Soularium": MaterialSystem.getMaterialBuilder().setName("Soularium").setColor(Color.fromHex("937F65")).build(),
  "Endsteel": MaterialSystem.getMaterialBuilder().setName("Endsteel").setColor(Color.fromHex("FDFDCE")).build(),

  "Crudesteel": MaterialSystem.getMaterialBuilder().setName("Crudesteel").setColor(Color.fromHex("CFC5BF")).build(),
  "Crystallinealloy": MaterialSystem.getMaterialBuilder().setName("Crystallinealloy").setColor(Color.fromHex("8ABEBE")).build(),
  "Melodicalloy": MaterialSystem.getMaterialBuilder().setName("Melodicalloy").setColor(Color.fromHex("B876B8")).build(),
  "Stellaralloy": MaterialSystem.getMaterialBuilder().setName("Stellaralloy").setColor(Color.fromHex("E7EAEA")).build(),
  "Crystallinepinkslime": MaterialSystem.getMaterialBuilder().setName("Crystallinepinkslime").setColor(Color.fromHex("EBAEE1")).build(),
  "Energeticsilver": MaterialSystem.getMaterialBuilder().setName("Energeticsilver").setColor(Color.fromHex("97A7B3")).build(),
  "Vividalloy": MaterialSystem.getMaterialBuilder().setName("Vividalloy").setColor(Color.fromHex("46B6D5")).build(),

  "Litherite": MaterialSystem.getMaterialBuilder().setName("Litherite").setColor(Color.fromHex("00EE7B")).build(),
  "Erodium": MaterialSystem.getMaterialBuilder().setName("Erodium").setColor(Color.fromHex("5E4CAC")).build(),
  "Kyronite": MaterialSystem.getMaterialBuilder().setName("Kyronite").setColor(Color.fromHex("A82395")).build(),
  "Pladium": MaterialSystem.getMaterialBuilder().setName("Pladium").setColor(Color.fromHex("254B9C")).build(),
  "Ionite": MaterialSystem.getMaterialBuilder().setName("Ionite").setColor(Color.fromHex("6BB2D2")).build(),
  "Aethium": MaterialSystem.getMaterialBuilder().setName("Aethium").setColor(Color.fromHex("292929")).build(),
  "Lonsdaleite": MaterialSystem.getMaterialBuilder().setName("Lonsdaleite").setColor(Color.fromHex("626262")).build()
};

// Parts
MaterialList.Iron.registerParts(["clump"] as string[]);
MaterialList.Gold.registerParts(["clump"] as string[]);
MaterialList.Aluminum.registerParts(["clump"] as string[]);
MaterialList.Copper.registerParts(["clump"] as string[]);
MaterialList.Tin.registerParts(["clump"] as string[]);
MaterialList.Silver.registerParts(["clump", "wire"] as string[]);
MaterialList.Lead.registerParts(["clump"] as string[]);
MaterialList.Nickel.registerParts(["clump"] as string[]);
MaterialList.Uranium.registerParts(["clump"] as string[]);
MaterialList.Platinum.registerParts(["clump"] as string[]);
MaterialList.Iridium.registerParts(["clump"] as string[]);

MaterialList.Bronze.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Steel.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Constantan.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Electrum.registerParts(["clump", "dense_plate", "rod", "wire"] as string[]);
MaterialList.Invar.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Mithril.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Signalum.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Lumium.registerParts(["clump", "dense_plate", "rod"] as string[]);
MaterialList.Enderium.registerParts(["clump", "dense_plate", "rod"] as string[]);

MaterialList.Draconium.registerParts(["clump", "dense_plate", "rod", "gear"] as string[]);
MaterialList.DraconiumAwakened.registerParts(["clump", "plate", "dense_plate", "rod", "gear"] as string[]);

MaterialList.Electricalsteel.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Energeticalloy.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Vibrantalloy.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Redstonealloy.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Conductiveiron.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Pulsatingiron.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Darksteel.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Soularium.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Endsteel.registerParts(["clump", "dust", "plate", "dense_plate", "rod", "gear"] as string[]);

MaterialList.Crudesteel.registerParts(["dust", "plate", "dense_plate", "rod", "gear"] as string[]);
MaterialList.Crystallinealloy.registerParts(["dust", "plate", "dense_plate", "rod", "gear", "wire"] as string[]);
MaterialList.Melodicalloy.registerParts(["dust", "plate", "dense_plate", "rod", "gear", "wire"] as string[]);
MaterialList.Stellaralloy.registerParts(["dust", "plate", "dense_plate", "rod", "gear", "wire"] as string[]);
MaterialList.Crystallinepinkslime.registerParts(["dust", "plate", "dense_plate", "rod", "gear", "wire"] as string[]);
MaterialList.Energeticsilver.registerParts(["dust", "plate", "dense_plate", "rod", "gear", "wire"] as string[]);
MaterialList.Vividalloy.registerParts(["dust", "plate", "dense_plate", "rod", "gear"] as string[]);

MaterialList.Litherite.registerParts(["dust", "plate", "dense_plate"] as string[]);
MaterialList.Erodium.registerParts(["dust", "plate", "dense_plate"] as string[]);
MaterialList.Kyronite.registerParts(["dust", "plate", "dense_plate"] as string[]);
MaterialList.Pladium.registerParts(["dust", "plate", "dense_plate"] as string[]);
MaterialList.Ionite.registerParts(["dust", "plate", "dense_plate"] as string[]);
MaterialList.Aethium.registerParts(["dust", "plate", "dense_plate"] as string[]);
MaterialList.Lonsdaleite.registerParts(["dust", "plate", "dense_plate"] as string[]);

print("Initialized 'contenttweaker_materials.zs'.");