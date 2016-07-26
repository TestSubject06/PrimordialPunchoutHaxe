package;
import flixel.FlxSprite;
import flixel.effects.particles.FlxEmitter;
import flixel.tile.FlxTilemap;

/**
 * ...
 * @author Zack
 */
class GlobalValues
{
	public static var sightLevel:Int = 0;
	public static var upgradeLevel:String = "none";
	public static var hasWhip:Bool = false;
	public static var hasPunch:Bool = false;
	public static var hasLegs:Bool = false;
	public static var hasWings:Bool = false;
	public static var hasLaser:Bool = false;
	public static var hasPunchCharge:Bool = false;
	public static var hasHands:Bool = false;
	public static var hasEars:Bool = false;
	public static var hasEndurance:Bool = false;
	public static var currentMap:FlxTilemap;
	public static var playerWhip:FlxSprite;
	public static var playerLaser:FlxSprite;
	public static var player:FlxSprite;
	public static var gibsEmitteR:FlxEmitter;
	public static var glassEmitteR:FlxEmitter;
	public static var dustEmitteR:FlxEmitter;
}