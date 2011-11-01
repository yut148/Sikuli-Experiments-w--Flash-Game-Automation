package ModuleManager.as$26
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

        private function ModuleInfoProxy(:ModuleInfo)
        {
1  0 866//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 e2 06 
_as3_debugline line number: 866
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 c2 02 00 e2 06 
_as3_debug 1, 322, 0, 866
//f0 e4 06 
_as3_debugline line number: 868
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 e6 06 
_as3_debugline line number: 870
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 9b 02 
_as3_initproperty ModuleManager.as$26:ModuleInfoProxy::info
//f0 e8 06 
_as3_debugline line number: 872
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b0 02 
_as3_getproperty SETUP
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//f0 e9 06 
_as3_debugline line number: 873
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//f0 ea 06 
_as3_debugline line number: 874
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//f0 eb 06 
_as3_debugline line number: 875
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//f0 ec 06 
_as3_debugline line number: 876
//d1 
_as3_getlocal <1> 
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b1 02 
_as3_getproperty UNLOAD
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//f0 ed 06 
_as3_debugline line number: 877
//47 
_as3_returnvoid 
        }// end function

        public function get loaded() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 be 07 
_as3_debugline line number: 958
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 c0 07 
_as3_debugline line number: 960
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 85 01 
_as3_getproperty loaded
//48 
_as3_returnvalue 
        }// end function

        public function release() : void
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 ab 08 
_as3_debugline line number: 1067
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 ad 08 
_as3_debugline line number: 1069
//60 9c 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::referenced
//12 14 00 00 
_as3_iffalse offset: 20
//f0 af 08 
_as3_debugline line number: 1071
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//4f 8a 02 00 
_as3_callpropvoid removeReference(param count:0)
//f0 b0 08 
_as3_debugline line number: 1072
//5e 9c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfoProxy::referenced
//27 
_as3_pushfalse 
//68 9c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfoProxy::referenced
//f0 b2 08 
_as3_debugline line number: 1074
//47 
_as3_returnvoid 
        }// end function

        public function get error() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 a6 07 
_as3_debugline line number: 934
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 a8 07 
_as3_debugline line number: 936
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 fb 01 
_as3_getproperty error
//48 
_as3_returnvalue 
        }// end function

        public function get factory() : IFlexModuleFactory
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 b2 07 
_as3_debugline line number: 946
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 b4 07 
_as3_debugline line number: 948
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 fd 01 
_as3_getproperty factory
//48 
_as3_returnvalue 
        }// end function

        public function publish(_url:IFlexModuleFactory) : void
        {
1  0 1008//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 f0 07 
_as3_debugline line number: 1008
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 d6 03 00 f0 07 
_as3_debug 1, 470, 0, 1008
//f0 f2 07 
_as3_debugline line number: 1010
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//d1 
_as3_getlocal <1> 
//4f 81 02 01 
_as3_callpropvoid publish(param count:1)
//f0 f3 07 
_as3_debugline line number: 1011
//47 
_as3_returnvoid 
        }// end function

        public function set data(_url:Object) : void
        {
1  0 922//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 9a 07 
_as3_debugline line number: 922
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 6e 00 9a 07 
_as3_debug 1, 110, 0, 922
//f0 9c 07 
_as3_debugline line number: 924
//5e 98 02 
_as3_findproperty ModuleManager.as$26:ModuleInfoProxy::_data
//d1 
_as3_getlocal <1> 
//68 98 02 
_as3_initproperty ModuleManager.as$26:ModuleInfoProxy::_data
//f0 9d 07 
_as3_debugline line number: 925
//47 
_as3_returnvoid 
        }// end function

        public function get ready() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 ca 07 
