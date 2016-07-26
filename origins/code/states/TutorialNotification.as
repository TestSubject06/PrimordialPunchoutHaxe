package states 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class TutorialNotification extends ManagedState 
	{
		public static var LEGS:int = 0;
		public static var VISIONI:int = 1;
		public static var ARMS:int = 2;
		public static var HEARING:int = 3;
		public static var HANDS:int = 4;
		public static var VISIONII:int = 5;
		public static var WHIP:int= 6;
		public static var WINGS:int = 7;
		public static var POWERFIST:int = 8;
		public static var LASER:int = 9;
		private var backing:FlxSprite;
		private var textBacking:FlxSprite;
		private var tutBacking:FlxSprite;
		private var iconBacking:FlxSprite;
		private var prompt:FlxSprite;
		private var powerID:int = 0;
		private var pos:FlxPoint;
		private var promptTimer:Number = 0;
		private var glowOn:Boolean = true;
		public function TutorialNotification(powerID:int):void {
			this.powerID = powerID;
			pos = new FlxPoint();
		}
		override public function create():void 
		{
			super.create();
			pos = new FlxPoint(FlxG.width / 2 - 102 + FlxG.camera.scroll.x, FlxG.height / 2 - 77 + FlxG.camera.scroll.y);
			backing = new FlxSprite(pos.x, pos.y, AssetRegistry.not_Backing);
			add(backing);
			
			textBacking = new FlxSprite(pos.x+6, pos.y+44, AssetRegistry.not_Text_Indent);
			add(textBacking);
			
			tutBacking = new FlxSprite(pos.x+60, pos.y+103, AssetRegistry.not_Tutorial_Indent);
			add(tutBacking);
			
			iconBacking = new FlxSprite(pos.x+6, pos.y+8, AssetRegistry.not_Icon_Indent);
			add(iconBacking);
			
			prompt = new FlxSprite(pos.x+147, pos.y+146, AssetRegistry.not_Prompt);
			add(prompt);
			prompt.alpha = 0;
			
			add(getText());
			add(getTitle());
			add(getIcon());
		}
		override public function update():void 
		{
			super.update();
			promptTimer += FlxG.elapsed;
			if (promptTimer > 3) {
				if(glowOn){
					prompt.alpha += 0.03;
				}else {
					prompt.alpha -= 0.03;
				}
				if (prompt.alpha >= 1) {
					glowOn = false;
				}
				if (prompt.alpha <= 0.2) {
					glowOn = true;;
				}
			}
			if (FlxG.keys.justPressed("X") && promptTimer > .5) {
				StateManager.masterState.popState();
			}
		}
		private function getText():FlxSprite {
			switch(powerID) {
				case 0:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Legs);
					break;
				
				case 1:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Vision);
					break;
					
				case 2:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Arms);
					break;
					
				case 3:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Hearing);
					break;
					
				case 4:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Hands);
					break;
					
				case 5:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_VisionII);
					break;
					
				case 6:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Whip);
					break;
					
				case 7:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Wings);
					break;
					
				case 8:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Powerfist);
					break;
					
				case 9:
					return new FlxSprite(pos.x + 8, pos.y + 46, AssetRegistry.not_Text_Lasers);
					break;
			}
			return null;
		}
		
		private function getTitle():FlxSprite {
			switch(powerID) {
				case 0:
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Legs);
					break;
				
				case 1:
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Vision);
					break;
					
				case 2:
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Arms);
					break;
					
				case 3:
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Hearing);
					break;
					
				case 4:
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Hands);
					break;                                                         
					
				case 5:                                                            
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_VisionII);
					break;                                                         
					
				case 6:                                                            
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Whip);
					break;                                                         
					
				case 7:                                                            
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Wings);
					break;                                                         
					
				case 40:                                                            
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Powerfist);
					break;                                                         
					
				case 9:                                                            
					return new FlxSprite(pos.x + 40, pos.y + 16, AssetRegistry.not_Title_Lasers);
					break;
			}
			return null;
		}
		
		private function getIcon():FlxSprite {
			switch(powerID) {
				case 0:
					return new FlxSprite(pos.x+6, pos.y+9, AssetRegistry.legs);
					break;
				
				case 1:
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.visionI);
					break;
					
				case 2:
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.arms);
					break;
					
				case 3:
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.ears);
					break;
					
				case 4:
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.hands);
					break;                                                         
					
				case 5:                                                            
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.visionII);
					break;                                                         
					
				case 6:                                                            
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.whip);
					break;                                                         
					
				case 7:                                                            
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.wings);
					break;                                                         
					
				case 40:                                                            
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.power);
					break;                                                         
					
				case 9:                                                            
					return new FlxSprite(pos.x + 6, pos.y + 9, AssetRegistry.beams);
					break;
			}
			return null;
		}
	}

}