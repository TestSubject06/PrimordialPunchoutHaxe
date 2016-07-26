package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import openfl.Lib;
import openfl.net.URLRequest;

class MenuState extends FlxState
{
	
	private var playButton:FlxButton;
	private var playButton2:FlxButton;
	private var devButton:FlxButton;
	private var title:FlxText;
	private var no:FlxButton;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.camera.bgColor = 0xFF000000;
			
		title = new FlxText(0, FlxG.height / 3, FlxG.width, "Primordial Punchout");
		title.alignment = "center";
		add(title);
		
		devButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height / 3 + 60, "Insert Site", onSite);
		devButton.color = 0xffD4D943;
		devButton.label.color = 0xffD8EBA2;
		add(devButton);
		
		playButton = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 100, "Click To Play", onPlay);
		playButton.color = devButton.color;
		playButton.label.color = devButton.label.color;
		add(playButton);
		
		if(GlobalValues.hasEndurance){
			playButton2 = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 120, "Endurance", onEndurance);
			playButton2.color = devButton.color;
			playButton2.label.color = devButton.label.color;
			add(playButton2);
		}
		for (i in 0...25){
			no = new FlxButton(FlxG.random.float()*FlxG.width - 50,FlxG.random.float()*FlxG.height - 20, "No.", onPlay);
			no.color = devButton.color;
			no.label.color = devButton.label.color;
			add(no);
		}
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	public function onSite():Void
	{
		Lib.getURL(new URLRequest("http://example.com/"));
	}
	
	public function onPlay():Void
	{
		FlxG.switchState(new PlayState());
	}
	public function onEndurance():Void
	{
		GlobalValues.sightLevel = 2;
		GlobalValues.upgradeLevel = "wings";
		GlobalValues.hasWhip = true;
		GlobalValues.hasPunch = true;
		GlobalValues.hasLegs = true;
		GlobalValues.hasWings = true;
		GlobalValues.hasLaser = true;
		GlobalValues.hasPunchCharge = true;
		GlobalValues.hasHands = true;
		GlobalValues.hasEars = true;
		FlxG.switchState(new PlayState());
	}
}
