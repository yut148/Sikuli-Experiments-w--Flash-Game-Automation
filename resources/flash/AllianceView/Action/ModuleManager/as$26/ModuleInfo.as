package ModuleManager.as$26
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

        private function ModuleInfo(:String)
        {
1  0 221//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 dd 01 
_as3_debugline line number: 221
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 60 00 dd 01 
_as3_debug 1, 96, 0, 221
//f0 df 01 
_as3_debugline line number: 223
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 e1 01 
_as3_debugline line number: 225
//5e 91 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_url
//d1 
_as3_getlocal <1> 
//68 91 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_url
//f0 e2 01 
_as3_debugline line number: 226
//47 
_as3_returnvoid 
        }// end function

        private function clearLoader() : void
        {
1  0 531//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 93 04 
_as3_debugline line number: 531
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
//ef 01 f5 0a 00 93 04 
_as3_debug 1, 1397, 0, 531
//f0 95 04 
_as3_debugline line number: 533
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//12 24 01 00 
_as3_iffalse offset: 292
//f0 97 04 
_as3_debugline line number: 535
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//12 7a 00 00 
_as3_iffalse offset: 122
//f0 99 04 
_as3_debugline line number: 537
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 9a 04 
_as3_debugline line number: 538
//60 04 
_as3_getlex flash.events::Event
//66 95 04 
_as3_getproperty INIT
//60 84 02 
_as3_getlex initHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 9b 04 
_as3_debugline line number: 539
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 9c 04 
_as3_debugline line number: 540
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 fe 01 
_as3_getlex completeHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 9d 04 
_as3_debugline line number: 541
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 9e 04 
_as3_debugline line number: 542
//60 14 
_as3_getlex flash.events::ProgressEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 8d 02 
_as3_getlex progressHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 9f 04 
_as3_debugline line number: 543
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 a0 04 
_as3_debugline line number: 544
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 a1 04 
_as3_debugline line number: 545
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 a2 04 
_as3_debugline line number: 546
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 a7 04 
_as3_debugline line number: 551
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 50 
_as3_getproperty content
//12 24 00 00 
_as3_iffalse offset: 36
//f0 a9 04 
_as3_debugline line number: 553
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 50 
_as3_getproperty content
//2c d1 03 
_as3_pushstring "ready"
//60 af 01 
_as3_getlex readyHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 aa 04 
_as3_debugline line number: 554
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 50 
_as3_getproperty content
//2c d3 03 
_as3_pushstring "error"
//60 90 02 
_as3_getlex moduleErrorHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 ad 04 
_as3_debugline line number: 557
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
//f0 b5 04 
_as3_debugline line number: 565
//60 88 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_loaded
//12 21 00 00 
_as3_iffalse offset: 33
//f0 b9 04 
_as3_debugline line number: 569
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//4f 98 04 00 
_as3_callpropvoid close(param count:0)
//f0 bb 04 
_as3_debugline line number: 571
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
//f0 c2 04 
_as3_debugline line number: 578
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//4f 94 02 00 
_as3_callpropvoid unload(param count:0)
//f0 c4 04 
_as3_debugline line number: 580
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
//f0 c8 04 
_as3_debugline line number: 584
//5e ff 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::loader
//20 
_as3_pushnull 
//68 ff 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::loader
//f0 ca 04 
_as3_debugline line number: 586
//47 
_as3_returnvoid 
        }// end function

        public function get size() : int
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 ec 02 
_as3_debugline line number: 364
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 ee 02 
_as3_debugline line number: 366
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//76 
_as3_convert_b 
//12 0b 00 00 
_as3_iffalse offset: 11
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
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
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 bc 02 
_as3_debugline line number: 316
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 be 02 
_as3_debugline line number: 318
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 88 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_loaded
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
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 fe 03 
_as3_debugline line number: 510
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 80 04 
_as3_debugline line number: 512
//60 8c 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_ready
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//96 
_as3_not 
//12 2b 00 00 
_as3_iffalse offset: 43
//f0 84 04 
_as3_debugline line number: 516
//5e 85 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::limbo
//5d 01 
_as3_findpropstrict flash.utils::Dictionary
//26 
_as3_pushtrue 
//4a 01 01 
_as3_constructprop flash.utils::Dictionary(param count:1)
//68 85 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::limbo
//f0 85 04 
_as3_debugline line number: 517
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//24 01 
_as3_pushbyte 1
//61 96 04 
_as3_setproperty {}
//f0 86 04 
_as3_debugline line number: 518
//5e 82 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//20 
_as3_pushnull 
//68 82 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//10 0a 00 00 
_as3_jump offset: 10
//f0 8b 04 
_as3_debugline line number: 523
//5d 94 02 
_as3_findpropstrict unload
//4f 94 02 00 
_as3_callpropvoid unload(param count:0)
//f0 8d 04 
_as3_debugline line number: 525
//47 
_as3_returnvoid 
        }// end function

        public function get error() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 9e 02 
