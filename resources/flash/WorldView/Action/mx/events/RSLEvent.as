package mx.events
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;

    public class RSLEvent extends ProgressEvent
    {
        public var loaderInfo:LoaderInfo;
        public var errorText:String;
        public var rslIndex:int;
        public var rslTotal:int;
        public var url:URLRequest;
        public static const RSL_PROGRESS:String = "rslProgress";
        public static const RSL_ERROR:String = "rslError";
        static const VERSION:String = "3.5.0.12683";
        public static const RSL_COMPLETE:String = "rslComplete";

        public function RSLEvent(:String, :Boolean = false, :Boolean = false, :int = -1, :int = -1, :int = -1, :int = -1, :URLRequest = null, :String = null)
        {
            super(, , , , );
            this.rslIndex = ;
            this.rslTotal = ;
            this.url = ;
            this.errorText = ;
            return;
        }// end function

        override public function clone() : Event
        {
            return new RSLEvent(type, bubbles, cancelable, bytesLoaded, bytesTotal, rslIndex, rslTotal, url, errorText);
        }// end function

    }
}
