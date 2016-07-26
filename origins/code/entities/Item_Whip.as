package entities 
{
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Whip extends Item 
	{
		
		public function Item_Whip(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.whip);
		}
		override public function onCollected():void 
		{
			AssetRegistry.hasWhip = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.WHIP));
		}
		
	}

}