_as3_debugline line number: 286
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 a0 02 
_as3_debugline line number: 288
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 fc 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::_error
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
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 aa 02 
_as3_debugline line number: 298
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 ac 02 
_as3_debugline line number: 300
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//76 
_as3_convert_b 
//12 0c 00 00 
_as3_iffalse offset: 12
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
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

        public function completeHandler(_url:Event) : void
        {
1  0 7111  1 715//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 c7 05 
_as3_debugline line number: 711
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 c7 05 
_as3_debug 1, 635, 0, 711
//ef 01 f9 0a 01 cb 05 
_as3_debug 1, 1401, 1, 715
//f0 cb 05 
_as3_debugline line number: 715
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//f0 cc 05 
_as3_debugline line number: 716
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
//f0 cd 05 
_as3_debugline line number: 717
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 ce 05 
_as3_debugline line number: 718
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 cf 05 
_as3_debugline line number: 719
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 d0 05 
_as3_debugline line number: 720
//47 
_as3_returnvoid 
        }// end function

        public function publish(_url:IFlexModuleFactory) : void
        {
1  0 608//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 e0 04 
_as3_debugline line number: 608
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 d6 03 00 e0 04 
_as3_debug 1, 470, 0, 608
//f0 e2 04 
_as3_debugline line number: 610
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//12 04 00 00 
_as3_iffalse offset: 4
//f0 e3 04 
_as3_debugline line number: 611
//47 
_as3_returnvoid 
//f0 e5 04 
_as3_debugline line number: 613
//60 91 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_url
//2c ef 0a 
_as3_pushstring "published://"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//13 04 00 00 
_as3_ifeq offset: 4
//f0 e6 04 
_as3_debugline line number: 614
//47 
_as3_returnvoid 
//f0 e8 04 
_as3_debugline line number: 616
//5e 82 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//5d 83 02 
_as3_findpropstrict ModuleManager.as$26::FactoryInfo
//4a 83 02 00 
_as3_constructprop ModuleManager.as$26::FactoryInfo(param count:0)
//68 82 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//f0 e9 04 
_as3_debugline line number: 617
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//d1 
_as3_getlocal <1> 
//61 fd 01 
_as3_setproperty factory
//f0 ea 04 
_as3_debugline line number: 618
//5e 88 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_loaded
//26 
_as3_pushtrue 
//68 88 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_loaded
//f0 eb 04 
_as3_debugline line number: 619
//5e 93 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_setup
//26 
_as3_pushtrue 
//68 93 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_setup
//f0 ec 04 
_as3_debugline line number: 620
//5e 8c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_ready
//26 
_as3_pushtrue 
//68 8c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_ready
//f0 ed 04 
_as3_debugline line number: 621
//5e fc 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_error
//27 
_as3_pushfalse 
//68 fc 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_error
//f0 ef 04 
_as3_debugline line number: 623
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
//f0 f0 04 
_as3_debugline line number: 624
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
//f0 f1 04 
_as3_debugline line number: 625
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
//f0 f2 04 
_as3_debugline line number: 626
//47 
_as3_returnvoid 
        }// end function

        public function initHandler(_url:Event) : void
        {
1  1 6551  0 655//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 8f 05 
_as3_debugline line number: 655
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
//ef 01 f7 0a 01 8f 05 
_as3_debug 1, 1399, 1, 655
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
//ef 01 fb 04 00 8f 05 
_as3_debug 1, 635, 0, 655
//f0 93 05 
_as3_debugline line number: 659
//5e 82 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//5d 83 02 
_as3_findpropstrict ModuleManager.as$26::FactoryInfo
//4a 83 02 00 
_as3_constructprop ModuleManager.as$26::FactoryInfo(param count:0)
//68 82 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//f0 97 05 
_as3_debugline line number: 663
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 50 
_as3_getproperty content
//60 18 
_as3_getlex mx.core::IFlexModuleFactory
//87 
_as3_astypelate 
//61 fd 01 
_as3_setproperty factory
//f0 99 05 
_as3_debugline line number: 665
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
//f0 9d 05 
_as3_debugline line number: 669
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//66 fd 01 
_as3_getproperty factory
//11 5b 00 00 
_as3_iftrue offset: 91
//f0 9f 05 
_as3_debugline line number: 671
//65 01 
_as3_getscopeobject 1
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//f0 a0 05 
_as3_debugline line number: 672
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
//f0 a1 05 
_as3_debugline line number: 673
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//24 00 
_as3_pushbyte 0
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 a2 05 
_as3_debugline line number: 674
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//24 00 
_as3_pushbyte 0
//61 95 02 
_as3_setproperty bytesTotal
//f0 a3 05 
_as3_debugline line number: 675
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//2c f8 0a 
_as3_pushstring "SWF is not a loadable module"
//61 a2 01 
_as3_setproperty errorText
//f0 a4 05 
_as3_debugline line number: 676
//5d fb 02 
_as3_findpropstrict dispatchEvent
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 a5 05 
_as3_debugline line number: 677
//47 
_as3_returnvoid 
//f0 a8 05 
_as3_debugline line number: 680
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 50 
_as3_getproperty content
//2c d1 03 
_as3_pushstring "ready"
//60 af 01 
_as3_getlex readyHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 a9 05 
_as3_debugline line number: 681
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 50 
_as3_getproperty content
//2c d3 03 
_as3_pushstring "error"
//60 90 02 
_as3_getlex moduleErrorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 ad 05 
_as3_debugline line number: 685
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//f0 ae 05 
_as3_debugline line number: 686
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 8f 02 
_as3_getproperty applicationDomain
//61 8f 02 
_as3_setproperty applicationDomain
//f0 b0 05 
_as3_debugline line number: 688
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
//f0 b3 05 
_as3_debugline line number: 691
//5e 93 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_setup
//26 
_as3_pushtrue 
//68 93 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_setup
//f0 b5 05 
_as3_debugline line number: 693
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
//f0 b6 05 
_as3_debugline line number: 694
//47 
_as3_returnvoid 
        }// end function

        public function resurrect() : void
        {
1  0 484//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 df 03 
_as3_debugline line number: 479
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
//f0 e1 03 
_as3_debugline line number: 481
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//76 
_as3_convert_b 
//12 4a 00 00 
_as3_iffalse offset: 74
//ef 01 f4 0a 00 e4 03 
_as3_debug 1, 1396, 0, 484
//f0 e4 03 
_as3_debugline line number: 484
//24 00 
_as3_pushbyte 0
//d6 
_as3_setlocal <2> 
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//82 
_as3_coerce_a 
//d7 
_as3_setlocal <3> 
//10 1c 00 00 
_as3_jump offset: 28
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
//f0 e7 03 
_as3_debugline line number: 487
//5e 82 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//d1 
_as3_getlocal <1> 
//60 83 02 
_as3_getlex ModuleManager.as$26::FactoryInfo
//87 
_as3_astypelate 
//68 82 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//f0 e8 03 
_as3_debugline line number: 488
//10 0a 00 00 
_as3_jump offset: 10
//f0 e4 03 
_as3_debugline line number: 484
//32 03 02 
_as3_hasnext2 3, 2
//11 da ff ff 
_as3_iftrue offset: -38
//08 03 
_as3_kill <3>
//08 02 
_as3_kill <2>
//f0 eb 03 
_as3_debugline line number: 491
//5e 85 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::limbo
//20 
_as3_pushnull 
//68 85 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::limbo
//f0 ee 03 
_as3_debugline line number: 494
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//11 50 00 00 
_as3_iftrue offset: 80
//f0 f0 03 
_as3_debugline line number: 496
//60 88 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_loaded
//12 14 00 00 
_as3_iffalse offset: 20
//f0 f1 03 
_as3_debugline line number: 497
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
//f0 f3 03 
_as3_debugline line number: 499
//5e ff 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::loader
//20 
_as3_pushnull 
//68 ff 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::loader
//f0 f4 03 
_as3_debugline line number: 500
//5e 88 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_loaded
//27 
_as3_pushfalse 
//68 88 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_loaded
//f0 f5 03 
_as3_debugline line number: 501
//5e 93 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_setup
//27 
_as3_pushfalse 
//68 93 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_setup
//f0 f6 03 
_as3_debugline line number: 502
//5e 8c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_ready
//27 
_as3_pushfalse 
//68 8c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_ready
//f0 f7 03 
_as3_debugline line number: 503
//5e fc 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_error
//27 
_as3_pushfalse 
//68 fc 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_error
//f0 f9 03 
_as3_debugline line number: 505
//47 
_as3_returnvoid 
        }// end function

        public function errorHandler(_url:ErrorEvent) : void
        {
1  0 7251  1 729//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 d5 05 
_as3_debugline line number: 725
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 d5 05 
_as3_debug 1, 635, 0, 725
//ef 01 f9 0a 01 d9 05 
_as3_debug 1, 1401, 1, 729
//f0 d7 05 
_as3_debugline line number: 727
//5e fc 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_error
//26 
_as3_pushtrue 
//68 fc 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_error
//f0 d9 05 
_as3_debugline line number: 729
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//f0 da 05 
_as3_debugline line number: 730
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
//f0 db 05 
_as3_debugline line number: 731
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 dc 05 
_as3_debugline line number: 732
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//61 95 02 
_as3_setproperty bytesTotal
//f0 dd 05 
_as3_debugline line number: 733
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 fc 02 
_as3_getproperty text
//61 a2 01 
_as3_setproperty errorText
//f0 de 05 
_as3_debugline line number: 734
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 e1 05 
_as3_debugline line number: 737
//47 
_as3_returnvoid 
        }// end function

        public function get ready() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 ce 02 
