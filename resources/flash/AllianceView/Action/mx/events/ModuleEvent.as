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
1  0 2071  1 2071  2 2071  3 2071  4 2071  5 2071  6 207//f1 90 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ModuleEvent.as"
//f0 cf 01 
_as3_debugline line number: 207
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 8c 08 00 cf 01 
_as3_debug 1, 1036, 0, 207
//ef 01 91 08 01 cf 01 
_as3_debug 1, 1041, 1, 207
//ef 01 92 08 02 cf 01 
_as3_debug 1, 1042, 2, 207
//ef 01 8a 08 03 cf 01 
_as3_debug 1, 1034, 3, 207
//ef 01 8a 04 04 cf 01 
_as3_debug 1, 522, 4, 207
//ef 01 93 03 05 cf 01 
_as3_debug 1, 403, 5, 207
//ef 01 a7 03 06 cf 01 
_as3_debug 1, 423, 6, 207
//f1 90 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ModuleEvent.as"
//f0 d4 01 
_as3_debugline line number: 212
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
//f0 d6 01 
_as3_debugline line number: 214
//d0 
_as3_getlocal <0> 
//62 06 
_as3_getlocal <6>
//68 a2 01 
_as3_initproperty errorText
//f0 d7 01 
_as3_debugline line number: 215
//d0 
_as3_getlocal <0> 
//62 07 
_as3_getlocal <7>
//68 a3 01 
_as3_initproperty mx.events:ModuleEvent::_module
//f0 d8 01 
_as3_debugline line number: 216
//47 
_as3_returnvoid 
        }// end function

        public function get module() : IModuleInfo
        {
//f1 90 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ModuleEvent.as"
//f0 f4 01 
_as3_debugline line number: 244
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 f6 01 
_as3_debugline line number: 246
//60 a3 01 
_as3_getlex mx.events:ModuleEvent::_module
//12 04 00 00 
_as3_iffalse offset: 4
//60 a3 01 
_as3_getlex mx.events:ModuleEvent::_module
//48 
_as3_returnvalue 
//f0 f7 01 
_as3_debugline line number: 247
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
//f1 90 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ModuleEvent.as"
//f0 83 02 
_as3_debugline line number: 259
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 85 02 
_as3_debugline line number: 261
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//f0 85 02 
_as3_debugline line number: 261
//60 ac 03 
_as3_getlex type
//60 b1 03 
_as3_getlex bubbles
//60 b2 03 
_as3_getlex cancelable
//f0 86 02 
_as3_debugline line number: 262
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
