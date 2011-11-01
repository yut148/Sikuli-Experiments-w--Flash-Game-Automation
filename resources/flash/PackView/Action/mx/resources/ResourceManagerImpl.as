package mx.resources
{
    import flash.events.*;
    import flash.system.*;
    import mx.events.*;

    public class ResourceManagerImpl extends EventDispatcher implements IResourceManager
    {
        private var resourceModules:Object;
        private var initializedForNonFrameworkApp:Boolean = false;
        private var localeMap:Object;
        private var _localeChain:Array;
        static const VERSION:String = "3.5.0.12683";
        private static var instance:IResourceManager;

        public function ResourceManagerImpl()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e bd 01 
_as3_findproperty localeMap
//55 00 
_as3_newobject {object count:0}
//68 bd 01 
_as3_initproperty localeMap
//5e b9 01 
_as3_findproperty resourceModules
//55 00 
_as3_newobject {object count:0}
//68 b9 01 
_as3_initproperty resourceModules
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function get localeChain() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 c8 01 
_as3_getlex _localeChain
//48 
_as3_returnvalue 
        }// end function

        public function set localeChain(param1:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e c8 01 
_as3_findproperty _localeChain
//d1 
_as3_getlocal <1> 
//68 c8 01 
_as3_initproperty _localeChain
//5d c9 01 
_as3_findpropstrict update
//4f c9 01 00 
_as3_callpropvoid update(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function getStringArray(param1:String, param2:String, param3:String = null) : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 02 00 00 
_as3_iftrue offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//5d 05 
_as3_findpropstrict String
//62 05 
_as3_getlocal <5>
//46 05 01 
_as3_callproperty String(param count:1)
//2c f9 03 
_as3_pushstring ","
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//2a 
_as3_dup 
//63 06 
_as3_setlocal <6>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 07 
_as3_setlocal <7>
//24 00 
_as3_pushbyte 0
//63 08 
_as3_setlocal <8>
//10 18 00 00 
_as3_jump offset: 24
//09 
_as3_label 
//62 06 
_as3_getlocal <6>
//62 08 
_as3_getlocal <8>
//60 aa 01 
_as3_getlex mx.utils::StringUtil
//62 06 
_as3_getlocal <6>
//62 08 
_as3_getlocal <8>
//66 c4 03 
_as3_getproperty {}
//46 c2 02 01 
_as3_callproperty trim(param count:1)
//61 c4 03 
_as3_setproperty {}
//c2 08 
_as3_inclocal_i <8>
//62 08 
_as3_getlocal <8>
//62 07 
_as3_getlocal <7>
//15 e0 ff ff 
_as3_iflt offset: -32
//62 06 
_as3_getlocal <6>
//48 
_as3_returnvalue 
        }// end function

        function installCompiledResourceBundle(param1:ApplicationDomain, param2:String, param3:String) : void
        {
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
//d3 
_as3_getlocal <3> 
//85 
_as3_coerce_s 
//63 05 
_as3_setlocal <5>
//d3 
_as3_getlocal <3> 
//2c d3 05 
_as3_pushstring ":"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//73 
_as3_convert_i 
//2a 
_as3_dup 
//63 06 
_as3_setlocal <6>
//24 ff 
_as3_pushbyte -1
//13 19 00 00 
_as3_ifeq offset: 25
//d3 
_as3_getlocal <3> 
//24 00 
_as3_pushbyte 0
//62 06 
_as3_getlocal <6>
//46 f6 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:2)
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//d3 
_as3_getlocal <3> 
//62 06 
_as3_getlocal <6>
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//46 f6 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:1)
//85 
_as3_coerce_s 
//63 05 
_as3_setlocal <5>
//5d c0 01 
_as3_findpropstrict getResourceBundle
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c0 01 02 
_as3_callproperty getResourceBundle(param count:2)
//12 01 00 00 
_as3_iffalse offset: 1
//47 
_as3_returnvoid 
//d2 
_as3_getlocal <2> 
//2c f3 03 
_as3_pushstring "$"
//a0 
_as3_add 
//62 05 
_as3_getlocal <5>
//a0 
_as3_add 
//2c f4 03 
_as3_pushstring "_properties"
//a0 
_as3_add 
//63 07 
_as3_setlocal <7>
//62 04 
_as3_getlocal <4>
//20 
_as3_pushnull 
//13 0c 00 00 
_as3_ifeq offset: 12
//62 04 
_as3_getlocal <4>
//2c f4 02 
_as3_pushstring "."
//a0 
_as3_add 
//62 07 
_as3_getlocal <7>
//a0 
_as3_add 
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//63 08 
_as3_setlocal <8>
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 10 00 00 
_as3_iffalse offset: 16
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//63 08 
_as3_setlocal <8>
//62 08 
_as3_getlocal <8>
//11 1f 00 00 
_as3_iftrue offset: 31
//d3 
_as3_getlocal <3> 
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 10 00 00 
_as3_iffalse offset: 16
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//63 08 
_as3_setlocal <8>
//62 08 
_as3_getlocal <8>
//11 22 00 00 
_as3_iftrue offset: 34
//d3 
_as3_getlocal <3> 
//2c f4 03 
_as3_pushstring "_properties"
//a0 
_as3_add 
//63 07 
_as3_setlocal <7>
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 10 00 00 
_as3_iffalse offset: 16
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//63 08 
_as3_setlocal <8>
//62 08 
_as3_getlocal <8>
//11 17 00 00 
_as3_iftrue offset: 23
//5d 83 03 
_as3_findpropstrict Error
//2c d5 05 
_as3_pushstring "Could not find compiled resource bundle '"
//d3 
_as3_getlocal <3> 
//a0 
_as3_add 
//2c d6 05 
_as3_pushstring "' for locale '"
//a0 
_as3_add 
//d2 
_as3_getlocal <2> 
//a0 
_as3_add 
//2c c3 05 
_as3_pushstring "'."
//a0 
_as3_add 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//5d 08 
_as3_findpropstrict mx.resources::ResourceBundle
//62 08 
_as3_getlocal <8>
//42 00 
_as3_construct (param count:0)
//46 08 01 
_as3_callproperty mx.resources::ResourceBundle(param count:1)
//80 08 
_as3_coerce mx.resources::ResourceBundle
//2a 
_as3_dup 
//63 09 
_as3_setlocal <9>
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//d2 
_as3_getlocal <2> 
//61 9d 03 
_as3_setproperty _locale
//62 09 
_as3_getlocal <9>
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//d3 
_as3_getlocal <3> 
//61 9e 03 
_as3_setproperty _bundleName
//5d c2 01 
_as3_findpropstrict addResourceBundle
//62 09 
_as3_getlocal <9>
//4f c2 01 01 
_as3_callpropvoid addResourceBundle(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function getString(param1:String, param2:String, param3:Array = null, param4:String = null) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//62 04 
_as3_getlocal <4>
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//11 02 00 00 
_as3_iftrue offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//5d 05 
_as3_findpropstrict String
//62 05 
_as3_getlocal <5>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//46 05 01 
_as3_callproperty String(param count:1)
//85 
_as3_coerce_s 
//63 06 
_as3_setlocal <6>
//d3 
_as3_getlocal <3> 
//12 0d 00 00 
_as3_iffalse offset: 13
//60 aa 01 
_as3_getlex mx.utils::StringUtil
//62 06 
_as3_getlocal <6>
//d3 
_as3_getlocal <3> 
//46 c4 02 02 
_as3_callproperty substitute(param count:2)
//85 
_as3_coerce_s 
//63 06 
_as3_setlocal <6>
//62 06 
_as3_getlocal <6>
//48 
_as3_returnvalue 
        }// end function

        public function loadResourceModule(param1:String, param2:Boolean = true, param3:ApplicationDomain = null, param4:SecurityDomain = null) : IEventDispatcher
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 17 
_as3_coerce mx.modules::IModuleInfo
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 b1 01 
_as3_coerce ResourceEventDispatcher
//6d 06 
_as3_setslot <6>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 29 
_as3_coerce flash.utils::Timer
//6d 09 
_as3_setslot <9>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 13 
_as3_coerce Function
//6d 0a 
_as3_setslot <10>
//65 01 
_as3_getscopeobject 1
//d1 
_as3_getlocal <1> 
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//d2 
_as3_getlocal <2> 
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//d3 
_as3_getlocal <3> 
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//62 04 
_as3_getlocal <4>
//6d 04 
_as3_setslot <4>
//65 01 
_as3_getscopeobject 1
//60 f3 01 
_as3_getlex mx.modules::ModuleManager
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//46 f5 01 01 
_as3_callproperty getModule(param count:1)
//80 17 
_as3_coerce mx.modules::IModuleInfo
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//5d b1 01 
_as3_findpropstrict ResourceEventDispatcher
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//4a b1 01 01 
_as3_constructprop ResourceEventDispatcher(param count:1)
//80 b1 01 
_as3_coerce ResourceEventDispatcher
//6d 06 
_as3_setslot <6>
//65 01 
_as3_getscopeobject 1
//40 c2 01 
_as3_newfunction 
                function (param1:ModuleEvent) : void
                {
//d1 
_as3_getlocal <1> 
//66 a4 01 
_as3_getproperty module
//66 df 01 
_as3_getproperty mx.modules:IModuleInfo::factory
//46 21 00 
_as3_callproperty mx.core:IFlexModuleFactory::create(param count:0)
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//60 b9 01 
_as3_getlex resourceModules
//d1 
_as3_getlocal <1> 
//66 a4 01 
_as3_getproperty module
//66 e0 01 
_as3_getproperty mx.modules:IModuleInfo::url
//66 c4 03 
_as3_getproperty {}
//d2 
_as3_getlocal <2> 
//61 c7 03 
_as3_setproperty resourceModule
//60 c8 03 
_as3_getlex mx.resources::updateFlag
//12 07 00 00 
_as3_iffalse offset: 7
//5d c9 01 
_as3_findpropstrict update
//4f c9 01 00 
_as3_callpropvoid update(param count:0)
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 07 
_as3_setslot <7>
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//65 01 
_as3_getscopeobject 1
//40 c3 01 
_as3_newfunction 
                function (param1:ModuleEvent) : void
                {
//20 
_as3_pushnull 
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d7 
_as3_setlocal <3> 
//2c d8 05 
_as3_pushstring "Unable to load resource module from "
//60 c9 03 
_as3_getlex mx.resources::url
//a0 
_as3_add 
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//60 ca 03 
_as3_getlex mx.resources::resourceEventDispatcher
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 ae 02 
_as3_getproperty ERROR
//46 cb 03 01 
_as3_callproperty willTrigger(param count:1)
//12 36 00 00 
_as3_iffalse offset: 54
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
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//24 00 
_as3_pushbyte 0
//61 aa 03 
_as3_setproperty bytesLoaded
//d3 
_as3_getlocal <3> 
//24 00 
_as3_pushbyte 0
//61 95 02 
_as3_setproperty bytesTotal
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//61 a2 01 
_as3_setproperty errorText
//60 ca 03 
_as3_getlex mx.resources::resourceEventDispatcher
//d3 
_as3_getlocal <3> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//10 09 00 00 
_as3_jump offset: 9
//5d 83 03 
_as3_findpropstrict Error
//d2 
_as3_getlocal <2> 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//60 b9 01 
_as3_getlex resourceModules
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//5d ab 01 
_as3_findpropstrict ResourceModuleInfo
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//4a ab 01 03 
_as3_constructprop ResourceModuleInfo(param count:3)
//61 c4 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 29 
_as3_findpropstrict flash.utils::Timer
//24 00 
_as3_pushbyte 0
//4a 29 01 
_as3_constructprop flash.utils::Timer(param count:1)
//80 29 
_as3_coerce flash.utils::Timer
//6d 09 
_as3_setslot <9>
//65 01 
_as3_getscopeobject 1
//40 c4 01 
_as3_newfunction 
                function (param1:TimerEvent) : void
                {
//60 cc 03 
_as3_getlex mx.resources::timer
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//60 cd 03 
_as3_getlex mx.resources::timerHandler
//4f f3 02 02 
_as3_callpropvoid removeEventListener(param count:2)
//60 cc 03 
_as3_getlex mx.resources::timer
//4f ec 02 00 
_as3_callpropvoid stop(param count:0)
//60 ce 03 
_as3_getlex mx.resources::moduleInfo
//60 cf 03 
_as3_getlex mx.resources::applicationDomain
//60 d0 03 
_as3_getlex mx.resources::securityDomain
//4f da 01 02 
_as3_callpropvoid mx.modules:IModuleInfo::load(param count:2)
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 0a 
_as3_setslot <10>
//65 01 
_as3_getscopeobject 1
//6c 09 
_as3_getslot <9>
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//65 01 
_as3_getscopeobject 1
//6c 0a 
_as3_getslot <10>
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//65 01 
_as3_getscopeobject 1
//6c 09 
_as3_getslot <9>
//4f f1 02 00 
_as3_callpropvoid start(param count:0)
//65 01 
_as3_getscopeobject 1
//6c 06 
_as3_getslot <6>
//48 
_as3_returnvalue 
        }// end function

        public function getLocales() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//60 bd 01 
_as3_getlex localeMap
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 0d 00 00 
_as3_jump offset: 13
//09 
_as3_label 
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//1e 
_as3_nextname 
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//32 04 03 
_as3_hasnext2 4, 3
//11 ec ff ff 
_as3_iftrue offset: -20
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function removeResourceBundlesForLocale(param1:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 bd 01 
_as3_getlex localeMap
//d1 
_as3_getlocal <1> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//47 
_as3_returnvoid 
        }// end function

        public function getResourceBundle(param1:String, param2:String) : IResourceBundle
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 bd 01 
_as3_getlex localeMap
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//11 02 00 00 
_as3_iftrue offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        private function dumpResourceModule(param1) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 08 
_as3_coerce mx.resources::ResourceBundle
//d6 
_as3_setlocal <2> 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//d1 
_as3_getlocal <1> 
//66 dd 03 
_as3_getproperty resourceBundles
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//10 37 00 00 
_as3_jump offset: 55
//09 
_as3_label 
//62 05 
_as3_getlocal <5>
//62 04 
_as3_getlocal <4>
//23 
_as3_nextvalue 
//80 08 
_as3_coerce mx.resources::ResourceBundle
//d6 
_as3_setlocal <2> 
//5d 8f 03 
_as3_findpropstrict trace
//d2 
_as3_getlocal <2> 
//66 56 
_as3_getproperty locale
//d2 
_as3_getlocal <2> 
//66 57 
_as3_getproperty bundleName
//4f 8f 03 02 
_as3_callpropvoid trace(param count:2)
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//d2 
_as3_getlocal <2> 
//66 50 
_as3_getproperty content
//82 
_as3_coerce_a 
//63 07 
_as3_setlocal <7>
//10 08 00 00 
_as3_jump offset: 8
//09 
_as3_label 
//62 07 
_as3_getlocal <7>
//62 06 
_as3_getlocal <6>
//1e 
_as3_nextname 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//32 07 06 
_as3_hasnext2 7, 6
//11 f1 ff ff 
_as3_iftrue offset: -15
//08 07 
_as3_kill <7>
//08 06 
_as3_kill <6>
//32 05 04 
_as3_hasnext2 5, 4
//11 c2 ff ff 
_as3_iftrue offset: -62
//08 05 
_as3_kill <5>
//08 04 
_as3_kill <4>
//47 
_as3_returnvoid 
        }// end function

        public function addResourceBundle(param1:IResourceBundle) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 49 
_as3_getproperty mx.resources:IResourceBundle::locale
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//66 4a 
_as3_getproperty mx.resources:IResourceBundle::bundleName
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//60 bd 01 
_as3_getlex localeMap
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//11 09 00 00 
_as3_iftrue offset: 9
//60 bd 01 
_as3_getlex localeMap
//d2 
_as3_getlocal <2> 
//55 00 
_as3_newobject {object count:0}
//61 c4 03 
_as3_setproperty {}
//60 bd 01 
_as3_getlex localeMap
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//d1 
_as3_getlocal <1> 
//61 c4 03 
_as3_setproperty {}
//47 
_as3_returnvoid 
        }// end function

        public function getObject(param1:String, param2:String, param3:String = null)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 04 00 00 
_as3_iftrue offset: 4
//60 d6 03 
_as3_getlex undefined
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        public function getInt(param1:String, param2:String, param3:String = null) : int
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 03 00 00 
_as3_iftrue offset: 3
//24 00 
_as3_pushbyte 0
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//5d 11 
_as3_findpropstrict int
//62 05 
_as3_getlocal <5>
//46 11 01 
_as3_callproperty int(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private function findBundle(param1:String, param2:String, param3:String) : IResourceBundle
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c5 01 
_as3_findpropstrict supportNonFrameworkApps
//4f c5 01 00 
_as3_callpropvoid supportNonFrameworkApps(param count:0)
//d3 
_as3_getlocal <3> 
//20 
_as3_pushnull 
//13 0f 00 00 
_as3_ifeq offset: 15
//5d c0 01 
_as3_findpropstrict getResourceBundle
//d3 
_as3_getlocal <3> 
//d1 
_as3_getlocal <1> 
//46 c0 01 02 
_as3_callproperty getResourceBundle(param count:2)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//10 0b 00 00 
_as3_jump offset: 11
//5d cd 01 
_as3_findpropstrict findResourceBundleWithResource
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//46 cd 01 02 
_as3_callproperty findResourceBundleWithResource(param count:2)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//48 
_as3_returnvalue 
        }// end function

        private function supportNonFrameworkApps() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 ba 01 
_as3_getlex initializedForNonFrameworkApp
//12 01 00 00 
_as3_iffalse offset: 1
//47 
_as3_returnvoid 
//5e ba 01 
_as3_findproperty initializedForNonFrameworkApp
//26 
_as3_pushtrue 
//68 ba 01 
_as3_initproperty initializedForNonFrameworkApp
//5d be 01 
_as3_findpropstrict getLocales
//46 be 01 00 
_as3_callproperty getLocales(param count:0)
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 01 00 00 
_as3_ifngt offset: 1
//47 
_as3_returnvoid 
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//80 09 
_as3_coerce flash.system::ApplicationDomain
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//2c df 05 
_as3_pushstring "_CompiledResourceBundleInfo"
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//11 01 00 00 
_as3_iftrue offset: 1
//47 
_as3_returnvoid 
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//2c df 05 
_as3_pushstring "_CompiledResourceBundleInfo"
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//66 d9 03 
_as3_getproperty compiledLocales
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//d2 
_as3_getlocal <2> 
//66 da 03 
_as3_getproperty compiledResourceBundleNames
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//5d d0 01 
_as3_findpropstrict installCompiledResourceBundles
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//62 04 
_as3_getlocal <4>
//4f d0 01 03 
_as3_callpropvoid installCompiledResourceBundles(param count:3)
//5e b8 01 
_as3_findproperty localeChain
//d3 
_as3_getlocal <3> 
//68 b8 01 
_as3_initproperty localeChain
//47 
_as3_returnvoid 
        }// end function

        public function getBundleNamesForLocale(param1:String) : Array
        {
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
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//60 bd 01 
_as3_getlex localeMap
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//10 0e 00 00 
_as3_jump offset: 14
//09 
_as3_label 
//62 05 
_as3_getlocal <5>
//62 04 
_as3_getlocal <4>
//1e 
_as3_nextname 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//32 05 04 
_as3_hasnext2 5, 4
//11 eb ff ff 
_as3_iftrue offset: -21
//08 05 
_as3_kill <5>
//08 04 
_as3_kill <4>
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function getPreferredLocaleChain() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 e3 01 
_as3_getlex mx.resources::LocaleSorter
//5d be 01 
_as3_findpropstrict getLocales
//46 be 01 00 
_as3_callproperty getLocales(param count:0)
//5d cf 01 
_as3_findpropstrict getSystemPreferredLocales
//46 cf 01 00 
_as3_callproperty getSystemPreferredLocales(param count:0)
//20 
_as3_pushnull 
//26 
_as3_pushtrue 
//46 d0 02 04 
_as3_callproperty sortLocalesByPreference(param count:4)
//48 
_as3_returnvalue 
        }// end function

        public function getNumber(param1:String, param2:String, param3:String = null) : Number
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 04 00 00 
_as3_iftrue offset: 4
//60 d7 03 
_as3_getlex NaN
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//5d 0b 
_as3_findpropstrict Number
//62 05 
_as3_getlocal <5>
//46 0b 01 
_as3_callproperty Number(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function update() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d fb 02 
_as3_findpropstrict dispatchEvent
//5d 04 
_as3_findpropstrict flash.events::Event
//60 04 
_as3_getlex flash.events::Event
//66 d5 03 
_as3_getproperty CHANGE
//4a 04 01 
_as3_constructprop flash.events::Event(param count:1)
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function getClass(param1:String, param2:String, param3:String = null) : Class
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 02 00 00 
_as3_iftrue offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//60 0a 
_as3_getlex Class
//87 
_as3_astypelate 
//48 
_as3_returnvalue 
        }// end function

        public function removeResourceBundle(param1:String, param2:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 bd 01 
_as3_getlex localeMap
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//d2 
_as3_getlocal <2> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//5d c6 01 
_as3_findpropstrict getBundleNamesForLocale
//d1 
_as3_getlocal <1> 
//46 c6 01 01 
_as3_callproperty getBundleNamesForLocale(param count:1)
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//14 08 00 00 
_as3_ifne offset: 8
//60 bd 01 
_as3_getlex localeMap
//d1 
_as3_getlocal <1> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//47 
_as3_returnvoid 
        }// end function

        public function initializeLocaleChain(param1:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e b8 01 
_as3_findproperty localeChain
//60 e3 01 
_as3_getlex mx.resources::LocaleSorter
//d1 
_as3_getlocal <1> 
//5d cf 01 
_as3_findpropstrict getSystemPreferredLocales
//46 cf 01 00 
_as3_callproperty getSystemPreferredLocales(param count:0)
//20 
_as3_pushnull 
//26 
_as3_pushtrue 
//46 d0 02 04 
_as3_callproperty sortLocalesByPreference(param count:4)
//68 b8 01 
_as3_initproperty localeChain
//47 
_as3_returnvoid 
        }// end function

        public function findResourceBundleWithResource(param1:String, param2:String) : IResourceBundle
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 05 
_as3_setlocal <5>
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//63 06 
_as3_setlocal <6>
//20 
_as3_pushnull 
//80 08 
_as3_coerce mx.resources::ResourceBundle
//63 07 
_as3_setlocal <7>
//60 c8 01 
_as3_getlex _localeChain
//11 02 00 00 
_as3_iftrue offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//60 c8 01 
_as3_getlex _localeChain
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//10 43 00 00 
_as3_jump offset: 67
//09 
_as3_label 
//60 b8 01 
_as3_getlex localeChain
//62 04 
_as3_getlocal <4>
//66 c4 03 
_as3_getproperty {}
//85 
_as3_coerce_s 
//63 05 
_as3_setlocal <5>
//60 bd 01 
_as3_getlex localeMap
//62 05 
_as3_getlocal <5>
//66 c4 03 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//2a 
_as3_dup 
//63 06 
_as3_setlocal <6>
//11 04 00 00 
_as3_iftrue offset: 4
//10 20 00 00 
_as3_jump offset: 32
//62 06 
_as3_getlocal <6>
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//80 08 
_as3_coerce mx.resources::ResourceBundle
//2a 
_as3_dup 
//63 07 
_as3_setlocal <7>
//11 04 00 00 
_as3_iftrue offset: 4
//10 0d 00 00 
_as3_jump offset: 13
//d2 
_as3_getlocal <2> 
//62 07 
_as3_getlocal <7>
//66 50 
_as3_getproperty content
//b4 
_as3_in 
//12 03 00 00 
_as3_iffalse offset: 3
//62 07 
_as3_getlocal <7>
//48 
_as3_returnvalue 
//c2 04 
_as3_inclocal_i <4>
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//15 b6 ff ff 
_as3_iflt offset: -74
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
        }// end function

        public function getUint(param1:String, param2:String, param3:String = null) : uint
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 03 00 00 
_as3_iftrue offset: 3
//24 00 
_as3_pushbyte 0
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//5d 12 
_as3_findpropstrict uint
//62 05 
_as3_getlocal <5>
//46 12 01 
_as3_callproperty uint(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private function getSystemPreferredLocales() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//60 db 03 
_as3_getlex flash.system::Capabilities
//2c e1 05 
_as3_pushstring "languages"
//66 c4 03 
_as3_getproperty {}
//12 10 00 00 
_as3_iffalse offset: 16
//60 db 03 
_as3_getlex flash.system::Capabilities
//2c e1 05 
_as3_pushstring "languages"
//66 c4 03 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//10 0b 00 00 
_as3_jump offset: 11
//60 db 03 
_as3_getlex flash.system::Capabilities
//66 dc 03 
_as3_getproperty language
//56 01 
_as3_newarray [array size:1]
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function installCompiledResourceBundles(param1:ApplicationDomain, param2:Array, param3:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//24 00 
_as3_pushbyte 0
//63 08 
_as3_setlocal <8>
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 09 
_as3_setlocal <9>
//d2 
_as3_getlocal <2> 
//12 09 00 00 
_as3_iffalse offset: 9
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//10 02 00 00 
_as3_jump offset: 2
//24 00 
_as3_pushbyte 0
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//d3 
_as3_getlocal <3> 
//12 09 00 00 
_as3_iffalse offset: 9
//d3 
_as3_getlocal <3> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//10 02 00 00 
_as3_jump offset: 2
//24 00 
_as3_pushbyte 0
//73 
_as3_convert_i 
//63 05 
_as3_setlocal <5>
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//10 49 00 00 
_as3_jump offset: 73
//09 
_as3_label 
//d2 
_as3_getlocal <2> 
//62 06 
_as3_getlocal <6>
//66 c4 03 
_as3_getproperty {}
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//24 00 
_as3_pushbyte 0
//63 08 
_as3_setlocal <8>
//10 2d 00 00 
_as3_jump offset: 45
//09 
_as3_label 
//d3 
_as3_getlocal <3> 
//62 08 
_as3_getlocal <8>
//66 c4 03 
_as3_getproperty {}
//85 
_as3_coerce_s 
//63 09 
_as3_setlocal <9>
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d c5 03 
_as3_findpropstrict installCompiledResourceBundle
//2a 
_as3_dup 
//63 0a 
_as3_setlocal <10>
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 c5 03 
_as3_getproperty installCompiledResourceBundle
//62 0a 
_as3_getlocal <10>
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//62 09 
_as3_getlocal <9>
//41 03 
_as3_call (param count:3)
//29 
_as3_pop 
//08 0a 
_as3_kill <10>
//c2 08 
_as3_inclocal_i <8>
//62 08 
_as3_getlocal <8>
//62 05 
_as3_getlocal <5>
//15 cb ff ff 
_as3_iflt offset: -53
//c2 06 
_as3_inclocal_i <6>
//62 06 
_as3_getlocal <6>
//62 04 
_as3_getlocal <4>
//15 af ff ff 
_as3_iflt offset: -81
//47 
_as3_returnvoid 
        }// end function

        public function getBoolean(param1:String, param2:String, param3:String = null) : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d c4 01 
_as3_findpropstrict findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 02 00 00 
_as3_iftrue offset: 2
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
//62 04 
_as3_getlocal <4>
//66 48 
_as3_getproperty mx.resources:IResourceBundle::content
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//5d 05 
_as3_findpropstrict String
//62 05 
_as3_getlocal <5>
//46 05 01 
_as3_callproperty String(param count:1)
//46 d8 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toLowerCase(param count:0)
//2c f8 03 
_as3_pushstring "true"
//ab 
_as3_equals 
//48 
_as3_returnvalue 
        }// end function

        public function unloadResourceModule(param1:String, param2:Boolean = true) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 08 
_as3_setlocal <8>
//60 b9 01 
_as3_getlex resourceModules
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//80 ab 01 
_as3_coerce ResourceModuleInfo
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//11 01 00 00 
_as3_iftrue offset: 1
//47 
_as3_returnvoid 
//d3 
_as3_getlocal <3> 
//66 ac 01 
_as3_getproperty resourceModule
//12 50 00 00 
_as3_iffalse offset: 80
//d3 
_as3_getlocal <3> 
//66 ac 01 
_as3_getproperty resourceModule
//66 f2 01 
_as3_getproperty mx.resources:IResourceModule::resourceBundles
//80 0c 
_as3_coerce Array
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//12 40 00 00 
_as3_iffalse offset: 64
//62 04 
_as3_getlocal <4>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 05 
_as3_setlocal <5>
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//10 28 00 00 
_as3_jump offset: 40
//09 
_as3_label 
//62 04 
_as3_getlocal <4>
//62 06 
_as3_getlocal <6>
//66 c4 03 
_as3_getproperty {}
//66 d3 03 
_as3_getproperty locale
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//62 04 
_as3_getlocal <4>
//62 06 
_as3_getlocal <6>
//66 c4 03 
_as3_getproperty {}
//66 d4 03 
_as3_getproperty bundleName
//85 
_as3_coerce_s 
//63 08 
_as3_setlocal <8>
//5d cb 01 
_as3_findpropstrict removeResourceBundle
//62 07 
_as3_getlocal <7>
//62 08 
_as3_getlocal <8>
//4f cb 01 02 
_as3_callpropvoid removeResourceBundle(param count:2)
//c2 06 
_as3_inclocal_i <6>
//62 06 
_as3_getlocal <6>
//62 05 
_as3_getlocal <5>
//15 d0 ff ff 
_as3_iflt offset: -48
//60 b9 01 
_as3_getlex resourceModules
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//61 c4 03 
_as3_setproperty {}
//60 b9 01 
_as3_getlex resourceModules
//d1 
_as3_getlocal <1> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//d3 
_as3_getlocal <3> 
//66 b0 01 
_as3_getproperty moduleInfo
//4f e2 01 00 
_as3_callpropvoid mx.modules:IModuleInfo::unload(param count:0)
//d2 
_as3_getlocal <2> 
//12 05 00 00 
_as3_iffalse offset: 5
//d0 
_as3_getlocal <0> 
//4f c9 01 00 
_as3_callpropvoid update(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public static function getInstance() : IResourceManager
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 c6 02 
_as3_getlex instance
//11 09 00 00 
_as3_iftrue offset: 9
//5e c6 02 
_as3_findproperty instance
//d0 
_as3_getlocal <0> 
//42 00 
_as3_construct (param count:0)
//61 c6 02 
_as3_setproperty instance
//60 c6 02 
_as3_getlex instance
//48 
_as3_returnvalue 
        }// end function

    }
}
