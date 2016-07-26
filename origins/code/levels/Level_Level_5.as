//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_Level_5 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level5_bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level5_bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level5_bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level5.csv", mimeType="application/octet-stream")] public var CSV_Group1Level5:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level5:Class;

		//Tilemaps
		public var layerGroup1Level5_bk:FlxTilemap;
		public var layerGroup1Level5:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_5(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level5_bk = new FlxTilemap;
			layerGroup1Level5_bk.loadMap( new CSV_Group1Level5_bk, Img_Group1Level5_bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level5_bk.x = 0.000000;
			layerGroup1Level5_bk.y = 0.000000;
			layerGroup1Level5_bk.scrollFactor.x = 1.000000;
			layerGroup1Level5_bk.scrollFactor.y = 1.000000;
			layerGroup1Level5 = new FlxTilemap;
			layerGroup1Level5.loadMap( new CSV_Group1Level5, Img_Group1Level5, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level5.x = 0.000000;
			layerGroup1Level5.y = 0.000000;
			layerGroup1Level5.scrollFactor.x = 1.000000;
			layerGroup1Level5.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level5_bk);
			masterLayer.add(layerGroup1Level5);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level5;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Acid, Group2Layer1Group , 112.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 128.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 144.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 160.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 176.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 192.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 208.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 224.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 240.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 256.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 272.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 288.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 304.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 320.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 336.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 352.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 368.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 384.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 400.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 416.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 256.000, 464.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 304.000, 464.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 208.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 560.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Item_Hands, Group2Layer1Group , 32.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 48.000, 240.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 448.000, 320.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 240.000, 64.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 336.000, 64.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Doorway, Group2Layer1Group , 0.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(LockedDoor, Group2Layer1Group , 16.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"l"
			addSpriteToLayer(Player, Group2Layer1Group , 592.000, 560.000, 0.000, false, 1, 1, onAddCallback );//"player"
		}


	}
}
