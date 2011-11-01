package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;

    private class ModuleInfo extends EventDispatcher
    {
        private var _error:Boolean = false;
        private var loader:Loader;
        private var factoryInfo:FactoryInfo;
        private var limbo:Dictionary;
        private var _loaded:Boolean = false;
        private var _ready:Boolean = false;
        private var numReferences:int = 0;
        private var _url:String;
        private var _setup:Boolean = false;

        private function ModuleInfo(param1:String)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//5e 91 02 
_as3_findproperty _url
//d1 
_as3_getlocal <1> 
//68 91 02 
_as3_initproperty _url
//47 
_as3_returnvoid 
        }// end function

        private function clearLoader() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//60 ff 01 
_as3_getlex loader
//12 e5 00 00 
_as3_iffalse offset: 229
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//12 5c 00 00 
_as3_iffalse offset: 92
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 95 04 
_as3_getproperty INIT
//60 84 02 
_as3_getlex initHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 fe 01 
_as3_getlex completeHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 14 
_as3_getlex flash.events::ProgressEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 8d 02 
_as3_getlex progressHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 50 
_as3_getproperty content
//12 1e 00 00 
_as3_iffalse offset: 30
//60 ff 01 
_as3_getlex loader
//66 50 
_as3_getproperty content
//2c c5 01 
_as3_pushstring "ready"
//60 af 01 
_as3_getlex readyHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 50 
_as3_getproperty content
//2c c7 01 
_as3_pushstring "error"
//60 90 02 
_as3_getlex moduleErrorHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//10 10 00 00 
_as3_jump offset: 16
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//30 
_as3_pushscope 
//5a 00 
_as3_newcatch <0>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//1d 
_as3_popscope 
//08 02 
_as3_kill <2>
//60 88 02 
_as3_getlex _loaded
//12 1b 00 00 
_as3_iffalse offset: 27
//60 ff 01 
_as3_getlex loader
//4f 98 04 00 
_as3_callpropvoid close(param count:0)
//10 10 00 00 
_as3_jump offset: 16
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//30 
_as3_pushscope 
//5a 01 
_as3_newcatch <1>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//1d 
_as3_popscope 
//08 02 
_as3_kill <2>
//60 ff 01 
_as3_getlex loader
//4f 94 02 00 
_as3_callpropvoid unload(param count:0)
//10 10 00 00 
_as3_jump offset: 16
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//30 
_as3_pushscope 
//5a 02 
_as3_newcatch <2>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//1d 
_as3_popscope 
//08 02 
_as3_kill <2>
//5e ff 01 
_as3_findproperty loader
//20 
_as3_pushnull 
//68 ff 01 
_as3_initproperty loader
//47 
_as3_returnvoid 
        }// end function

        public function get size() : int
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 82 02 
_as3_getlex factoryInfo
//76 
_as3_convert_b 
//12 0b 00 00 
_as3_iffalse offset: 11
//60 82 02 
_as3_getlex factoryInfo
//66 95 02 
_as3_getproperty bytesTotal
//73 
_as3_convert_i 
//10 02 00 00 
_as3_jump offset: 2
//24 00 
_as3_pushbyte 0
//48 
_as3_returnvalue 
        }// end function

        public function get loaded() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 88 02 
_as3_getlex _loaded
//76 
_as3_convert_b 
//10 01 00 00 
_as3_jump offset: 1
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        public function release() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 8c 02 
_as3_getlex _ready
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 85 02 
_as3_getlex limbo
//96 
_as3_not 
//12 22 00 00 
_as3_iffalse offset: 34
//5e 85 02 
_as3_findproperty limbo
//5d 01 
_as3_findpropstrict flash.utils::Dictionary
//26 
_as3_pushtrue 
//4a 01 01 
_as3_constructprop flash.utils::Dictionary(param count:1)
//68 85 02 
_as3_initproperty limbo
//60 85 02 
_as3_getlex limbo
//60 82 02 
_as3_getlex factoryInfo
//24 01 
_as3_pushbyte 1
//61 96 04 
_as3_setproperty {}
//5e 82 02 
_as3_findproperty factoryInfo
//20 
_as3_pushnull 
//68 82 02 
_as3_initproperty factoryInfo
//10 07 00 00 
_as3_jump offset: 7
//5d 94 02 
_as3_findpropstrict unload
//4f 94 02 00 
_as3_callpropvoid unload(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function get error() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 fc 01 
_as3_getlex _error
//76 
_as3_convert_b 
//10 01 00 00 
_as3_jump offset: 1
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        public function get factory() : IFlexModuleFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 82 02 
_as3_getlex factoryInfo
//76 
_as3_convert_b 
//12 0c 00 00 
_as3_iffalse offset: 12
//60 82 02 
_as3_getlex factoryInfo
//66 fd 01 
_as3_getproperty factory
//80 18 
_as3_coerce mx.core::IFlexModuleFactory
//10 03 00 00 
_as3_jump offset: 3
//20 
_as3_pushnull 
//80 18 
_as3_coerce mx.core::IFlexModuleFactory
//48 
_as3_returnvalue 
        }// end function

        public function completeHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
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
//4a 19 03 
_as3_constructprop mx.events::ModuleEvent(param count:3)
//80 19 
_as3_coerce mx.events::ModuleEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
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

        public function publish(param1:IFlexModuleFactory) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 82 02 
