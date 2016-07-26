package entities 
{
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Charge extends Item 
	{
		
		public function Item_Charge(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.power);
		}
		override public function onCollected():void 
		{
			AssetRegistry.hasPunchCharge = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.POWERFIST));
		}
		
	}

}