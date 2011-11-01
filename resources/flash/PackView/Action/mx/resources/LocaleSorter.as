package mx.resources
{

    public class LocaleSorter extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function LocaleSorter()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        private static function normalizeLocale(param1:String) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//46 d8 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toLowerCase(param count:0)
//60 c0 03 
_as3_getlex RegExp
//2c fd 05 
_as3_pushstring "-"
//2c d0 05 
_as3_pushstring "g"
//42 02 
_as3_construct (param count:2)
//2c fe 05 
_as3_pushstring "_"
//46 c1 03 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::replace(param count:2)
//48 
_as3_returnvalue 
        }// end function

        public static function sortLocalesByPreference(param1:Array, param2:Array, param3:String = null, param4:Boolean = false) : Array
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
_as3_coerce LocaleID
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
//65 01 
_as3_getscopeobject 1
//40 f8 01 
_as3_newfunction 
                function (param1:String) : void
                {
//60 eb 03 
_as3_getlex mx.resources::hasLocale
//d1 
_as3_getlocal <1> 
//66 ec 03 
_as3_getproperty {}
//95 
_as3_typeof 
//2c dd 05 
_as3_pushstring "undefined"
//13 1c 00 00 
_as3_ifeq offset: 28
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
//60 eb 03 
_as3_getlex mx.resources::hasLocale
//d1 
_as3_getlocal <1> 
//6a ec 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//47 
_as3_returnvoid 
                }// end function

//80 13 
_as3_coerce Function
//6d 0e 
_as3_setslot <14>
//65 01 
_as3_getscopeobject 1
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//55 00 
_as3_newobject {object count:0}
//80 03 
_as3_coerce Object
//6d 06 
_as3_setslot <6>
//65 01 
_as3_getscopeobject 1
//5d d2 02 
_as3_findpropstrict trimAndNormalize
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//46 d2 02 01 
_as3_callproperty trimAndNormalize(param count:1)
//80 0c 
_as3_coerce Array
//6d 0c 
_as3_setslot <12>
//65 01 
_as3_getscopeobject 1
//5d d2 02 
_as3_findpropstrict trimAndNormalize
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//46 d2 02 01 
_as3_callproperty trimAndNormalize(param count:1)
//80 0c 
_as3_coerce Array
//6d 0d 
_as3_setslot <13>
//5d d1 02 
_as3_findpropstrict addUltimateFallbackLocale
//65 01 
_as3_getscopeobject 1
//6c 0d 
_as3_getslot <13>
//65 01 
_as3_getscopeobject 1
//6c 03 
_as3_getslot <3>
//4f d1 02 02 
_as3_callpropvoid addUltimateFallbackLocale(param count:2)
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//10 21 00 00 
_as3_jump offset: 33
//09 
_as3_label 
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
//15 d0 ff ff 
_as3_iflt offset: -48
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
//10 2f 01 00 
_as3_jump offset: 303
//09 
_as3_label 
//65 01 
_as3_getscopeobject 1
//60 1d 
_as3_getlex LocaleID
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
_as3_coerce LocaleID
//6d 0f 
_as3_setslot <15>
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
//10 11 00 00 
_as3_jump offset: 17
//09 
_as3_label 
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
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//46 ee 01 00 
_as3_callproperty transformToParent(param count:0)
//11 e3 ff ff 
_as3_iftrue offset: -29
//65 01 
_as3_getscopeobject 1
//60 1d 
_as3_getlex LocaleID
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
_as3_coerce LocaleID
//6d 0f 
_as3_setslot <15>
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//6d 08 
_as3_setslot <8>
//10 3d 00 00 
_as3_jump offset: 61
//09 
_as3_label 
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
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//60 1d 
_as3_getlex LocaleID
//65 01 
_as3_getscopeobject 1
//6c 0b 
_as3_getslot <11>
//46 d9 02 01 
_as3_callproperty fromString(param count:1)
//46 eb 01 01 
_as3_callproperty isSiblingOf(param count:1)
//12 0c 00 00 
_as3_iffalse offset: 12
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
//15 b7 ff ff 
_as3_iflt offset: -73
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
//10 3d 00 00 
_as3_jump offset: 61
//09 
_as3_label 
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
//65 01 
_as3_getscopeobject 1
//6c 0f 
_as3_getslot <15>
//60 1d 
_as3_getlex LocaleID
//65 01 
_as3_getscopeobject 1
//6c 0b 
_as3_getslot <11>
//46 d9 02 01 
_as3_callproperty fromString(param count:1)
//46 eb 01 01 
_as3_callproperty isSiblingOf(param count:1)
//12 0c 00 00 
_as3_iffalse offset: 12
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
//15 b7 ff ff 
_as3_iflt offset: -73
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
//15 c5 fe ff 
_as3_iflt offset: -315
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//12 40 00 00 
_as3_iffalse offset: 64
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
//10 1e 00 00 
_as3_jump offset: 30
//09 
_as3_label 
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
//15 d6 ff ff 
_as3_iflt offset: -42
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//48 
_as3_returnvalue 
        }// end function

        private static function addUltimateFallbackLocale(param1:Array, param2:String) : void
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
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//12 1c 00 00 
_as3_iffalse offset: 28
//5d cf 02 
_as3_findpropstrict normalizeLocale
//d2 
_as3_getlocal <2> 
//46 cf 02 01 
_as3_callproperty normalizeLocale(param count:1)
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 ff 
_as3_pushbyte -1
//14 06 00 00 
_as3_ifne offset: 6
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private static function trimAndNormalize(param1:Array) : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//10 14 00 00 
_as3_jump offset: 20
//09 
_as3_label 
//d2 
_as3_getlocal <2> 
//5d cf 02 
_as3_findpropstrict normalizeLocale
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//66 ec 03 
_as3_getproperty {}
//46 cf 02 01 
_as3_callproperty normalizeLocale(param count:1)
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//c2 03 
_as3_inclocal_i <3>
//d3 
_as3_getlocal <3> 
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//15 e3 ff ff 
_as3_iflt offset: -29
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

    }
}
