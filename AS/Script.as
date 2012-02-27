package
{
	import flash.display.*;
	import flash.event.*;
	public class deneme extends MovieClip
	{
		puplic function deneme()
		{
			this.addEventListener(MouseEvent.MOUSE_DOWN, basla);
			this.addEventListener(MouseEvent.MOUSE_DOWN, bitir);
		}
		public function basla(event:MouseEvent):void
		{
			this.startDrag();
		}
		public function biti(event:MouseEvent):void
		{
			this.stopDrag();
		}
	}
}