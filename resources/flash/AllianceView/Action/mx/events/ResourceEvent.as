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
1  0 1441  1 1441  2 1441  3 1441  4 1441  5 144//f1 fb 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ResourceEvent.as"
//f0 90 01 
_as3_debugline line number: 144
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 8c 08 00 90 01 
_as3_debug 1, 1036, 0, 144
//ef 01 91 08 01 90 01 
_as3_debug 1, 1041, 1, 144
//ef 01 92 08 02 90 01 
_as3_debug 1, 1042, 2, 144
//ef 01 8a 08 03 90 01 
_as3_debug 1, 1034, 3, 144
//ef 01 8a 04 04 90 01 
_as3_debug 1, 522, 4, 144
//ef 01 93 03 05 90 01 
_as3_debug 1, 403, 5, 144
//f1 fb 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ResourceEvent.as"
//f0 95 01 
_as3_debugline line number: 149
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
//f0 97 01 
_as3_debugline line number: 151
//d0 
_as3_getlocal <0> 
//62 06 
_as3_getlocal <6>
//68 a2 01 
_as3_initproperty errorText
//f0 98 01 
_as3_debugline line number: 152
//47 
_as3_returnvoid 
        }// end function

        override public function clone() : Event
        {
//f1 fb 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;ResourceEvent.as"
//f0 b3 01 
_as3_debugline line number: 179
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 b5 01 
_as3_debugline line number: 181
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//f0 b5 01 
_as3_debugline line number: 181
//60 ac 03 
_as3_getlex type
//60 b1 03 
_as3_getlex bubbles
//60 b2 03 
_as3_getlex cancelable
//f0 b6 01 
_as3_debugline line number: 182
//60 aa 03 
_as3_getlex bytesLoaded
//60 95 02 
_as3_getlex bytesTotal
//60 a2 01 
_as3_getlex errorText
//4a 9d 02 06 
_as3_constructprop mx.events::ResourceEvent(param count:6)
//48 
_as3_returnvalue 
        }// end function

    }
}
