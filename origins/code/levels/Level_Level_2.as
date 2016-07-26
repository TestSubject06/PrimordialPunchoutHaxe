//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_Level_2 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level_2_Bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level_2_Bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level_2_Bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level_2.csv", mimeType="application/octet-stream")] public var CSV_Group1Level_2:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level_2:Class;

		//Tilemaps
		public var layerGroup1Level_2_Bk:FlxTilemap;
		public var layerGroup1Level_2:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_2(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level_2_Bk = new FlxTilemap;
			layerGroup1Level_2_Bk.loadMap( new CSV_Group1Level_2_Bk, Img_Group1Level_2_Bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level_2_Bk.x = 0.000000;
			layerGroup1Level_2_Bk.y = 0.000000;
			layerGroup1Level_2_Bk.scrollFactor.x = 1.000000;
			layerGroup1Level_2_Bk.scrollFactor.y = 1.000000;
			layerGroup1Level_2 = new FlxTilemap;
			layerGroup1Level_2.loadMap( new CSV_Group1Level_2, Img_Group1Level_2, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level_2.x = 0.000000;
			layerGroup1Level_2.y = 0.000000;
			layerGroup1Level_2.scrollFactor.x = 1.000000;
			layerGroup1Level_2.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level_2_Bk);
			masterLayer.add(layerGroup1Level_2);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level_2;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 400;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Item_VisionI, Group2Layer1Group , 592.000, 45.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Doorway, Group2Layer1Group , 624.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(Player, Group2Layer1Group , 27.000, 343.000, 0.000, false, 1, 1, onAddCallback );//"player"
		}
	}
}
