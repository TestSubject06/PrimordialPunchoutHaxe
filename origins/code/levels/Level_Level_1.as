package Levels
{
	import org.flixel.*;
	import entities.*
	
	public class Level_Level_1 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Map2.csv", mimeType="application/octet-stream")] public var CSV_Group1Map2:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Map2:Class;
		[Embed(source="../maps/mapCSV_Group1_Map1.csv", mimeType="application/octet-stream")] public var CSV_Group1Map1:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Map1:Class;

		//Tilemaps
		public var layerGroup1Map2:FlxTilemap;
		public var layerGroup1Map1:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_1(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Map2 = new FlxTilemap;
			layerGroup1Map2.loadMap( new CSV_Group1Map2, Img_Group1Map2, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Map2.x = 0.000000;
			layerGroup1Map2.y = 0.000000;
			layerGroup1Map2.scrollFactor.x = 1.000000;
			layerGroup1Map2.scrollFactor.y = 1.000000;
			layerGroup1Map1 = new FlxTilemap;
			layerGroup1Map1.loadMap( new CSV_Group1Map1, Img_Group1Map1, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Map1.x = 0.000000;
			layerGroup1Map1.y = 0.000000;
			layerGroup1Map1.scrollFactor.x = 1.000000;
			layerGroup1Map1.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Map2);
			masterLayer.add(layerGroup1Map1);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Map1;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 400;
			boundsMaxY = 400;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Item_Legs, Group2Layer1Group , 338.000, 345.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Doorway, Group2Layer1Group , 378.000, 345.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(Player, Group2Layer1Group , 41.000, 72.000, 0.000, false, 1, 1, onAddCallback );//"player"
		}


	}
}
