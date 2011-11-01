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
1  0 1701  1 1701  2 1701  3 1701  4 1701  5 1701  6 1701  7 1701  8 170//f1 ea 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;RSLEvent.as"
//f0 aa 01 
_as3_debugline line number: 170
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 8c 08 00 aa 01 
_as3_debug 1, 1036, 0, 170
//ef 01 91 08 01 aa 01 
_as3_debug 1, 1041, 1, 170
//ef 01 92 08 02 aa 01 
_as3_debug 1, 1042, 2, 170
//ef 01 8a 08 03 aa 01 
_as3_debug 1, 1034, 3, 170
//ef 01 8a 04 04 aa 01 
_as3_debug 1, 522, 4, 170
//ef 01 ce 03 05 aa 01 
_as3_debug 1, 462, 5, 170
//ef 01 cf 03 06 aa 01 
_as3_debug 1, 463, 6, 170
//ef 01 60 07 aa 01 
_as3_debug 1, 96, 7, 170
//ef 01 93 03 08 aa 01 
_as3_debug 1, 403, 8, 170
//f1 ea 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;RSLEvent.as"
//f0 b0 01 
_as3_debugline line number: 176
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
//f0 b2 01 
_as3_debugline line number: 178
//d0 
_as3_getlocal <0> 
//62 06 
_as3_getlocal <6>
//68 d5 01 
_as3_initproperty rslIndex
//f0 b3 01 
_as3_debugline line number: 179
//d0 
_as3_getlocal <0> 
//62 07 
_as3_getlocal <7>
//68 d6 01 
_as3_initproperty rslTotal
//f0 b4 01 
_as3_debugline line number: 180
//d0 
_as3_getlocal <0> 
//62 08 
_as3_getlocal <8>
//68 d7 01 
_as3_initproperty url
//f0 b5 01 
_as3_debugline line number: 181
//d0 
_as3_getlocal <0> 
//62 09 
_as3_getlocal <9>
//68 a2 01 
_as3_initproperty errorText
//f0 b6 01 
_as3_debugline line number: 182
//47 
_as3_returnvoid 
        }// end function

        override public function clone() : Event
        {
//f1 ea 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\events;RSLEvent.as"
//f0 f7 01 
_as3_debugline line number: 247
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 f9 01 
_as3_debugline line number: 249
//5d d3 01 
_as3_findpropstrict mx.events::RSLEvent
//f0 f9 01 
_as3_debugline line number: 249
//60 ac 03 
_as3_getlex type
//60 b1 03 
_as3_getlex bubbles
//60 b2 03 
_as3_getlex cancelable
//f0 fa 01 
_as3_debugline line number: 250
//60 aa 03 
_as3_getlex bytesLoaded
//60 95 02 
_as3_getlex bytesTotal
//60 d5 01 
_as3_getlex rslIndex
//f0 fb 01 
_as3_debugline line number: 251
//60 d6 01 
_as3_getlex rslTotal
//60 d7 01 
_as3_getlex url
//60 a2 01 
_as3_getlex errorText
//4a d3 01 09 
_as3_constructprop mx.events::RSLEvent(param count:9)
//48 
_as3_returnvalue 
        }// end function

    }
}
