package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class FallingTile extends FlxSprite 
	{
		
		public function FallingTile(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y);
			loadGraphic(AssetRegistry.tiles, true, false, 16, 16);
			addAnimation("tile", [1]);
			play("tile");
			solid = true;
			immovable = true;
		}
		public function fall():void {
			acceleration.y = FlxG.random() * 100 + 300;
			solid = false;
		}
		
	}

}