_as3_getlex factoryInfo
//12 01 00 00 
_as3_iffalse offset: 1
//47 
_as3_returnvoid 
//60 91 02 
_as3_getlex _url
//2c e2 07 
_as3_pushstring "published://"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//13 01 00 00 
_as3_ifeq offset: 1
//47 
_as3_returnvoid 
//5e 82 02 
_as3_findproperty factoryInfo
//5d 83 02 
_as3_findpropstrict FactoryInfo
//4a 83 02 00 
_as3_constructprop FactoryInfo(param count:0)
//68 82 02 
_as3_initproperty factoryInfo
//60 82 02 
_as3_getlex factoryInfo
//d1 
_as3_getlocal <1> 
//61 fd 01 
_as3_setproperty factory
//5e 88 02 
_as3_findproperty _loaded
//26 
_as3_pushtrue 
//68 88 02 
_as3_initproperty _loaded
//5e 93 02 
_as3_findproperty _setup
//26 
_as3_pushtrue 
//68 93 02 
_as3_initproperty _setup
//5e 8c 02 
_as3_findproperty _ready
//26 
_as3_pushtrue 
//68 8c 02 
_as3_initproperty _ready
//5e fc 01 
_as3_findproperty _error
//27 
_as3_pushfalse 
//68 fc 01 
_as3_initproperty _error
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
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
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
//47 
_as3_returnvoid 
        }// end function

        public function initHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 19 
_as3_coerce mx.events::ModuleEvent
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//d1 
_as3_getlocal <1> 
//6d 01 
_as3_setslot <1>
//5e 82 02 
_as3_findproperty factoryInfo
//5d 83 02 
_as3_findpropstrict FactoryInfo
//4a 83 02 00 
_as3_constructprop FactoryInfo(param count:0)
//68 82 02 
_as3_initproperty factoryInfo
//60 82 02 
_as3_getlex factoryInfo
//60 ff 01 
_as3_getlex loader
//66 50 
_as3_getproperty content
//60 18 
_as3_getlex mx.core::IFlexModuleFactory
//87 
_as3_astypelate 
//61 fd 01 
_as3_setproperty factory
//10 10 00 00 
_as3_jump offset: 16
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d2 
_as3_getlocal <2> 
//30 
_as3_pushscope 
//5a 00 
_as3_newcatch <0>
//2a 
_as3_dup 
//d7 
_as3_setlocal <3> 
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//1d 
_as3_popscope 
//08 03 
_as3_kill <3>
//60 82 02 
_as3_getlex factoryInfo
//66 fd 01 
_as3_getproperty factory
//11 46 00 00 
_as3_iftrue offset: 70
//65 01 
_as3_getscopeobject 1
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//66 b1 03 
_as3_getproperty bubbles
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//66 b2 03 
_as3_getproperty cancelable
//4a 19 03 
_as3_constructprop mx.events::ModuleEvent(param count:3)
//80 19 
_as3_coerce mx.events::ModuleEvent
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//24 00 
_as3_pushbyte 0
//61 aa 03 
_as3_setproperty bytesLoaded
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//24 00 
_as3_pushbyte 0
//61 95 02 
_as3_setproperty bytesTotal
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//2c e8 07 
_as3_pushstring "SWF is not a loadable module"
//61 a2 01 
_as3_setproperty errorText
//5d fb 02 
_as3_findpropstrict dispatchEvent
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
//60 ff 01 
_as3_getlex loader
//66 50 
_as3_getproperty content
//2c c5 01 
_as3_pushstring "ready"
//60 af 01 
_as3_getlex readyHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 50 
_as3_getproperty content
//2c c7 01 
_as3_pushstring "error"
//60 90 02 
_as3_getlex moduleErrorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 82 02 
_as3_getlex factoryInfo
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 8f 02 
_as3_getproperty applicationDomain
//61 8f 02 
_as3_setproperty applicationDomain
//10 10 00 00 
_as3_jump offset: 16
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d2 
_as3_getlocal <2> 
//30 
_as3_pushscope 
//5a 01 
_as3_newcatch <1>
//2a 
_as3_dup 
//d7 
_as3_setlocal <3> 
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//1d 
_as3_popscope 
//08 03 
_as3_kill <3>
//5e 93 02 
_as3_findproperty _setup
//26 
_as3_pushtrue 
//68 93 02 
_as3_initproperty _setup
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
//47 
_as3_returnvoid 
        }// end function

        public function resurrect() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//60 82 02 
