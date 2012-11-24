package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class CardinalRule extends FlxGame
	{
		public function CardinalRule()
		{
			super(320,240,MenuState,2);
		}
	}
}
