//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_Level_3 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level3_Bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level3_Bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level3_Bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level3.csv", mimeType="application/octet-stream")] public var CSV_Group1Level3:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level3:Class;

		//Tilemaps
		public var layerGroup1Level3_Bk:FlxTilemap;
		public var layerGroup1Level3:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_3(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level3_Bk = new FlxTilemap;
			layerGroup1Level3_Bk.loadMap( new CSV_Group1Level3_Bk, Img_Group1Level3_Bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level3_Bk.x = 0.000000;
			layerGroup1Level3_Bk.y = 0.000000;
			layerGroup1Level3_Bk.scrollFactor.x = 1.000000;
			layerGroup1Level3_Bk.scrollFactor.y = 1.000000;
			layerGroup1Level3 = new FlxTilemap;
			layerGroup1Level3.loadMap( new CSV_Group1Level3, Img_Group1Level3, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level3.x = 0.000000;
			layerGroup1Level3.y = 0.000000;
			layerGroup1Level3.scrollFactor.x = 1.000000;
			layerGroup1Level3.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level3_Bk);
			masterLayer.add(layerGroup1Level3);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level3;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Item_Arms, Group2Layer1Group , 32.000, 80.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 160.000, 192.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 288.000, 288.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 416.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Acid, Group2Layer1Group , 96.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 112.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 128.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 144.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 160.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 176.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 192.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 208.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 240.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 256.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 272.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 224.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 288.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 576.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 528.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 544.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 560.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 512.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 480.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 496.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 304.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 464.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 320.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 448.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 336.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 432.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 352.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 416.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 368.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 400.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 368.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 384.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Doorway, Group2Layer1Group , 0.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(Acid, Group2Layer1Group , 592.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 608.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Player, Group2Layer1Group , 32.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"player"
		}


	}
}
