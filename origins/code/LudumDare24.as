package

{

	import org.flixel.*;

	[SWF(width="640", height="480", backgroundColor="#000000")]

	[Frame(factoryClass="Preloader")]



	public class LudumDare24 extends FlxGame

	{

		public function LudumDare24()

		{

			super(320,240,StateManager,2, 60, 60);
			forceDebugger = true;
		}

	}

}

