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
	public class "{{body.name}}" extends Box2DPhysicsObject
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
						{% for body in bodies %}
					{% for fixture in body.fixtures %}{% for polygon in fixture.polygons %}						
			        {% for point in polygon %}polyVector.push(new b2Vec2({{point.x}}/_box2D.scale, {{point.y}}/_box2D.scale));
					{% endfor %}
					_tab.push(polyVector);{% if not forloop.last %}
					polyVector = [];{% endif %}
					{% endfor %}{% endfor %}
			{% endfor %}
			}
		
		override protected function defineBody():void
		{
		super.defineBody();
		_bodyDef.bullet = true;
		}

	}
	


}