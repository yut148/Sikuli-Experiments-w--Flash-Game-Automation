package 
{
    import flash.events.*;
    import mx.events.*;
    import mx.modules.*;

    private class ResourceEventDispatcher extends EventDispatcher
    {

        private function ResourceEventDispatcher(param1:IModuleInfo)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//60 b5 01 
_as3_getlex moduleInfo_errorHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 b3 01 
_as3_getlex moduleInfo_progressHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//60 b4 01 
_as3_getlex moduleInfo_readyHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//47 
_as3_returnvoid 
        }// end function

        private function moduleInfo_progressHandler(param1:ModuleEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 af 02 
_as3_getproperty PROGRESS
//d1 
_as3_getlocal <1> 
//66 b1 03 
_as3_getproperty bubbles
//d1 
_as3_getlocal <1> 
//66 b2 03 
_as3_getproperty cancelable
//4a 9d 02 03 
_as3_constructprop mx.events::ResourceEvent(param count:3)
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function moduleInfo_readyHandler(param1:ModuleEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 e5 02 
_as3_getproperty COMPLETE
//4a 9d 02 01 
_as3_constructprop mx.events::ResourceEvent(param count:1)
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d6 
_as3_setlocal <2> 
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function moduleInfo_errorHandler(param1:ModuleEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 ae 02 
_as3_getproperty ERROR
//d1 
_as3_getlocal <1> 
//66 b1 03 
_as3_getproperty bubbles
//d1 
_as3_getlocal <1> 
//66 b2 03 
_as3_getproperty cancelable
//4a 9d 02 03 
_as3_constructprop mx.events::ResourceEvent(param count:3)
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 a2 01 
_as3_getproperty errorText
//61 a2 01 
_as3_setproperty errorText
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

    }
}
