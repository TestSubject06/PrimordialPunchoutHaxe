package states
{

	import entities.Acid;
	import entities.Barrier;
	import entities.BlastDoor;
	import entities.BlockBarrier;
	import entities.Doorway;
	import entities.Enemy_BaseSlime;
	import entities.Enemy_SlimeFlyer;
	import entities.Enemy_SlimePuncher;
	import entities.Enemy_SlimeRunner;
	import entities.FallingTile;
	import entities.GlassBarrier;
	import entities.Item;
	import entities.Item_Arms;
	import entities.Item_Legs;
	import entities.Item_VisionI;
	import entities.LockedDoor;
	import entities.Player;
	import entities.TrapTrigger;
	import Levels.*;
	import org.flixel.*;

	public class PlayState extends ManagedState
	{
		private var level:mapBase;
		private var player:Player;
		private var trapTrigger:TrapTrigger;
		private var enemySlimes:FlxGroup;
		private var acidPools:FlxGroup;
		private var canister:FlxGroup;
		private var doors:FlxGroup;
		private var barriers:FlxGroup;
		private var fallingTiles:FlxGroup;
		private var gibsEmitter:FlxEmitter;
		private var dustEmitter:FlxEmitter;
		private var glassEmitter:FlxEmitter;
		private var doorways:FlxGroup;
		private var levelNumber:int = 0;
		private var enduranceTimer:Number = 1;
		private var enduranceTime:Number = 0;
		private var enduranceCount:int = 0;
		private var enduranceText:FlxText;
		public function PlayState(level:int) {
			levelNumber = level;
		}
		override public function create():void
		{
			FlxG.camera.bgColor = 0xFF101010;
			
			enemySlimes = new FlxGroup();
			acidPools = new FlxGroup();
			doorways = new FlxGroup();
			canister = new FlxGroup();
			fallingTiles = new FlxGroup();
			doors = new FlxGroup();
			barriers = new FlxGroup();
			
			gibsEmitter = new FlxEmitter();
			gibsEmitter.makeParticles(AssetRegistry.redGibs, 60, 0, true);
			gibsEmitter.setXSpeed( -200, 200);
			gibsEmitter.setYSpeed( -300, 100);
			gibsEmitter.setSize(16, 16);
			gibsEmitter.gravity = 400;
			AssetRegistry.gibsEmitteR = gibsEmitter;
			
			glassEmitter = new FlxEmitter();
			glassEmitter.makeParticles(AssetRegistry.glassShards, 30, 0, true);
			glassEmitter.setXSpeed( -200, 200);
			glassEmitter.setYSpeed( -300, 100);
			glassEmitter.setSize(16, 64);
			glassEmitter.gravity = 400;
			AssetRegistry.glassEmitteR = glassEmitter;
			
			dustEmitter = new FlxEmitter();
			dustEmitter.makeParticles(AssetRegistry.gravel, 30, 0, true);
			dustEmitter.setXSpeed( -200, 200);
			dustEmitter.setYSpeed( -300, 100);
			dustEmitter.setSize(16, 64);
			dustEmitter.gravity = 400;
			AssetRegistry.dustEmitteR = dustEmitter;
			
			loadLevel(levelNumber);
			if (levelNumber == 0) {
				enduranceText = new FlxText(2, 2, 50, enduranceCount.toString());
				enduranceText.scrollFactor.make(0, 0);
				add(enduranceText);
			}
		}
		
		override public function update():void
		{
			super.update();
			FlxG.collide(player, level.mainLayer);
			FlxG.collide(player, fallingTiles);
			FlxG.collide(player, doors);
			FlxG.collide(enemySlimes, level.mainLayer);
			FlxG.collide(gibsEmitter, level.mainLayer);
			FlxG.collide(glassEmitter, level.mainLayer);
			FlxG.collide(dustEmitter, level.mainLayer);
			
			FlxG.collide(enemySlimes, barriers);
			FlxG.collide(enemySlimes, doors);
			FlxG.overlap(player, enemySlimes, askPlayer);
			FlxG.overlap(player, acidPools, damagePlayer);
			FlxG.overlap(player, doorways, levelExit);
			FlxG.overlap(player, canister, collectPowerup);
			FlxG.overlap(player, barriers, killBarriers);
			if (trapTrigger != null) {
				FlxG.overlap(player, trapTrigger, dropTiles);
			}
			if (AssetRegistry.playerWhip != null && AssetRegistry.playerWhip.exists) {
				FlxG.overlap(AssetRegistry.playerWhip, enemySlimes, killSlimes);
				FlxG.overlap(AssetRegistry.playerWhip, barriers, killBarriers);
			}
			if (AssetRegistry.playerLaser != null && AssetRegistry.playerLaser.exists) {
				FlxG.overlap(AssetRegistry.playerLaser, enemySlimes, killSlimes);
				FlxG.overlap(AssetRegistry.playerLaser, barriers, killBarriers);
			}
			if (enemySlimes.countLiving() <= 0) {
				for each(var door:LockedDoor in doors.members) {
					door.open();
				}
			}
			FlxG.collide(player, barriers);
			if (levelNumber == 0) {
				enduranceTime += FlxG.elapsed;
				if (enduranceTime > enduranceTimer) {
					dropSlime();
					enduranceTime-= enduranceTimer;
				}
			}
		}
		private function onSpritesAdded(sprite:FlxSprite, group:FlxGroup):void {
			if (sprite is Player){
				player = (sprite as Player);
				AssetRegistry.player = player;
			}
			if (sprite is Enemy_BaseSlime || sprite is Enemy_SlimeRunner || sprite is Enemy_SlimePuncher || sprite is Enemy_SlimeFlyer)
				enemySlimes.add(sprite);
			if (sprite is Acid) {
				acidPools.add(sprite);
			}
			if (sprite is Doorway) {
				doorways.add(sprite);
				sprite.ID
			}
			if (sprite is Item) {
				canister.add(sprite);
			}
			if (sprite is FallingTile) {
				fallingTiles.add(sprite);
			}
			if (sprite is TrapTrigger) {
				trapTrigger = (sprite as TrapTrigger);
			}
			if (sprite is LockedDoor) {
				doors.add(sprite);
			}
			if (sprite is BlastDoor || sprite is GlassBarrier || sprite is BlockBarrier) {
				barriers.add(sprite);
			}
		}
		private function askPlayer(player:Player, enemy:FlxSprite):void {
			if (player.punching == true) {
				gibsEmitter.x = enemy.x;
				gibsEmitter.y = enemy.y;
				if(player.x < enemy.x)
					gibsEmitter.setXSpeed(50, 200);
				if(player.x > enemy.x)
					gibsEmitter.setXSpeed( -200, -50);
				gibsEmitter.start(true, 3);
				enemy.kill();
				if(levelNumber == 0){
					enduranceCount++;
					enduranceText.text = enduranceCount.toString();
				}
				FlxG.camera.shake(0.02, 0.03);
			}else {
				player.takeDamage(enemy);
				if (!player.alive) {
					if (levelNumber != 0) {
						resetLevel();
					}else {
						StateManager.masterState.newStack(new WinState2(enduranceCount));
					}
				}
			}
		}
		private function killSlimes(playersWhip:FlxSprite, enemy:FlxSprite):void {
			gibsEmitter.x = enemy.x;
			gibsEmitter.y = enemy.y;
			if(player.x < enemy.x)
				gibsEmitter.setXSpeed(50, 200);
			if(player.x > enemy.x)
				gibsEmitter.setXSpeed( -200, -50);
			gibsEmitter.start(true, 3, 0.1, 15);
			enemy.kill();
			if(levelNumber == 0){
				enduranceCount++;
				enduranceText.text = enduranceCount.toString();
			}
			FlxG.camera.shake(0.02, 0.03);
		}
		private function damagePlayer(player:Player, enemy:FlxSprite):void {
			player.takeDamage(enemy);
			if (!player.alive) {
				if (levelNumber != 0) {
					resetLevel();
				}else {
					StateManager.masterState.newStack(new WinState2(enduranceCount));
				}
			}
		}
		private function levelExit(player:Player, enemy:FlxSprite):void {
			FlxG.fade(0xFF000000, .5, loadNewLevel);
		}
		private function loadNewLevel():void {
			if(levelNumber != 8){
				FlxG.flash(0xFF000000, .5);
				enemySlimes.kill();
				enemySlimes = new FlxGroup;
				acidPools.kill();
				acidPools = new FlxGroup;
				player.kill();
				player = null;
				doorways.kill();
				doorways = new FlxGroup;
				doors.kill();
				doors = new FlxGroup;
				level.masterLayer.kill();
				level = null;
			}
			levelNumber++;
			loadLevel(levelNumber);
		}
		private function loadLevel(levelNumber:int):void {
			switch(levelNumber) {
				case 0:
					level = new Level_Endurance(true, onSpritesAdded);
					break;
				case 1:
					level = new Level_Level_1(true, onSpritesAdded);
					break;
				case 2:
					level = new Level_Level_2(true, onSpritesAdded);
					break;
				case 3:
					level = new Level_Level_3(true, onSpritesAdded);
					break;
				case 4:
					level = new Level_Level_4(true, onSpritesAdded);
					break;
				case 5:
					level = new Level_Level_5(true, onSpritesAdded);
					break;
				case 6:
					level = new Level_Level_6(true, onSpritesAdded);
					break;
				case 7:
					level = new Level_Level_7(true, onSpritesAdded);
					break;
				case 8:
					level = new Level_Level_8(true, onSpritesAdded);
					break;
				case 9:
					AssetRegistry.hasEndurance = true;
					StateManager.masterState.newStack(new WinState());
				break;
			}
			FlxG.resetCameras();
			FlxG.resetInput();
			FlxG.worldBounds.make(level.mainLayer.x, level.mainLayer.y, level.mainLayer.width, level.mainLayer.height);
			FlxG.camera.setBounds(level.mainLayer.x, level.mainLayer.y, level.mainLayer.width, level.mainLayer.height);
			FlxG.camera.follow(player, FlxCamera.STYLE_LOCKON);
			AssetRegistry.currentMap = level.mainLayer;
		}
		private function collectPowerup(p:Player, enemy:Item):void {
			enemy.onCollected();
			FlxG.flash(0xFFFFFFFF, 0.2);
			var tmp:FlxPoint = new FlxPoint(player.x, player.y);
			player.kill();
			player = new Player(tmp.x, tmp.y - 10);
			AssetRegistry.player = player;
			add(player);
			FlxG.camera.follow(player, FlxCamera.STYLE_LOCKON);
			enemy.kill();
		}
		private function dropTiles(p:Player, enemy:FlxSprite):void {
			for each(var a:FallingTile in fallingTiles.members) {
				a.fall();
			}
		}
		private function killBarriers(object:FlxSprite, object2:Barrier):void {
			object2.smash(object);
		}
		private function resetLevel() {
			FlxG.flash(0xFF000000, .5);
			enemySlimes.kill();
			enemySlimes = new FlxGroup;
			acidPools.kill();
			acidPools = new FlxGroup;
			player.kill();
			player = null;
			doorways.kill();
			doorways = new FlxGroup;
			doors.kill();
			doors = new FlxGroup;
			level.masterLayer.kill();
			level = null;
			loadLevel(levelNumber);
			switch(levelNumber) {
				case 1:
					AssetRegistry.sightLevel = 0;
					AssetRegistry.upgradeLevel = "none";
					AssetRegistry.hasWhip = false;
					AssetRegistry.hasPunch = false;
					AssetRegistry.hasLegs = false;
					AssetRegistry.hasWings = false;
					AssetRegistry.hasLaser = false;
					AssetRegistry.hasPunchCharge = false;
					AssetRegistry.hasHands = false;
					AssetRegistry.hasEars = false;
					break;
				case 2:
					AssetRegistry.sightLevel  = 0;
					AssetRegistry.upgradeLevel  = "legs";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = false;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = false;
					AssetRegistry.hasEars  = false;
					break;
				case 3:
					AssetRegistry.sightLevel  = 1;
					AssetRegistry.upgradeLevel  = "legs";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = false;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = false;
					AssetRegistry.hasEars  = false;
					break;
				case 4:
					AssetRegistry.sightLevel  = 1;
					AssetRegistry.upgradeLevel  = "arms";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = true;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = false;
					AssetRegistry.hasEars  = false;
					break;
				case 5:
					AssetRegistry.sightLevel  = 1;
					AssetRegistry.upgradeLevel  = "arms";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = true;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = false;
					AssetRegistry.hasEars  = true;
				break;
				case 6:
					AssetRegistry.sightLevel  = 1;
					AssetRegistry.upgradeLevel  = "arms";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = true;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = true;
					AssetRegistry.hasEars  = true;
				break;
				
				case 7:
					AssetRegistry.sightLevel  = 2;
					AssetRegistry.upgradeLevel  = "arms";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = true;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = true;
					AssetRegistry.hasEars  = true;
				break;
				
				case 8:
					AssetRegistry.sightLevel  = 2;
					AssetRegistry.upgradeLevel  = "arms";
					AssetRegistry.hasWhip  = false;
					AssetRegistry.hasPunch  = true;
					AssetRegistry.hasLegs  = true;
					AssetRegistry.hasWings  = false;
					AssetRegistry.hasLaser  = false;
					AssetRegistry.hasPunchCharge  = false;
					AssetRegistry.hasHands  = true;
					AssetRegistry.hasEars  = true;
				break;
			}
		}
		private function dropSlime():void {
			var chunk:int = Math.floor(FlxG.random() * 3);
			switch(chunk) {
				case 0:
					var newSlime:Enemy_BaseSlime = (enemySlimes.recycle(Enemy_BaseSlime) as Enemy_BaseSlime);
					newSlime.reset(FlxG.random() * (level.mainLayer.width - 32) + 16, 20);
					break;
				case 1:
					var newSlime2:Enemy_SlimeRunner = (enemySlimes.recycle(Enemy_SlimeRunner) as Enemy_SlimeRunner);
					newSlime2.reset(FlxG.random() * (level.mainLayer.width - 32) + 16, 20);
					break
				case 2:
					var newSlime3:Enemy_SlimePuncher = (enemySlimes.recycle(Enemy_SlimePuncher) as Enemy_SlimePuncher);
					newSlime3.reset(FlxG.random() * (level.mainLayer.width - 32) + 16, 20);
					break;
			}
		}
	}
}