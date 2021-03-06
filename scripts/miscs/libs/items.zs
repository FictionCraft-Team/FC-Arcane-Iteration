#priority 9999
#loader contenttweaker
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import crafttweaker.game.IGame;


zenClass buildItem {

  var utilItem as Item;
  val id as string;

  zenConstructor(id as string) {
    this.id = id;
    this.utilItem = VanillaFactory.createItem(id);
  }

  function register()
  {
    val unlocalizedName as string = 'item.contenttweaker.' ~ this.id ~ '.name';
    this.utilItem.register();
  }

  function addData(glowing as bool, stackSize as int)
  {
    this.utilItem.maxStackSize = stackSize;
    if (glowing) {
        this.utilItem.glowing = true;
    } else {
        this.utilItem.glowing = false;
    }
    register();
  }

  function tool(class as string, level as int, durability as int)
  {
    this.utilItem.maxStackSize = 1;
    this.utilItem.toolClass = class;
    this.utilItem.toolLevel = level;
    this.utilItem.maxDamage = durability;
    register();
  }

  function full(glowing as bool, stackSize as int, durability as int)
  {
    this.utilItem.maxStackSize = stackSize;
    this.utilItem.maxDamage = durability;
    this.utilItem.maxStackSize = stackSize;
    if (glowing) {
        this.utilItem.glowing = true;
    } else {
        this.utilItem.glowing = false;
    }
    register();
  }
}