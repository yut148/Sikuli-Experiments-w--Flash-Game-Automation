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
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 5f 
_as3_debugline line number: 95
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 73 
_as3_debugline line number: 115
//5e bd 01 
_as3_findproperty mx.resources:ResourceManagerImpl::localeMap
//55 00 
_as3_newobject {object count:0}
//68 bd 01 
_as3_initproperty mx.resources:ResourceManagerImpl::localeMap
//f0 7a 
_as3_debugline line number: 122
//5e b9 01 
_as3_findproperty mx.resources:ResourceManagerImpl::resourceModules
//55 00 
_as3_newobject {object count:0}
//68 b9 01 
_as3_initproperty mx.resources:ResourceManagerImpl::resourceModules
//f0 61 
_as3_debugline line number: 97
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 62 
_as3_debugline line number: 98
//47 
_as3_returnvoid 
        }// end function

        public function get localeChain() : Array
        {
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 94 01 
_as3_debugline line number: 148
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 96 01 
_as3_debugline line number: 150
//60 c8 01 
_as3_getlex mx.resources:ResourceManagerImpl::_localeChain
//48 
_as3_returnvalue 
        }// end function

        public function set localeChain(errorHandler:Array) : void
        {
1  0 156//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 9c 01 
_as3_debugline line number: 156
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 6e 00 9c 01 
_as3_debug 1, 110, 0, 156
//f0 9e 01 
_as3_debugline line number: 158
//5e c8 01 
_as3_findproperty mx.resources:ResourceManagerImpl::_localeChain
//d1 
_as3_getlocal <1> 
//68 c8 01 
_as3_initproperty mx.resources:ResourceManagerImpl::_localeChain
//f0 a0 01 
_as3_debugline line number: 160
//5d c9 01 
_as3_findpropstrict update
//4f c9 01 00 
_as3_callpropvoid update(param count:0)
//f0 a1 01 
_as3_debugline line number: 161
//47 
_as3_returnvoid 
        }// end function

        public function getStringArray(findBundle:String, findBundle:String, findBundle:String = null) : Array
        {
1  0 6191  1 6191  2 6191  3 6231  4 6281  5 6301  6 6321  7 633//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 eb 04 
_as3_debugline line number: 619
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 eb 04 
_as3_debug 1, 356, 0, 619
//ef 01 ce 08 01 eb 04 
_as3_debug 1, 1102, 1, 619
//ef 01 e3 02 02 eb 04 
_as3_debug 1, 355, 2, 619
//ef 01 c0 08 03 ef 04 
_as3_debug 1, 1088, 3, 623
//ef 01 6e 04 f4 04 
_as3_debug 1, 110, 4, 628
//ef 01 bf 06 05 f6 04 
_as3_debug 1, 831, 5, 630
//ef 01 e2 04 06 f8 04 
_as3_debug 1, 610, 6, 632
//ef 01 e3 04 07 f9 04 
_as3_debug 1, 611, 7, 633
//f0 f0 04 
_as3_debugline line number: 624
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 f1 04 
_as3_debugline line number: 625
//62 04 
_as3_getlocal <4>
//11 05 00 00 
_as3_iftrue offset: 5
//f0 f2 04 
_as3_debugline line number: 626
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//f0 f4 04 
_as3_debugline line number: 628
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
//f0 f6 04 
_as3_debugline line number: 630
//5d 05 
_as3_findpropstrict String
//62 05 
_as3_getlocal <5>
//46 05 01 
_as3_callproperty String(param count:1)
//2c c0 06 
_as3_pushstring ","
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//63 06 
_as3_setlocal <6>
//f0 f8 04 
_as3_debugline line number: 632
//62 06 
_as3_getlocal <6>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 07 
_as3_setlocal <7>
//f0 f9 04 
_as3_debugline line number: 633
//24 00 
_as3_pushbyte 0
//63 08 
_as3_setlocal <8>
//10 1e 00 00 
_as3_jump offset: 30
//09 
_as3_label 
//f0 fb 04 
_as3_debugline line number: 635
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
//f0 f9 04 
_as3_debugline line number: 633
//c2 08 
_as3_inclocal_i <8>
//62 08 
_as3_getlocal <8>
//62 07 
_as3_getlocal <7>
//15 da ff ff 
_as3_iflt offset: -38
//f0 fe 04 
_as3_debugline line number: 638
//62 06 
_as3_getlocal <6>
//48 
_as3_returnvalue 
        }// end function

        function installCompiledResourceBundle(errorHandler:ApplicationDomain, errorHandler:String, errorHandler:String) : void
        {
1  0 2431  1 2431  2 2431  3 2471  4 2481  5 2491  6 2641  7 2731  8 310//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 f3 01 
_as3_debugline line number: 243
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 69 00 f3 01 
_as3_debug 1, 105, 0, 243
//ef 01 e3 02 01 f3 01 
_as3_debug 1, 355, 1, 243
//ef 01 e4 02 02 f3 01 
_as3_debug 1, 356, 2, 243
//ef 01 bd 08 03 f7 01 
_as3_debug 1, 1085, 3, 247
//ef 01 be 08 04 f8 01 
_as3_debug 1, 1086, 4, 248
//ef 01 bf 08 05 f9 01 
_as3_debug 1, 1087, 5, 249
//ef 01 bd 01 06 88 02 
_as3_debug 1, 189, 6, 264
//ef 01 b5 06 07 91 02 
_as3_debug 1, 821, 7, 273
//ef 01 c0 08 08 b6 02 
_as3_debug 1, 1088, 8, 310
//f0 f7 01 
_as3_debugline line number: 247
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//f0 f8 01 
_as3_debugline line number: 248
//d3 
_as3_getlocal <3> 
//85 
_as3_coerce_s 
//63 05 
_as3_setlocal <5>
//f0 f9 01 
_as3_debugline line number: 249
//d3 
_as3_getlocal <3> 
//2c c1 08 
_as3_pushstring ":"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//73 
_as3_convert_i 
//63 06 
_as3_setlocal <6>
//f0 fa 01 
_as3_debugline line number: 250
//62 06 
_as3_getlocal <6>
//24 ff 
_as3_pushbyte -1
//13 1f 00 00 
_as3_ifeq offset: 31
//f0 fc 01 
_as3_debugline line number: 252
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
//f0 fd 01 
_as3_debugline line number: 253
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
//f0 82 02 
_as3_debugline line number: 258
//5d c0 01 
_as3_findpropstrict getResourceBundle
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c0 01 02 
_as3_callproperty getResourceBundle(param count:2)
//12 04 00 00 
_as3_iffalse offset: 4
//f0 83 02 
_as3_debugline line number: 259
//47 
_as3_returnvoid 
//f0 89 02 
_as3_debugline line number: 265
//d2 
_as3_getlocal <2> 
//2c 41 
_as3_pushstring "$"
//a0 
_as3_add 
//62 05 
_as3_getlocal <5>
//a0 
_as3_add 
//2c 44 
_as3_pushstring "_properties"
//a0 
_as3_add 
//63 07 
_as3_setlocal <7>
//f0 8a 02 
_as3_debugline line number: 266
//62 04 
_as3_getlocal <4>
//20 
_as3_pushnull 
//13 0f 00 00 
_as3_ifeq offset: 15
//f0 8b 02 
_as3_debugline line number: 267
//62 04 
_as3_getlocal <4>
//2c 84 05 
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
//f0 91 02 
_as3_debugline line number: 273
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//63 08 
_as3_setlocal <8>
//f0 92 02 
_as3_debugline line number: 274
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 16 00 00 
_as3_iffalse offset: 22
//f0 94 02 
_as3_debugline line number: 276
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//f0 95 02 
_as3_debugline line number: 277
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
//f0 98 02 
_as3_debugline line number: 280
//62 08 
_as3_getlocal <8>
//11 2b 00 00 
_as3_iftrue offset: 43
//f0 9a 02 
_as3_debugline line number: 282
//d3 
_as3_getlocal <3> 
//85 
_as3_coerce_s 
//63 07 
_as3_setlocal <7>
//f0 9b 02 
_as3_debugline line number: 283
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 16 00 00 
_as3_iffalse offset: 22
//f0 9d 02 
_as3_debugline line number: 285
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//f0 9e 02 
_as3_debugline line number: 286
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
//f0 a4 02 
_as3_debugline line number: 292
//62 08 
_as3_getlocal <8>
//11 2d 00 00 
_as3_iftrue offset: 45
//f0 a6 02 
_as3_debugline line number: 294
//d3 
_as3_getlocal <3> 
//2c 44 
_as3_pushstring "_properties"
//a0 
_as3_add 
//63 07 
_as3_setlocal <7>
//f0 a7 02 
_as3_debugline line number: 295
//d1 
_as3_getlocal <1> 
//62 07 
_as3_getlocal <7>
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 16 00 00 
_as3_iffalse offset: 22
//f0 a9 02 
_as3_debugline line number: 297
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//f0 aa 02 
_as3_debugline line number: 298
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
//f0 ae 02 
_as3_debugline line number: 302
//62 08 
_as3_getlocal <8>
//11 20 00 00 
_as3_iftrue offset: 32
//f0 b0 02 
_as3_debugline line number: 304
//5d 83 03 
_as3_findpropstrict Error
//2c c3 08 
_as3_pushstring "Could not find compiled resource bundle '"
//f0 b1 02 
_as3_debugline line number: 305
//d3 
_as3_getlocal <3> 
//a0 
_as3_add 
//2c cb 01 
_as3_pushstring "' for locale '"
//f0 b2 02 
_as3_debugline line number: 306
//a0 
_as3_add 
//d2 
_as3_getlocal <2> 
//a0 
_as3_add 
//2c cd 01 
_as3_pushstring "'."
//a0 
_as3_add 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//f0 b7 02 
_as3_debugline line number: 311
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
//63 09 
_as3_setlocal <9>
//f0 bc 02 
_as3_debugline line number: 316
//62 09 
_as3_getlocal <9>
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//d2 
_as3_getlocal <2> 
//61 9d 03 
_as3_setproperty _locale
//f0 bd 02 
_as3_debugline line number: 317
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
//f0 c0 02 
_as3_debugline line number: 320
//5d c2 01 
_as3_findpropstrict addResourceBundle
//62 09 
_as3_getlocal <9>
//4f c2 01 01 
_as3_callpropvoid addResourceBundle(param count:1)
//f0 c1 02 
_as3_debugline line number: 321
//47 
_as3_returnvoid 
        }// end function

        public function getString(_localeChain:String, _localeChain:String, _localeChain:Array = null, _localeChain:String = null) : String
        {
1  0 5971  1 5971  2 5971  3 5971  4 6011  5 606//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 d5 04 
_as3_debugline line number: 597
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 d5 04 
_as3_debug 1, 356, 0, 597
//ef 01 ce 08 01 d5 04 
_as3_debug 1, 1102, 1, 597
//ef 01 d0 08 02 d5 04 
_as3_debug 1, 1104, 2, 597
//ef 01 e3 02 03 d5 04 
_as3_debug 1, 355, 3, 597
//ef 01 c0 08 04 d9 04 
_as3_debug 1, 1088, 4, 601
//ef 01 6e 05 de 04 
_as3_debug 1, 110, 5, 606
//f0 da 04 
_as3_debugline line number: 602
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//62 04 
_as3_getlocal <4>
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 05 
_as3_setlocal <5>
//f0 db 04 
_as3_debugline line number: 603
//62 05 
_as3_getlocal <5>
//11 05 00 00 
_as3_iftrue offset: 5
//f0 dc 04 
_as3_debugline line number: 604
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//f0 de 04 
_as3_debugline line number: 606
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
//f0 e0 04 
_as3_debugline line number: 608
//d3 
_as3_getlocal <3> 
//12 10 00 00 
_as3_iffalse offset: 16
//f0 e1 04 
_as3_debugline line number: 609
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
//f0 e3 04 
_as3_debugline line number: 611
//62 06 
_as3_getlocal <6>
//48 
_as3_returnvalue 
        }// end function

        public function loadResourceModule(resourceModules:String, resourceModules:Boolean = true, resourceModules:ApplicationDomain = null, resourceModules:SecurityDomain = null) : IEventDispatcher
        {
1  4 3351  0 3351  1 3351  2 3351  3 335//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 cf 02 
_as3_debugline line number: 335
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
//ef 01 c8 08 04 cf 02 
_as3_debug 1, 1096, 4, 335
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
_as3_coerce ResourceManagerImpl.as$91::ResourceEventDispatcher
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
//ef 01 60 00 cf 02 
_as3_debug 1, 96, 0, 335
//ef 01 c4 08 01 cf 02 
_as3_debug 1, 1092, 1, 335
//ef 01 69 02 cf 02 
_as3_debug 1, 105, 2, 335
//ef 01 6c 03 cf 02 
_as3_debug 1, 108, 3, 335
//f0 d4 02 
_as3_debugline line number: 340
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
//f0 d7 02 
_as3_debugline line number: 343
//65 01 
_as3_getscopeobject 1
//f0 d8 02 
_as3_debugline line number: 344
//5d b1 01 
_as3_findpropstrict ResourceManagerImpl.as$91::ResourceEventDispatcher
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//4a b1 01 01 
_as3_constructprop ResourceManagerImpl.as$91::ResourceEventDispatcher(param count:1)
//80 b1 01 
_as3_coerce ResourceManagerImpl.as$91::ResourceEventDispatcher
//6d 06 
_as3_setslot <6>
//f0 dd 02 
_as3_debugline line number: 349
//65 01 
_as3_getscopeobject 1
//40 c2 01 
_as3_newfunction 
                function (errorHandler:ModuleEvent) : void
                {
1  0 3491  1 353//ef 01 fb 04 00 dd 02 
_as3_debug 1, 635, 0, 349
//ef 01 b6 03 01 e1 02 
_as3_debug 1, 438, 1, 353
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 e2 02 
_as3_debugline line number: 354
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
//f0 e6 02 
_as3_debugline line number: 358
//60 b9 01 
_as3_getlex mx.resources:ResourceManagerImpl::resourceModules
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
//f0 e8 02 
_as3_debugline line number: 360
//60 c8 03 
_as3_getlex mx.resources::updateFlag
//12 0a 00 00 
_as3_iffalse offset: 10
//f0 e9 02 
_as3_debugline line number: 361
//5d c9 01 
_as3_findpropstrict update
//4f c9 01 00 
_as3_callpropvoid update(param count:0)
//f0 ea 02 
_as3_debugline line number: 362
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 07 
_as3_setslot <7>
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 eb 02 
_as3_debugline line number: 363
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//f0 eb 02 
_as3_debugline line number: 363
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//f0 ec 02 
_as3_debugline line number: 364
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//f0 f1 02 
_as3_debugline line number: 369
//65 01 
_as3_getscopeobject 1
//40 c3 01 
_as3_newfunction 
                function (errorHandler:ModuleEvent) : void
                {
1  0 3691  1 3711  2 375//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 f1 02 
_as3_debugline line number: 369
//20 
_as3_pushnull 
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d7 
_as3_setlocal <3> 
//ef 01 fb 04 00 f1 02 
_as3_debug 1, 635, 0, 369
//ef 01 c1 05 01 f3 02 
_as3_debug 1, 705, 1, 371
//2c c5 08 
_as3_pushstring "Unable to load resource module from "
//f0 f3 02 
_as3_debugline line number: 371
//60 c9 03 
_as3_getlex mx.resources::url
//a0 
_as3_add 
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 f5 02 
_as3_debugline line number: 373
//60 ca 03 
_as3_getlex mx.resources::resourceEventDispatcher
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 ae 02 
_as3_getproperty ERROR
//46 cb 03 01 
_as3_callproperty willTrigger(param count:1)
//12 4f 00 00 
_as3_iffalse offset: 79
//ef 01 b8 08 02 f7 02 
_as3_debug 1, 1080, 2, 375
//f0 f7 02 
_as3_debugline line number: 375
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//f0 f8 02 
_as3_debugline line number: 376
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
//f0 f9 02 
_as3_debugline line number: 377
//d3 
_as3_getlocal <3> 
//24 00 
_as3_pushbyte 0
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 fa 02 
_as3_debugline line number: 378
//d3 
_as3_getlocal <3> 
//24 00 
_as3_pushbyte 0
//61 95 02 
_as3_setproperty bytesTotal
//f0 fb 02 
_as3_debugline line number: 379
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//61 a2 01 
_as3_setproperty errorText
//f0 fc 02 
_as3_debugline line number: 380
//60 ca 03 
_as3_getlex mx.resources::resourceEventDispatcher
//d3 
_as3_getlocal <3> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//10 0c 00 00 
_as3_jump offset: 12
//f0 80 03 
_as3_debugline line number: 384
//5d 83 03 
_as3_findpropstrict Error
//d2 
_as3_getlocal <2> 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//f0 82 03 
_as3_debugline line number: 386
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 08 
_as3_setslot <8>
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 83 03 
_as3_debugline line number: 387
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//f0 83 03 
_as3_debugline line number: 387
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//f0 84 03 
_as3_debugline line number: 388
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//f0 86 03 
_as3_debugline line number: 390
//60 b9 01 
_as3_getlex mx.resources:ResourceManagerImpl::resourceModules
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//f0 87 03 
_as3_debugline line number: 391
//5d ab 01 
_as3_findpropstrict ResourceManagerImpl.as$91::ResourceModuleInfo
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
_as3_constructprop ResourceManagerImpl.as$91::ResourceModuleInfo(param count:3)
//61 c4 03 
_as3_setproperty {}
//f0 8e 03 
_as3_debugline line number: 398
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
//f0 8f 03 
_as3_debugline line number: 399
//65 01 
_as3_getscopeobject 1
//40 c4 01 
_as3_newfunction 
                function (errorHandler:TimerEvent) : void
                {
1  0 399//ef 01 fb 04 00 8f 03 
_as3_debug 1, 635, 0, 399
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 91 03 
_as3_debugline line number: 401
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
//f0 92 03 
_as3_debugline line number: 402
//60 cc 03 
_as3_getlex mx.resources::timer
//4f ec 02 00 
_as3_callpropvoid stop(param count:0)
//f0 97 03 
_as3_debugline line number: 407
//60 ce 03 
_as3_getlex mx.resources::moduleInfo
//60 cf 03 
_as3_getlex mx.resources::applicationDomain
//60 d0 03 
_as3_getlex mx.resources::securityDomain
//4f da 01 02 
_as3_callpropvoid mx.modules:IModuleInfo::load(param count:2)
//f0 98 03 
_as3_debugline line number: 408
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 0a 
_as3_setslot <10>
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 99 03 
_as3_debugline line number: 409
//65 01 
_as3_getscopeobject 1
//6c 09 
_as3_getslot <9>
//f0 99 03 
_as3_debugline line number: 409
//60 07 
_as3_getlex flash.events::TimerEvent
//66 f0 02 
_as3_getproperty TIMER
//65 01 
_as3_getscopeobject 1
//6c 0a 
_as3_getslot <10>
//f0 9a 03 
_as3_debugline line number: 410
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f ed 02 05 
_as3_callpropvoid addEventListener(param count:5)
//f0 9b 03 
_as3_debugline line number: 411
//65 01 
_as3_getscopeobject 1
//6c 09 
_as3_getslot <9>
//4f f1 02 00 
_as3_callpropvoid start(param count:0)
//f0 9d 03 
_as3_debugline line number: 413
//65 01 
_as3_getscopeobject 1
//6c 06 
_as3_getslot <6>
//48 
_as3_returnvalue 
        }// end function

        public function getLocales() : Array
        {
1  0 5171  1 518//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 83 04 
_as3_debugline line number: 515
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
//ef 01 b9 08 00 85 04 
_as3_debug 1, 1081, 0, 517
//ef 01 cd 08 01 86 04 
_as3_debug 1, 1101, 1, 518
//f0 85 04 
_as3_debugline line number: 517
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//f0 86 04 
_as3_debugline line number: 518
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 10 00 00 
_as3_jump offset: 16
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
//f0 88 04 
_as3_debugline line number: 520
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 86 04 
_as3_debugline line number: 518
//32 04 03 
_as3_hasnext2 4, 3
//11 e6 ff ff 
_as3_iftrue offset: -26
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//f0 8a 04 
_as3_debugline line number: 522
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function removeResourceBundlesForLocale(errorHandler:String) : void
        {
1  0 499//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 f3 03 
_as3_debugline line number: 499
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e3 02 00 f3 03 
_as3_debug 1, 355, 0, 499
//f0 f5 03 
_as3_debugline line number: 501
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//d1 
_as3_getlocal <1> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//f0 f6 03 
_as3_debugline line number: 502
//47 
_as3_returnvoid 
        }// end function

        public function getResourceBundle(localeMap:String, localeMap:String) : IResourceBundle
        {
1  0 4721  1 4721  2 475//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 d8 03 
_as3_debugline line number: 472
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e3 02 00 d8 03 
_as3_debug 1, 355, 0, 472
//ef 01 e4 02 01 d8 03 
_as3_debug 1, 356, 1, 472
//ef 01 cb 08 02 db 03 
_as3_debug 1, 1099, 2, 475
//f0 db 03 
_as3_debugline line number: 475
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//d7 
_as3_setlocal <3> 
//f0 dc 03 
_as3_debugline line number: 476
//d3 
_as3_getlocal <3> 
//11 05 00 00 
_as3_iftrue offset: 5
//f0 dd 03 
_as3_debugline line number: 477
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//f0 df 03 
_as3_debugline line number: 479
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        private function dumpResourceModule(errorHandler) : void
        {
1  0 7941  1 7961  2 799//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 9a 06 
_as3_debugline line number: 794
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
//ef 01 b6 03 00 9a 06 
_as3_debug 1, 438, 0, 794
//ef 01 b6 06 01 9c 06 
_as3_debug 1, 822, 1, 796
//f0 9c 06 
_as3_debugline line number: 796
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
//10 44 00 00 
_as3_jump offset: 68
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
//ef 01 cd 08 02 9f 06 
_as3_debug 1, 1101, 2, 799
//f0 9e 06 
_as3_debugline line number: 798
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
//f0 9f 06 
_as3_debugline line number: 799
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
//f0 9c 06 
_as3_debugline line number: 796
//32 05 04 
_as3_hasnext2 5, 4
//11 b2 ff ff 
_as3_iftrue offset: -78
//08 05 
_as3_kill <5>
//08 04 
_as3_kill <4>
//f0 a4 06 
_as3_debugline line number: 804
//47 
_as3_returnvoid 
        }// end function

        public function addResourceBundle(errorHandler:IResourceBundle) : void
        {
1  0 4581  1 4601  2 461//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 ca 03 
_as3_debugline line number: 458
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 c0 08 00 ca 03 
_as3_debug 1, 1088, 0, 458
//ef 01 e3 02 01 cc 03 
_as3_debug 1, 355, 1, 460
//ef 01 e4 02 02 cd 03 
_as3_debug 1, 356, 2, 461
//f0 cc 03 
_as3_debugline line number: 460
//d1 
_as3_getlocal <1> 
//66 49 
_as3_getproperty mx.resources:IResourceBundle::locale
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 cd 03 
_as3_debugline line number: 461
//d1 
_as3_getlocal <1> 
//66 4a 
_as3_getproperty mx.resources:IResourceBundle::bundleName
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 cf 03 
_as3_debugline line number: 463
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//d2 
_as3_getlocal <2> 
//66 c4 03 
_as3_getproperty {}
//11 0c 00 00 
_as3_iftrue offset: 12
//f0 d0 03 
_as3_debugline line number: 464
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//d2 
_as3_getlocal <2> 
//55 00 
_as3_newobject {object count:0}
//61 c4 03 
_as3_setproperty {}
//f0 d2 03 
_as3_debugline line number: 466
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
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
//f0 d3 03 
_as3_debugline line number: 467
//47 
_as3_returnvoid 
        }// end function

        public function getObject(:String, :String, :String = null)
        {
1  0 5811  1 5811  2 5811  3 584//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 c5 04 
_as3_debugline line number: 581
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 c5 04 
_as3_debug 1, 356, 0, 581
//ef 01 ce 08 01 c5 04 
_as3_debug 1, 1102, 1, 581
//ef 01 e3 02 02 c5 04 
_as3_debug 1, 355, 2, 581
//ef 01 c0 08 03 c8 04 
_as3_debug 1, 1088, 3, 584
//f0 c9 04 
_as3_debugline line number: 585
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 ca 04 
_as3_debugline line number: 586
//62 04 
_as3_getlocal <4>
//11 07 00 00 
_as3_iftrue offset: 7
//f0 cb 04 
_as3_debugline line number: 587
//60 d6 03 
_as3_getlex undefined
//48 
_as3_returnvalue 
//f0 cd 04 
_as3_debugline line number: 589
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

        public function getInt(findResourceBundleWithResource:String, findResourceBundleWithResource:String, findResourceBundleWithResource:String = null) : int
        {
1  0 6641  1 6641  2 6641  3 6671  4 672//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 98 05 
_as3_debugline line number: 664
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 98 05 
_as3_debug 1, 356, 0, 664
//ef 01 ce 08 01 98 05 
_as3_debug 1, 1102, 1, 664
//ef 01 e3 02 02 98 05 
_as3_debug 1, 355, 2, 664
//ef 01 c0 08 03 9b 05 
_as3_debug 1, 1088, 3, 667
//ef 01 6e 04 a0 05 
_as3_debug 1, 110, 4, 672
//f0 9c 05 
_as3_debugline line number: 668
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 9d 05 
_as3_debugline line number: 669
//62 04 
_as3_getlocal <4>
//11 06 00 00 
_as3_iftrue offset: 6
//f0 9e 05 
_as3_debugline line number: 670
//24 00 
_as3_pushbyte 0
//48 
_as3_returnvalue 
//f0 a0 05 
_as3_debugline line number: 672
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
//f0 a2 05 
_as3_debugline line number: 674
//5d 11 
_as3_findpropstrict int
//62 05 
_as3_getlocal <5>
//46 11 01 
_as3_callproperty int(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private function findBundle(localeMap:String, localeMap:String, localeMap:String) : IResourceBundle
        {
1  0 7341  1 7341  2 734//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 de 05 
_as3_debugline line number: 734
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 de 05 
_as3_debug 1, 356, 0, 734
//ef 01 ce 08 01 de 05 
_as3_debug 1, 1102, 1, 734
//ef 01 e3 02 02 de 05 
_as3_debug 1, 355, 2, 734
//f0 e1 05 
_as3_debugline line number: 737
//5d c5 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::supportNonFrameworkApps
//4f c5 01 00 
_as3_callpropvoid mx.resources:ResourceManagerImpl::supportNonFrameworkApps(param count:0)
//f0 e3 05 
_as3_debugline line number: 739
//d3 
_as3_getlocal <3> 
//20 
_as3_pushnull 
//13 12 00 00 
_as3_ifeq offset: 18
//f0 e4 05 
_as3_debugline line number: 740
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
//10 0e 00 00 
_as3_jump offset: 14
//f0 e5 05 
_as3_debugline line number: 741
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
1  0 7571  1 7621  2 7651  3 766//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 ec 05 
_as3_debugline line number: 748
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 69 00 f5 05 
_as3_debug 1, 105, 0, 757
//ef 01 9f 05 01 fa 05 
_as3_debug 1, 671, 1, 762
//ef 01 b9 08 02 fd 05 
_as3_debug 1, 1081, 2, 765
//ef 01 ba 08 03 fe 05 
_as3_debug 1, 1082, 3, 766
//f0 ee 05 
_as3_debugline line number: 750
//60 ba 01 
_as3_getlex mx.resources:ResourceManagerImpl::initializedForNonFrameworkApp
//12 04 00 00 
_as3_iffalse offset: 4
//f0 ef 05 
_as3_debugline line number: 751
//47 
_as3_returnvoid 
//f0 f0 05 
_as3_debugline line number: 752
//5e ba 01 
_as3_findproperty mx.resources:ResourceManagerImpl::initializedForNonFrameworkApp
//26 
_as3_pushtrue 
//68 ba 01 
_as3_initproperty mx.resources:ResourceManagerImpl::initializedForNonFrameworkApp
//f0 f2 05 
_as3_debugline line number: 754
//5d be 01 
_as3_findpropstrict getLocales
//46 be 01 00 
_as3_callproperty getLocales(param count:0)
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 04 00 00 
_as3_ifngt offset: 4
//f0 f3 05 
_as3_debugline line number: 755
//47 
_as3_returnvoid 
//f0 f6 05 
_as3_debugline line number: 758
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//80 09 
_as3_coerce flash.system::ApplicationDomain
//d5 
_as3_setlocal <1> 
//f0 f8 05 
_as3_debugline line number: 760
//d1 
_as3_getlocal <1> 
//2c d2 08 
_as3_pushstring "_CompiledResourceBundleInfo"
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//11 04 00 00 
_as3_iftrue offset: 4
//f0 f9 05 
_as3_debugline line number: 761
//47 
_as3_returnvoid 
//f0 fa 05 
_as3_debugline line number: 762
//5d 0a 
_as3_findpropstrict Class
//d1 
_as3_getlocal <1> 
//2c d2 08 
_as3_pushstring "_CompiledResourceBundleInfo"
//f0 fb 05 
_as3_debugline line number: 763
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//d6 
_as3_setlocal <2> 
//f0 fd 05 
_as3_debugline line number: 765
//d2 
_as3_getlocal <2> 
//66 d9 03 
_as3_getproperty compiledLocales
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//f0 fe 05 
_as3_debugline line number: 766
//d2 
_as3_getlocal <2> 
//66 da 03 
_as3_getproperty compiledResourceBundleNames
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//f0 80 06 
_as3_debugline line number: 768
//5d d0 01 
_as3_findpropstrict installCompiledResourceBundles
//f0 81 06 
_as3_debugline line number: 769
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//62 04 
_as3_getlocal <4>
//4f d0 01 03 
_as3_callpropvoid installCompiledResourceBundles(param count:3)
//f0 83 06 
_as3_debugline line number: 771
//5e b8 01 
_as3_findproperty localeChain
//d3 
_as3_getlocal <3> 
//68 b8 01 
_as3_initproperty localeChain
//f0 84 06 
_as3_debugline line number: 772
//47 
_as3_returnvoid 
        }// end function

        public function getBundleNamesForLocale(findBundle:String) : Array
        {
1  0 5371  1 5391  2 540//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 99 04 
_as3_debugline line number: 537
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
//ef 01 e3 02 00 99 04 
_as3_debug 1, 355, 0, 537
//ef 01 ba 08 01 9b 04 
_as3_debug 1, 1082, 1, 539
//ef 01 cd 08 02 9c 04 
_as3_debug 1, 1101, 2, 540
//f0 9b 04 
_as3_debugline line number: 539
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//f0 9c 04 
_as3_debugline line number: 540
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//82 
_as3_coerce_a 
//63 05 
_as3_setlocal <5>
//10 11 00 00 
_as3_jump offset: 17
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
//f0 9e 04 
_as3_debugline line number: 542
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 9c 04 
_as3_debugline line number: 540
//32 05 04 
_as3_hasnext2 5, 4
//11 e5 ff ff 
_as3_iftrue offset: -27
//08 05 
_as3_kill <5>
//08 04 
_as3_kill <4>
//f0 a0 04 
_as3_debugline line number: 544
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function getPreferredLocaleChain() : Array
        {
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 90 04 
_as3_debugline line number: 528
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 92 04 
_as3_debugline line number: 530
//60 e3 01 
_as3_getlex mx.resources::LocaleSorter
//f0 93 04 
_as3_debugline line number: 531
//5d be 01 
_as3_findpropstrict getLocales
//46 be 01 00 
_as3_callproperty getLocales(param count:0)
//5d cf 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::getSystemPreferredLocales
//46 cf 01 00 
_as3_callproperty mx.resources:ResourceManagerImpl::getSystemPreferredLocales(param count:0)
//20 
_as3_pushnull 
//26 
_as3_pushtrue 
//46 d0 02 04 
_as3_callproperty sortLocalesByPreference(param count:4)
//48 
_as3_returnvalue 
        }// end function

        public function getNumber(removeResourceBundle:String, removeResourceBundle:String, removeResourceBundle:String = null) : Number
        {
1  0 6461  1 6461  2 6461  3 6491  4 654//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 86 05 
_as3_debugline line number: 646
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 86 05 
_as3_debug 1, 356, 0, 646
//ef 01 ce 08 01 86 05 
_as3_debug 1, 1102, 1, 646
//ef 01 e3 02 02 86 05 
_as3_debug 1, 355, 2, 646
//ef 01 c0 08 03 89 05 
_as3_debug 1, 1088, 3, 649
//ef 01 6e 04 8e 05 
_as3_debug 1, 110, 4, 654
//f0 8a 05 
_as3_debugline line number: 650
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 8b 05 
_as3_debugline line number: 651
//62 04 
_as3_getlocal <4>
//11 07 00 00 
_as3_iftrue offset: 7
//f0 8c 05 
_as3_debugline line number: 652
//60 d7 03 
_as3_getlex NaN
//48 
_as3_returnvalue 
//f0 8e 05 
_as3_debugline line number: 654
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
//f0 90 05 
_as3_debugline line number: 656
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
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 fb 03 
_as3_debugline line number: 507
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 fd 03 
_as3_debugline line number: 509
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
//f0 fe 03 
_as3_debugline line number: 510
//47 
_as3_returnvoid 
        }// end function

        public function getClass(IResourceModule:String, IResourceModule:String, IResourceModule:String = null) : Class
        {
1  0 7181  1 7181  2 7181  3 7211  4 726//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 ce 05 
_as3_debugline line number: 718
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 ce 05 
_as3_debug 1, 356, 0, 718
//ef 01 ce 08 01 ce 05 
_as3_debug 1, 1102, 1, 718
//ef 01 e3 02 02 ce 05 
_as3_debug 1, 355, 2, 718
//ef 01 c0 08 03 d1 05 
_as3_debug 1, 1088, 3, 721
//ef 01 6e 04 d6 05 
_as3_debug 1, 110, 4, 726
//f0 d2 05 
_as3_debugline line number: 722
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 d3 05 
_as3_debugline line number: 723
//62 04 
_as3_getlocal <4>
//11 05 00 00 
_as3_iftrue offset: 5
//f0 d4 05 
_as3_debugline line number: 724
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//f0 d6 05 
_as3_debugline line number: 726
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
//f0 d8 05 
_as3_debugline line number: 728
//62 05 
_as3_getlocal <5>
//60 0a 
_as3_getlex Class
//87 
_as3_astypelate 
//48 
_as3_returnvalue 
        }// end function

        public function removeResourceBundle(errorHandler:String, errorHandler:String) : void
        {
1  0 4851  1 485//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 e5 03 
_as3_debugline line number: 485
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e3 02 00 e5 03 
_as3_debug 1, 355, 0, 485
//ef 01 e4 02 01 e5 03 
_as3_debug 1, 356, 1, 485
//f0 e8 03 
_as3_debugline line number: 488
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
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
//f0 ec 03 
_as3_debugline line number: 492
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
//14 0b 00 00 
_as3_ifne offset: 11
//f0 ed 03 
_as3_debugline line number: 493
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//d1 
_as3_getlocal <1> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//f0 ee 03 
_as3_debugline line number: 494
//47 
_as3_returnvoid 
        }// end function

        public function initializeLocaleChain(errorHandler:Array) : void
        {
1  0 326//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 c6 02 
_as3_debugline line number: 326
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b4 05 00 c6 02 
_as3_debug 1, 692, 0, 326
//f0 c8 02 
_as3_debugline line number: 328
//5e b8 01 
_as3_findproperty localeChain
//60 e3 01 
_as3_getlex mx.resources::LocaleSorter
//f0 c9 02 
_as3_debugline line number: 329
//d1 
_as3_getlocal <1> 
//5d cf 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::getSystemPreferredLocales
//46 cf 01 00 
_as3_callproperty mx.resources:ResourceManagerImpl::getSystemPreferredLocales(param count:0)
//20 
_as3_pushnull 
//26 
_as3_pushtrue 
//46 d0 02 04 
_as3_callproperty sortLocalesByPreference(param count:4)
//68 b8 01 
_as3_initproperty localeChain
//f0 ca 02 
_as3_debugline line number: 330
//47 
_as3_returnvoid 
        }// end function

        public function findResourceBundleWithResource(localeMap:String, localeMap:String) : IResourceBundle
        {
1  0 5501  1 5501  2 5561  3 5571  4 5591  5 5611  6 565//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 a6 04 
_as3_debugline line number: 550
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
//ef 01 e4 02 00 a6 04 
_as3_debug 1, 356, 0, 550
//ef 01 ce 08 01 a6 04 
_as3_debug 1, 1102, 1, 550
//ef 01 e2 04 02 ac 04 
_as3_debug 1, 610, 2, 556
//ef 01 e3 04 03 ad 04 
_as3_debug 1, 611, 3, 557
//f0 a9 04 
_as3_debugline line number: 553
//60 c8 01 
_as3_getlex mx.resources:ResourceManagerImpl::_localeChain
//11 05 00 00 
_as3_iftrue offset: 5
//f0 aa 04 
_as3_debugline line number: 554
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//f0 ac 04 
_as3_debugline line number: 556
//60 c8 01 
_as3_getlex mx.resources:ResourceManagerImpl::_localeChain
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//f0 ad 04 
_as3_debugline line number: 557
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//10 78 00 00 
_as3_jump offset: 120
//09 
_as3_label 
//ef 01 e3 02 04 af 04 
_as3_debug 1, 355, 4, 559
//ef 01 cb 08 05 b1 04 
_as3_debug 1, 1099, 5, 561
//ef 01 b6 06 06 b5 04 
_as3_debug 1, 822, 6, 565
//f0 af 04 
_as3_debugline line number: 559
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
//f0 b1 04 
_as3_debugline line number: 561
//60 bd 01 
_as3_getlex mx.resources:ResourceManagerImpl::localeMap
//62 05 
_as3_getlocal <5>
//66 c4 03 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//63 06 
_as3_setlocal <6>
//f0 b2 04 
_as3_debugline line number: 562
//62 06 
_as3_getlocal <6>
//11 07 00 00 
_as3_iftrue offset: 7
//f0 b3 04 
_as3_debugline line number: 563
//10 30 00 00 
_as3_jump offset: 48
//f0 b5 04 
_as3_debugline line number: 565
//62 06 
_as3_getlocal <6>
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//80 08 
_as3_coerce mx.resources::ResourceBundle
//63 07 
_as3_setlocal <7>
//f0 b6 04 
_as3_debugline line number: 566
//62 07 
_as3_getlocal <7>
//11 07 00 00 
_as3_iftrue offset: 7
//f0 b7 04 
_as3_debugline line number: 567
//10 13 00 00 
_as3_jump offset: 19
//f0 b9 04 
_as3_debugline line number: 569
//d2 
_as3_getlocal <2> 
//62 07 
_as3_getlocal <7>
//66 50 
_as3_getproperty content
//b4 
_as3_in 
//12 06 00 00 
_as3_iffalse offset: 6
//f0 ba 04 
_as3_debugline line number: 570
//62 07 
_as3_getlocal <7>
//48 
_as3_returnvalue 
//f0 ad 04 
_as3_debugline line number: 557
//c2 04 
_as3_inclocal_i <4>
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//15 81 ff ff 
_as3_iflt offset: -127
//f0 bd 04 
_as3_debugline line number: 573
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
        }// end function

        public function getUint(extraFrameListener:String, extraFrameListener:String, extraFrameListener:String = null) : uint
        {
1  0 6821  1 6821  2 6821  3 6851  4 690//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 aa 05 
_as3_debugline line number: 682
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 aa 05 
_as3_debug 1, 356, 0, 682
//ef 01 ce 08 01 aa 05 
_as3_debug 1, 1102, 1, 682
//ef 01 e3 02 02 aa 05 
_as3_debug 1, 355, 2, 682
//ef 01 c0 08 03 ad 05 
_as3_debug 1, 1088, 3, 685
//ef 01 6e 04 b2 05 
_as3_debug 1, 110, 4, 690
//f0 ae 05 
_as3_debugline line number: 686
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 af 05 
_as3_debugline line number: 687
//62 04 
_as3_getlocal <4>
//11 06 00 00 
_as3_iftrue offset: 6
//f0 b0 05 
_as3_debugline line number: 688
//24 00 
_as3_pushbyte 0
//48 
_as3_returnvalue 
//f0 b2 05 
_as3_debugline line number: 690
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
//f0 b4 05 
_as3_debugline line number: 692
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
1  0 779//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 89 06 
_as3_debugline line number: 777
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
//ef 01 d3 08 00 8b 06 
_as3_debug 1, 1107, 0, 779
//f0 8f 06 
_as3_debugline line number: 783
//60 db 03 
_as3_getlex flash.system::Capabilities
//2c d5 08 
_as3_pushstring "languages"
//66 c4 03 
_as3_getproperty {}
//12 13 00 00 
_as3_iffalse offset: 19
//f0 90 06 
_as3_debugline line number: 784
//60 db 03 
_as3_getlex flash.system::Capabilities
//2c d5 08 
_as3_pushstring "languages"
//66 c4 03 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//10 0e 00 00 
_as3_jump offset: 14
//f0 92 06 
_as3_debugline line number: 786
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
//f0 94 06 
_as3_debugline line number: 788
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function installCompiledResourceBundles(errorHandler:ApplicationDomain, errorHandler:Array, errorHandler:Array) : void
        {
1  0 2131  1 2131  2 2131  3 2211  4 2221  5 2251  6 2271  7 2301  8 232//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 d5 01 
_as3_debugline line number: 213
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
//ef 01 69 00 d5 01 
_as3_debug 1, 105, 0, 213
//ef 01 b9 08 01 d5 01 
_as3_debug 1, 1081, 1, 213
//ef 01 ba 08 02 d5 01 
_as3_debug 1, 1082, 2, 213
//ef 01 e2 04 03 dd 01 
_as3_debug 1, 610, 3, 221
//ef 01 bb 08 04 de 01 
_as3_debug 1, 1083, 4, 222
//ef 01 e3 04 05 e1 01 
_as3_debug 1, 611, 5, 225
//f0 dd 01 
_as3_debugline line number: 221
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
//f0 de 01 
_as3_debugline line number: 222
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
//f0 e1 01 
_as3_debugline line number: 225
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//10 73 00 00 
_as3_jump offset: 115
//09 
_as3_label 
//ef 01 e3 02 06 e3 01 
_as3_debug 1, 355, 6, 227
//ef 01 bc 08 07 e6 01 
_as3_debug 1, 1084, 7, 230
//f0 e3 01 
_as3_debugline line number: 227
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
//f0 e6 01 
_as3_debugline line number: 230
//24 00 
_as3_pushbyte 0
//63 08 
_as3_setlocal <8>
//10 40 00 00 
_as3_jump offset: 64
//09 
_as3_label 
//ef 01 e4 02 08 e8 01 
_as3_debug 1, 356, 8, 232
//f0 e8 01 
_as3_debugline line number: 232
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
//f0 ea 01 
_as3_debugline line number: 234
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
//f0 eb 01 
_as3_debugline line number: 235
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
//f0 e6 01 
_as3_debugline line number: 230
//c2 08 
_as3_inclocal_i <8>
//62 08 
_as3_getlocal <8>
//62 05 
_as3_getlocal <5>
//15 b8 ff ff 
_as3_iflt offset: -72
//f0 e1 01 
_as3_debugline line number: 225
//c2 06 
_as3_inclocal_i <6>
//62 06 
_as3_getlocal <6>
//62 04 
_as3_getlocal <4>
//15 85 ff ff 
_as3_iflt offset: -123
//f0 ee 01 
_as3_debugline line number: 238
//47 
_as3_returnvoid 
        }// end function

        public function getBoolean(findResourceBundleWithResource:String, findResourceBundleWithResource:String, findResourceBundleWithResource:String = null) : Boolean
        {
1  0 7001  1 7001  2 7001  3 7031  4 708//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 bc 05 
_as3_debugline line number: 700
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e4 02 00 bc 05 
_as3_debug 1, 356, 0, 700
//ef 01 ce 08 01 bc 05 
_as3_debug 1, 1102, 1, 700
//ef 01 e3 02 02 bc 05 
_as3_debug 1, 355, 2, 700
//ef 01 c0 08 03 bf 05 
_as3_debug 1, 1088, 3, 703
//ef 01 6e 04 c4 05 
_as3_debug 1, 110, 4, 708
//f0 c0 05 
_as3_debugline line number: 704
//5d c4 01 
_as3_findpropstrict mx.resources:ResourceManagerImpl::findBundle
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//46 c4 01 03 
_as3_callproperty mx.resources:ResourceManagerImpl::findBundle(param count:3)
//80 10 
_as3_coerce mx.resources::IResourceBundle
//63 04 
_as3_setlocal <4>
//f0 c1 05 
_as3_debugline line number: 705
//62 04 
_as3_getlocal <4>
//11 05 00 00 
_as3_iftrue offset: 5
//f0 c2 05 
_as3_debugline line number: 706
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
//f0 c4 05 
_as3_debugline line number: 708
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
//f0 c6 05 
_as3_debugline line number: 710
//5d 05 
_as3_findpropstrict String
//62 05 
_as3_getlocal <5>
//46 05 01 
_as3_callproperty String(param count:1)
//46 d8 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toLowerCase(param count:0)
//2c be 06 
_as3_pushstring "true"
//ab 
_as3_equals 
//48 
_as3_returnvalue 
        }// end function

        public function unloadResourceModule(errorHandler:String, errorHandler:Boolean = true) : void
        {
1  0 4191  1 4191  2 4221  3 4291  4 4321  5 4331  6 4361  7 437//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 a3 03 
_as3_debugline line number: 419
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
//ef 01 60 00 a3 03 
_as3_debug 1, 96, 0, 419
//ef 01 66 01 a3 03 
_as3_debug 1, 102, 1, 419
//ef 01 c9 08 02 a6 03 
_as3_debug 1, 1097, 2, 422
//f0 a6 03 
_as3_debugline line number: 422
//60 b9 01 
_as3_getlex mx.resources:ResourceManagerImpl::resourceModules
//d1 
_as3_getlocal <1> 
//66 c4 03 
_as3_getproperty {}
//80 ab 01 
_as3_coerce ResourceManagerImpl.as$91::ResourceModuleInfo
//d7 
_as3_setlocal <3> 
//f0 a7 03 
_as3_debugline line number: 423
//d3 
_as3_getlocal <3> 
//11 04 00 00 
_as3_iftrue offset: 4
//f0 a8 03 
_as3_debugline line number: 424
//47 
_as3_returnvoid 
//f0 aa 03 
_as3_debugline line number: 426
//d3 
_as3_getlocal <3> 
//66 ac 01 
_as3_getproperty resourceModule
//12 8c 00 00 
_as3_iffalse offset: 140
//ef 01 ca 08 03 ad 03 
_as3_debug 1, 1098, 3, 429
//f0 ad 03 
_as3_debugline line number: 429
//d3 
_as3_getlocal <3> 
//66 ac 01 
_as3_getproperty resourceModule
//66 f2 01 
_as3_getproperty mx.resources:IResourceModule::resourceBundles
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//f0 ae 03 
_as3_debugline line number: 430
//62 04 
_as3_getlocal <4>
//12 6e 00 00 
_as3_iffalse offset: 110
//ef 01 e2 04 04 b0 03 
_as3_debug 1, 610, 4, 432
//ef 01 e3 04 05 b1 03 
_as3_debug 1, 611, 5, 433
//f0 b0 03 
_as3_debugline line number: 432
//62 04 
_as3_getlocal <4>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 05 
_as3_setlocal <5>
//f0 b1 03 
_as3_debugline line number: 433
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//10 42 00 00 
_as3_jump offset: 66
//09 
_as3_label 
//ef 01 e3 02 06 b4 03 
_as3_debug 1, 355, 6, 436
//ef 01 e4 02 07 b5 03 
_as3_debug 1, 356, 7, 437
//f0 b4 03 
_as3_debugline line number: 436
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
//f0 b5 03 
_as3_debugline line number: 437
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
//f0 b6 03 
_as3_debugline line number: 438
//5d cb 01 
_as3_findpropstrict removeResourceBundle
//62 07 
_as3_getlocal <7>
//62 08 
_as3_getlocal <8>
//4f cb 01 02 
_as3_callpropvoid removeResourceBundle(param count:2)
//f0 b1 03 
_as3_debugline line number: 433
//c2 06 
_as3_inclocal_i <6>
//62 06 
_as3_getlocal <6>
//62 05 
_as3_getlocal <5>
//15 b6 ff ff 
_as3_iflt offset: -74
//f0 bc 03 
_as3_debugline line number: 444
//60 b9 01 
_as3_getlex mx.resources:ResourceManagerImpl::resourceModules
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//61 c4 03 
_as3_setproperty {}
//f0 bd 03 
_as3_debugline line number: 445
//60 b9 01 
_as3_getlex mx.resources:ResourceManagerImpl::resourceModules
//d1 
_as3_getlocal <1> 
//6a c4 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//f0 c0 03 
_as3_debugline line number: 448
//d3 
_as3_getlocal <3> 
//66 b0 01 
_as3_getproperty moduleInfo
//4f e2 01 00 
_as3_callpropvoid mx.modules:IModuleInfo::unload(param count:0)
//f0 c3 03 
_as3_debugline line number: 451
//d2 
_as3_getlocal <2> 
//12 08 00 00 
_as3_iffalse offset: 8
//f0 c4 03 
_as3_debugline line number: 452
//d0 
_as3_getlocal <0> 
//4f c9 01 00 
_as3_callpropvoid update(param count:0)
//f0 c5 03 
_as3_debugline line number: 453
//47 
_as3_returnvoid 
        }// end function

        public static function getInstance() : IResourceManager
        {
//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 4e 
_as3_debugline line number: 78
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 50 
_as3_debugline line number: 80
//60 c6 02 
_as3_getlex mx.resources:ResourceManagerImpl::instance
//11 0b 00 00 
_as3_iftrue offset: 11
//f0 51 
_as3_debugline line number: 81
//5e c6 02 
_as3_findproperty mx.resources:ResourceManagerImpl::instance
//d0 
_as3_getlocal <0> 
//42 00 
_as3_construct (param count:0)
//61 c6 02 
_as3_setproperty mx.resources:ResourceManagerImpl::instance
//f0 53 
_as3_debugline line number: 83
//60 c6 02 
_as3_getlex mx.resources:ResourceManagerImpl::instance
//48 
_as3_returnvalue 
        }// end function

    }
}
