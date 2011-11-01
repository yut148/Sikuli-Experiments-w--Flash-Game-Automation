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

        public function ResourceEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:uint = 0, param5:uint = 0, param6:String = null)
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
//47 
_as3_returnvoid 
        }// end function

        override public function clone() : Event
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
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
//4a 9d 02 06 
_as3_constructprop mx.events::ResourceEvent(param count:6)
//48 
_as3_returnvalue 
        }// end function

    }
}
