package entities 
{
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Ears extends Item 
	{
		
		public function Item_Ears(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.ears);
		}
		override public function onCollected():void 
		{
			AssetRegistry.hasEars = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.HEARING));
		}
		
	}

}