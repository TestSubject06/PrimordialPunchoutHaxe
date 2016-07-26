package entities 
{
	import org.flixel.*;
	import states.TutorialNotification;
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Arms extends Item
	{
		public function Item_Arms(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.arms);
		}
		public override function onCollected():void {
			AssetRegistry.upgradeLevel = "arms";
			AssetRegistry.hasPunch = true;
			StateManager.masterState.addState(new TutorialNotification(TutorialNotification.ARMS));
		}
	}

}