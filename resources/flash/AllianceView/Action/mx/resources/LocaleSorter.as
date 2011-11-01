package mx.resources
{
    import ModuleManager.as$26.*;

    public class LocaleSorter extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function LocaleSorter()
        {
//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 a4 01 
_as3_debugline line number: 164
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 8c 08 
_as3_debugline line number: 1036
//47 
_as3_returnvoid 
        }// end function

        private static function normalizeLocale(ModuleManagerImpl:String) : String
        {
1  0 154//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 9a 01 
_as3_debugline line number: 154
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e3 02 00 9a 01 
_as3_debug 1, 355, 0, 154
//f0 9c 01 
_as3_debugline line number: 156
//d1 
_as3_getlocal <1> 
//46 d8 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toLowerCase(param count:0)
//60 c0 03 
_as3_getlex RegExp
//2c f7 08 
_as3_pushstring "-"
//2c b4 08 
_as3_pushstring "g"
//42 02 
_as3_construct (param count:2)
//2c f8 08 
_as3_pushstring "_"
//46 c1 03 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::replace(param count:2)
//48 
_as3_returnvalue 
        }// end function

        public static function sortLocalesByPreference(preloadedRSLs:Array, preloadedRSLs:Array, preloadedRSLs:String = null, preloadedRSLs:Boolean = false) : Array
        {
1  4 501  0 501  1 501  2 501  3 50//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 32 
_as3_debugline line number: 50
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
//ef 01 ed 08 04 32 
_as3_debug 1, 1133, 4, 50
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 0c 
_as3_coerce Array
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//6d 06 
_as3_setslot <6>
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 07 
_as3_setslot <7>
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 09 
_as3_setslot <9>
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 0a 
_as3_setslot <10>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//6d 0b 
_as3_setslot <11>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 1d 
_as3_coerce LocaleSorter.as$107::LocaleID
//6d 0f 
_as3_setslot <15>
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
//ef 01 ec 08 00 32 
_as3_debug 1, 1132, 0, 50
//ef 01 d3 08 01 32 
_as3_debug 1, 1107, 1, 50
//ef 01 ee 08 02 32 
_as3_debug 1, 1134, 2, 50
//ef 01 ef 08 03 32 
_as3_debug 1, 1135, 3, 50
//f0 4c 
_as3_debugline line number: 76
//65 01 
_as3_getscopeobject 1
//40 f8 01 
_as3_newfunction 
                function (extended_langs:String) : void
                {
1  0 76//ef 01 e3 02 00 4c 
_as3_debug 1, 355, 0, 76
//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 4e 
_as3_debugline line number: 78
//60 eb 03 
_as3_getlex mx.resources::hasLocale
//d1 
_as3_getlocal <1> 
//66 ec 03 
_as3_getproperty {}
//95 
_as3_typeof 
//2c cf 08 
_as3_pushstring "undefined"
//13 20 00 00 
_as3_ifeq offset: 32
//f0 50 
_as3_debugline line number: 80
//60 ed 03 
_as3_getlex mx.resources::result
//60 ee 03 
_as3_getlex mx.resources::appLocales
//60 eb 03 
_as3_getlex mx.resources::hasLocale
//d1 
_as3_getlocal <1> 
//66 ec 03 
_as3_getproperty {}
//66 ec 03 
_as3_getproperty {}
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 51 
_as3_debugline line number: 81
//60 eb 03 
_as3_getlex mx.resources::hasLocale
//d1 
_as3_getlocal <1> 
//6a ec 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//f0 53 
_as3_debugline line number: 83
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 0e 
_as3_setslot <14>
//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 37 
_as3_debugline line number: 55
//65 01 
_as3_getscopeobject 1
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//6d 05 
_as3_setslot <5>
//f0 39 
_as3_debugline line number: 57
//65 01 
_as3_getscopeobject 1
//55 00 
_as3_newobject {object count:0}
//80 03 
_as3_coerce Object
//6d 06 
_as3_setslot <6>
//f0 41 
_as3_debugline line number: 65
//65 01 
_as3_getscopeobject 1
//5d d2 02 
_as3_findpropstrict mx.resources:LocaleSorter::trimAndNormalize
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//46 d2 02 01 
_as3_callproperty mx.resources:LocaleSorter::trimAndNormalize(param count:1)
//80 0c 
_as3_coerce Array
//6d 0c 
_as3_setslot <12>
//f0 42 
_as3_debugline line number: 66
//65 01 
_as3_getscopeobject 1
//5d d2 02 
_as3_findpropstrict mx.resources:LocaleSorter::trimAndNormalize
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//46 d2 02 01 
_as3_callproperty mx.resources:LocaleSorter::trimAndNormalize(param count:1)
//80 0c 
_as3_coerce Array
//6d 0d 
_as3_setslot <13>
//f0 44 
_as3_debugline line number: 68
//5d d1 02 
_as3_findpropstrict mx.resources:LocaleSorter::addUltimateFallbackLocale
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//65 01 
_as3_getscopeobject 1
//6c 03 
_as3_getslot <3>
//4f d1 02 02 
_as3_callpropvoid mx.resources:LocaleSorter::addUltimateFallbackLocale(param count:2)
//f0 47 
_as3_debugline line number: 71
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//10 25 00 00 
_as3_jump offset: 37
//09 
_as3_label 
//f0 49 
_as3_debugline line number: 73
//65 01 
_as3_getscopeobject 1
//6c 06 
_as3_getslot <6>
//65 01 
_as3_getscopeobject 1
//6c 0c 
_as3_getslot <12>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//66 ec 03 
_as3_getproperty {}
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//61 ec 03 
_as3_setproperty {}
//f0 47 
_as3_debugline line number: 71
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//c0 
_as3_increment_i 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//65 01 
_as3_getscopeobject 1
//6c 0c 
_as3_getslot <12>
//66 e9 02 
_as3_getproperty length
//15 cc ff ff 
_as3_iflt offset: -52
//f0 55 
_as3_debugline line number: 85
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 07 
_as3_setslot <7>
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//6d 0a 
_as3_setslot <10>
//10 51 01 00 
_as3_jump offset: 337
//09 
_as3_label 
//f0 57 
_as3_debugline line number: 87
//65 01 
_as3_getscopeobject 1
//60 1d 
_as3_getlex LocaleSorter.as$107::LocaleID
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//66 ec 03 
_as3_getproperty {}
//46 d9 02 01 
_as3_callproperty fromString(param count:1)
//80 1d 
_as3_coerce LocaleSorter.as$107::LocaleID
//6d 0f 
_as3_setslot <15>
//f0 5a 
_as3_debugline line number: 90
//65 01 
_as3_getscopeobject 1
//6c 0e 
_as3_getslot <14>
//64 
_as3_getglobalscope 
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//66 ec 03 
_as3_getproperty {}
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//f0 5c 
_as3_debugline line number: 92
//65 01 
_as3_getscopeobject 1
//6c 0e 
_as3_getslot <14>
//64 
_as3_getglobalscope 
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//46 e8 01 00 
_as3_callproperty toString(param count:0)
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//10 13 00 00 
_as3_jump offset: 19
//09 
_as3_label 
//f0 61 
_as3_debugline line number: 97
//65 01 
_as3_getscopeobject 1
//6c 0e 
_as3_getslot <14>
//64 
_as3_getglobalscope 
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//46 e8 01 00 
_as3_callproperty toString(param count:0)
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//f0 5f 
_as3_debugline line number: 95
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//46 ee 01 00 
_as3_callproperty transformToParent(param count:0)
//11 df ff ff 
_as3_iftrue offset: -33
//f0 65 
_as3_debugline line number: 101
//65 01 
_as3_getscopeobject 1
//60 1d 
_as3_getlex LocaleSorter.as$107::LocaleID
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//66 ec 03 
_as3_getproperty {}
//46 d9 02 01 
_as3_callproperty fromString(param count:1)
//80 1d 
_as3_coerce LocaleSorter.as$107::LocaleID
//6d 0f 
_as3_setslot <15>
//f0 68 
_as3_debugline line number: 104
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//10 45 00 00 
_as3_jump offset: 69
//09 
_as3_label 
//f0 6a 
_as3_debugline line number: 106
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//66 ec 03 
_as3_getproperty {}
//85 
_as3_coerce_s 
//6d 0b 
_as3_setslot <11>
//f0 6b 
_as3_debugline line number: 107
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//60 1d 
_as3_getlex LocaleSorter.as$107::LocaleID
//65 01 
_as3_getscopeobject 1
//6c 0b 
_as3_getslot <11>
//46 d9 02 01 
_as3_callproperty fromString(param count:1)
//46 eb 01 01 
_as3_callproperty isSiblingOf(param count:1)
//12 0e 00 00 
_as3_iffalse offset: 14
//f0 6c 
_as3_debugline line number: 108
//65 01 
_as3_getscopeobject 1
//6c 0e 
_as3_getslot <14>
//64 
_as3_getglobalscope 
//65 01 
_as3_getscopeobject 1
//6c 0b 
_as3_getslot <11>
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//f0 68 
_as3_debugline line number: 104
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//c0 
_as3_increment_i 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//65 01 
_as3_getscopeobject 1
//6c 0a 
_as3_getslot <10>
//15 af ff ff 
_as3_iflt offset: -81
//f0 73 
_as3_debugline line number: 115
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 0c 
_as3_getslot <12>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//6d 09 
_as3_setslot <9>
//10 45 00 00 
_as3_jump offset: 69
//09 
_as3_label 
//f0 75 
_as3_debugline line number: 117
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 0c 
_as3_getslot <12>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//66 ec 03 
_as3_getproperty {}
//85 
_as3_coerce_s 
//6d 0b 
_as3_setslot <11>
//f0 76 
_as3_debugline line number: 118
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//60 1d 
_as3_getlex LocaleSorter.as$107::LocaleID
//65 01 
_as3_getscopeobject 1
//6c 0b 
_as3_getslot <11>
//46 d9 02 01 
_as3_callproperty fromString(param count:1)
//46 eb 01 01 
_as3_callproperty isSiblingOf(param count:1)
//12 0e 00 00 
_as3_iffalse offset: 14
//f0 77 
_as3_debugline line number: 119
//65 01 
_as3_getscopeobject 1
//6c 0e 
_as3_getslot <14>
//64 
_as3_getglobalscope 
//65 01 
_as3_getscopeobject 1
//6c 0b 
_as3_getslot <11>
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//f0 73 
_as3_debugline line number: 115
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//c0 
_as3_increment_i 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//65 01 
_as3_getscopeobject 1
//6c 09 
_as3_getslot <9>
//15 af ff ff 
_as3_iflt offset: -81
//f0 55 
_as3_debugline line number: 85
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//c0 
_as3_increment_i 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 07 
_as3_setslot <7>
//65 01 
_as3_getscopeobject 1
//6c 07 
_as3_getslot <7>
//65 01 
_as3_getscopeobject 1
//6c 0a 
_as3_getslot <10>
//15 a3 fe ff 
_as3_iflt offset: -349
//f0 7b 
_as3_debugline line number: 123
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//12 47 00 00 
_as3_iffalse offset: 71
//f0 7f 
_as3_debugline line number: 127
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 0c 
_as3_getslot <12>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//6d 09 
_as3_setslot <9>
//10 23 00 00 
_as3_jump offset: 35
//09 
_as3_label 
//f0 81 01 
_as3_debugline line number: 129
//65 01 
_as3_getscopeobject 1
//6c 0e 
_as3_getslot <14>
//64 
_as3_getglobalscope 
//65 01 
_as3_getscopeobject 1
//6c 0c 
_as3_getslot <12>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//66 ec 03 
_as3_getproperty {}
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//f0 7f 
_as3_debugline line number: 127
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//c0 
_as3_increment_i 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 08 
_as3_setslot <8>
//65 01 
_as3_getscopeobject 1
//6c 08 
_as3_getslot <8>
//65 01 
_as3_getscopeobject 1
//6c 09 
_as3_getslot <9>
//15 d1 ff ff 
_as3_iflt offset: -47
//f0 85 01 
_as3_debugline line number: 133
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//48 
_as3_returnvalue 
        }// end function

        private static function addUltimateFallbackLocale(extended_langs:Array, extended_langs:String) : void
        {
1  0 1621  1 1621  2 168//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 a2 01 
_as3_debugline line number: 162
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
//ef 01 f4 08 00 a2 01 
_as3_debug 1, 1140, 0, 162
//ef 01 ee 08 01 a2 01 
_as3_debug 1, 1134, 1, 162
//f0 a6 01 
_as3_debugline line number: 166
//d2 
_as3_getlocal <2> 
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//2a 
_as3_dup 
//12 06 00 00 
_as3_iffalse offset: 6
//29 
_as3_pop 
//d2 
_as3_getlocal <2> 
//2c 01 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//12 2c 00 00 
_as3_iffalse offset: 44
//ef 01 e3 02 02 a8 01 
_as3_debug 1, 355, 2, 168
//f0 a8 01 
_as3_debugline line number: 168
//5d cf 02 
_as3_findpropstrict mx.resources:LocaleSorter::normalizeLocale
//d2 
_as3_getlocal <2> 
//46 cf 02 01 
_as3_callproperty mx.resources:LocaleSorter::normalizeLocale(param count:1)
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 aa 01 
_as3_debugline line number: 170
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 ff 
_as3_pushbyte -1
//14 09 00 00 
_as3_ifne offset: 9
//f0 ad 01 
_as3_debugline line number: 173
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 b0 01 
_as3_debugline line number: 176
//47 
_as3_returnvoid 
        }// end function

        private static function trimAndNormalize(preloadedRSLs:Array) : Array
        {
1  0 1391  1 1411  2 143//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 8b 01 
_as3_debugline line number: 139
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 f5 08 00 8b 01 
_as3_debug 1, 1141, 0, 139
//ef 01 f6 08 01 8d 01 
_as3_debug 1, 1142, 1, 141
//ef 01 e3 04 02 8f 01 
_as3_debug 1, 611, 2, 143
//f0 8d 01 
_as3_debugline line number: 141
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//f0 8f 01 
_as3_debugline line number: 143
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//10 1a 00 00 
_as3_jump offset: 26
//09 
_as3_label 
//f0 91 01 
_as3_debugline line number: 145
//d2 
_as3_getlocal <2> 
//5d cf 02 
_as3_findpropstrict mx.resources:LocaleSorter::normalizeLocale
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//66 ec 03 
_as3_getproperty {}
//46 cf 02 01 
_as3_callproperty mx.resources:LocaleSorter::normalizeLocale(param count:1)
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 8f 01 
_as3_debugline line number: 143
//c2 03 
_as3_inclocal_i <3>
//d3 
_as3_getlocal <3> 
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//15 dd ff ff 
_as3_iflt offset: -35
//f0 94 01 
_as3_debugline line number: 148
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

    }
}
