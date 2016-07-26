package entities 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class TrapTrigger extends FlxSprite 
	{
		public function TrapTrigger(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			visible = false;
			height = 256;
			width = 16;
			solid = true;
		}
	}
}