package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class BlockBarrier extends Barrier 
	{
		
		public function BlockBarrier(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.breakableBlock);
			height = 64;
			width = 16;
			solid = true;
			immovable = true;
		}
		override public function smash(player:FlxSprite):void 
		{
			if ((AssetRegistry.player as Player).powerPunch) {
				AssetRegistry.dustEmitteR.x = x;
				AssetRegistry.dustEmitteR.y = y;
				AssetRegistry.dustEmitteR.start(true, 2);
				FlxG.camera.shake(0.03);
				visible = false;
				solid = false;
			}
		}
		
	}

}