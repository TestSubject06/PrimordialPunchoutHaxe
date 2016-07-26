//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_DAMETest extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Map1.csv", mimeType="application/octet-stream")] public var CSV_Group1Map1:Class;
		[Embed(source="../../../../Private/FlashDevelop/Projects/FlixelVania/src/data/tiles/DebugTiles.png")] public var Img_Group1Map1:Class;

		//Tilemaps
		public var layerGroup1Map1:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_DAMETest(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Map1 = new FlxTilemap;
			layerGroup1Map1.loadMap( new CSV_Group1Map1, Img_Group1Map1, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Map1.x = 0.000000;
			layerGroup1Map1.y = 0.000000;
			layerGroup1Map1.scrollFactor.x = 1.000000;
			layerGroup1Map1.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Map1);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Map1;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 800;
			boundsMaxY = 800;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 643.000, 761.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 540.000, 473.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 305.000, 568.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 397.000, 567.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 162.000, 662.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 289.000, 270.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 395.000, 270.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 747.000, 612.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 489.000, 460.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 593.000, 460.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 489.000, 720.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 289.000, 740.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 395.000, 748.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 591.000, 678.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 135.000, 546.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 109.000, 104.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 349.000, 102.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 219.000, 144.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 505.000, 216.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 533.000, 78.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 423.000, 72.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 559.000, 226.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 355.000, 210.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 143.000, 252.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 75.000, 388.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 243.000, 462.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 215.000, 244.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 53.000, 188.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 559.000, 372.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 705.000, 414.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 379.000, 410.000, 0.000, false, 1, 1, onAddCallback );//"BaseEnemy"
			addSpriteToLayer(Enemy_Turret, Group2Layer1Group , 752.000, 672.000, 0.000, false, 1, 1, onAddCallback );//"Turret"
			addSpriteToLayer(Player, Group2Layer1Group , 32.000, 742.000, 0.000, false, 1, 1, onAddCallback );//"Player"
			addSpriteToLayer(Acid, Group2Layer1Group , 688.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Acid"
			addSpriteToLayer(Acid, Group2Layer1Group , 704.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Acid"
			addSpriteToLayer(Acid, Group2Layer1Group , 720.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Acid"
			addSpriteToLayer(Acid, Group2Layer1Group , 736.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Acid"
			addSpriteToLayer(Acid, Group2Layer1Group , 752.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Acid"
			addSpriteToLayer(Acid, Group2Layer1Group , 768.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Acid"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 341.000, 477.000, 0.000, false, 1, 1, onAddCallback );//"Slime Runner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 395.000, 494.000, 0.000, false, 1, 1, onAddCallback );//"Slime Runner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 284.000, 505.000, 0.000, false, 1, 1, onAddCallback );//"Slime Runner"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 415.000, 741.000, 0.000, false, 1, 1, onAddCallback );//"punch"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 394.000, 180.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 452.000, 161.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 279.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 253.000, 198.000, 0.000, false, 1, 1, onAddCallback );//"fly"
		}


	}
}
