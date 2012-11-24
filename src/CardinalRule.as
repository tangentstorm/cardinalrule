package
{
	import org.flixel.*;
	[SWF(width="512", height="448", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class CardinalRule extends FlxGame
	{
		public function CardinalRule()
		{
			super( 256, 224, MenuState, 2 );
		}
	}
}
