Notes:
- When inputting a string for the id of a constructor, use a format like Cracked_Cobblestone. This will ensure that localization is done properly.
- Priority for any scripts using these functions should be a number <9999


BLOCK CLASS;

Import;

import scripts.miscs.lib.blocks.buildBlock;

Constructor;

buildBlock(id as string, material as BlockMaterial)

Functions (only use one);

.register();
- Used to just register a block from the data provided in buildBlock.
- Localizes block automatically.
- If you use any of the 4 other functions, it will automatically use this function as well.

.transparent();
- Registers a transparent block.

.addData(hardness as float, resistance as float, sound as SoundType, toolClass as string, toolLevel as int);
- Registers a block with useful data.
- Will not have all possible options but most of the useful ones for a basic block.

.addDataTransparent(hardness as float, resistance as float, sound as SoundType, toolClass as string, toolLevel as int);
- A combination of .transparent() and .addData()

.full(hardness as float, resistance as float, sound as SoundType, passable as bool, slipperiness as float, tollClass as string, toolLevel as int)
- Registers a block with almost all useful data.



ITEM CLASS;

Import;

import scripts.miscs.lib.items.buildItem;

Constructor;

buildItem(id as string)

Functions (only use one);

.register();
- Used to just register a block from the data provided in buildItem.
- Localizes item automatically.
- If you use any of the other functions, it will automatically use this function as well.

.addData(glowing as bool, stackSize as int);
- Can add some data to an item.

.tool(class as string, level as int, durability as int);
- Registers a tool item.
- 
.full(glowing as bool, stackSize as int, durability as int);
- Registers an item with almost all useful data.

FLUID CLASS

Import;

import scripts.miscs.lib.fluids.buildFluid;

Constructor;

buildFluid(id as string, colorInput as string)

Functions (only use one);

.register();
- Used to just register a block from the fluid provided in buildItem.
- Localizes fluid automatically.
- If you use any of the other functions, it will automatically use this function as well.

.addData(temperature as int, density as int, luminosity as int, viscosity as int);
- Will register a fluid with some basic data.

.withTexture(still as string, flowing as string);
- Registers a fluid with a specified texture location.

.full(still as string, flowing as string, temperature as int, density as int, luminosity as int, viscosity as int);
- Registers a fluid with basic data and a specified texture.
