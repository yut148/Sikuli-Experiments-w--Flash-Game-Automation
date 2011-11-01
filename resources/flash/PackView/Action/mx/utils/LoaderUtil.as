package mx.utils
{
    import flash.display.*;

    public class LoaderUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";
        static var urlFilters:Array = [{searchString:"/[[DYNAMIC]]/", filterFunction:dynamicURLFilter}, {searchString:"/[[IMPORT]]/", filterFunction:importURLFilter}];

        public function LoaderUtil()
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

        private static function importURLFilter(param1:String, param2:int) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//2c ef 05 
_as3_pushstring "://"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//d3 
_as3_getlocal <3> 
//24 03 
_as3_pushbyte 3
//a0 
_as3_add 
//46 f6 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:2)
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//24 0c 
_as3_pushbyte 12
//a0 
_as3_add 
//46 f6 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:1)
//a0 
_as3_add 
//48 
_as3_returnvalue 
        }// end function

        public static function normalizeURL(param1:LoaderInfo) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//20 
_as3_pushnull 
//80 13 
_as3_coerce Function
//63 05 
_as3_setlocal <5>
//d1 
_as3_getlocal <1> 
//66 d7 01 
_as3_getproperty url
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//60 d2 01 
_as3_getlex mx.utils::LoaderUtil
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 e1 03 
_as3_getproperty urlFilters
//66 e2 03 
_as3_getproperty length
//74 
_as3_convert_u 
//63 06 
_as3_setlocal <6>
//24 00 
_as3_pushbyte 0
//74 
_as3_convert_u 
//63 07 
_as3_setlocal <7>
//10 54 00 00 
_as3_jump offset: 84
//09 
_as3_label 
//60 d2 01 
_as3_getlex mx.utils::LoaderUtil
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 e1 03 
_as3_getproperty urlFilters
//62 07 
_as3_getlocal <7>
//66 e3 03 
_as3_getproperty {}
//66 e4 03 
_as3_getproperty searchString
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//d2 
_as3_getlocal <2> 
//62 04 
_as3_getlocal <4>
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//2a 
_as3_dup 
//63 08 
_as3_setlocal <8>
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//62 08 
_as3_getlocal <8>
//08 08 
_as3_kill <8>
//24 ff 
_as3_pushbyte -1
//13 20 00 00 
_as3_ifeq offset: 32
//60 d2 01 
_as3_getlex mx.utils::LoaderUtil
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 e1 03 
_as3_getproperty urlFilters
//62 07 
_as3_getlocal <7>
//66 e3 03 
_as3_getproperty {}
//66 e5 03 
_as3_getproperty filterFunction
//80 13 
_as3_coerce Function
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//64 
_as3_getglobalscope 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//41 02 
_as3_call (param count:2)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//62 07 
_as3_getlocal <7>
//91 
_as3_increment 
//74 
_as3_convert_u 
//63 07 
_as3_setlocal <7>
//62 07 
_as3_getlocal <7>
//62 06 
_as3_getlocal <6>
//15 a4 ff ff 
_as3_iflt offset: -92
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public static function createAbsoluteURL(param1:String, param2:String) : String
        {
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
//d2 
_as3_getlocal <2> 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//d1 
_as3_getlocal <1> 
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 2f 00 00 
_as3_iffalse offset: 47
//29 
_as3_pop 
//d2 
_as3_getlocal <2> 
//2c d3 05 
_as3_pushstring ":"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 ff 
_as3_pushbyte -1
//af 
_as3_greaterthan 
//2a 
_as3_dup 
//11 0c 00 00 
_as3_iftrue offset: 12
//29 
_as3_pop 
//d2 
_as3_getlocal <2> 
//2c f6 02 
_as3_pushstring "/"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//ab 
_as3_equals 
//2a 
_as3_dup 
//11 0c 00 00 
_as3_iftrue offset: 12
//29 
_as3_pop 
//d2 
_as3_getlocal <2> 
//2c e7 05 
_as3_pushstring "\"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//ab 
_as3_equals 
//96 
_as3_not 
//12 cf 00 00 
_as3_iffalse offset: 207
//d1 
_as3_getlocal <1> 
//2c e8 05 
_as3_pushstring "?"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//2a 
_as3_dup 
//63 06 
_as3_setlocal <6>
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//62 06 
_as3_getlocal <6>
//08 06 
_as3_kill <6>
//24 ff 
_as3_pushbyte -1
//13 0b 00 00 
_as3_ifeq offset: 11
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//62 04 
_as3_getlocal <4>
//46 f6 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:2)
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//2c e9 05 
_as3_pushstring "#"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//2a 
_as3_dup 
//63 06 
_as3_setlocal <6>
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//62 06 
_as3_getlocal <6>
//08 06 
_as3_kill <6>
//24 ff 
_as3_pushbyte -1
//13 0b 00 00 
_as3_ifeq offset: 11
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//62 04 
_as3_getlocal <4>
//46 f6 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:2)
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//60 e6 03 
_as3_getlex Math
//d1 
_as3_getlocal <1> 
//2c e7 05 
_as3_pushstring "\"
//46 f5 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:1)
//d1 
_as3_getlocal <1> 
//2c f6 02 
_as3_pushstring "/"
//46 f5 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:1)
//46 e7 03 02 
_as3_callproperty max(param count:2)
//73 
_as3_convert_i 
//63 05 
_as3_setlocal <5>
//d2 
_as3_getlocal <2> 
//2c ec 05 
_as3_pushstring "./"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//14 0d 00 00 
_as3_ifne offset: 13
//d2 
_as3_getlocal <2> 
//24 02 
_as3_pushbyte 2
//46 f6 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:1)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//10 3c 00 00 
_as3_jump offset: 60
//10 2a 00 00 
_as3_jump offset: 42
//09 
_as3_label 
//d2 
_as3_getlocal <2> 
//24 03 
_as3_pushbyte 3
//46 f6 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:1)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//60 e6 03 
_as3_getlex Math
//d1 
_as3_getlocal <1> 
//2c e7 05 
_as3_pushstring "\"
//62 05 
_as3_getlocal <5>
//93 
_as3_decrement 
//46 f5 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:2)
//d1 
_as3_getlocal <1> 
//2c f6 02 
_as3_pushstring "/"
//62 05 
_as3_getlocal <5>
//93 
_as3_decrement 
//46 f5 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:2)
//46 e7 03 02 
_as3_callproperty max(param count:2)
//73 
_as3_convert_i 
//63 05 
_as3_setlocal <5>
//d2 
_as3_getlocal <2> 
//2c ed 05 
_as3_pushstring "../"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//13 c8 ff ff 
_as3_ifeq offset: -56
//62 05 
_as3_getlocal <5>
//24 ff 
_as3_pushbyte -1
//13 10 00 00 
_as3_ifeq offset: 16
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//62 05 
_as3_getlocal <5>
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//46 e8 03 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substr(param count:2)
//d2 
_as3_getlocal <2> 
//a0 
_as3_add 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//48 
_as3_returnvalue 
        }// end function

        private static function dynamicURLFilter(param1:String, param2:int) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//d2 
_as3_getlocal <2> 
//46 f6 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::substring(param count:2)
//48 
_as3_returnvalue 
        }// end function

    }
}
