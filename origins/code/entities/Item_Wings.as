package entities 
{
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Wings extends Item 
	{
		
		public function Item_Wings(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.wings);
		}
		override public function onCollected():void 
		{
			AssetRegistry.upgradeLevel = "wings";
			AssetRegistry.hasWings = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.WINGS));
		}
		
	}

}