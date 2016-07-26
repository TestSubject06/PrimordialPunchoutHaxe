package entities 
{
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Beams extends Item 
	{
		
		public function Item_Beams(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.beams);
		}
		override public function onCollected():void 
		{
			AssetRegistry.hasLaser = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.LASER));
		}
		
	}

}