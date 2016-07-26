package entities 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class BlastDoor extends Barrier 
	{
		
		public function BlastDoor(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.blastDoor);
			height = 64;
			width = 16;
			solid = true;
			immovable = true;
		}
		override public function smash(player:FlxSprite):void 
		{
			if ((AssetRegistry.player as Player).lasering) {
				visible = false;
				solid = false;
			}
		}
	}

}