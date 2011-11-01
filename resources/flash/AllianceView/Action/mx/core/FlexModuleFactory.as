package mx.core
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.events.*;
    import mx.resources.*;

    public class FlexModuleFactory extends MovieClip implements IFlexModuleFactory
    {
        private var appReady:Boolean = false;
        private var timer:Timer = null;
        private var appLoaded:Boolean = false;
        private var rslListLoader:RSLListLoader;
        private var state:int = 0;
        private var errorMessage:String = null;
        private var nextFrameTimer:Timer = null;
        private var lastFrame:int;
        private var mixinList:Array;
        private static const RSL_LOADING_STATE:int = 6;
        private static const INIT_STATE:int = 0;
        private static const RSL_START_LOAD_STATE:int = 1;
        private static const APP_RUNNING_STATE:int = 4;
        private static const APP_LOAD_STATE:int = 2;
        static const VERSION:String = "3.5.0.12683";
        private static const ERROR_STATE:int = 5;
        private static const APP_START_STATE:int = 3;

        public function FlexModuleFactory()
        {
1  0 981  1 991  2 1021  3 1031  4 1041  5 1431  6 1071  7 1121  8 130//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 5e 
_as3_debugline line number: 94
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//63 07 
_as3_setlocal <7>
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//63 08 
_as3_setlocal <8>
//20 
_as3_pushnull 
//80 16 
_as3_coerce mx.core::RSLItem
//63 09 
_as3_setlocal <9>
//ef 01 e0 04 00 62 
_as3_debug 1, 608, 0, 98
//ef 01 e1 04 01 63 
_as3_debug 1, 609, 1, 99
//ef 01 9f 03 02 66 
_as3_debug 1, 415, 2, 102
//ef 01 e2 04 03 67 
_as3_debug 1, 610, 3, 103
//ef 01 e3 04 04 68 
_as3_debug 1, 611, 4, 104
//ef 01 e4 04 05 8f 01 
_as3_debug 1, 612, 5, 143
//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 60 
_as3_debugline line number: 96
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 62 
_as3_debugline line number: 98
//5d 41 
_as3_findpropstrict info
//46 41 00 
_as3_callproperty info(param count:0)
//2c e0 04 
_as3_pushstring "rsls"
//66 e8 02 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//f0 63 
_as3_debugline line number: 99
//5d 41 
_as3_findpropstrict info
//46 41 00 
_as3_callproperty info(param count:0)
//2c e1 04 
_as3_pushstring "cdRsls"
//66 e8 02 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//f0 66 
_as3_debugline line number: 102
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//f0 69 
_as3_debugline line number: 105
//d2 
_as3_getlocal <2> 
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 08 00 00 
_as3_iffalse offset: 8
//29 
_as3_pop 
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//af 
_as3_greaterthan 
//12 97 00 00 
_as3_iffalse offset: 151
//ef 01 ec 04 06 6b 
_as3_debug 1, 620, 6, 107
//f0 6b 
_as3_debugline line number: 107
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c ed 04 
_as3_pushstring "mx.core::CrossDomainRSLItem"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//63 07 
_as3_setlocal <7>
//f0 6c 
_as3_debugline line number: 108
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//f0 6d 
_as3_debugline line number: 109
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//10 63 00 00 
_as3_jump offset: 99
//09 
_as3_label 
//ef 01 ee 04 07 70 
_as3_debug 1, 622, 7, 112
//f0 70 
_as3_debugline line number: 112
//62 07 
_as3_getlocal <7>
//f0 71 
_as3_debugline line number: 113
//d2 
_as3_getlocal <2> 
//62 05 
_as3_getlocal <5>
//66 e8 02 
_as3_getproperty {}
//2c e0 04 
_as3_pushstring "rsls"
//66 e8 02 
_as3_getproperty {}
//f0 72 
_as3_debugline line number: 114
//d2 
_as3_getlocal <2> 
//62 05 
_as3_getlocal <5>
//66 e8 02 
_as3_getproperty {}
//2c ef 04 
_as3_pushstring "policyFiles"
//66 e8 02 
_as3_getproperty {}
//f0 73 
_as3_debugline line number: 115
//d2 
_as3_getlocal <2> 
//62 05 
_as3_getlocal <5>
//66 e8 02 
_as3_getproperty {}
//2c f0 04 
_as3_pushstring "digests"
//66 e8 02 
_as3_getproperty {}
//f0 74 
_as3_debugline line number: 116
//d2 
_as3_getlocal <2> 
//62 05 
_as3_getlocal <5>
//66 e8 02 
_as3_getproperty {}
//2c f1 04 
_as3_pushstring "types"
//66 e8 02 
_as3_getproperty {}
//f0 75 
_as3_debugline line number: 117
//d2 
_as3_getlocal <2> 
//62 05 
_as3_getlocal <5>
//66 e8 02 
_as3_getproperty {}
//2c 10 
_as3_pushstring "isSigned"
//66 e8 02 
_as3_getproperty {}
//42 05 
_as3_construct (param count:5)
//80 03 
_as3_coerce Object
//63 08 
_as3_setlocal <8>
//f0 77 
_as3_debugline line number: 119
//d3 
_as3_getlocal <3> 
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 6d 
_as3_debugline line number: 109
//c2 05 
_as3_inclocal_i <5>
//62 05 
_as3_getlocal <5>
//62 04 
_as3_getlocal <4>
//15 95 ff ff 
_as3_iflt offset: -107
//f0 7d 
_as3_debugline line number: 125
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//2a 
_as3_dup 
//12 08 00 00 
_as3_iffalse offset: 8
//29 
_as3_pop 
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//af 
_as3_greaterthan 
//12 48 00 00 
_as3_iffalse offset: 72
//f0 7f 
_as3_debugline line number: 127
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//f0 80 01 
_as3_debugline line number: 128
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//10 2c 00 00 
_as3_jump offset: 44
//09 
_as3_label 
//ef 01 f3 04 08 82 01 
_as3_debug 1, 627, 8, 130
//f0 82 01 
_as3_debugline line number: 130
//5d 16 
_as3_findpropstrict mx.core::RSLItem
//d1 
_as3_getlocal <1> 
//62 05 
_as3_getlocal <5>
//66 e8 02 
_as3_getproperty {}
//66 eb 02 
_as3_getproperty url
//4a 16 01 
_as3_constructprop mx.core::RSLItem(param count:1)
//80 16 
_as3_coerce mx.core::RSLItem
//63 09 
_as3_setlocal <9>
//f0 83 01 
_as3_debugline line number: 131
//d3 
_as3_getlocal <3> 
//62 09 
_as3_getlocal <9>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 80 01 
_as3_debugline line number: 128
//c2 05 
_as3_inclocal_i <5>
//62 05 
_as3_getlocal <5>
//62 04 
_as3_getlocal <4>
//15 cc ff ff 
_as3_iflt offset: -52
//f0 87 01 
_as3_debugline line number: 135
//5e 2c 
_as3_findproperty mx.core:FlexModuleFactory::rslListLoader
//5d 2d 
_as3_findpropstrict mx.core::RSLListLoader
//d3 
_as3_getlocal <3> 
//4a 2d 01 
_as3_constructprop mx.core::RSLListLoader(param count:1)
//68 2c 
_as3_initproperty mx.core:FlexModuleFactory::rslListLoader
//f0 89 01 
_as3_debugline line number: 137
//5e 45 
_as3_findproperty mx.core:FlexModuleFactory::mixinList
//5d 41 
_as3_findpropstrict info
//46 41 00 
_as3_callproperty info(param count:0)
//2c f4 04 
_as3_pushstring "mixins"
//66 e8 02 
_as3_getproperty {}
//68 45 
_as3_initproperty mx.core:FlexModuleFactory::mixinList
//f0 8b 01 
_as3_debugline line number: 139
//5d ec 02 
_as3_findpropstrict stop
//4f ec 02 00 
_as3_callpropvoid stop(param count:0)
//f0 8d 01 
_as3_debugline line number: 141
//60 d4 01 
_as3_getlex loaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 36 
_as3_getlex mx.core:FlexModuleFactory::moduleCompleteHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 8f 01 
_as3_debugline line number: 143
//60 ee 02 
_as3_getlex totalFrames
//24 01 
_as3_pushbyte 1
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//24 00 
_as3_pushbyte 0
//10 02 00 00 
_as3_jump offset: 2
//24 01 
_as3_pushbyte 1
//73 
_as3_convert_i 
//63 06 
_as3_setlocal <6>
//f0 91 01 
_as3_debugline line number: 145
//5d ed 02 
_as3_findpropstrict addEventListener
//60 04 
_as3_getlex flash.events::Event
//66 ef 02 
_as3_getproperty ENTER_FRAME
//60 3c 
_as3_getlex mx.core:FlexModuleFactory::docFrameListener
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 93 01 
_as3_debugline line number: 147
//5e 28 
_as3_findproperty mx.core:FlexModuleFactory::timer
//5d 29 
_as3_findpropstrict flash.utils::Timer
//24 64 
_as3_pushbyte 100
//4a 29 01 
_as3_constructprop flash.utils::Timer(param count:1)
//68 28 
_as3_initproperty mx.core:FlexModuleFactory::timer
//f0 94 01 
_as3_debugline line number: 148
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//60 3b 
_as3_getlex mx.core:FlexModuleFactory::timerHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 95 01 
_as3_debugline line number: 149
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//4f f1 02 00 
_as3_callpropvoid start(param count:0)
//f0 97 01 
_as3_debugline line number: 151
//5d 2b 
_as3_findpropstrict mx.core:FlexModuleFactory::update
//4f 2b 00 
_as3_callpropvoid mx.core:FlexModuleFactory::update(param count:0)
//f0 98 01 
_as3_debugline line number: 152
//47 
_as3_returnvoid 
        }// end function

        private function update() : void
        {
1  0 321//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 c1 02 
_as3_debugline line number: 321
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
//ef 01 8f 05 00 c1 02 
_as3_debug 1, 655, 0, 321
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 f9 02 
_as3_coerce flash.text::TextField
//6d 04 
_as3_setslot <4>
//10 43 02 00 
_as3_jump offset: 579
//09 
_as3_label 
//f0 c7 02 
_as3_debugline line number: 327
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//46 99 01 00 
_as3_callproperty isDone(param count:0)
//12 0e 00 00 
_as3_iffalse offset: 14
//f0 c8 02 
_as3_debugline line number: 328
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 a3 02 
_as3_getlex mx.core:FlexModuleFactory::APP_LOAD_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//10 0a 00 00 
_as3_jump offset: 10
//f0 ca 02 
_as3_debugline line number: 330
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 a1 02 
_as3_getlex mx.core:FlexModuleFactory::RSL_START_LOAD_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//f0 cb 02 
_as3_debugline line number: 331
//10 aa 02 00 
_as3_jump offset: 682
//09 
_as3_label 
//f0 d1 02 
_as3_debugline line number: 337
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//f0 d1 02 
_as3_debugline line number: 337
//20 
_as3_pushnull 
//f0 d2 02 
_as3_debugline line number: 338
//60 31 
_as3_getlex mx.core:FlexModuleFactory::rslCompleteHandler
//f0 d3 02 
_as3_debugline line number: 339
//60 39 
_as3_getlex mx.core:FlexModuleFactory::rslErrorHandler
//f0 d4 02 
_as3_debugline line number: 340
//60 39 
_as3_getlex mx.core:FlexModuleFactory::rslErrorHandler
//f0 d5 02 
_as3_debugline line number: 341
//60 39 
_as3_getlex mx.core:FlexModuleFactory::rslErrorHandler
//4f 8f 01 05 
_as3_callpropvoid load(param count:5)
//f0 d6 02 
_as3_debugline line number: 342
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 9f 02 
_as3_getlex mx.core:FlexModuleFactory::RSL_LOADING_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//f0 d7 02 
_as3_debugline line number: 343
//10 77 02 00 
_as3_jump offset: 631
//09 
_as3_label 
//f0 db 02 
_as3_debugline line number: 347
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//46 99 01 00 
_as3_callproperty isDone(param count:0)
//12 0a 00 00 
_as3_iffalse offset: 10
//f0 dd 02 
_as3_debugline line number: 349
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 a3 02 
_as3_getlex mx.core:FlexModuleFactory::APP_LOAD_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//f0 df 02 
_as3_debugline line number: 351
//10 58 02 00 
_as3_jump offset: 600
//09 
_as3_label 
//f0 e4 02 
_as3_debugline line number: 356
//60 2a 
_as3_getlex mx.core:FlexModuleFactory::appLoaded
//12 12 00 00 
_as3_iffalse offset: 18
//f0 e6 02 
_as3_debugline line number: 358
//5d 34 
_as3_findpropstrict mx.core:FlexModuleFactory::deferredNextFrame
//4f 34 00 
_as3_callpropvoid mx.core:FlexModuleFactory::deferredNextFrame(param count:0)
//f0 e7 02 
_as3_debugline line number: 359
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 a6 02 
_as3_getlex mx.core:FlexModuleFactory::APP_START_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//f0 e9 02 
_as3_debugline line number: 361
//10 35 02 00 
_as3_jump offset: 565
//09 
_as3_label 
//f0 ee 02 
_as3_debugline line number: 366
//60 27 
_as3_getlex mx.core:FlexModuleFactory::appReady
//12 db 00 00 
_as3_iffalse offset: 219
//f0 f0 02 
_as3_debugline line number: 368
//60 45 
_as3_getlex mx.core:FlexModuleFactory::mixinList
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//60 45 
_as3_getlex mx.core:FlexModuleFactory::mixinList
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//af 
_as3_greaterthan 
//12 7d 00 00 
_as3_iffalse offset: 125
//f0 f2 02 
_as3_debugline line number: 370
//65 01 
_as3_getscopeobject 1
//60 45 
_as3_getlex mx.core:FlexModuleFactory::mixinList
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//6d 01 
_as3_setslot <1>
//f0 f3 02 
_as3_debugline line number: 371
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 02 
_as3_setslot <2>
//10 57 00 00 
_as3_jump offset: 87
//09 
_as3_label 
//f0 f8 02 
_as3_debugline line number: 376
//65 01 
_as3_getscopeobject 1
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//60 45 
_as3_getlex mx.core:FlexModuleFactory::mixinList
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//66 e8 02 
_as3_getproperty {}
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//6d 03 
_as3_setslot <3>
//f0 f9 02 
_as3_debugline line number: 377
//65 01 
_as3_getscopeobject 1
//6c 03 
_as3_getslot <3>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2c 92 05 
_as3_pushstring "init"
//66 e8 02 
_as3_getproperty {}
//d2 
_as3_getlocal <2> 
//d0 
_as3_getlocal <0> 
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 02 
_as3_kill <2>
//f0 fb 02 
_as3_debugline line number: 379
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
//f0 f3 02 
_as3_debugline line number: 371
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//c0 
_as3_increment_i 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//15 9d ff ff 
_as3_iflt offset: -99
//f0 81 03 
_as3_debugline line number: 385
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 a2 02 
_as3_getlex mx.core:FlexModuleFactory::APP_RUNNING_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//f0 82 03 
_as3_debugline line number: 386
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//60 3b 
_as3_getlex mx.core:FlexModuleFactory::timerHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 84 03 
_as3_debugline line number: 388
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//4f fa 02 00 
_as3_callpropvoid reset(param count:0)
//f0 86 03 
_as3_debugline line number: 390
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 04 
_as3_findpropstrict flash.events::Event
//2c d1 03 
_as3_pushstring "ready"
//4a 04 01 
_as3_constructprop flash.events::Event(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 88 03 
_as3_debugline line number: 392
//60 d4 01 
_as3_getlex loaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 36 
_as3_getlex mx.core:FlexModuleFactory::moduleCompleteHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 8a 03 
_as3_debugline line number: 394
//10 49 01 00 
_as3_jump offset: 329
//09 
_as3_label 
//f0 8f 03 
_as3_debugline line number: 399
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//20 
_as3_pushnull 
//13 19 00 00 
_as3_ifeq offset: 25
//f0 91 03 
_as3_debugline line number: 401
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//60 3b 
_as3_getlex mx.core:FlexModuleFactory::timerHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 93 03 
_as3_debugline line number: 403
//60 28 
_as3_getlex mx.core:FlexModuleFactory::timer
//4f fa 02 00 
_as3_callpropvoid reset(param count:0)
//f0 96 03 
_as3_debugline line number: 406
//65 01 
_as3_getscopeobject 1
//5d f9 02 
_as3_findpropstrict flash.text::TextField
//4a f9 02 00 
_as3_constructprop flash.text::TextField(param count:0)
//80 f9 02 
_as3_coerce flash.text::TextField
//6d 04 
_as3_setslot <4>
//f0 97 03 
_as3_debugline line number: 407
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//60 38 
_as3_getlex mx.core:FlexModuleFactory::errorMessage
//61 fc 02 
_as3_setproperty text
//f0 98 03 
_as3_debugline line number: 408
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//24 00 
_as3_pushbyte 0
//61 fd 02 
_as3_setproperty x
//f0 99 03 
_as3_debugline line number: 409
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//24 00 
_as3_pushbyte 0
//61 fe 02 
_as3_setproperty y
//f0 9a 03 
_as3_debugline line number: 410
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//60 ff 02 
_as3_getlex flash.text::TextFieldAutoSize
//66 80 03 
_as3_getproperty LEFT
//61 81 03 
_as3_setproperty autoSize
//f0 9b 03 
_as3_debugline line number: 411
//5d 82 03 
_as3_findpropstrict addChild
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//4f 82 03 01 
_as3_callpropvoid addChild(param count:1)
//f0 9d 03 
_as3_debugline line number: 413
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 19 
_as3_findpropstrict mx.events::ModuleEvent
//f0 9d 03 
_as3_debugline line number: 413
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//27 
_as3_pushfalse 
//27 
_as3_pushfalse 
//f0 9e 03 
_as3_debugline line number: 414
//24 00 
_as3_pushbyte 0
//2a 
_as3_dup 
//60 38 
_as3_getlex mx.core:FlexModuleFactory::errorMessage
//4a 19 06 
_as3_constructprop mx.events::ModuleEvent(param count:6)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 a0 03 
_as3_debugline line number: 416
//60 d4 01 
_as3_getlex loaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 36 
_as3_getlex mx.core:FlexModuleFactory::moduleCompleteHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 a1 03 
_as3_debugline line number: 417
//10 99 00 00 
_as3_jump offset: 153
//09 
_as3_label 
//10 94 00 00 
_as3_jump offset: 148
//f0 c3 02 
_as3_debugline line number: 323
//60 2e 
_as3_getlex mx.core:FlexModuleFactory::state
//d6 
_as3_setlocal <2> 
//f0 c5 02 
_as3_debugline line number: 325
//60 a0 02 
_as3_getlex mx.core:FlexModuleFactory::INIT_STATE
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 00 
_as3_pushbyte 0
//10 61 00 00 
_as3_jump offset: 97
//f0 ce 02 
_as3_debugline line number: 334
//60 a1 02 
_as3_getlex mx.core:FlexModuleFactory::RSL_START_LOAD_STATE
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 01 
_as3_pushbyte 1
//10 50 00 00 
_as3_jump offset: 80
//f0 d9 02 
_as3_debugline line number: 345
//60 9f 02 
_as3_getlex mx.core:FlexModuleFactory::RSL_LOADING_STATE
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 02 
_as3_pushbyte 2
//10 3f 00 00 
_as3_jump offset: 63
//f0 e2 02 
_as3_debugline line number: 354
//60 a3 02 
_as3_getlex mx.core:FlexModuleFactory::APP_LOAD_STATE
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 03 
_as3_pushbyte 3
//10 2e 00 00 
_as3_jump offset: 46
//f0 ec 02 
_as3_debugline line number: 364
//60 a6 02 
_as3_getlex mx.core:FlexModuleFactory::APP_START_STATE
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 04 
_as3_pushbyte 4
//10 1d 00 00 
_as3_jump offset: 29
//f0 8d 03 
_as3_debugline line number: 397
//60 a5 02 
_as3_getlex mx.core:FlexModuleFactory::ERROR_STATE
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 05 
_as3_pushbyte 5
//10 0c 00 00 
_as3_jump offset: 12
//10 06 00 00 
_as3_jump offset: 6
//24 06 
_as3_pushbyte 6
//10 02 00 00 
_as3_jump offset: 2
//24 06 
_as3_pushbyte 6
//08 02 
_as3_kill <2>
//1b 81 ff ff 06 43 fd ff 70 fd ff a3 fd ff c2 fd ff e5 fd ff d1 fe ff 81 ff ff 
_as3_lookupswitch -127(6)[-701, -656, -605, -574, -539, -303, -127]
//f0 a4 03 
_as3_debugline line number: 420
//47 
_as3_returnvoid 
        }// end function

        private function nextFrameTimerHandler(IResourceBundle:TimerEvent) : void
        {
1  0 632//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 f8 04 
_as3_debugline line number: 632
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 f8 04 
_as3_debug 1, 635, 0, 632
//f0 fa 04 
_as3_debugline line number: 634
//60 f2 02 
_as3_getlex currentFrame
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//60 89 03 
_as3_getlex framesLoaded
//0d 29 00 00 
_as3_ifnle offset: 41
//f0 fc 04 
_as3_debugline line number: 636
//5d 8a 03 
_as3_findpropstrict nextFrame
//4f 8a 03 00 
_as3_callpropvoid nextFrame(param count:0)
//f0 fd 04 
_as3_debugline line number: 637
//60 3d 
_as3_getlex mx.core:FlexModuleFactory::nextFrameTimer
//f0 fd 04 
_as3_debugline line number: 637
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//f0 fe 04 
_as3_debugline line number: 638
//60 2f 
_as3_getlex mx.core:FlexModuleFactory::nextFrameTimerHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 80 05 
_as3_debugline line number: 640
//60 3d 
_as3_getlex mx.core:FlexModuleFactory::nextFrameTimer
//4f fa 02 00 
_as3_callpropvoid reset(param count:0)
//f0 82 05 
_as3_debugline line number: 642
//47 
_as3_returnvoid 
        }// end function

        public function autorun() : Boolean
        {
//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 a9 03 
_as3_debugline line number: 425
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 ab 03 
_as3_debugline line number: 427
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
        }// end function

        private function rslCompleteHandler(IResourceBundle:Event) : void
        {
1  0 5781  1 580//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 c2 04 
_as3_debugline line number: 578
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 c2 04 
_as3_debug 1, 635, 0, 578
//ef 01 be 05 01 c4 04 
_as3_debug 1, 702, 1, 580
//f0 c4 04 
_as3_debugline line number: 580
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//46 94 01 00 
_as3_callproperty getIndex(param count:0)
//46 9e 01 01 
_as3_callproperty getItem(param count:1)
//80 16 
_as3_coerce mx.core::RSLItem
//d6 
_as3_setlocal <2> 
//f0 c5 04 
_as3_debugline line number: 581
//d1 
_as3_getlocal <1> 
//66 8e 03 
_as3_getproperty target
//60 1a 
_as3_getlex flash.display::LoaderInfo
//b3 
_as3_istypelate 
//12 13 00 00 
_as3_iffalse offset: 19
//f0 c6 04 
_as3_debugline line number: 582
//60 32 
_as3_getlex preloadedRSLs
//d1 
_as3_getlocal <1> 
//66 8e 03 
_as3_getproperty target
//d2 
_as3_getlocal <2> 
//66 8e 01 
_as3_getproperty urlRequest
//66 d7 01 
_as3_getproperty url
//61 e8 02 
_as3_setproperty {}
//f0 c7 04 
_as3_debugline line number: 583
//5d 2b 
_as3_findpropstrict mx.core:FlexModuleFactory::update
//4f 2b 00 
_as3_callpropvoid mx.core:FlexModuleFactory::update(param count:0)
//f0 c8 04 
_as3_debugline line number: 584
//47 
_as3_returnvoid 
        }// end function

        public function get preloadedRSLs() : Dictionary
        {
//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 f2 01 
_as3_debugline line number: 242
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 f5 01 
_as3_debugline line number: 245
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
        }// end function

        private function extraFrameListener(IResourceBundle:Event) : void
        {
1  0 166//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 a6 01 
_as3_debugline line number: 166
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 a6 01 
_as3_debug 1, 635, 0, 166
//f0 a8 01 
_as3_debugline line number: 168
//60 42 
_as3_getlex mx.core:FlexModuleFactory::lastFrame
//60 f2 02 
_as3_getlex currentFrame
//14 04 00 00 
_as3_ifne offset: 4
//f0 a9 01 
_as3_debugline line number: 169
//47 
_as3_returnvoid 
//f0 ab 01 
_as3_debugline line number: 171
//5e 42 
_as3_findproperty mx.core:FlexModuleFactory::lastFrame
//60 f2 02 
_as3_getlex currentFrame
//68 42 
_as3_initproperty mx.core:FlexModuleFactory::lastFrame
//f0 ad 01 
_as3_debugline line number: 173
//60 f2 02 
_as3_getlex currentFrame
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//60 ee 02 
_as3_getlex totalFrames
//0e 11 00 00 
_as3_ifngt offset: 17
//f0 ae 01 
_as3_debugline line number: 174
//5d f3 02 
_as3_findpropstrict removeEventListener
//60 04 
_as3_getlex flash.events::Event
//66 ef 02 
_as3_getproperty ENTER_FRAME
//60 33 
_as3_getlex mx.core:FlexModuleFactory::extraFrameListener
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 b0 01 
_as3_debugline line number: 176
//5d 35 
_as3_findpropstrict mx.core:FlexModuleFactory::extraFrameHandler
//4f 35 00 
_as3_callpropvoid mx.core:FlexModuleFactory::extraFrameHandler(param count:0)
//f0 b1 01 
_as3_debugline line number: 177
//47 
_as3_returnvoid 
        }// end function

        private function deferredNextFrame() : void
        {
//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 92 04 
_as3_debugline line number: 530
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 94 04 
_as3_debugline line number: 532
//60 f2 02 
_as3_getlex currentFrame
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//60 89 03 
_as3_getlex framesLoaded
//0d 0e 00 00 
_as3_ifnle offset: 14
//f0 96 04 
_as3_debugline line number: 534
//5d 8a 03 
_as3_findpropstrict nextFrame
//4f 8a 03 00 
_as3_callpropvoid nextFrame(param count:0)
//10 2d 00 00 
_as3_jump offset: 45
//f0 9b 04 
_as3_debugline line number: 539
//5e 3d 
_as3_findproperty mx.core:FlexModuleFactory::nextFrameTimer
//5d 29 
_as3_findpropstrict flash.utils::Timer
//24 64 
_as3_pushbyte 100
//4a 29 01 
_as3_constructprop flash.utils::Timer(param count:1)
//68 3d 
_as3_initproperty mx.core:FlexModuleFactory::nextFrameTimer
//f0 9c 04 
_as3_debugline line number: 540
//60 3d 
_as3_getlex mx.core:FlexModuleFactory::nextFrameTimer
//f0 9c 04 
_as3_debugline line number: 540
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//f0 9d 04 
_as3_debugline line number: 541
//60 2f 
_as3_getlex mx.core:FlexModuleFactory::nextFrameTimerHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 9e 04 
_as3_debugline line number: 542
//60 3d 
_as3_getlex mx.core:FlexModuleFactory::nextFrameTimer
//4f f1 02 00 
_as3_callpropvoid start(param count:0)
//f0 a0 04 
_as3_debugline line number: 544
//47 
_as3_returnvoid 
        }// end function

        private function extraFrameHandler(IResourceBundle:Event = null) : void
        {
1  1 5481  0 548//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 a4 04 
_as3_debugline line number: 548
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
//ef 01 b9 05 01 a4 04 
_as3_debug 1, 697, 1, 548
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//d1 
_as3_getlocal <1> 
//6d 01 
_as3_setslot <1>
//ef 01 fb 04 00 a4 04 
_as3_debug 1, 635, 0, 548
//f0 a6 04 
_as3_debugline line number: 550
//65 01 
_as3_getscopeobject 1
//5d 41 
_as3_findpropstrict info
//46 41 00 
_as3_callproperty info(param count:0)
//2c ba 05 
_as3_pushstring "frames"
//66 e8 02 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//6d 02 
_as3_setslot <2>
//f0 a8 04 
_as3_debugline line number: 552
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 0c 00 00 
_as3_iffalse offset: 12
//29 
_as3_pop 
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//60 8b 03 
_as3_getlex currentLabel
//66 e8 02 
_as3_getproperty {}
//76 
_as3_convert_b 
//12 4a 00 00 
_as3_iffalse offset: 74
//f0 ad 04 
_as3_debugline line number: 557
//65 01 
_as3_getscopeobject 1
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//60 8b 03 
_as3_getlex currentLabel
//66 e8 02 
_as3_getproperty {}
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//6d 03 
_as3_setslot <3>
//f0 ae 04 
_as3_debugline line number: 558
//65 01 
_as3_getscopeobject 1
//6c 03 
_as3_getslot <3>
//2a 
_as3_dup 
//d7 
_as3_setlocal <3> 
//2c bc 05 
_as3_pushstring "frame"
//66 e8 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//d0 
_as3_getlocal <0> 
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 03 
_as3_kill <3>
//f0 b0 04 
_as3_debugline line number: 560
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
//f0 b5 04 
_as3_debugline line number: 565
//60 f2 02 
_as3_getlex currentFrame
//60 ee 02 
_as3_getlex totalFrames
//0c 08 00 00 
_as3_ifnlt offset: 8
//f0 b6 04 
_as3_debugline line number: 566
//5d 34 
_as3_findpropstrict mx.core:FlexModuleFactory::deferredNextFrame
//4f 34 00 
_as3_callpropvoid mx.core:FlexModuleFactory::deferredNextFrame(param count:0)
//f0 b7 04 
_as3_debugline line number: 567
//47 
_as3_returnvoid 
        }// end function

        private function moduleCompleteHandler(IResourceBundle:Event) : void
        {
1  0 609//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 e1 04 
_as3_debugline line number: 609
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 e1 04 
_as3_debug 1, 635, 0, 609
//f0 e3 04 
_as3_debugline line number: 611
//5e 2a 
_as3_findproperty mx.core:FlexModuleFactory::appLoaded
//26 
_as3_pushtrue 
//68 2a 
_as3_initproperty mx.core:FlexModuleFactory::appLoaded
//f0 e4 04 
_as3_debugline line number: 612
//5d 2b 
_as3_findpropstrict mx.core:FlexModuleFactory::update
//4f 2b 00 
_as3_callpropvoid mx.core:FlexModuleFactory::update(param count:0)
//f0 e5 04 
_as3_debugline line number: 613
//47 
_as3_returnvoid 
        }// end function

        private function installCompiledResourceBundles() : void
        {
1  0 4981  1 5001  2 5031  3 5061  4 509//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 ee 03 
_as3_debugline line number: 494
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 c2 02 00 f2 03 
_as3_debug 1, 322, 0, 498
//ef 01 69 01 f4 03 
_as3_debug 1, 105, 1, 500
//ef 01 b4 05 02 f7 03 
_as3_debug 1, 692, 2, 503
//ef 01 b5 05 03 fa 03 
_as3_debug 1, 693, 3, 506
//ef 01 b6 05 04 fd 03 
_as3_debug 1, 694, 4, 509
//f0 f2 03 
_as3_debugline line number: 498
//d0 
_as3_getlocal <0> 
//46 41 00 
_as3_callproperty info(param count:0)
//80 03 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//f0 f5 03 
_as3_debugline line number: 501
//d1 
_as3_getlocal <1> 
//2c 8c 05 
_as3_pushstring "currentDomain"
//66 e8 02 
_as3_getproperty {}
//80 09 
_as3_coerce flash.system::ApplicationDomain
//d6 
_as3_setlocal <2> 
//f0 f8 03 
_as3_debugline line number: 504
//d1 
_as3_getlocal <1> 
//2c b4 05 
_as3_pushstring "compiledLocales"
//66 e8 02 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//f0 fb 03 
_as3_debugline line number: 507
//d1 
_as3_getlocal <1> 
//2c b5 05 
_as3_pushstring "compiledResourceBundleNames"
//66 e8 02 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//f0 fe 03 
_as3_debugline line number: 510
//60 6b 
_as3_getlex mx.resources::ResourceManager
//46 ac 02 00 
_as3_callproperty getInstance(param count:0)
//80 0d 
_as3_coerce mx.resources::IResourceManager
//63 05 
_as3_setlocal <5>
//f0 80 04 
_as3_debugline line number: 512
//62 05 
_as3_getlocal <5>
//f0 81 04 
_as3_debugline line number: 513
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//62 04 
_as3_getlocal <4>
//4f 7d 03 
_as3_callpropvoid mx.resources:IResourceManager::installCompiledResourceBundles(param count:3)
//f0 8b 04 
_as3_debugline line number: 523
//62 05 
_as3_getlocal <5>
//66 73 
_as3_getproperty mx.resources:IResourceManager::localeChain
//11 0a 00 00 
_as3_iftrue offset: 10
//f0 8c 04 
_as3_debugline line number: 524
//62 05 
_as3_getlocal <5>
//d3 
_as3_getlocal <3> 
//4f 81 01 01 
_as3_callpropvoid mx.resources:IResourceManager::initializeLocaleChain(param count:1)
//f0 8d 04 
_as3_debugline line number: 525
//47 
_as3_returnvoid 
        }// end function

        private function rslErrorHandler(IResourceBundle:Event) : void
        {
1  0 5891  1 5911  2 5921  3 593//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 cd 04 
_as3_debugline line number: 589
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//ef 01 fb 04 00 cd 04 
_as3_debug 1, 635, 0, 589
//ef 01 be 05 01 cf 04 
_as3_debug 1, 702, 1, 591
//ef 01 c0 05 02 d0 04 
_as3_debug 1, 704, 2, 592
//ef 01 c1 05 03 d1 04 
_as3_debug 1, 705, 3, 593
//f0 cf 04 
_as3_debugline line number: 591
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//60 2c 
_as3_getlex mx.core:FlexModuleFactory::rslListLoader
//46 94 01 00 
_as3_callproperty getIndex(param count:0)
//46 9e 01 01 
_as3_callproperty getItem(param count:1)
//80 16 
_as3_coerce mx.core::RSLItem
//d6 
_as3_setlocal <2> 
//f0 d3 04 
_as3_debugline line number: 595
//d1 
_as3_getlocal <1> 
//60 15 
_as3_getlex flash.events::ErrorEvent
//b3 
_as3_istypelate 
//12 0e 00 00 
_as3_iffalse offset: 14
//f0 d4 04 
_as3_debugline line number: 596
//5d 15 
_as3_findpropstrict flash.events::ErrorEvent
//d1 
_as3_getlocal <1> 
//46 15 01 
_as3_callproperty flash.events::ErrorEvent(param count:1)
//66 fc 02 
_as3_getproperty text
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 d6 04 
_as3_debugline line number: 598
//d3 
_as3_getlocal <3> 
//11 07 00 00 
_as3_iftrue offset: 7
//2c 01 
_as3_pushstring ""
//f0 d7 04 
_as3_debugline line number: 599
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//2c c2 05 
_as3_pushstring "RSL "
//f0 d9 04 
_as3_debugline line number: 601
//d2 
_as3_getlocal <2> 
//66 8e 01 
_as3_getproperty urlRequest
//66 d7 01 
_as3_getproperty url
//a0 
_as3_add 
//2c c3 05 
_as3_pushstring " failed to load. "
//a0 
_as3_add 
//d3 
_as3_getlocal <3> 
//a0 
_as3_add 
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//f0 da 04 
_as3_debugline line number: 602
//5d 8f 03 
_as3_findpropstrict trace
//62 04 
_as3_getlocal <4>
//4f 8f 03 01 
_as3_callpropvoid trace(param count:1)
//f0 db 04 
_as3_debugline line number: 603
//5d 3a 
_as3_findpropstrict mx.core:FlexModuleFactory::displayError
//62 04 
_as3_getlocal <4>
//4f 3a 01 
_as3_callpropvoid mx.core:FlexModuleFactory::displayError(param count:1)
//f0 dc 04 
_as3_debugline line number: 604
//47 
_as3_returnvoid 
        }// end function

        private function displayError(IResourceBundle:String) : void
        {
1  0 433//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 b1 03 
_as3_debugline line number: 433
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 a0 05 00 b1 03 
_as3_debug 1, 672, 0, 433
//f0 b3 03 
_as3_debugline line number: 435
//5e 38 
_as3_findproperty mx.core:FlexModuleFactory::errorMessage
//d1 
_as3_getlocal <1> 
//68 38 
_as3_initproperty mx.core:FlexModuleFactory::errorMessage
//f0 b4 03 
_as3_debugline line number: 436
//5e 2e 
_as3_findproperty mx.core:FlexModuleFactory::state
//60 a5 02 
_as3_getlex mx.core:FlexModuleFactory::ERROR_STATE
//68 2e 
_as3_initproperty mx.core:FlexModuleFactory::state
//f0 b5 03 
_as3_debugline line number: 437
//5d 2b 
_as3_findpropstrict mx.core:FlexModuleFactory::update
//4f 2b 00 
_as3_callpropvoid mx.core:FlexModuleFactory::update(param count:0)
//f0 b6 03 
_as3_debugline line number: 438
//47 
_as3_returnvoid 
        }// end function

        private function timerHandler(IResourceBundle:TimerEvent) : void
        {
1  0 618//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 ea 04 
_as3_debugline line number: 618
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 ea 04 
_as3_debug 1, 635, 0, 618
//f0 ec 04 
_as3_debugline line number: 620
//60 ee 02 
_as3_getlex totalFrames
//24 02 
_as3_pushbyte 2
//af 
_as3_greaterthan 
//2a 
_as3_dup 
//12 07 00 00 
_as3_iffalse offset: 7
//29 
_as3_pop 
//60 89 03 
_as3_getlex framesLoaded
//24 02 
_as3_pushbyte 2
//b0 
_as3_greaterequals 
//2a 
_as3_dup 
//11 0b 00 00 
_as3_iftrue offset: 11
//29 
_as3_pop 
//f0 ed 04 
_as3_debugline line number: 621
//60 89 03 
_as3_getlex framesLoaded
//60 ee 02 
_as3_getlex totalFrames
//ab 
_as3_equals 
//12 08 00 00 
_as3_iffalse offset: 8
//f0 ef 04 
_as3_debugline line number: 623
//5e 2a 
_as3_findproperty mx.core:FlexModuleFactory::appLoaded
//26 
_as3_pushtrue 
//68 2a 
_as3_initproperty mx.core:FlexModuleFactory::appLoaded
//f0 f2 04 
_as3_debugline line number: 626
//5d 2b 
_as3_findpropstrict mx.core:FlexModuleFactory::update
//4f 2b 00 
_as3_callpropvoid mx.core:FlexModuleFactory::update(param count:0)
//f0 f3 04 
_as3_debugline line number: 627
//47 
_as3_returnvoid 
        }// end function

        private function docFrameListener(IResourceBundle:Event) : void
        {
1  0 154//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 9a 01 
_as3_debugline line number: 154
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 9a 01 
_as3_debug 1, 635, 0, 154
//f0 9c 01 
_as3_debugline line number: 156
//60 f2 02 
_as3_getlex currentFrame
//24 02 
_as3_pushbyte 2
//14 36 00 00 
_as3_ifne offset: 54
//f0 9e 01 
_as3_debugline line number: 158
//5d f3 02 
_as3_findpropstrict removeEventListener
//60 04 
_as3_getlex flash.events::Event
//66 ef 02 
_as3_getproperty ENTER_FRAME
//60 3c 
_as3_getlex mx.core:FlexModuleFactory::docFrameListener
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 9f 01 
_as3_debugline line number: 159
//60 ee 02 
_as3_getlex totalFrames
//24 02 
_as3_pushbyte 2
//0e 11 00 00 
_as3_ifngt offset: 17
//f0 a0 01 
_as3_debugline line number: 160
//5d ed 02 
_as3_findpropstrict addEventListener
//60 04 
_as3_getlex flash.events::Event
//66 ef 02 
_as3_getproperty ENTER_FRAME
//60 33 
_as3_getlex mx.core:FlexModuleFactory::extraFrameListener
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 a2 01 
_as3_debugline line number: 162
//5d 43 
_as3_findpropstrict mx.core:FlexModuleFactory::docFrameHandler
//4f 43 00 
_as3_callpropvoid mx.core:FlexModuleFactory::docFrameHandler(param count:0)
//f0 a4 01 
_as3_debugline line number: 164
//47 
_as3_returnvoid 
        }// end function

        public function allowDomain(... args) : void
        {
1  0 288//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 a0 02 
_as3_debugline line number: 288
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 88 05 00 a0 02 
_as3_debug 1, 648, 0, 288
//f0 a3 02 
_as3_debugline line number: 291
//47 
_as3_returnvoid 
        }// end function

        public function allowInsecureDomain(... args) : void
        {
1  0 298//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 aa 02 
_as3_debugline line number: 298
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 88 05 00 aa 02 
_as3_debug 1, 648, 0, 298
//f0 ad 02 
_as3_debugline line number: 301
//47 
_as3_returnvoid 
        }// end function

        public function getDefinitionByName(ModuleEvent:String) : Object
        {
1  0 3061  1 3081  2 311//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 b2 02 
_as3_debugline line number: 306
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//d7 
_as3_setlocal <3> 
//ef 01 89 05 00 b2 02 
_as3_debug 1, 649, 0, 306
//ef 01 8a 05 01 b4 02 
_as3_debug 1, 650, 1, 308
//ef 01 8b 05 02 b7 02 
_as3_debug 1, 651, 2, 311
//f0 b5 02 
_as3_debugline line number: 309
//5d 41 
_as3_findpropstrict info
//46 41 00 
_as3_callproperty info(param count:0)
//2c 8c 05 
_as3_pushstring "currentDomain"
//66 e8 02 
_as3_getproperty {}
//60 09 
_as3_getlex flash.system::ApplicationDomain
//87 
_as3_astypelate 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//d6 
_as3_setlocal <2> 
//f0 b8 02 
_as3_debugline line number: 312
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 0c 00 00 
_as3_iffalse offset: 12
//f0 b9 02 
_as3_debugline line number: 313
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//80 03 
_as3_coerce Object
//d7 
_as3_setlocal <3> 
//f0 bb 02 
_as3_debugline line number: 315
//d3 
_as3_getlocal <3> 
//48 
_as3_returnvalue 
        }// end function

        public function info() : Object
        {
//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 96 02 
_as3_debugline line number: 278
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 98 02 
_as3_debugline line number: 280
//55 00 
_as3_newobject {object count:0}
//48 
_as3_returnvalue 
        }// end function

        private function docFrameHandler(IResourceBundle:Event = null) : void
        {
1  0 443//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 bb 03 
_as3_debugline line number: 443
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 bb 03 
_as3_debug 1, 635, 0, 443
//f0 c1 03 
_as3_debugline line number: 449
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c a1 05 
_as3_pushstring "mx.managers::IBrowserManager"
//f0 c2 03 
_as3_debugline line number: 450
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c a2 05 
_as3_pushstring "mx.managers::BrowserManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 c4 03 
_as3_debugline line number: 452
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c a3 05 
_as3_pushstring "mx.managers::ICursorManager"
//f0 c5 03 
_as3_debugline line number: 453
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c a4 05 
_as3_pushstring "mx.managers::CursorManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 c7 03 
_as3_debugline line number: 455
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c a5 05 
_as3_pushstring "mx.managers::IDragManager"
//f0 c8 03 
_as3_debugline line number: 456
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c a6 05 
_as3_pushstring "mx.managers::DragManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 ca 03 
_as3_debugline line number: 458
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c a7 05 
_as3_pushstring "mx.managers::IHistoryManager"
//f0 cb 03 
_as3_debugline line number: 459
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c a8 05 
_as3_pushstring "mx.managers::HistoryManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 cd 03 
_as3_debugline line number: 461
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c a9 05 
_as3_pushstring "mx.managers::ILayoutManager"
//f0 ce 03 
_as3_debugline line number: 462
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c aa 05 
_as3_pushstring "mx.managers::LayoutManager"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 d0 03 
_as3_debugline line number: 464
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c ab 05 
_as3_pushstring "mx.managers::IPopUpManager"
//f0 d1 03 
_as3_debugline line number: 465
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c ac 05 
_as3_pushstring "mx.managers::PopUpManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 d3 03 
_as3_debugline line number: 467
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c ad 05 
_as3_pushstring "mx.resources::IResourceManager"
//f0 d4 03 
_as3_debugline line number: 468
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c ae 05 
_as3_pushstring "mx.resources::ResourceManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 d6 03 
_as3_debugline line number: 470
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c af 05 
_as3_pushstring "mx.styles::IStyleManager"
//f0 d7 03 
_as3_debugline line number: 471
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c b0 05 
_as3_pushstring "mx.styles::StyleManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 d9 03 
_as3_debugline line number: 473
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c b1 05 
_as3_pushstring "mx.styles::IStyleManager2"
//f0 da 03 
_as3_debugline line number: 474
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c b0 05 
_as3_pushstring "mx.styles::StyleManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 dc 03 
_as3_debugline line number: 476
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c b2 05 
_as3_pushstring "mx.managers::IToolTipManager2"
//f0 dd 03 
_as3_debugline line number: 477
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//2c b3 05 
_as3_pushstring "mx.managers::ToolTipManagerImpl"
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//4f b3 02 02 
_as3_callpropvoid registerClass(param count:2)
//f0 df 03 
_as3_debugline line number: 479
//5e 27 
_as3_findproperty mx.core:FlexModuleFactory::appReady
//26 
_as3_pushtrue 
//68 27 
_as3_initproperty mx.core:FlexModuleFactory::appReady
//f0 e3 03 
_as3_debugline line number: 483
//5d 37 
_as3_findpropstrict mx.core:FlexModuleFactory::installCompiledResourceBundles
//4f 37 00 
_as3_callpropvoid mx.core:FlexModuleFactory::installCompiledResourceBundles(param count:0)
//f0 e5 03 
_as3_debugline line number: 485
//5d 2b 
_as3_findpropstrict mx.core:FlexModuleFactory::update
//4f 2b 00 
_as3_callpropvoid mx.core:FlexModuleFactory::update(param count:0)
//f0 e7 03 
_as3_debugline line number: 487
//60 f2 02 
_as3_getlex currentFrame
//60 ee 02 
_as3_getlex totalFrames
//0c 08 00 00 
_as3_ifnlt offset: 8
//f0 e8 03 
_as3_debugline line number: 488
//5d 34 
_as3_findpropstrict mx.core:FlexModuleFactory::deferredNextFrame
//4f 34 00 
_as3_callpropvoid mx.core:FlexModuleFactory::deferredNextFrame(param count:0)
//f0 e9 03 
_as3_debugline line number: 489
//47 
_as3_returnvoid 
        }// end function

        public function create(... args) : Object
        {
1  0 2581  1 2601  2 2701  3 2641  4 2651  5 266//f1 df 04 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexModuleFactory.as"
//f0 82 02 
_as3_debugline line number: 258
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//28 
_as3_pushnan 
//63 05 
_as3_setlocal <5>
//28 
_as3_pushnan 
//63 06 
_as3_setlocal <6>
//ef 01 fe 04 00 82 02 
_as3_debug 1, 638, 0, 258
//ef 01 ff 04 01 84 02 
_as3_debug 1, 639, 1, 260
//ef 01 80 05 02 8e 02 
_as3_debug 1, 640, 2, 270
//f0 84 02 
_as3_debugline line number: 260
//5d 41 
_as3_findpropstrict info
//46 41 00 
_as3_callproperty info(param count:0)
//2c ff 04 
_as3_pushstring "mainClassName"
//66 e8 02 
_as3_getproperty {}
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 86 02 
_as3_debugline line number: 262
//d2 
_as3_getlocal <2> 
//20 
_as3_pushnull 
//14 50 00 00 
_as3_ifne offset: 80
//ef 01 60 03 88 02 
_as3_debug 1, 96, 3, 264
//ef 01 81 05 04 89 02 
_as3_debug 1, 641, 4, 265
//ef 01 82 05 05 8a 02 
_as3_debug 1, 642, 5, 266
//f0 88 02 
_as3_debugline line number: 264
//60 d4 01 
_as3_getlex loaderInfo
//66 f4 02 
_as3_getproperty loaderURL
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//f0 89 02 
_as3_debugline line number: 265
//62 04 
_as3_getlocal <4>
//2c 84 05 
_as3_pushstring "."
//46 f5 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:1)
//75 
_as3_convert_d 
//63 05 
_as3_setlocal <5>
//f0 8a 02 
_as3_debugline line number: 266
//62 04 
_as3_getlocal <4>
//2c 86 05 
_as3_pushstring "/"
//46 f5 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:1)
//75 
_as3_convert_d 
//63 06 
_as3_setlocal <6>
//f0 8b 02 
_as3_debugline line number: 267
//62 04 
_as3_getlocal <4>
//62 06 
_as3_getlocal <6>
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//62 05 
_as3_getlocal <5>
//46 f6 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:2)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 8e 02 
_as3_debugline line number: 270
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//d2 
_as3_getlocal <2> 
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//d7 
_as3_setlocal <3> 
//f0 90 02 
_as3_debugline line number: 272
//d3 
_as3_getlocal <3> 
//12 09 00 00 
_as3_iffalse offset: 9
//d3 
_as3_getlocal <3> 
//42 00 
_as3_construct (param count:0)
//80 03 
_as3_coerce Object
//10 03 00 00 
_as3_jump offset: 3
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//48 
_as3_returnvalue 
        }// end function

    }
}
