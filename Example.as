package 
{
	import com.spikything.utils.MouseWheelTrap;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * MouseWheelTrap demo
	 * Traps browser mousewheel events while the mouse is over the Flash to stop simultaneous Flash/browser scrolling
	 * @author Liam O'Donnell
	 */
	[SWF(width="640", height="480", frameRate="30", backgroundColor="#FFFFFF")]
	public class Example extends Sprite 
	{
		private var output :TextField;
		private var circle :Shape;
		
		public function Example():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			MouseWheelTrap.setup(stage);
			stage.addEventListener(MouseEvent.MOUSE_WHEEL, onMouseWheel);
			
			circle = new Shape();
			circle.graphics.beginFill(0xff0000);
			circle.graphics.drawCircle(0, 0, 50);
			circle.graphics.endFill();
			circle.x = 320;
			circle.y = 120;
			addChild(circle);
			
			output = new TextField();
			output.defaultTextFormat = new TextFormat("_sans", 11, 0x000000);
			output.wordWrap = true;
			output.width = 200;
			output.height = 480;
			output.text = "MouseWheelTrap demo - use your scroll wheel while while mousing in and out of this Flash window\n\n";
			addChild(output);
		}
		
		private function onMouseWheel(e:MouseEvent):void 
		{
			var delta:int = e.delta;
			output.appendText(delta + "\n");
			output.scrollV = output.maxScrollV;
			circle.width += delta * 10;
			circle.width = Math.max(1, Math.min(circle.width, 500));
			circle.scaleY = circle.scaleX;
		}
		
	}
	
}