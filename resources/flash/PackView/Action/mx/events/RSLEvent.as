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

        public function RSLEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = -1, param5:int = -1, param6:int = -1, param7:int = -1, param8:URLRequest = null, param9:String = null)
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
//68 d5 01 
_as3_initproperty rslIndex
//d0 
_as3_getlocal <0> 
//62 07 
_as3_getlocal <7>
//68 d6 01 
_as3_initproperty rslTotal
//d0 
_as3_getlocal <0> 
//62 08 
_as3_getlocal <8>
//68 d7 01 
_as3_initproperty url
//d0 
_as3_getlocal <0> 
//62 09 
_as3_getlocal <9>
//68 a2 01 
_as3_initproperty errorText
//47 
_as3_returnvoid 
        }// end function

        override public function clone() : Event
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d d3 01 
_as3_findpropstrict mx.events::RSLEvent
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
//60 d5 01 
_as3_getlex rslIndex
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
