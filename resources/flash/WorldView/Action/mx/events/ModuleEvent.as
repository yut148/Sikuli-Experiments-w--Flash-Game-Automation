package mx.events
{
    import flash.events.*;
    import mx.modules.*;

    public class ModuleEvent extends ProgressEvent
    {
        public var errorText:String;
        private var _module:IModuleInfo;
        public static const READY:String = "ready";
        public static const ERROR:String = "error";
        public static const PROGRESS:String = "progress";
        static const VERSION:String = "3.5.0.12683";
        public static const SETUP:String = "setup";
        public static const UNLOAD:String = "unload";

        public function ModuleEvent(:String, :Boolean = false, :Boolean = false, :uint = 0, :uint = 0, :String = null, :IModuleInfo = null)
        {
            super(, , , , );
            this.errorText = ;
            this._module = ;
            return;
        }// end function

        public function get module() : IModuleInfo
        {
            if (_module)
            {
                return _module;
            }// end if
            return target as IModuleInfo;
        }// end function

        override public function clone() : Event
        {
            return new ModuleEvent(type, bubbles, cancelable, bytesLoaded, bytesTotal, errorText, module);
        }// end function

    }
}
