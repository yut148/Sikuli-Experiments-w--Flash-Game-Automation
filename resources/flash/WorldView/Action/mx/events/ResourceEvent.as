package mx.events
{
    import flash.events.*;

    public class ResourceEvent extends ProgressEvent
    {
        public var errorText:String;
        static const VERSION:String = "3.5.0.12683";
        public static const COMPLETE:String = "complete";
        public static const PROGRESS:String = "progress";
        public static const ERROR:String = "error";

        public function ResourceEvent(:String, :Boolean = false, :Boolean = false, :uint = 0, :uint = 0, :String = null)
        {
            super(, , , , );
            this.errorText = ;
            return;
        }// end function

        override public function clone() : Event
        {
            return new ResourceEvent(type, bubbles, cancelable, bytesLoaded, bytesTotal, errorText);
        }// end function

    }
}
