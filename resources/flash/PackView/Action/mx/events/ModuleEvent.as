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

        public function ModuleEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:uint = 0, param5:uint = 0, param6:String = null, param7:IModuleInfo = null)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//62 04 
_as3_getlocal <4>
//62 05 
_as3_getlocal <5>
//49 05 
_as3_constructsuper (param count:5)
//d0 
_as3_getlocal <0> 
//62 06 
_as3_getlocal <6>
//68 a2 01 
_as3_initproperty errorText
//d0 
_as3_getlocal <0> 
//62 07 
_as3_getlocal <7>
//68 a3 01 
_as3_initproperty _module
//47 
_as3_returnvoid 
        }// end function

        public function get module() : IModuleInfo
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 a3 01 
_as3_getlex _module
//12 04 00 00 
_as3_iffalse offset: 4
//60 a3 01 
_as3_getlex _module
//48 
_as3_returnvalue 
//60 8e 03 
_as3_getlex target
//60 17 
_as3_getlex mx.modules::IModuleInfo
//87 
_as3_astypelate 
//48 
_as3_returnvalue 
        }// end function

        override public function clone() : Event
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 ac 03 
_as3_getlex type
//60 b1 03 
_as3_getlex bubbles
//60 b2 03 
_as3_getlex cancelable
//60 aa 03 
_as3_getlex bytesLoaded
//60 95 02 
_as3_getlex bytesTotal
//60 a2 01 
_as3_getlex errorText
//60 a4 01 
_as3_getlex module
//4a 19 07 
_as3_constructprop mx.events::ModuleEvent(param count:7)
//48 
_as3_returnvalue 
        }// end function

    }
}
