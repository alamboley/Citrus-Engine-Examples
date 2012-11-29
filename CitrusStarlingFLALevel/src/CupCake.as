package
{
	import Box2D.Common.Math.b2Vec2;
	import com.citrusengine.objects.Box2DPhysicsObject;
	import Box2D.Collision.Shapes.b2PolygonShape;
	import Box2D.Dynamics.b2Body;
	/**
	 * ...
	 * @author ...
	 */
	public class CupCake extends Box2DPhysicsObject
	{
		private var _tab:Array;
		public function CupCake(name:String, params:Object=null) 
		{
			if (params && params.registration == undefined)
				params.registration = "topLeft";
			else if (params == null)
				params = {registration:"topLeft"};

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
				polygonShape.SetAsArray(_tab[i]);
				_fixtureDef.shape = polygonShape;
				body.CreateFixture(_fixtureDef);
			}
		}
		protected function _drawPolygon():void
		{
			_tab = [];
			var polyVector:Array = [];
						
											
			        polyVector.push(new b2Vec2(273/_box2D.scale, 164/_box2D.scale));
					polyVector.push(new b2Vec2(263/_box2D.scale, 110/_box2D.scale));
					polyVector.push(new b2Vec2(283/_box2D.scale, 124/_box2D.scale));
					polyVector.push(new b2Vec2(291/_box2D.scale, 146/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(193/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(146/_box2D.scale, 35/_box2D.scale));
					polyVector.push(new b2Vec2(150/_box2D.scale, 17/_box2D.scale));
					polyVector.push(new b2Vec2(184/_box2D.scale, 24/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(74/_box2D.scale, 82/_box2D.scale));
					polyVector.push(new b2Vec2(104/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(227/_box2D.scale, 83/_box2D.scale));
					polyVector.push(new b2Vec2(127/_box2D.scale, 309/_box2D.scale));
					polyVector.push(new b2Vec2(81/_box2D.scale, 295/_box2D.scale));
					polyVector.push(new b2Vec2(24/_box2D.scale, 170/_box2D.scale));
					polyVector.push(new b2Vec2(16/_box2D.scale, 143/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(227/_box2D.scale, 83/_box2D.scale));
					polyVector.push(new b2Vec2(104/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(193/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(218/_box2D.scale, 60/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(74/_box2D.scale, 82/_box2D.scale));
					polyVector.push(new b2Vec2(35/_box2D.scale, 123/_box2D.scale));
					polyVector.push(new b2Vec2(50/_box2D.scale, 86/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(189/_box2D.scale, 307/_box2D.scale));
					polyVector.push(new b2Vec2(127/_box2D.scale, 309/_box2D.scale));
					polyVector.push(new b2Vec2(227/_box2D.scale, 83/_box2D.scale));
					polyVector.push(new b2Vec2(263/_box2D.scale, 110/_box2D.scale));
					polyVector.push(new b2Vec2(273/_box2D.scale, 164/_box2D.scale));
					polyVector.push(new b2Vec2(244/_box2D.scale, 292/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(146/_box2D.scale, 35/_box2D.scale));
					polyVector.push(new b2Vec2(104/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(114/_box2D.scale, 40/_box2D.scale));
					polyVector.push(new b2Vec2(137/_box2D.scale, 29/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(193/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(104/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(146/_box2D.scale, 35/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(263/_box2D.scale, 110/_box2D.scale));
					polyVector.push(new b2Vec2(227/_box2D.scale, 83/_box2D.scale));
					polyVector.push(new b2Vec2(246/_box2D.scale, 89/_box2D.scale));
					
					_tab.push(polyVector);
					polyVector = [];
											
			        polyVector.push(new b2Vec2(104/_box2D.scale, 55/_box2D.scale));
					polyVector.push(new b2Vec2(74/_box2D.scale, 82/_box2D.scale));
					polyVector.push(new b2Vec2(81/_box2D.scale, 69/_box2D.scale));
					
					_tab.push(polyVector);
					
			
			}
		
		override protected function defineBody():void
		{
		super.defineBody();
		_bodyDef.bullet = true;
		}

	}
	


}