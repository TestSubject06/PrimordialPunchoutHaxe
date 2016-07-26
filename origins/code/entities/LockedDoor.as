package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class LockedDoor extends FlxSprite 
	{
		
		public function LockedDoor(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.door);
			immovable = true;
		}
		public function open():void {
			solid = false;
			visible = false;
			FlxG.log("Opened");
		}
		
	}

}