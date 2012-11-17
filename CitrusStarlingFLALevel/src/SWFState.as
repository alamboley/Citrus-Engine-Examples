package  
{
	import com.citrusengine.core.CitrusEngine;
	import com.citrusengine.core.StarlingState;
	import com.citrusengine.core.State;
	import com.citrusengine.math.MathVector;
	import com.citrusengine.objects.CitrusSprite;
	import com.citrusengine.objects.platformer.box2d.Coin;
	import com.citrusengine.objects.platformer.box2d.Crate;
	import com.citrusengine.objects.platformer.box2d.Enemy;
	import com.citrusengine.objects.platformer.box2d.Hero;
	import com.citrusengine.objects.platformer.box2d.Platform;
	import com.citrusengine.objects.platformer.box2d.Sensor;
	import com.citrusengine.physics.box2d.Box2D;
	import flash.display.MovieClip;
	import com.citrusengine.utils.ObjectMaker2D;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author ...
	 */
	public class SWFState extends StarlingState
	{
		//private var _score:Score;//score (unused)
		private var _objectsMC:MovieClip;//contains the objects for the level (unused)
		//private var _loadScreen//preloader
		private var _hero:Hero//create hero pointer
		private var _ce:CitrusEngine;
		
		public function SWFState(objectsMC:MovieClip) 
		{
			super();
			_ce = CitrusEngine.getInstance()
			_objectsMC = objectsMC;
			var objects:Array = [Platform, Hero, CitrusSprite, Sensor, Coin, Enemy, Crate];
			
		}
		
		override public function initialize():void
		{
			super.initialize();
			
			var box2D:Box2D = new Box2D("box2D");
		box2D.visible = true;
		add(box2D);
		//view.loadManager.onLoadComplete.addOnce(handleLoadComplete);
		ObjectMaker2D.FromMovieClip(_objectsMC);
		_hero = getFirstObjectByType(Hero) as Hero;
		view.setupCamera(_hero, new MathVector(320, 240), new Rectangle(0, 0, 3300, 417), new MathVector(.25, .05));
		
		}
		override public function update(timeDelta:Number):void
		{
			super.update(timeDelta);
		}
	}

}