_as3_debugline line number: 970
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 cc 07 
_as3_debugline line number: 972
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 87 02 
_as3_getproperty ready
//48 
_as3_returnvalue 
        }// end function

        public function load(_url:ApplicationDomain = null, _url:SecurityDomain = null, _url:ByteArray = null) : void
        {
1  0 10161  1 10161  2 10161  3 1048//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 f8 07 
_as3_debugline line number: 1016
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
//ef 01 69 00 f8 07 
_as3_debug 1, 105, 0, 1016
//ef 01 6c 01 f8 07 
_as3_debug 1, 108, 1, 1016
//ef 01 ed 0a 02 f8 07 
_as3_debug 1, 1389, 2, 1016
//f0 fc 07 
_as3_debugline line number: 1020
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//4f 86 02 00 
_as3_callpropvoid resurrect(param count:0)
//f0 fe 07 
_as3_debugline line number: 1022
//60 9c 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::referenced
//11 14 00 00 
_as3_iftrue offset: 20
//f0 80 08 
_as3_debugline line number: 1024
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//4f 8b 02 00 
_as3_callpropvoid addReference(param count:0)
//f0 81 08 
_as3_debugline line number: 1025
//5e 9c 02 
_as3_findproperty ModuleManager.as$26:ModuleInfoProxy::referenced
//26 
_as3_pushtrue 
//68 9c 02 
_as3_initproperty ModuleManager.as$26:ModuleInfoProxy::referenced
//f0 86 08 
_as3_debugline line number: 1030
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 fb 01 
_as3_getproperty error
//12 18 00 00 
_as3_iffalse offset: 24
//f0 89 08 
_as3_debugline line number: 1033
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
//10 a0 00 00 
_as3_jump offset: 160
//f0 8b 08 
_as3_debugline line number: 1035
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 85 01 
_as3_getproperty loaded
//12 86 00 00 
_as3_iffalse offset: 134
//f0 8f 08 
_as3_debugline line number: 1039
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 92 02 
_as3_getproperty setup
//12 75 00 00 
_as3_iffalse offset: 117
//f0 92 08 
_as3_debugline line number: 1042
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
//f0 94 08 
_as3_debugline line number: 1044
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 87 02 
_as3_getproperty ready
//12 54 00 00 
_as3_iffalse offset: 84
//ef 01 f9 0a 03 98 08 
_as3_debug 1, 1401, 3, 1048
//f0 99 08 
_as3_debugline line number: 1049
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
//63 04 
_as3_setlocal <4>
//f0 9a 08 
_as3_debugline line number: 1050
//62 04 
_as3_getlocal <4>
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 f9 01 
_as3_getproperty size
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 9b 08 
_as3_debugline line number: 1051
//62 04 
_as3_getlocal <4>
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 f9 01 
_as3_getproperty size
//61 95 02 
_as3_setproperty bytesTotal
//f0 9c 08 
_as3_debugline line number: 1052
//5d fb 02 
_as3_findpropstrict dispatchEvent
//62 04 
_as3_getlocal <4>
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 9e 08 
_as3_debugline line number: 1054
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
//10 0d 00 00 
_as3_jump offset: 13
//f0 a4 08 
_as3_debugline line number: 1060
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//4f 8f 01 03 
_as3_callpropvoid load(param count:3)
//f0 a6 08 
_as3_debugline line number: 1062
//47 
_as3_returnvoid 
        }// end function

        private function moduleEventHandler(_url:ModuleEvent) : void
        {
1  0 1099//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 cb 08 
_as3_debugline line number: 1099
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 cb 08 
_as3_debug 1, 635, 0, 1099
//f0 cd 08 
_as3_debugline line number: 1101
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d1 
_as3_getlocal <1> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 ce 08 
_as3_debugline line number: 1102
//47 
_as3_returnvoid 
        }// end function

        public function get url() : String
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 e2 07 
_as3_debugline line number: 994
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 e4 07 
_as3_debugline line number: 996
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 d7 01 
_as3_getproperty url
//48 
_as3_returnvalue 
        }// end function

        public function get data() : Object
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 92 07 
_as3_debugline line number: 914
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 94 07 
_as3_debugline line number: 916
//60 98 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::_data
//48 
_as3_returnvalue 
        }// end function

        public function get setup() : Boolean
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 d6 07 
_as3_debugline line number: 982
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 d8 07 
_as3_debugline line number: 984
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//66 92 02 
_as3_getproperty setup
//48 
_as3_returnvalue 
        }// end function

        public function unload() : void
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 b7 08 
_as3_debugline line number: 1079
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 b9 08 
_as3_debugline line number: 1081
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//4f 94 02 00 
_as3_callpropvoid unload(param count:0)
//f0 bb 08 
_as3_debugline line number: 1083
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b0 02 
_as3_getproperty SETUP
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 bc 08 
_as3_debugline line number: 1084
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 bd 08 
_as3_debugline line number: 1085
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 be 08 
_as3_debugline line number: 1086
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 bf 08 
_as3_debugline line number: 1087
//60 9b 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::info
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 b1 02 
_as3_getproperty UNLOAD
//60 9a 02 
_as3_getlex ModuleManager.as$26:ModuleInfoProxy::moduleEventHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//f0 c0 08 
_as3_debugline line number: 1088
//47 
_as3_returnvoid 
        }// end function

    }
}
