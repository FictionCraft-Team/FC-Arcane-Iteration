#priority 9999
#loader contenttweaker
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import crafttweaker.game.IGame;

zenClass buildFluid {

  var utilFluid as Fluid;
  val id as string;

  zenConstructor(id as string, colorInput as string) {
    this.id = id;
    val colorFinal = Color.fromHex(colorInput);
    this.utilFluid = VanillaFactory.createFluid(id, colorFinal);
  }

  function register()
  {
    val unlocalizedName as string = 'fluid.' ~ this.id;
    this.utilFluid.register();
  }

  function addData(temperature as int, density as int, luminosity as int, viscosity as int)
  {
    this.utilFluid.setTemperature(temperature);
    this.utilFluid.setDensity(density);
    this.utilFluid.setLuminosity(luminosity);
    this.utilFluid.setViscosity(viscosity);
    register();
  }

  function addTexture(still as string, flowing as string)
  {
    this.utilFluid.stillLocation = still;
    this.utilFluid.flowingLocation = flowing;
    register();
  }

  function full(still as string, flowing as string, temperature as int, density as int, luminosity as int, viscosity as int)
  {
    this.utilFluid.stillLocation = still;
    this.utilFluid.flowingLocation = flowing;
    this.utilFluid.setTemperature(temperature);
    this.utilFluid.setDensity(density);
    this.utilFluid.setLuminosity(luminosity);
    this.utilFluid.setViscosity(viscosity);
    register();
  }

}