_as3_debugline line number: 334
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 d0 02 
_as3_debugline line number: 336
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 8c 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_ready
//76 
_as3_convert_b 
//10 01 00 00 
_as3_jump offset: 1
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        private function loadBytes(_url:ApplicationDomain, _url:ByteArray) : void
        {
1  0 4491  1 4491  2 451//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 c1 03 
_as3_debugline line number: 449
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 69 00 c1 03 
_as3_debug 1, 105, 0, 449
//ef 01 ed 0a 01 c1 03 
_as3_debug 1, 1389, 1, 449
//ef 01 9f 05 02 c3 03 
_as3_debug 1, 671, 2, 451
//f0 c3 03 
_as3_debugline line number: 451
//5d a4 03 
_as3_findpropstrict flash.system::LoaderContext
//4a a4 03 00 
_as3_constructprop flash.system::LoaderContext(param count:0)
//80 a4 03 
_as3_coerce flash.system::LoaderContext
//d7 
_as3_setlocal <3> 
//f0 c4 03 
_as3_debugline line number: 452
//d3 
_as3_getlocal <3> 
//f0 c5 03 
_as3_debugline line number: 453
//d1 
_as3_getlocal <1> 
//12 0a 00 00 
_as3_iffalse offset: 10
//f0 c6 03 
_as3_debugline line number: 454
//d1 
_as3_getlocal <1> 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//10 0f 00 00 
_as3_jump offset: 15
//f0 c7 03 
_as3_debugline line number: 455
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
//2c f3 0a 
_as3_pushstring "allowLoadBytesCodeExecution"
//f0 cb 03 
_as3_debugline line number: 459
//d3 
_as3_getlocal <3> 
//b4 
_as3_in 
//12 0b 00 00 
_as3_iffalse offset: 11
//f0 cc 03 
_as3_debugline line number: 460
//d3 
_as3_getlocal <3> 
//2c f3 0a 
_as3_pushstring "allowLoadBytesCodeExecution"
//26 
_as3_pushtrue 
//61 96 04 
_as3_setproperty {}
//f0 ce 03 
_as3_debugline line number: 462
//5e ff 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::loader
//5d 80 02 
_as3_findpropstrict flash.display::Loader
//4a 80 02 00 
_as3_constructprop flash.display::Loader(param count:0)
//68 ff 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::loader
//f0 d0 03 
_as3_debugline line number: 464
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 d1 03 
_as3_debugline line number: 465
//60 04 
_as3_getlex flash.events::Event
//66 95 04 
_as3_getproperty INIT
//60 84 02 
_as3_getlex initHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 d2 03 
_as3_debugline line number: 466
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 d3 03 
_as3_debugline line number: 467
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 fe 01 
_as3_getlex completeHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 d4 03 
_as3_debugline line number: 468
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 d5 03 
_as3_debugline line number: 469
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 d6 03 
_as3_debugline line number: 470
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 d7 03 
_as3_debugline line number: 471
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 d9 03 
_as3_debugline line number: 473
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//4f 97 04 02 
_as3_callpropvoid loadBytes(param count:2)
//f0 da 03 
_as3_debugline line number: 474
//47 
_as3_returnvoid 
        }// end function

        public function removeReference() : void
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 ff 04 
_as3_debugline line number: 639
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 81 05 
_as3_debugline line number: 641
//5d 8e 02 
_as3_findpropstrict ModuleManager.as$26:ModuleInfo::numReferences
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//66 8e 02 
_as3_getproperty ModuleManager.as$26:ModuleInfo::numReferences
//c1 
_as3_decrement_i 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 8e 02 
_as3_setproperty ModuleManager.as$26:ModuleInfo::numReferences
//08 02 
_as3_kill <2>
//08 01 
_as3_kill <1>
//f0 82 05 
_as3_debugline line number: 642
//60 8e 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::numReferences
//24 00 
_as3_pushbyte 0
//14 0a 00 00 
_as3_ifne offset: 10
//f0 83 05 
_as3_debugline line number: 643
//5d fa 01 
_as3_findpropstrict release
//4f fa 01 00 
_as3_callpropvoid release(param count:0)
//f0 84 05 
_as3_debugline line number: 644
//47 
_as3_returnvoid 
        }// end function

        public function addReference() : void
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 f7 04 
_as3_debugline line number: 631
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 f9 04 
_as3_debugline line number: 633
//5d 8e 02 
_as3_findpropstrict ModuleManager.as$26:ModuleInfo::numReferences
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//66 8e 02 
_as3_getproperty ModuleManager.as$26:ModuleInfo::numReferences
//c0 
_as3_increment_i 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 8e 02 
_as3_setproperty ModuleManager.as$26:ModuleInfo::numReferences
//08 02 
_as3_kill <2>
//08 01 
_as3_kill <1>
//f0 fa 04 
_as3_debugline line number: 634
//47 
_as3_returnvoid 
        }// end function

        public function progressHandler(_url:ProgressEvent) : void
        {
1  0 6991  1 701//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 bb 05 
_as3_debugline line number: 699
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 bb 05 
_as3_debug 1, 635, 0, 699
//ef 01 f9 0a 01 bd 05 
_as3_debug 1, 1401, 1, 701
//f0 bd 05 
_as3_debugline line number: 701
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//f0 be 05 
_as3_debugline line number: 702
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
//f0 bf 05 
_as3_debugline line number: 703
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 c0 05 
_as3_debugline line number: 704
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 c1 05 
_as3_debugline line number: 705
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 c2 05 
_as3_debugline line number: 706
//47 
_as3_returnvoid 
        }// end function

        public function load(_url:ApplicationDomain = null, _url:SecurityDomain = null, _url:ByteArray = null) : void
        {
1  0 3961  1 3961  2 3961  3 4181  4 420//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 8c 03 
_as3_debugline line number: 396
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 69 00 8c 03 
_as3_debug 1, 105, 0, 396
//ef 01 6c 01 8c 03 
_as3_debug 1, 108, 1, 396
//ef 01 ed 0a 02 8c 03 
_as3_debug 1, 1389, 2, 396
//ef 01 ee 0a 03 a2 03 
_as3_debug 1, 1390, 3, 418
//ef 01 9f 05 04 a4 03 
_as3_debug 1, 671, 4, 420
//f0 90 03 
_as3_debugline line number: 400
//60 88 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_loaded
//12 04 00 00 
_as3_iffalse offset: 4
//f0 91 03 
_as3_debugline line number: 401
//47 
_as3_returnvoid 
//f0 93 03 
_as3_debugline line number: 403
//5e 88 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_loaded
//26 
_as3_pushtrue 
//68 88 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_loaded
//f0 95 03 
_as3_debugline line number: 405
//5e 85 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::limbo
//20 
_as3_pushnull 
//68 85 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::limbo
//f0 99 03 
_as3_debugline line number: 409
//d3 
_as3_getlocal <3> 
//12 10 00 00 
_as3_iffalse offset: 16
//f0 9b 03 
_as3_debugline line number: 411
//5d 89 02 
_as3_findpropstrict ModuleManager.as$26:ModuleInfo::loadBytes
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//4f 89 02 02 
_as3_callpropvoid ModuleManager.as$26:ModuleInfo::loadBytes(param count:2)
//f0 9c 03 
_as3_debugline line number: 412
//47 
_as3_returnvoid 
//f0 9f 03 
_as3_debugline line number: 415
//60 91 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_url
//2c ef 0a 
_as3_pushstring "published://"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//14 04 00 00 
_as3_ifne offset: 4
//f0 a0 03 
_as3_debugline line number: 416
//47 
_as3_returnvoid 
//f0 a2 03 
_as3_debugline line number: 418
//5d 1b 
_as3_findpropstrict flash.net::URLRequest
//60 91 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_url
//4a 1b 01 
_as3_constructprop flash.net::URLRequest(param count:1)
//80 1b 
_as3_coerce flash.net::URLRequest
//63 04 
_as3_setlocal <4>
//f0 a4 03 
_as3_debugline line number: 420
//5d a4 03 
_as3_findpropstrict flash.system::LoaderContext
//4a a4 03 00 
_as3_constructprop flash.system::LoaderContext(param count:0)
//80 a4 03 
_as3_coerce flash.system::LoaderContext
//63 05 
_as3_setlocal <5>
//f0 a5 03 
_as3_debugline line number: 421
//62 05 
_as3_getlocal <5>
//f0 a6 03 
_as3_debugline line number: 422
//d1 
_as3_getlocal <1> 
//12 0a 00 00 
_as3_iffalse offset: 10
//f0 a7 03 
_as3_debugline line number: 423
//d1 
_as3_getlocal <1> 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//10 0f 00 00 
_as3_jump offset: 15
//f0 a8 03 
_as3_debugline line number: 424
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
//f0 aa 03 
_as3_debugline line number: 426
//62 05 
_as3_getlocal <5>
//d2 
_as3_getlocal <2> 
//61 92 04 
_as3_setproperty securityDomain
//f0 ab 03 
_as3_debugline line number: 427
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
//12 0d 00 00 
_as3_iffalse offset: 13
//f0 ac 03 
_as3_debugline line number: 428
//62 05 
_as3_getlocal <5>
//60 0f 
_as3_getlex flash.system::SecurityDomain
//66 97 03 
_as3_getproperty currentDomain
//61 92 04 
_as3_setproperty securityDomain
//f0 ae 03 
_as3_debugline line number: 430
//5e ff 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::loader
//5d 80 02 
_as3_findpropstrict flash.display::Loader
//4a 80 02 00 
_as3_constructprop flash.display::Loader(param count:0)
//68 ff 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::loader
//f0 b0 03 
_as3_debugline line number: 432
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 b1 03 
_as3_debugline line number: 433
//60 04 
_as3_getlex flash.events::Event
//66 95 04 
_as3_getproperty INIT
//60 84 02 
_as3_getlex initHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 b2 03 
_as3_debugline line number: 434
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 b3 03 
_as3_debugline line number: 435
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 fe 01 
_as3_getlex completeHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 b4 03 
_as3_debugline line number: 436
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 b5 03 
_as3_debugline line number: 437
//60 14 
_as3_getlex flash.events::ProgressEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 8d 02 
_as3_getlex progressHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 b6 03 
_as3_debugline line number: 438
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 b7 03 
_as3_debugline line number: 439
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 b8 03 
_as3_debugline line number: 440
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 b9 03 
_as3_debugline line number: 441
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 ae 01 
_as3_getlex errorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 bb 03 
_as3_debugline line number: 443
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//62 04 
_as3_getlocal <4>
//62 05 
_as3_getlocal <5>
//4f 8f 01 02 
_as3_callpropvoid load(param count:2)
//f0 bc 03 
_as3_debugline line number: 444
//47 
_as3_returnvoid 
        }// end function

        public function get url() : String
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 fe 02 
_as3_debugline line number: 382
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 80 03 
_as3_debugline line number: 384
//60 91 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_url
//48 
_as3_returnvalue 
        }// end function

        public function get applicationDomain() : ApplicationDomain
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 8c 02 
_as3_debugline line number: 268
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 8e 02 
_as3_debugline line number: 270
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//76 
_as3_convert_b 
//12 0c 00 00 
_as3_iffalse offset: 12
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
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

        public function moduleErrorHandler(_url:Event) : void
        {
1  0 7621  1 772//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 fa 05 
_as3_debugline line number: 762
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
//ef 01 fb 04 00 fa 05 
_as3_debug 1, 635, 0, 762
//ef 01 fa 0a 01 84 06 
_as3_debug 1, 1402, 1, 772
//f0 fe 05 
_as3_debugline line number: 766
//5e 8c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_ready
//26 
_as3_pushtrue 
//68 8c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_ready
//f0 80 06 
_as3_debugline line number: 768
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 82 06 
_as3_debugline line number: 770
//5d f8 01 
_as3_findpropstrict ModuleManager.as$26:ModuleInfo::clearLoader
//4f f8 01 00 
_as3_callpropvoid ModuleManager.as$26:ModuleInfo::clearLoader(param count:0)
//f0 86 06 
_as3_debugline line number: 774
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//b3 
_as3_istypelate 
//12 10 00 00 
_as3_iffalse offset: 16
//f0 87 06 
_as3_debugline line number: 775
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
//10 10 00 00 
_as3_jump offset: 16
//f0 89 06 
_as3_debugline line number: 777
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
//f0 8b 06 
_as3_debugline line number: 779
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 8c 06 
_as3_debugline line number: 780
//47 
_as3_returnvoid 
        }// end function

        public function readyHandler(_url:Event) : void
        {
1  0 7421  1 750//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 e6 05 
_as3_debugline line number: 742
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 e6 05 
_as3_debug 1, 635, 0, 742
//ef 01 f9 0a 01 ee 05 
_as3_debug 1, 1401, 1, 750
//f0 ea 05 
_as3_debugline line number: 746
//5e 8c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_ready
//26 
_as3_pushtrue 
//68 8c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_ready
//f0 ec 05 
_as3_debugline line number: 748
//60 82 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::factoryInfo
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 ee 05 
_as3_debugline line number: 750
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
//f0 ef 05 
_as3_debugline line number: 751
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 f0 05 
_as3_debugline line number: 752
//d2 
_as3_getlocal <2> 
//60 ff 01 
_as3_getlex ModuleManager.as$26:ModuleInfo::loader
//66 a5 03 
_as3_getproperty contentLoaderInfo
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 f2 05 
_as3_debugline line number: 754
//5d f8 01 
_as3_findpropstrict ModuleManager.as$26:ModuleInfo::clearLoader
//4f f8 01 00 
_as3_callpropvoid ModuleManager.as$26:ModuleInfo::clearLoader(param count:0)
//f0 f4 05 
_as3_debugline line number: 756
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 f5 05 
_as3_debugline line number: 757
//47 
_as3_returnvoid 
        }// end function

        public function get setup() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 e0 02 
