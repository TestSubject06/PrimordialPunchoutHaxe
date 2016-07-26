package states
{

	import org.flixel.*;

	public class WinState extends ManagedState
	{
		
		private var playButton:FlxButton;
		private var devButton:FlxButton;
		private var Title:FlxText;
		private var Title2:FlxText;
		private var Title3:FlxText;
		private var Title4:FlxText;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff000000;
			
			Title = new FlxText(0, FlxG.height / 3, FlxG.width, "Congratulations!")
			Title.alignment = "center";
			add(Title);
			
			Title2 = new FlxText(0, FlxG.height / 3 + 20, FlxG.width, "My bad guys.")
			Title2.alignment = "center";
			add(Title2)
			
			Title3 = new FlxText(0, FlxG.height / 3 + 40, FlxG.width, "There were many more features planned.")
			Title3.alignment = "center";
			add(Title3);
			
			Title4 = new FlxText(0, FlxG.height / 3 + 70, FlxG.width, "Oh, you also unlocked Endurance Mode.")
			Title4.alignment = "center";
			add(Title4);
			
			playButton = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 100, "Main Menu", onPlay);
			playButton.soundOver = null;  //replace with mouseOver sound
			playButton.color = 0xffD4D943;
			playButton.label.color = 0xffD8EBA2;
			add(playButton);
			
			
			FlxG.mouse.show();
			
		}
		
		override public function update():void
		{
			super.update();	
		}
		
		protected function onSite():void
		{
			
			FlxU.openURL("http://example.com/");  //replace with your site's URL 
		}
		
		protected function onPlay():void
		{
			playButton.exists = false;
			FlxG.switchState(new MenuState());
		}
		
		
	}
}

