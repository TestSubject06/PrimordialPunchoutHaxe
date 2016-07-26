package Levels
{
	import org.flixel.*;
	import entities.*;
	
	public class Level_Level_7 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level7_Bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level7_Bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level7_Bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level7.csv", mimeType="application/octet-stream")] public var CSV_Group1Level7:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level7:Class;

		//Tilemaps
		public var layerGroup1Level7_Bk:FlxTilemap;
		public var layerGroup1Level7:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_7(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level7_Bk = new FlxTilemap;
			layerGroup1Level7_Bk.loadMap( new CSV_Group1Level7_Bk, Img_Group1Level7_Bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level7_Bk.x = 0.000000;
			layerGroup1Level7_Bk.y = 0.000000;
			layerGroup1Level7_Bk.scrollFactor.x = 1.000000;
			layerGroup1Level7_Bk.scrollFactor.y = 1.000000;
			layerGroup1Level7 = new FlxTilemap;
			layerGroup1Level7.loadMap( new CSV_Group1Level7, Img_Group1Level7, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level7.x = 0.000000;
			layerGroup1Level7.y = 0.000000;
			layerGroup1Level7.scrollFactor.x = 1.000000;
			layerGroup1Level7.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level7_Bk);
			masterLayer.add(layerGroup1Level7);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level7;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(FallingTile, Group2Layer1Group , 96.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 112.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 528.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 128.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 512.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 144.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 496.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 160.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 208.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 320.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 384.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 448.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 336.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 400.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 192.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 224.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 160.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 288.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 240.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 256.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 304.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 176.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 272.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 368.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 416.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 352.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 432.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 464.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(FallingTile, Group2Layer1Group , 480.000, 336.000, 0.000, false, 1, 1, onAddCallback );//"tileTrap"
			addSpriteToLayer(TrapTrigger, Group2Layer1Group , 192.000, 80.000, 0.000, false, 1, 1, onAddCallback );//"trap"
			addSpriteToLayer(Doorway, Group2Layer1Group , 624.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 560.000, 304.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(LockedDoor, Group2Layer1Group , 608.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"l"
			addSpriteToLayer(Player, Group2Layer1Group , 32.000, 304.000, 0.000, false, 1, 1, onAddCallback );//"player"
			addSpriteToLayer(Acid, Group2Layer1Group , 112.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 128.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 512.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 496.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 480.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 464.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 448.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 432.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 416.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 400.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 384.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 368.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 352.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 336.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 320.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 288.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 304.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 144.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 160.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 176.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 192.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 208.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 208.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 224.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 240.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 256.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 272.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"aced"
		}


	}
}
