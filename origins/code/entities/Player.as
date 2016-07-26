package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Player extends FlxSprite 
	{
		public var whipping:Boolean = false;
		public var lasering:Boolean = false;
		public var powerPunch:Boolean = false;
		public var punching:Boolean = false;
		public var chargeTimer:Number = 0;
		public var shineLevel:uint = 255;
		
		private var visionCone:FlxSprite;
		private var slimeWhip:FlxSprite;
		private var slimeLaser:FlxSprite;
		private var chargeEmitter:FlxEmitter;
		private var chargeSpark:FlxSprite;
		private var visionConeOffsets:FlxPoint;
		private var playerSpeed:int;
		private var damaged:Boolean = false;
		private var ledgeCheck:uint = 0;
		private var ledgeCheck2:uint = 0;
		private var hanging:Boolean = false;
		private var hangCool:Number = 0;
		private var hasInc1:Boolean = false;
		private var hasInc2:Boolean = false;
		private var hasInc3:Boolean = false;
		private var hasSparked:Boolean = false;
		private var isEmitterGoing:Boolean = false;
		private var hasWingJumped:Boolean = false;
		private var isWingJumping:Boolean = false;
		private var pong:int = 0;
		
		public function Player(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			visionConeOffsets = new FlxPoint();
			switch(AssetRegistry.upgradeLevel) {
				case "legs":
					loadGraphic(AssetRegistry.blueSlimeLegs, true, true, 32, 32);
					addAnimation("idle", [0]);
					addAnimation("run", [1, 2, 3, 4, 5, 6, 7], 15);
					addAnimation("jumpRise", [4]);
					addAnimation("jumpFall", [6]);
					play("idle");
					playerSpeed = 150;
					width = 16;
					offset.x = 8;
					height = 24;
					offset.y = 8;
					drag.x = 800;
				break;
				
				case "arms":
					loadGraphic(AssetRegistry.blueSlimeArms, true, true, 32, 32);
					addAnimation("idle", [0]);
					addAnimation("run", [1, 2, 3, 4, 5, 6, 7], 15);
					addAnimation("jumpRise", [4]);
					addAnimation("jumpFall", [6]);
					addAnimation("punch", [8, 9], 20, false);
					addAnimation("punchSlide", [9]);
					addAnimation("punchEnd", [10, 8, 8], 20, false);
					addAnimation("hanging", [11]);
					addAnimation("climb", [12, 13, 13], 10, false);
					addAnimation("whip", [14, 15, 10, 10, 10], 20, false);
					play("idle");
					playerSpeed = 150;
					width = 16;
					offset.x = 8;
					height = 24;
					offset.y = 8;
					drag.x = 800;
				break;
				
				case "wings":
					loadGraphic(AssetRegistry.blueSlimeWings, true, true, 32, 32);
					addAnimation("idle", [0]);
					addAnimation("run", [1, 2, 3, 4, 5, 6, 7], 15);
					addAnimation("jumpRise", [4]);
					addAnimation("jumpFall", [6]);
					addAnimation("punch", [8, 9], 20, false);
					addAnimation("punchSlide", [9]);
					addAnimation("punchEnd", [10, 8, 8], 20, false);
					addAnimation("hanging", [11]);
					addAnimation("climb", [12, 13, 13], 10, false);
					addAnimation("wingJump", [14, 14, 15, 16, 17, 17, 18, 18, 18, 18, 18, 18, 17, 16, 15], 30, false);
					addAnimation("whip", [19, 20, 10, 10, 10], 20, false);
					addAnimation("laser", [20, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22], 20, false);
					play("idle");
					playerSpeed = 150;
					width = 16;
					offset.x = 8;
					height = 24;
					offset.y = 8;
					drag.x = 800;
				break;
				
				case "none":
					loadGraphic(AssetRegistry.blueSlime, true, true, 16, 16);
					addAnimation("idle", [0, 1, 2, 3], 5);
					addAnimation("run", [0, 1, 2, 3], 10);
					play("idle");
					playerSpeed = 80;
					drag.x = 400;
				break;
			}
			acceleration.y = 400;
			maxVelocity.y = 500;
			
			switch(AssetRegistry.sightLevel) {
				case 0:
					visionCone = new FlxSprite(X, Y, AssetRegistry.visionLow);
				break;
				
				case 1:
					visionCone = new FlxSprite(X, Y, AssetRegistry.visionHigh);
				break;
				
				case 2:
					visionCone = new FlxSprite(X, Y, null);
					visionCone.visible = false;
				break;
			}
			visionCone.x = (-visionCone.width / 2) + X;
			visionCone.y = ( -visionCone.height / 2) + Y;
			
			slimeWhip = new FlxSprite();
			slimeWhip.loadGraphic(AssetRegistry.blueSlimeWhip, true, true, 43, 23);
			slimeWhip.addAnimation("whip", [0, 1, 2, 3, 3], 20, false);
			slimeWhip.exists = false;
			AssetRegistry.playerWhip = slimeWhip;
			
			slimeLaser = new FlxSprite();
			slimeLaser.loadGraphic(AssetRegistry.laser, true, true, 100, 7);
			slimeLaser.addAnimation("laser", [0, 1, 2, 3], 60);
			slimeLaser.play("laser");
			slimeLaser.exists = false;
			slimeLaser.height += 2;
			slimeLaser.offset.y = -1;
			AssetRegistry.playerLaser = slimeLaser;
			
			chargeEmitter = new FlxEmitter();
			chargeEmitter.makeParticles(AssetRegistry.chargeParticles, 40, 0, true);
			chargeEmitter.setXSpeed(0, 0);
			chargeEmitter.setYSpeed( -150, -50);
			chargeEmitter.setSize(20, 20);
			chargeEmitter.setRotation(0, 0);
			
			chargeSpark = new FlxSprite();
			chargeSpark.loadGraphic(AssetRegistry.spark, true, false, 32, 32);
			chargeSpark.addAnimation("spark", [0, 1, 2, 3, 4], 40, false);
			chargeSpark.exists = false;
			
			punching = false;
			health = 15;
		}
		override public function preUpdate():void 
		{
			super.preUpdate();
			visionCone.preUpdate();
			chargeEmitter.preUpdate();
			if (whipping) {
				slimeWhip.preUpdate();
			}
			if (slimeLaser.exists) {
				slimeLaser.preUpdate();
			}
			if (chargeSpark.exists) {
				chargeSpark.preUpdate();
			}
		}
		override public function update():void 
		{
			super.update();
			visionCone.update();
			chargeEmitter.update();
			if (hangCool > 0) {
				hangCool -= FlxG.elapsed;
			}
			if (hanging) {
				hasWingJumped = false;
				if (FlxG.keys.justPressed("UP") || FlxG.keys.justPressed((facing == LEFT)? "LEFT" : "RIGHT")) {
					play("climb");
					solid = false;
				}
				if (FlxG.keys.justPressed("DOWN") || FlxG.keys.justPressed((facing == LEFT)? "RIGHT" : "LEFT") && !hasInc1) {
					hanging = false;
					hangCool = 1;
					drag.x = 800;
					acceleration.y = 400;
					solid = true;
				}
			}
			if(!punching && !damaged && !hanging && !lasering){
				if (FlxG.keys.LEFT && !whipping) {
					facing = LEFT;
					velocity.x = -playerSpeed;
					visionCone.scale.x = -1;
					visionConeOffsets.x = 14;
					visionConeOffsets.y = 0;
					if(velocity.y >0)
						checkLedge(0);
				}else if (FlxG.keys.LEFT && whipping && !isTouching(FLOOR)) {
					facing = LEFT;
					velocity.x = -playerSpeed;
					visionCone.scale.x = -1;
					visionConeOffsets.x = 14;
					visionConeOffsets.y = 0;
					if(velocity.y >0)
						checkLedge(0);
				}
				if (FlxG.keys.RIGHT && !whipping) {
					facing = RIGHT;
					velocity.x = playerSpeed;
					visionCone.scale.x = 1;
					visionConeOffsets.x = 0;
					visionConeOffsets.y = 0;
					if(velocity.y >0)
						checkLedge(1);
				}else if (FlxG.keys.RIGHT && whipping && !isTouching(FLOOR)) {
					facing = RIGHT;
					velocity.x = playerSpeed;
					visionCone.scale.x = 1;
					visionConeOffsets.x = 0;
					visionConeOffsets.y = 0;
					if(velocity.y >0)
						checkLedge(1);
				}
				if (FlxG.keys.justPressed("UP") && isTouching(FLOOR) && !whipping && AssetRegistry.hasLegs) {
					velocity.y = -290;
				}else if (FlxG.keys.justPressed("UP") && !hasWingJumped && AssetRegistry.hasWings && !whipping && !hanging) {
					velocity.y = -200;
					play("wingJump");
					hasWingJumped = true;
					isWingJumping = true;
				}
				if (FlxG.keys.justReleased("UP") && velocity.y < 0) {
					velocity.y = velocity.y/3;
				}
				if (AssetRegistry.hasPunchCharge) {
					if (FlxG.keys.justReleased("X") && isTouching(FLOOR) && !whipping && chargeTimer >= 2) {
						powerPunch = true;
						punching = true;
						play("punch");
					}else if (FlxG.keys.justReleased("X") && isTouching(FLOOR) && !whipping) {
						punching = true;
						play("punch");
					}
					if (FlxG.keys.X) {
						chargeTimer += FlxG.elapsed;
					}else {
						chargeTimer = 0;
						chargeSpark.exists = false;
						hasSparked = false;
						isEmitterGoing = false;
						chargeEmitter.on = false;
					}
				}else if(AssetRegistry.hasPunch){
					if (FlxG.keys.justPressed("X") && isTouching(FLOOR) && !whipping) {
						punching = true;
						play("punch");
					}
				}
				if ((FlxG.keys.justPressed("Z") || FlxG.keys.justPressed("Y")) && AssetRegistry.hasWhip && !isWingJumping && !whipping) {
					whipping = true;
					play("whip");
					slimeWhip.play("whip", true);
					slimeWhip.facing = facing;
				}
				if (FlxG.keys.justPressed("C") && AssetRegistry.hasLaser && isTouching(FLOOR) && !whipping) {
					play("laser");
					lasering = true;
					slimeLaser.scale.y = 1;
				}
			}
			if (_curAnim.name == "punch" && _curFrame == 1) {
				if(!powerPunch)
					velocity.x = (facing == RIGHT) ? 300 : -300;
				if (powerPunch)
					velocity.x = (facing == RIGHT) ? 650 : -650;
				play("punchSlide");
			}
			if (_curAnim.name == "wingJump" && _curFrame == 13) {
				play("idle");
				isWingJumping = false;
			}
			if (!punching && !hanging && !isWingJumping && !whipping && !lasering) {
				if (FlxU.abs(velocity.x) > .2 && isTouching(FLOOR)) {
					play("run");
				}else if(!isTouching(FLOOR) && velocity.y < 0) {
					play("jumpRise");
				}else if (!isTouching(FLOOR) && velocity.y > 0) {
					play("jumpFall");
				}else {
					play("idle");
				}
			}else if(_curAnim.name != "punch" && !hanging && !isWingJumping && !whipping && !lasering) {
				drag.x = 0;
				velocity.x *= .9;
				if (FlxU.abs(velocity.x) < 5) {
					play("punchEnd");
				}
				if (_curAnim.name == "punchEnd" && _curFrame == 2) {
					punching = false;
					powerPunch = false;
					drag.x = 800;
				}
			}
			if (_curAnim.name == "whip" && _curFrame == 4) {
				whipping = false;
			}
			if (_curAnim.name == "laser") {
				if (_curFrame == 2)
					slimeLaser.exists = true;
				if (_curFrame == 9)
					slimeLaser.scale.y = 0.8;
				if (_curFrame == 11)
					slimeLaser.scale.y = 0.6;
				if (_curFrame == 13)
					slimeLaser.scale.y = 0.4;
				if (_curFrame == 15)
					slimeLaser.scale.y = 0.2;
				if (_curFrame == 16) {
					lasering = false;
				}
			}
			if (_curAnim.name == "climb") {
				if (facing == RIGHT) {
					if (_curFrame == 0 && !hasInc1) {
						x += 5;
						y -= 17;
						hasInc1 = true;
					}
					if (_curFrame == 1 && !hasInc2) {
						x += 14;
						y -= 4;
						hasInc2 = true;
					}
					if (_curFrame == 2 && !hasInc3) {
						x += 4;
						y -= 4;
						hasInc3 = true;
						hanging = false;
						solid = true;
						drag.x = 800;
						acceleration.y = 400;
					}
				}else {
					if (_curFrame == 0 && !hasInc1) {
						x -= 5;
						y -= 17;
						hasInc1 = true;
					}
					if (_curFrame == 1 && !hasInc2) {
						x -= 14;
						y -= 4;
						hasInc2 = true;
					}
					if (_curFrame == 2 && !hasInc3) {
						x -= 4;
						y -= 4;
						hasInc3 = true;
						hanging = false;
						solid = true;
						drag.x = 800;
						acceleration.y = 400;
					}
				}
			}
			
			if (isTouching(FLOOR)) {
				damaged = false;
				hasWingJumped = false;
			}
			if (whipping) {
				slimeWhip.exists = true;
				slimeWhip.update();
			}else {
				slimeWhip.exists = false;
			}
			if (lasering && slimeLaser.exists) {
				slimeLaser.update();
			}else {
				slimeLaser.exists = false;
			}
			if (chargeSpark.exists) {
				chargeSpark.update();
			}
			controlColor();
			chargeEmitter.x = x;
			chargeEmitter.y = y;
		}
		override public function postUpdate():void 
		{
			super.postUpdate();
			visionCone.postUpdate();
			visionCone.x = (-visionCone.width / 2) + x + visionConeOffsets.x;
			visionCone.y = ( -visionCone.height / 2) + y + visionConeOffsets.y;
			chargeEmitter.postUpdate();
			if (whipping) {
				slimeWhip.postUpdate();
			}
			if (lasering) {
				slimeLaser.postUpdate();
			}
			if (chargeSpark.exists) {
				chargeSpark.postUpdate();
			}
		}
		override public function draw():void 
		{
			super.draw();
			if(visionCone.visible)
				visionCone.draw();
			if (chargeSpark.exists) {
				chargeSpark.draw();
			}
			if (slimeLaser.exists) {
				slimeLaser.facing = facing;
				if(facing == RIGHT){
					slimeLaser.x = x+15;
					slimeLaser.y = y;
				}else {
					slimeLaser.x = x-100;
					slimeLaser.y = y;
				}
				slimeLaser.draw();
			}
			if (whipping) {
				if(facing == RIGHT){
					switch(_curFrame) {
						case 0:
							slimeWhip.x = x - 33;
							slimeWhip.y = y - 4;
							break;
						case 1:
							slimeWhip.x = x - 20;
							slimeWhip.y = y - 18;
							break;
						case 2:
							slimeWhip.x = x + 20;
							slimeWhip.y = y - 8;
							break;
						case 3:
							slimeWhip.x = x + 23;
							slimeWhip.y = y - 4;
							break;
					}
				}else {
					switch(_curFrame) {
						case 0:
							slimeWhip.x = x + 7;
							slimeWhip.y = y - 4;
							break;
						case 1:
							slimeWhip.x = x - 7;
							slimeWhip.y = y - 18;
							break;
						case 2:
							slimeWhip.x = x - 47;
							slimeWhip.y = y - 8;
							break;
						case 3:
							slimeWhip.x = x - 50;
							slimeWhip.y = y - 4;
							break;
					}
				}
				slimeWhip.facing = facing;
				slimeWhip.draw();
			}
			chargeEmitter.draw();
		}
		public function takeDamage(enemy:FlxSprite):void {
			hanging = false;
			hangCool = 1;
			drag.x = 800;
			acceleration.y = 400;
			solid = true;
			if (enemy is Enemy_BaseSlime) {
				if(!flickering){
					flicker(1);
					velocity.x = (x > enemy.x) ? 200 : -200;
					velocity.y = -50;
					damaged = true;
					touching = NONE;
					health -= 1;
				}
			}
			if (enemy is Enemy_SlimeRunner) {
				if(!flickering){
					flicker(1);
					velocity.x = (x > enemy.x) ? 200 : -200;
					velocity.y = -50;
					damaged = true;
					touching = NONE;
					health -= 1;
				}
			}
			if (enemy is Enemy_SlimePuncher && (enemy as Enemy_SlimePuncher).punching) {
				if(!flickering){
					flicker(1);
					velocity.x = (x > enemy.x) ? 400 : -400;
					velocity.y = -50;
					damaged = true;
					touching = NONE;
					health -= 2;
				}
			}else if (enemy is Enemy_SlimePuncher) {
				if(!flickering){
					flicker(1);
					velocity.x = (x > enemy.x) ? 200 : -200;
					velocity.y = -50;
					damaged = true;
					touching = NONE;
					health -= 1;
				}
			}
			if (enemy is Enemy_SlimeFlyer) {
				if(!flickering){
					flicker(1);
					velocity.x = (x > enemy.x) ? 200 : -200;
					velocity.y = -50;
					damaged = true;
					touching = NONE;
					health -= 1;
				}
			}
			if (enemy is Acid) {
				if(!flickering){
					flicker(1);
					velocity.x = (x > enemy.x) ? 50 : -50;
					velocity.y = -50;
					damaged = true;
					touching = NONE;
					health -= 1;
				}
			}
			if (health <= 0) {
				alive = false;
			}
		}
		private function checkLedge(dir:int):void {
			if(hangCool <= 0 && AssetRegistry.hasHands){
				if (dir == 0) {
					ledgeCheck = AssetRegistry.currentMap.getTile(Math.floor(x / 16) - 1, Math.floor(y / 16));
					ledgeCheck2 = AssetRegistry.currentMap.getTile(Math.floor(x / 16) - 1, Math.floor(y / 16) - 1);
					if (ledgeCheck == 1 && ledgeCheck2 == 0 && x % 16 < 4 && !whipping) {
						hanging = true;
						x = (Math.floor(x / 16)) * 16 + 2;
						y = (Math.floor(y / 16) * 16) + 1;
						drag.x = 0;
						velocity.x = 0;
						acceleration.y = 0;
						velocity.y = 0;
						play("hanging");
						hasInc1 = false;
						hasInc2 = false;
						hasInc3 = false;
						isWingJumping = false;
					}
				}else {
					ledgeCheck = AssetRegistry.currentMap.getTile(Math.floor(x / 16) + 1, Math.floor(y / 16));
					ledgeCheck2 = AssetRegistry.currentMap.getTile(Math.floor(x / 16) + 1, Math.floor(y / 16) - 1);
					if (ledgeCheck == 1 && ledgeCheck2 == 0 && x%16 <4 && !whipping){
						hanging = true;
						x = (Math.floor(x / 16)) * 16 -2;
						y = (Math.floor(y / 16) * 16) + 1;
						drag.x = 0;
						velocity.x = 0;
						acceleration.y = 0;
						velocity.y = 0;
						play("hanging");
						hasInc1 = false;
						hasInc2 = false;
						hasInc3 = false;
						isWingJumping = false;
					}
				}
			}
		}
		private function controlColor():void {
			if (chargeTimer >= 2) {
				if(pong == 0){
					shineLevel -= 30;
					if (shineLevel < 100) {
						pong = 1;
					}
				}else {
					shineLevel += 30;
					if (shineLevel > 220) {
						pong = 0;
					}
				}
				color = FlxU.makeColor(255, shineLevel, 255 - shineLevel);
				if (!hasSparked) {
					chargeSpark.exists = true;
					chargeSpark.x = x - 8;
					chargeSpark.y = y - 8;
					chargeSpark.play("spark", true);
					hasSparked = true;
					chargeEmitter.start(false, 0.2, 0.03);
				}
			}else if (chargeTimer > 1.5) {
				if(pong == 0){
					shineLevel -= 30;
					if (shineLevel < 100) {
						pong = 1;
					}
				}else {
					shineLevel += 30;
					if (shineLevel > 220) {
						pong = 0;
					}
				}
				color = FlxU.makeColor(255, shineLevel, 255 - shineLevel);
				if (!isEmitterGoing) {
					chargeEmitter.start(false, 0.2, 0.03);
					isEmitterGoing = true;
				}
			}else if (chargeTimer > 0.8) {
				if(pong == 0){
					shineLevel -= 20;
					if (shineLevel < 100) {
						pong = 1;
					}
				}else {
					shineLevel += 20;
					if (shineLevel > 230) {
						pong = 0;
					}
				}
				color = FlxU.makeColor(255, shineLevel, 255 - shineLevel);
			}else if (chargeTimer > 0.2) {
				if(pong == 0){
					shineLevel -= 10;
					if (shineLevel < 100) {
						pong = 1;
					}
				}else {
					shineLevel += 10;
					if (shineLevel > 230) {
						pong = 0;
					}
				}
				color = FlxU.makeColor(255, shineLevel, 255 - shineLevel);
			}else {
				color = 0xFFFFFFFF;
			}
		}
	}
}