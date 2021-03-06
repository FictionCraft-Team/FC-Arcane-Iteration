#priority 9999
#loader contenttweaker
import mods.contenttweaker.Block;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import crafttweaker.game.IGame;

//try getunlocalizedname
zenClass buildBlock {

  var utilBlock as Block;
  val id as string;

  zenConstructor(id as string, material as BlockMaterial) {
    this.id = id;
    this.utilBlock = VanillaFactory.createBlock(id, material);
    if material == <blockmaterial:sand> {
      this.utilBlock.setGravity(true);
    }
  }

  function register()
  {
    val unlocalizedName as string = 'tile.contenttweaker.' ~ this.id ~ '.name';
    this.utilBlock.register();
  }

  function transparent()
  {
    this.utilBlock.setLightOpacity(0);
    this.utilBlock.setTranslucent(true);
    this.utilBlock.setBlockLayer("TRANSLUCENT");
    this.utilBlock.setFullBlock(false);
    register();
  }

  function addData(hardness as float, resistance as float, sound as SoundType, class as string, level as int)
  {
    this.utilBlock.toolClass = class;
    this.utilBlock.toolLevel = level;
    this.utilBlock.setBlockHardness(hardness);
    this.utilBlock.setBlockResistance(resistance);
    this.utilBlock.setBlockSoundType(sound);
    this.utilBlock.setToolClass(class);
    this.utilBlock.setToolLevel(level);
    register();
  }

  function addDataTransparent(hardness as float, resistance as float, sound as SoundType, class as string, level as int)
  {
    this.utilBlock.setLightOpacity(0);
    this.utilBlock.setTranslucent(true);
    this.utilBlock.setBlockLayer("TRANSLUCENT");
    this.utilBlock.setFullBlock(false);
    addData(hardness, resistance, sound, class, level);
  }

  function full(hardness as float, resistance as float, sound as SoundType, passable as bool, slip as float, class as string, level as int)
  {
    //https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/Block/
    this.utilBlock.setSlipperiness(slip);
    if (passable) {
      this.utilBlock.setPassable(true);
    } else {
        this.utilBlock.setPassable(false);
    }
    //add stacksize later
    addData(hardness, resistance, sound, class, level);
  }

}