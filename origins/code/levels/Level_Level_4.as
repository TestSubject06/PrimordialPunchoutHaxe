//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_Level_4 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level4_Bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level4_Bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level4_Bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level4.csv", mimeType="application/octet-stream")] public var CSV_Group1Level4:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level4:Class;

		//Tilemaps
		public var layerGroup1Level4_Bk:FlxTilemap;
		public var layerGroup1Level4:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_4(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level4_Bk = new FlxTilemap;
			layerGroup1Level4_Bk.loadMap( new CSV_Group1Level4_Bk, Img_Group1Level4_Bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level4_Bk.x = 0.000000;
			layerGroup1Level4_Bk.y = 0.000000;
			layerGroup1Level4_Bk.scrollFactor.x = 1.000000;
			layerGroup1Level4_Bk.scrollFactor.y = 1.000000;
			layerGroup1Level4 = new FlxTilemap;
			layerGroup1Level4.loadMap( new CSV_Group1Level4, Img_Group1Level4, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level4.x = 0.000000;
			layerGroup1Level4.y = 0.000000;
			layerGroup1Level4.scrollFactor.x = 1.000000;
			layerGroup1Level4.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level4_Bk);
			masterLayer.add(layerGroup1Level4);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level4;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(LockedDoor, Group2Layer1Group , 80.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"LockeDoor"
			addSpriteToLayer(Item_Ears, Group2Layer1Group , 32.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Doorway, Group2Layer1Group , 0.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 336.000, 192.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 368.000, 176.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 96.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 256.000, 288.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 256.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 64.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 416.000, 448.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 544.000, 304.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Acid, Group2Layer1Group , 192.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 208.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 224.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 240.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 256.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 272.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 272.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 288.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 304.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 320.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 336.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 64.000, 192.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 512.000, 192.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 496.000, 560.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Player, Group2Layer1Group , 592.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"player"
		}


	}
}
