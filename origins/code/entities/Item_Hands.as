package entities 
{
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Hands extends Item 
	{
		
		public function Item_Hands(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.hands);
		}
		override public function onCollected():void 
		{
			AssetRegistry.hasHands = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.HANDS));
		}
		
	}

}