package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Enemy_SlimeFlyer extends FlxSprite 
	{
		private var moving:Boolean;
		private var moveLeft:Boolean;
		private var moveTimer:Number;
		private var moveRandomTimer:Number;
		private var startingPoint:FlxPoint;
		public function Enemy_SlimeFlyer(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			loadGraphic(AssetRegistry.redSlimeFlier, true, true, 32, 32);
			addAnimation("idle", [0, 1, 2, 3, 4, 3, 2, 1], 20);
			play("idle");
			moving = true;
			moveLeft = true;
			moveTimer = 0;
			moveRandomTimer = FlxG.random() * 3 + 1;
			width = 16;
			offset.x = 8;
			height = 24;
			offset.y = 8;
			startingPoint = new FlxPoint(x, y);
		}
		override public function kill():void 
		{
			super.kill();
		}
		override public function update():void 
		{
			super.update();
			moveTimer += FlxG.elapsed;
			
			if (moveTimer > moveRandomTimer) {
				if(!moving){
					moving = true;
					moveLeft = (FlxG.random() < .5) ? true : false;
					moveRandomTimer = FlxG.random() * 3 + 1;
				}else {
					moving = false;
					velocity.x = 0;
					moveRandomTimer = FlxG.random() * 3 + 1;
				}
				moveTimer = 0;
			}
			if (moving) {
				if (moveLeft) {
					facing = LEFT;
					velocity.x = -200;
					if (isTouching(LEFT)) {
						moving = false;
					}
				}else{
					velocity.x = 200;
					facing = RIGHT;
					if (isTouching(RIGHT)) {
						moving = false;
					}
				}
			}else {
				play("idle");
			}
		}
	}

}