_as3_getlex factoryInfo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 85 02 
_as3_getlex limbo
//76 
_as3_convert_b 
//12 34 00 00 
_as3_iffalse offset: 52
//24 00 
_as3_pushbyte 0
//d6 
_as3_setlocal <2> 
//60 85 02 
_as3_getlex limbo
//82 
_as3_coerce_a 
//d7 
_as3_setlocal <3> 
//10 16 00 00 
_as3_jump offset: 22
//09 
_as3_label 
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//1e 
_as3_nextname 
//80 03 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//5e 82 02 
_as3_findproperty factoryInfo
//d1 
_as3_getlocal <1> 
//60 83 02 
_as3_getlex FactoryInfo
//87 
_as3_astypelate 
//68 82 02 
_as3_initproperty factoryInfo
//10 07 00 00 
_as3_jump offset: 7
//32 03 02 
_as3_hasnext2 3, 2
//11 e3 ff ff 
_as3_iftrue offset: -29
//08 03 
_as3_kill <3>
//08 02 
_as3_kill <2>
//5e 85 02 
_as3_findproperty limbo
//20 
_as3_pushnull 
//68 85 02 
_as3_initproperty limbo
//60 82 02 
_as3_getlex factoryInfo
//11 3b 00 00 
_as3_iftrue offset: 59
//60 88 02 
_as3_getlex _loaded
//12 11 00 00 
_as3_iffalse offset: 17
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b1 02 
_as3_getproperty UNLOAD
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//5e ff 01 
_as3_findproperty loader
//20 
_as3_pushnull 
//68 ff 01 
_as3_initproperty loader
//5e 88 02 
_as3_findproperty _loaded
//27 
_as3_pushfalse 
//68 88 02 
_as3_initproperty _loaded
//5e 93 02 
_as3_findproperty _setup
//27 
_as3_pushfalse 
//68 93 02 
_as3_initproperty _setup
//5e 8c 02 
_as3_findproperty _ready
//27 
_as3_pushfalse 
//68 8c 02 
_as3_initproperty _ready
//5e fc 01 
_as3_findproperty _error
//27 
_as3_pushfalse 
//68 fc 01 
_as3_initproperty _error
//47 
_as3_returnvoid 
        }// end function

        public function errorHandler(param1:ErrorEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e fc 01 
_as3_findproperty _error
//26 
_as3_pushtrue 
//68 fc 01 
_as3_initproperty _error
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
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
//4a 19 03 
_as3_constructprop mx.events::ModuleEvent(param count:3)
//80 19 
_as3_coerce mx.events::ModuleEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//61 aa 03 
_as3_setproperty bytesLoaded
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//61 95 02 
_as3_setproperty bytesTotal
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 fc 02 
_as3_getproperty text
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

        public function get ready() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 8c 02 
_as3_getlex _ready
//76 
_as3_convert_b 
//10 01 00 00 
_as3_jump offset: 1
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        private function loadBytes(param1:ApplicationDomain, param2:ByteArray) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d a4 03 
_as3_findpropstrict flash.system::LoaderContext
//4a a4 03 00 
_as3_constructprop flash.system::LoaderContext(param count:0)
//80 a4 03 
_as3_coerce flash.system::LoaderContext
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//d1 
_as3_getlocal <1> 
//12 07 00 00 
_as3_iffalse offset: 7
//d1 
_as3_getlocal <1> 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//10 0c 00 00 
_as3_jump offset: 12
//5d 09 
_as3_findpropstrict flash.system::ApplicationDomain
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//4a 09 01 
_as3_constructprop flash.system::ApplicationDomain(param count:1)
//80 09 
_as3_coerce flash.system::ApplicationDomain
//61 8f 02 
_as3_setproperty applicationDomain
//2c e6 07 
_as3_pushstring "allowLoadBytesCodeExecution"
//d3 
_as3_getlocal <3> 
//b4 
_as3_in 
//12 08 00 00 
_as3_iffalse offset: 8
//d3 
_as3_getlocal <3> 
//2c e6 07 
_as3_pushstring "allowLoadBytesCodeExecution"
//26 
_as3_pushtrue 
//61 96 04 
_as3_setproperty {}
//5e ff 01 
_as3_findproperty loader
//5d 80 02 
_as3_findpropstrict flash.display::Loader
//4a 80 02 00 
_as3_constructprop flash.display::Loader(param count:0)
//68 ff 01 
_as3_initproperty loader
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 95 04 
_as3_getproperty INIT
//60 84 02 
_as3_getlex initHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 fe 01 
_as3_getlex completeHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//4f 97 04 02 
_as3_callpropvoid loadBytes(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function removeReference() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 8e 02 
_as3_findpropstrict numReferences
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//66 8e 02 
_as3_getproperty numReferences
//c1 
_as3_decrement_i 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 8e 02 
_as3_setproperty numReferences
//08 02 
_as3_kill <2>
//08 01 
_as3_kill <1>
//60 8e 02 
_as3_getlex numReferences
//24 00 
_as3_pushbyte 0
//14 07 00 00 
_as3_ifne offset: 7
//5d fa 01 
_as3_findpropstrict release
//4f fa 01 00 
_as3_callpropvoid release(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function addReference() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 8e 02 
_as3_findpropstrict numReferences
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//66 8e 02 
_as3_getproperty numReferences
//c0 
_as3_increment_i 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 8e 02 
_as3_setproperty numReferences
//08 02 
_as3_kill <2>
//08 01 
_as3_kill <1>
//47 
_as3_returnvoid 
        }// end function

        public function progressHandler(param1:ProgressEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
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
//4a 19 03 
_as3_constructprop mx.events::ModuleEvent(param count:3)
//80 19 
_as3_coerce mx.events::ModuleEvent
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

        public function load(param1:ApplicationDomain = null, param2:SecurityDomain = null, param3:ByteArray = null) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 88 02 
_as3_getlex _loaded
//12 01 00 00 
_as3_iffalse offset: 1
//47 
_as3_returnvoid 
//5e 88 02 
_as3_findproperty _loaded
//26 
_as3_pushtrue 
//68 88 02 
_as3_initproperty _loaded
//5e 85 02 
_as3_findproperty limbo
//20 
_as3_pushnull 
//68 85 02 
_as3_initproperty limbo
//d3 
_as3_getlocal <3> 
//12 0a 00 00 
_as3_iffalse offset: 10
//5d 89 02 
_as3_findpropstrict loadBytes
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//4f 89 02 02 
_as3_callpropvoid loadBytes(param count:2)
//47 
_as3_returnvoid 
//60 91 02 
_as3_getlex _url
//2c e2 07 
_as3_pushstring "published://"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//14 01 00 00 
_as3_ifne offset: 1
//47 
_as3_returnvoid 
//5d 1b 
_as3_findpropstrict flash.net::URLRequest
//60 91 02 
_as3_getlex _url
//4a 1b 01 
_as3_constructprop flash.net::URLRequest(param count:1)
//80 1b 
_as3_coerce flash.net::URLRequest
//63 04 
_as3_setlocal <4>
//5d a4 03 
_as3_findpropstrict flash.system::LoaderContext
//4a a4 03 00 
_as3_constructprop flash.system::LoaderContext(param count:0)
//80 a4 03 
_as3_coerce flash.system::LoaderContext
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//d1 
_as3_getlocal <1> 
//12 07 00 00 
_as3_iffalse offset: 7
//d1 
_as3_getlocal <1> 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//10 0c 00 00 
_as3_jump offset: 12
//5d 09 
_as3_findpropstrict flash.system::ApplicationDomain
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//4a 09 01 
_as3_constructprop flash.system::ApplicationDomain(param count:1)
//80 09 
_as3_coerce flash.system::ApplicationDomain
//61 8f 02 
_as3_setproperty applicationDomain
//62 05 
_as3_getlocal <5>
//d2 
_as3_getlocal <2> 
//61 92 04 
_as3_setproperty securityDomain
//d2 
_as3_getlocal <2> 
//20 
_as3_pushnull 
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 0e 00 00 
_as3_iffalse offset: 14
//29 
_as3_pop 
//60 98 03 
_as3_getlex flash.system::Security
//66 93 04 
_as3_getproperty sandboxType
//60 98 03 
_as3_getlex flash.system::Security
//66 94 04 
_as3_getproperty REMOTE
//ab 
_as3_equals 
//12 0a 00 00 
_as3_iffalse offset: 10
//62 05 
_as3_getlocal <5>
//60 0f 
_as3_getlex flash.system::SecurityDomain
//66 97 03 
_as3_getproperty currentDomain
//61 92 04 
_as3_setproperty securityDomain
//5e ff 01 
_as3_findproperty loader
//5d 80 02 
_as3_findpropstrict flash.display::Loader
//4a 80 02 00 
_as3_constructprop flash.display::Loader(param count:0)
//68 ff 01 
_as3_initproperty loader
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 95 04 
_as3_getproperty INIT
//60 84 02 
_as3_getlex initHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 fe 01 
_as3_getlex completeHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 14 
_as3_getlex flash.events::ProgressEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 8d 02 
_as3_getlex progressHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//60 ff 01 
_as3_getlex loader
//62 04 
_as3_getlocal <4>
//62 05 
_as3_getlocal <5>
//4f 8f 01 02 
_as3_callpropvoid load(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function get url() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 91 02 
_as3_getlex _url
//48 
_as3_returnvalue 
        }// end function

        public function get applicationDomain() : ApplicationDomain
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 82 02 
_as3_getlex factoryInfo
//76 
_as3_convert_b 
//12 0c 00 00 
_as3_iffalse offset: 12
//60 82 02 
_as3_getlex factoryInfo
//66 8f 02 
_as3_getproperty applicationDomain
//80 09 
_as3_coerce flash.system::ApplicationDomain
//10 03 00 00 
_as3_jump offset: 3
//20 
_as3_pushnull 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//48 
_as3_returnvalue 
        }// end function

        public function moduleErrorHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 19 
_as3_coerce mx.events::ModuleEvent
//d6 
_as3_setlocal <2> 
//5e 8c 02 
_as3_findproperty _ready
//26 
_as3_pushtrue 
//68 8c 02 
_as3_initproperty _ready
//60 82 02 
_as3_getlex factoryInfo
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//5d f8 01 
_as3_findpropstrict clearLoader
//4f f8 01 00 
_as3_callpropvoid clearLoader(param count:0)
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//b3 
_as3_istypelate 
//12 0d 00 00 
_as3_iffalse offset: 13
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//d1 
_as3_getlocal <1> 
//46 19 01 
_as3_callproperty mx.events::ModuleEvent(param count:1)
//80 19 
_as3_coerce mx.events::ModuleEvent
//d6 
_as3_setlocal <2> 
//10 0d 00 00 
_as3_jump offset: 13
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//80 19 
_as3_coerce mx.events::ModuleEvent
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

        public function readyHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 8c 02 
_as3_findproperty _ready
//26 
_as3_pushtrue 
//68 8c 02 
_as3_initproperty _ready
//60 82 02 
_as3_getlex factoryInfo
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//80 19 
_as3_coerce mx.events::ModuleEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//5d f8 01 
_as3_findpropstrict clearLoader
//4f f8 01 00 
_as3_callpropvoid clearLoader(param count:0)
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get setup() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 85 02 
_as3_getlex limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 93 02 
_as3_getlex _setup
//76 
_as3_convert_b 
//10 01 00 00 
_as3_jump offset: 1
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        public function unload() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d f8 01 
_as3_findpropstrict clearLoader
//4f f8 01 00 
_as3_callpropvoid clearLoader(param count:0)
//60 88 02 
_as3_getlex _loaded
//12 11 00 00 
_as3_iffalse offset: 17
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b1 02 
_as3_getproperty UNLOAD
//4a 19 01 
_as3_constructprop mx.events::ModuleEvent(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//5e 85 02 
_as3_findproperty limbo
//20 
_as3_pushnull 
//68 85 02 
_as3_initproperty limbo
//5e 82 02 
_as3_findproperty factoryInfo
//20 
_as3_pushnull 
//68 82 02 
_as3_initproperty factoryInfo
//5e 88 02 
_as3_findproperty _loaded
//27 
_as3_pushfalse 
//68 88 02 
_as3_initproperty _loaded
//5e 93 02 
_as3_findproperty _setup
//27 
_as3_pushfalse 
//68 93 02 
_as3_initproperty _setup
//5e 8c 02 
_as3_findproperty _ready
//27 
_as3_pushfalse 
//68 8c 02 
_as3_initproperty _ready
//5e fc 01 
_as3_findproperty _error
//27 
_as3_pushfalse 
//68 fc 01 
_as3_initproperty _error
//47 
_as3_returnvoid 
        }// end function

    }
}
