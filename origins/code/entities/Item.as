package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item extends FlxSprite 
	{
		private var total:Number = 0;
		private var startY:Number = 0;
		public function Item(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			startY = Y;
		}
		override public function update():void 
		{
			super.update();
			total += FlxG.elapsed;
			y = (Math.sin(total*5)*4) + startY;
		}
		public function onCollected():void {
			//for subs
		}
	}
}