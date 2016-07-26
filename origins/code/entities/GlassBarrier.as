package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class GlassBarrier extends Barrier 
	{
		
		public function GlassBarrier(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.glass);
			height = 64;
			width = 16;
			solid = true;
			immovable = true;
		}
		override public function smash(player:FlxSprite):void 
		{
			if ((AssetRegistry.player as Player).whipping) {
				AssetRegistry.glassEmitteR.x = x;
				AssetRegistry.glassEmitteR.y = y;
				AssetRegistry.glassEmitteR.start(true, 2);
				FlxG.camera.shake(0.02);
				visible = false;
				solid = false;
			}
		}
	}

}