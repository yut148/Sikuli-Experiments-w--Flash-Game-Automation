package 
{
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.events.*;

    private class ModuleInfoProxy extends EventDispatcher implements IModuleInfo
    {
        private var _data:Object;
        private var info:ModuleInfo;
        private var referenced:Boolean = false;

        private function ModuleInfoProxy(param1:ModuleInfo)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 9b 02 
_as3_initproperty info
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b0 02 
_as3_getproperty SETUP
//60 9a 02 
_as3_getlex moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 9a 02 
_as3_getlex moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//60 9a 02 
_as3_getlex moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//60 9a 02 
_as3_getlex moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b1 02 
_as3_getproperty UNLOAD
//60 9a 02 
_as3_getlex moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//47 
_as3_returnvoid 
        }// end function

        public function get loaded() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//66 85 01 
_as3_getproperty loaded
//48 
_as3_returnvalue 
        }// end function

        public function release() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9c 02 
_as3_getlex referenced
//12 0e 00 00 
_as3_iffalse offset: 14
//60 9b 02 
_as3_getlex info
//4f 8a 02 00 
_as3_callpropvoid removeReference(param count:0)
//5e 9c 02 
_as3_findproperty referenced
//27 
_as3_pushfalse 
//68 9c 02 
_as3_initproperty referenced
//47 
_as3_returnvoid 
        }// end function

        public function get error() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//66 fb 01 
_as3_getproperty error
//48 
_as3_returnvalue 
        }// end function

        public function get factory() : IFlexModuleFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//66 fd 01 
_as3_getproperty factory
//48 
_as3_returnvalue 
        }// end function

        public function publish(param1:IFlexModuleFactory) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//d1 
_as3_getlocal <1> 
//4f 81 02 01 
_as3_callpropvoid publish(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set data(param1:Object) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 98 02 
_as3_findproperty _data
//d1 
_as3_getlocal <1> 
//68 98 02 
_as3_initproperty _data
//47 
_as3_returnvoid 
        }// end function

        public function get ready() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//66 87 02 
_as3_getproperty ready
//48 
_as3_returnvalue 
        }// end function

        public function load(param1:ApplicationDomain = null, param2:SecurityDomain = null, param3:ByteArray = null) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 19 
_as3_coerce mx.events::ModuleEvent
//63 04 
_as3_setlocal <4>
//60 9b 02 
_as3_getlex info
//4f 86 02 00 
_as3_callpropvoid resurrect(param count:0)
//60 9c 02 
_as3_getlex referenced
//11 0e 00 00 
_as3_iftrue offset: 14
//60 9b 02 
_as3_getlex info
//4f 8b 02 00 
_as3_callpropvoid addReference(param count:0)
//5e 9c 02 
_as3_findproperty referenced
//26 
_as3_pushtrue 
//68 9c 02 
_as3_initproperty referenced
//60 9b 02 
_as3_getlex info
//66 fb 01 
_as3_getproperty error
//12 15 00 00 
_as3_iffalse offset: 21
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//10 7a 00 00 
_as3_jump offset: 122
//60 9b 02 
_as3_getlex info
//66 85 01 
_as3_getproperty loaded
//12 66 00 00 
_as3_iffalse offset: 102
//60 9b 02 
_as3_getlex info
//66 92 02 
_as3_getproperty setup
//12 58 00 00 
_as3_iffalse offset: 88
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b0 02 
_as3_getproperty SETUP
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//60 9b 02 
_as3_getlex info
//66 87 02 
_as3_getproperty ready
//12 3d 00 00 
_as3_iffalse offset: 61
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//80 19 
_as3_coerce mx.events::ModuleEvent
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//60 9b 02 
_as3_getlex info
//66 f9 01 
_as3_getproperty size
//61 aa 03 
_as3_setproperty bytesLoaded
//62 04 
_as3_getlocal <4>
//60 9b 02 
_as3_getlex info
//66 f9 01 
_as3_getproperty size
//61 95 02 
_as3_setproperty bytesTotal
//5d fb 02 
_as3_findpropstrict dispatchEvent
//62 04 
_as3_getlocal <4>
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//10 0a 00 00 
_as3_jump offset: 10
//60 9b 02 
_as3_getlex info
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//4f 8f 01 03 
_as3_callpropvoid load(param count:3)
//47 
_as3_returnvoid 
        }// end function

        private function moduleEventHandler(param1:ModuleEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d1 
_as3_getlocal <1> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get url() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//66 d7 01 
_as3_getproperty url
//48 
_as3_returnvalue 
        }// end function

        public function get data() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 98 02 
_as3_getlex _data
//48 
_as3_returnvalue 
        }// end function

        public function get setup() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//66 92 02 
_as3_getproperty setup
//48 
_as3_returnvalue 
        }// end function

        public function unload() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9b 02 
_as3_getlex info
//4f 94 02 00 
_as3_callpropvoid unload(param count:0)
//60 9b 02 
_as3_getlex info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b0 02 
_as3_getproperty SETUP
//60 9a 02 
_as3_getlex moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 9b 02 
_as3_getlex info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 9a 02 
_as3_getlex moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 9b 02 
_as3_getlex info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//60 9a 02 
_as3_getlex moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 9b 02 
_as3_getlex info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//60 9a 02 
_as3_getlex moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 9b 02 
_as3_getlex info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b1 02 
_as3_getproperty UNLOAD
//60 9a 02 
_as3_getlex moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//47 
_as3_returnvoid 
        }// end function

    }
}
