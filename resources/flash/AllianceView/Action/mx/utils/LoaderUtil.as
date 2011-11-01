package mx.utils
{
    import en_US$controls_properties.*;
    import flash.display.*;

    public class LoaderUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";
        static var urlFilters:Array = [{searchString:"/[[DYNAMIC]]/", filterFunction:dynamicURLFilter}, {searchString:"/[[IMPORT]]/", filterFunction:importURLFilter}];

        public function LoaderUtil()
        {
//f1 db 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\utils;LoaderUtil.as"
//f0 bb 01 
_as3_debugline line number: 187
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f1 db 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\utils;LoaderUtil.as"
//f0 c1 01 
_as3_debugline line number: 193
//47 
_as3_returnvoid 
        }// end function

        private static function importURLFilter(getContent:String, getContent:int) : String
        {
1  0 1861  1 1861  2 188//f1 db 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\utils;LoaderUtil.as"
//f0 ba 01 
_as3_debugline line number: 186
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 60 00 ba 01 
_as3_debug 1, 96, 0, 186
//ef 01 8f 08 01 ba 01 
_as3_debug 1, 1039, 1, 186
//ef 01 e8 08 02 bc 01 
_as3_debug 1, 1128, 2, 188
//f0 bc 01 
_as3_debugline line number: 188
//d1 
_as3_getlocal <1> 
//2c e9 08 
_as3_pushstring "://"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//f0 bd 01 
_as3_debugline line number: 189
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

        public static function normalizeURL(getContent:LoaderInfo) : String
        {
1  0 821  1 841  2 851  3 861  4 871  5 881  6 90//f1 db 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\utils;LoaderUtil.as"
//f0 52 
_as3_debugline line number: 82
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
//ef 01 cd 03 00 52 
_as3_debug 1, 461, 0, 82
//ef 01 60 01 54 
_as3_debug 1, 96, 1, 84
//ef 01 8f 08 02 55 
_as3_debug 1, 1039, 2, 85
//ef 01 d7 08 03 56 
_as3_debug 1, 1111, 3, 86
//ef 01 dc 08 04 57 
_as3_debug 1, 1116, 4, 87
//ef 01 e2 04 05 58 
_as3_debug 1, 610, 5, 88
//ef 01 e3 04 06 5a 
_as3_debug 1, 611, 6, 90
//f0 54 
_as3_debugline line number: 84
//d1 
_as3_getlocal <1> 
//66 d7 01 
_as3_getproperty url
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 58 
_as3_debugline line number: 88
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
//f0 5a 
_as3_debugline line number: 90
//24 00 
_as3_pushbyte 0
//74 
_as3_convert_u 
//63 07 
_as3_setlocal <7>
//10 5f 00 00 
_as3_jump offset: 95
//09 
_as3_label 
//f0 5c 
_as3_debugline line number: 92
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
//f0 5d 
_as3_debugline line number: 93
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
//13 25 00 00 
_as3_ifeq offset: 37
//f0 5f 
_as3_debugline line number: 95
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
//63 05 
_as3_setlocal <5>
//f0 60 
_as3_debugline line number: 96
//62 05 
_as3_getlocal <5>
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
//f0 5a 
_as3_debugline line number: 90
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
//15 99 ff ff 
_as3_iflt offset: -103
//f0 64 
_as3_debugline line number: 100
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public static function createAbsoluteURL(getContent:String, getContent:String) : String
        {
1  0 1281  1 1281  2 1301  3 1371  4 149//f1 db 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\utils;LoaderUtil.as"
//f0 80 01 
_as3_debugline line number: 128
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
//ef 01 99 03 00 80 01 
_as3_debug 1, 409, 0, 128
//ef 01 60 01 80 01 
_as3_debug 1, 96, 1, 128
//ef 01 de 08 02 82 01 
_as3_debug 1, 1118, 2, 130
//f0 82 01 
_as3_debugline line number: 130
//d2 
_as3_getlocal <2> 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 85 01 
_as3_debugline line number: 133
//d1 
_as3_getlocal <1> 
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 32 00 00 
_as3_iffalse offset: 50
//29 
_as3_pop 
//f0 86 01 
_as3_debugline line number: 134
//d2 
_as3_getlocal <2> 
//2c c1 08 
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
//2c 86 05 
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
//2c df 08 
_as3_pushstring "\"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//ab 
_as3_equals 
//96 
_as3_not 
//12 07 01 00 
_as3_iffalse offset: 263
//ef 01 8f 08 03 89 01 
_as3_debug 1, 1039, 3, 137
//ef 01 e0 08 04 95 01 
_as3_debug 1, 1120, 4, 149
//f0 8b 01 
_as3_debugline line number: 139
//d1 
_as3_getlocal <1> 
//2c e1 08 
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
//13 0e 00 00 
_as3_ifeq offset: 14
//f0 8c 01 
_as3_debugline line number: 140
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
//f0 8e 01 
_as3_debugline line number: 142
//d1 
_as3_getlocal <1> 
//2c e2 08 
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
//13 0e 00 00 
_as3_ifeq offset: 14
//f0 8f 01 
_as3_debugline line number: 143
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
//f0 95 01 
_as3_debugline line number: 149
//60 e6 03 
_as3_getlex Math
//d1 
_as3_getlocal <1> 
//2c df 08 
_as3_pushstring "\"
//46 f5 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:1)
//d1 
_as3_getlocal <1> 
//2c 86 05 
_as3_pushstring "/"
//46 f5 02 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:1)
//46 e7 03 02 
_as3_callproperty max(param count:2)
//73 
_as3_convert_i 
//63 05 
_as3_setlocal <5>
//f0 96 01 
_as3_debugline line number: 150
//d2 
_as3_getlocal <2> 
//2c e5 08 
_as3_pushstring "./"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//14 10 00 00 
_as3_ifne offset: 16
//f0 98 01 
_as3_debugline line number: 152
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
//10 4b 00 00 
_as3_jump offset: 75
//10 36 00 00 
_as3_jump offset: 54
//09 
_as3_label 
//f0 9e 01 
_as3_debugline line number: 158
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
//f0 9f 01 
_as3_debugline line number: 159
//60 e6 03 
_as3_getlex Math
//f0 9f 01 
_as3_debugline line number: 159
//d1 
_as3_getlocal <1> 
//2c df 08 
_as3_pushstring "\"
//62 05 
_as3_getlocal <5>
//93 
_as3_decrement 
//46 f5 02 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::lastIndexOf(param count:2)
//f0 a0 01 
_as3_debugline line number: 160
//d1 
_as3_getlocal <1> 
//2c 86 05 
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
//f0 9c 01 
_as3_debugline line number: 156
//d2 
_as3_getlocal <2> 
//2c e6 08 
_as3_pushstring "../"
//46 c6 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::indexOf(param count:1)
//24 00 
_as3_pushbyte 0
//13 b9 ff ff 
_as3_ifeq offset: -71
//f0 a4 01 
_as3_debugline line number: 164
//62 05 
_as3_getlocal <5>
//24 ff 
_as3_pushbyte -1
//13 13 00 00 
_as3_ifeq offset: 19
//f0 a5 01 
_as3_debugline line number: 165
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
//f0 a8 01 
_as3_debugline line number: 168
//d3 
_as3_getlocal <3> 
//48 
_as3_returnvalue 
        }// end function

        private static function dynamicURLFilter(getContent:String, getContent:int) : String
        {
1  0 1761  1 176//f1 db 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\utils;LoaderUtil.as"
//f0 b0 01 
_as3_debugline line number: 176
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 60 00 b0 01 
_as3_debug 1, 96, 0, 176
//ef 01 8f 08 01 b0 01 
_as3_debug 1, 1039, 1, 176
//f0 b2 01 
_as3_debugline line number: 178
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
