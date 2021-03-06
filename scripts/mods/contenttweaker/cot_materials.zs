#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Color;

//parts
var oil = MaterialSystem.getPartBuilder();
oil.setName("oil_part");
oil.setPartType(MaterialSystem.getPartType("item"));
oil.setOreDictName("oil");
var oil_part = oil.build();

//materials
var fieryc = Color.fromHex("d42c0b");
var fiery = MaterialSystem.getMaterialBuilder().setName("fiery").setColor(fieryc).build();
var shadowc = Color.fromHex("242424");
var shadow = MaterialSystem.getMaterialBuilder().setName("shadow").setColor(shadowc).build();
var naturac = Color.fromHex("177527");
var natura = MaterialSystem.getMaterialBuilder().setName("natura").setColor(naturac).build();
var zephyrc = Color.fromHex("f0e5c2");
var zephyr = MaterialSystem.getMaterialBuilder().setName("zephyr").setColor(zephyrc).build();
var frostc = Color.fromHex("85e6f2");
var frost = MaterialSystem.getMaterialBuilder().setName("frost").setColor(frostc).build();

//registration
var oilList = [fiery, shadow, natura, zephyr, frost] as Material[];
var partList = ["oil_part"] as string[];

for i, metal in oilList {
	metal.registerParts(partList);
}