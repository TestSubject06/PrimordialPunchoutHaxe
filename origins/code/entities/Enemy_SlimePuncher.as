package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Enemy_SlimePuncher extends FlxSprite 
	{
		public var punching:Boolean = false;
		private var moving:Boolean;
		private var moveLeft:Boolean;
		private var moveTimer:Number;
		private var moveRandomTimer:Number;
		public function Enemy_SlimePuncher(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			loadGraphic(AssetRegistry.redSlimePuncher, true, true, 32, 32);
			addAnimation("idle", [0]);
			addAnimation("run", [1, 2, 3, 4, 5, 6, 7], 15);
			addAnimation("punch", [8, 9], 20, false);
			addAnimation("punchSlide", [9]);
			addAnimation("punchEnd", [10, 8, 8], 20, false);
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
			if(!punching){
				if (facing == LEFT) {
					if (int(AssetRegistry.player.y) == int(y) && x - AssetRegistry.player.x < 50 && x - AssetRegistry.player.x > 0) {
						punching = true;
						play("punch");
					}
				}else {
					if (int(AssetRegistry.player.y) == int(y) && AssetRegistry.player.x - x < 50 && AssetRegistry.player.x - x > 0) {
						punching = true;
						play("punch");
					}
				}
			}
			if (_curAnim.name == "punch" && _curFrame == 1) {
				velocity.x = (facing == RIGHT) ? 300 : -300;
				play("punchSlide");
			}
			if(punching){
				if(_curAnim.name != "punch") {
					drag.x = 0;
					velocity.x *= .9;
					if (FlxU.abs(velocity.x) < 5) {
						play("punchEnd");
					}
					if (_curAnim.name == "punchEnd" && _curFrame == 2) {
						punching = false;
						drag.x = 800;
					}
				}
			}else {
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
			}
			if (y > FlxG.worldBounds.height) {
				kill();
			}
		}
		
	}

}