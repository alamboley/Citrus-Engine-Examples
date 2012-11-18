package  
{
	import Box2D.Common.Math.b2Vec2;
	import com.citrusengine.objects.Box2DPhysicsObject;
	import Box2D.Collision.Shapes.b2PolygonShape;
	/**
	 * ...
	 * @author ...
	 */
	public class CupCake extends Box2DPhysicsObject
	{
		private var _tab:Array;
		public function CupCake(name:String, params:Object=null) 
		{
			super(name, params);
		}
		
		override protected function defineFixture():void
		{
			super.defineFixture();
			_drawPolygon();
			_fixtureDef.density = 0.1;
			_fixtureDef.restitution = 0;
			
			for (var i:uint = 0; i < _tab.length; ++i)
			{
				var polygonShape:b2PolygonShape = new b2PolygonShape();
				polygonShape.Set(_tab[i]);
				_fixtureDef.shape = polygonShape;
				body.CreateFixture(_fixtureDef);
			}
		}
		protected function _drawPolygon():void
		{
			_tab = [];
			var polyVector:Vector.<b2Vec2> = new Vector.<b2Vec2>();
				polyVector.push(new b2Vec2(293, 164));
				polyVector.push(new b2Vec2(263, 110));
				polyVector.push(new b2Vec2(283, 124));
				polyVector.push(new b2Vec2(291, 146));
				_tab.push(polyVector);
		}
		

	}
	


}