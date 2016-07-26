package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Enemy_Turret extends FlxSprite 
	{
		
		public function Enemy_Turret(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			loadGraphic(AssetRegistry.turret, true, true, 32, 32, false);
			addAnimation("gearUp", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 9], 30, false);
			addAnimation("ready", [10]);
			addAnimation("fire", [10, 15, 10, 15, 10, 15, 10, 15, 10, 15, 10, 15, 10, 15, 11, 12, 12, 13, 13, 14, 14, 14], 30, false);
			addAnimation("gearDown", [9, 8, 7, 6, 5, 4, 3, 2, 1, 1], 30, false);
			addAnimation("down", [0]);
			play("down");
		}
		override public function update():void 
		{
			super.update();
			if (FlxG.keys.justPressed("Q")) {
				play("gearUp");
			}
			if (FlxG.keys.justPressed("W")) {
				play("fire");
			}
			if (FlxG.keys.justPressed("E")) {
				play("gearDown");
			}
			if (_curAnim.name == "gearUp" && _curFrame == 10) {
				play("ready");
			}
			if (_curAnim.name == "gearDown" && _curFrame == 9) {
				play("down");
			}
			if (_curAnim.name == "fire" && _curFrame == 20) {
				play("ready");
			}
		}
	}

}