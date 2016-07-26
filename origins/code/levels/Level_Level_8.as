//Code generated with DAME. http://www.dambots.com

package Levels
{
	import org.flixel.*;
	// Custom imports:
import entities.*
	public class Level_Level_8 extends mapBase
	{
		//Embedded media...
		[Embed(source="../maps/mapCSV_Group1_Level8_Bk.csv", mimeType="application/octet-stream")] public var CSV_Group1Level8_Bk:Class;
		[Embed(source="../data/TilesBacking.png")] public var Img_Group1Level8_Bk:Class;
		[Embed(source="../maps/mapCSV_Group1_Level8.csv", mimeType="application/octet-stream")] public var CSV_Group1Level8:Class;
		[Embed(source="../data/Tiles.png")] public var Img_Group1Level8:Class;

		//Tilemaps
		public var layerGroup1Level8_Bk:FlxTilemap;
		public var layerGroup1Level8:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_Level_8(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Level8_Bk = new FlxTilemap;
			layerGroup1Level8_Bk.loadMap( new CSV_Group1Level8_Bk, Img_Group1Level8_Bk, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level8_Bk.x = 0.000000;
			layerGroup1Level8_Bk.y = 0.000000;
			layerGroup1Level8_Bk.scrollFactor.x = 1.000000;
			layerGroup1Level8_Bk.scrollFactor.y = 1.000000;
			layerGroup1Level8 = new FlxTilemap;
			layerGroup1Level8.loadMap( new CSV_Group1Level8, Img_Group1Level8, 16,16, FlxTilemap.OFF, 0, 1, 1 );
			layerGroup1Level8.x = 0.000000;
			layerGroup1Level8.y = 0.000000;
			layerGroup1Level8.scrollFactor.x = 1.000000;
			layerGroup1Level8.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Level8_Bk);
			masterLayer.add(layerGroup1Level8);
			masterLayer.add(AssetRegistry.gibsEmitteR);
			masterLayer.add(AssetRegistry.glassEmitteR);
			masterLayer.add(AssetRegistry.dustEmitteR);
			masterLayer.add(Group2Layer1Group);


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Level8;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 2560;
			boundsMaxY = 1280;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Item_Whip, Group2Layer1Group , 1040.000, 816.000, 0.000, false, 1, 1, onAddCallback );//"capsule_2_"
			addSpriteToLayer(Item_Wings, Group2Layer1Group , 1840.000, 144.000, 0.000, false, 1, 1, onAddCallback );//"capsule_2__2_"
			addSpriteToLayer(Item_Charge, Group2Layer1Group , 576.000, 144.000, 0.000, false, 1, 1, onAddCallback );//"capsule_2__2__2_"
			addSpriteToLayer(Player, Group2Layer1Group , 672.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"player"
			addSpriteToLayer(LockedDoor, Group2Layer1Group , 2096.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"l"
			addSpriteToLayer(Doorway, Group2Layer1Group , 2544.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"door"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 416.000, 96.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 160.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1008.000, 896.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 896.000, 928.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1520.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 2432.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 2144.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 2160.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1568.000, 304.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1680.000, 192.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 816.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1008.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 912.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 976.000, 368.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1184.000, 256.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1200.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1232.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1536.000, 368.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1488.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1856.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1792.000, 496.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1872.000, 496.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1824.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1376.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1168.000, 992.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 768.000, 1024.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 912.000, 1040.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 656.000, 1008.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1120.000, 848.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1040.000, 688.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 32.000, 432.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 176.000, 304.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 352.000, 256.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 368.000, 176.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 672.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 720.000, 160.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 960.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1520.000, 64.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 1904.000, 64.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 2224.000, 64.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 2336.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 2192.000, 272.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 2240.000, 400.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 2368.000, 448.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 2128.000, 432.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 2480.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 2368.000, 256.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 2304.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 1936.000, 448.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 2032.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 1440.000, 480.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 1728.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 1184.000, 144.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 784.000, 144.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_SlimePuncher, Group2Layer1Group , 432.000, 240.000, 0.000, false, 1, 1, onAddCallback );//"enemyPuncher"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 176.000, 560.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 352.000, 560.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 736.000, 448.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 1120.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 1104.000, 672.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 1056.000, 992.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 688.000, 1024.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Item_Beams, Group2Layer1Group , 2240.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"capsule"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 1184.000, 48.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 816.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1632.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 2160.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 1952.000, 208.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_BaseSlime, Group2Layer1Group , 864.000, 592.000, 0.000, false, 1, 1, onAddCallback );//"Enemy_Slime"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 224.000, 400.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeFlyer, Group2Layer1Group , 480.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"fly"
			addSpriteToLayer(Enemy_SlimeRunner, Group2Layer1Group , 1200.000, 464.000, 0.000, false, 1, 1, onAddCallback );//"enemyRunner"
			addSpriteToLayer(GlassBarrier, Group2Layer1Group , 976.000, 640.000, 0.000, false, 1, 1, onAddCallback );//"glass"
			addSpriteToLayer(BlockBarrier, Group2Layer1Group , 400.000, 208.000, 0.000, false, 1, 1, onAddCallback );//"breakable"
			addSpriteToLayer(GlassBarrier, Group2Layer1Group , 1792.000, 128.000, 0.000, false, 1, 1, onAddCallback );//"glass"
			addSpriteToLayer(GlassBarrier, Group2Layer1Group , 512.000, 128.000, 0.000, false, 1, 1, onAddCallback );//"glass"
			addSpriteToLayer(GlassBarrier, Group2Layer1Group , 2176.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"glass"
			addSpriteToLayer(BlockBarrier, Group2Layer1Group , 2320.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"breakable"
			addSpriteToLayer(BlockBarrier, Group2Layer1Group , 1152.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"breakable"
			addSpriteToLayer(BlockBarrier, Group2Layer1Group , 1760.000, 16.000, 0.000, false, 1, 1, onAddCallback );//"breakable"
			addSpriteToLayer(BlockBarrier, Group2Layer1Group , 416.000, 208.000, 0.000, false, 1, 1, onAddCallback );//"breakable"
			addSpriteToLayer(BlastDoor, Group2Layer1Group , 2400.000, 544.000, 0.000, false, 1, 1, onAddCallback );//"blast"
			addSpriteToLayer(Acid, Group2Layer1Group , 96.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 112.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 128.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 144.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 160.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 208.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 224.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 240.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 256.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 272.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 288.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 304.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 320.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 336.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 384.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 400.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 416.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 432.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 448.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 464.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 480.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 496.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 544.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 560.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 576.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
			addSpriteToLayer(Acid, Group2Layer1Group , 592.000, 576.000, 0.000, false, 1, 1, onAddCallback );//"aced"
		}


	}
}
