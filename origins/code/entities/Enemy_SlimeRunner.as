package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Enemy_SlimeRunner extends FlxSprite 
	{
		private var moving:Boolean;
		private var moveLeft:Boolean;
		private var moveTimer:Number;
		private var moveRandomTimer:Number;
		public function Enemy_SlimeRunner(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			loadGraphic(AssetRegistry.redSlimeRunner, true, true, 32, 32);
			addAnimation("idle", [0]);
			addAnimation("run", [1, 2, 3, 4, 5, 6, 7], 15);
			play("idle");
			acceleration.y = 400;
			moving = true;
			moveLeft = true;
			moveTimer = 0;
			moveRandomTimer = FlxG.random() * 3 + 1;
			width = 16;
			offset.x = 8;
			height = 24;
			offset.y = 8;
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
			if(onScreen){
				if (int(AssetRegistry.player.y) == int(y) && x - AssetRegistry.player.x < 150 && x - AssetRegistry.player.x > 0) {
					moveLeft = true;
					moving = true;
				}
				if (int(AssetRegistry.player.y) == int(y) && AssetRegistry.player.x - x < 150 && AssetRegistry.player.x - x > 0) {
					moveLeft = false;
					moving = true;
				}
			}
			if (moving) {
				play("run");
				if (moveLeft) {
					facing = LEFT;
					velocity.x = -150;
					if (AssetRegistry.currentMap.getTile(Math.floor((x+8) / 16) - 1, Math.floor(y / 16) + 2) == 0) {
						moving = false;
						velocity.x = 0;
					}
				}else{
					velocity.x = 150;
					facing = RIGHT;
					if (AssetRegistry.currentMap.getTile(Math.floor((x+8) / 16) + 1, Math.floor(y / 16) + 2) == 0) {
						moving = false;
						velocity.x = 0;
					}
				}
			}else {
				play("idle");
			}
			if (y > FlxG.worldBounds.height) {
				kill();
			}
		}
	}

}