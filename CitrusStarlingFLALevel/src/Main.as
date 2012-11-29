package  
{
	import com.citrusengine.core.CitrusEngine;
	import com.citrusengine.core.StarlingCitrusEngine;
	import com.citrusengine.physics.box2d.Box2D;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	/**
	 * ...
	 * @author ...
	 */
	public class Main extends StarlingCitrusEngine
	{
		
		public function Main() 
		{
			
	
			setUpStarling(true)
			
			//DEBUG FLAG
		var devMode:Boolean;
			devMode = true;
			if (devMode == true)
			{
				console.enabled = true;
				starling.showStats = true
				console.addCommand("reload", handleReloadCommand);
	
			
				
			}
			else
			{
				console.enabled = false;
				starling.showStats = false;
			}
			// END DEBUG FLAG
			var loader:Loader = new Loader();
			loader.load(new URLRequest("\levels/level.swf"));
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleSWFLoadComplete, false, 0, true);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onError);
			
		
		}
		
			public function onError(e:IOErrorEvent):void
			{
				trace(e.text);
			}
		private function handleSWFLoadComplete(e:Event):void
		{
			var levelObjectMC:MovieClip = e.target.loader.content;
			state = new SWFState(levelObjectMC);
			e.target.loader.unloadAndStop();
		}
		public function handleReloadCommand():void
		{
			var loader:Loader = new Loader();
			loader.load(new URLRequest("\levels/level.swf"));
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleSWFLoadComplete, false, 0, true);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onError);
		}
		
		
	}

}