_as3_debugline line number: 352
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 e2 02 
_as3_debugline line number: 354
//60 85 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::limbo
//11 08 00 00 
_as3_iftrue offset: 8
//60 93 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_setup
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
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 ce 04 
_as3_debugline line number: 590
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 d0 04 
_as3_debugline line number: 592
//5d f8 01 
_as3_findpropstrict ModuleManager.as$26:ModuleInfo::clearLoader
//4f f8 01 00 
_as3_callpropvoid ModuleManager.as$26:ModuleInfo::clearLoader(param count:0)
//f0 d2 04 
_as3_debugline line number: 594
//60 88 02 
_as3_getlex ModuleManager.as$26:ModuleInfo::_loaded
//12 14 00 00 
_as3_iffalse offset: 20
//f0 d3 04 
_as3_debugline line number: 595
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
//f0 d5 04 
_as3_debugline line number: 597
//5e 85 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::limbo
//20 
_as3_pushnull 
//68 85 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::limbo
//f0 d6 04 
_as3_debugline line number: 598
//5e 82 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//20 
_as3_pushnull 
//68 82 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::factoryInfo
//f0 d7 04 
_as3_debugline line number: 599
//5e 88 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_loaded
//27 
_as3_pushfalse 
//68 88 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_loaded
//f0 d8 04 
_as3_debugline line number: 600
//5e 93 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_setup
//27 
_as3_pushfalse 
//68 93 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_setup
//f0 d9 04 
_as3_debugline line number: 601
//5e 8c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_ready
//27 
_as3_pushfalse 
//68 8c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_ready
//f0 da 04 
_as3_debugline line number: 602
//5e fc 01 
_as3_findproperty ModuleManager.as$26:ModuleInfo::_error
//27 
_as3_pushfalse 
//68 fc 01 
_as3_initproperty ModuleManager.as$26:ModuleInfo::_error
//f0 db 04 
_as3_debugline line number: 603
//47 
_as3_returnvoid 
        }// end function

    }
}
