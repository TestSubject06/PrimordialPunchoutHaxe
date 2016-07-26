package entities 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Doorway extends FlxSprite 
	{
		public function Doorway(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y);
			visible = false;
			height = 64;
			width = 16;
			solid = true;
		}
	}
}