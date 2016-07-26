package entities 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Barrier extends FlxSprite 
	{
		
		public function Barrier(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
		}
		public function smash(player:FlxSprite):void {
			//
		}
	}

}