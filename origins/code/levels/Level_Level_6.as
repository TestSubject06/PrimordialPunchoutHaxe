//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_Level_6 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level6_Bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level6_Bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level6_Bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level6.csv", mimeType="application/octet-stream")] public var CSV_Group1Level6:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level6:Class;

		//Tilemaps
		public var layerGroup1Level6_Bk:FlxTilemap;
		public var layerGroup1Level6:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_6(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level6_Bk = new FlxTilemap;
			layerGroup1Level6_Bk.loadMap( new CSV_Group1Level6_Bk, Img_Group1Level6_Bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level6_Bk.x = 0.000000;
			layerGroup1Level6_Bk.y = 0.000000;
			layerGroup1Level6_Bk.scrollFactor.x = 1.000000;
			layerGroup1Level6_Bk.scrollFactor.y = 1.000000;
			layerGroup1Level6 = new FlxTilemap;
			layerGroup1Level6.loadMap( new CSV_Group1Level6, Img_Group1Level6, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level6.x = 0.000000;
			layerGroup1Level6.y = 0.000000;
			layerGroup1Level6.scrollFactor.x = 1.000000;
			layerGroup1Level6.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level6_Bk);
			masterLayer.add(layerGroup1Level6);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level6;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Item_VisionII, Group2Layer1Group , 224.000, 320.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 32.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 160.000, 320.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 176.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 336.000, 496.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 160.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 592.000, 496.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 288.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 352.000, 32.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 192.000, 32.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 432.000, 32.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 384.000, 128.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 528.000, 368.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 400.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 144.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 64.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 304.000, 608.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 272.000, 512.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 224.000, 464.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 464.000, 368.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 560.000, 352.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 288.000, 448.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 208.000, 208.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 144.000, 256.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Doorway, Group2Layer1Group , 624.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(LockedDoor, Group2Layer1Group , 512.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"l"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 464.000, 128.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Player, Group2Layer1Group , 592.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"player"
		}


	}
}
