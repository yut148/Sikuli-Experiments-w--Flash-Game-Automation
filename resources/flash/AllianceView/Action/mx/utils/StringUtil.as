package mx.utils
{
    import mx.core.*;

    public class StringUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function StringUtil()
        {
//f1 a3 01 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\utils;StringUtil.as"
//f0 98 01 
_as3_debugline line number: 152
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f1 a3 01 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\utils;StringUtil.as"
//f0 b2 01 
_as3_debugline line number: 178
//47 
_as3_returnvoid 
        }// end function

        public static function trim(_module:String) : String
        {
1  0 411  1 451  2 49//f1 a3 01 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\utils;StringUtil.as"
//f0 29 
_as3_debugline line number: 41
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 9f 08 00 29 
_as3_debug 1, 1055, 0, 41
//ef 01 a0 08 01 2d 
_as3_debug 1, 1056, 1, 45
//ef 01 a1 08 02 31 
_as3_debug 1, 1057, 2, 49
//f0 2b 
_as3_debugline line number: 43
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//14 03 00 00 
_as3_ifne offset: 3
//2c 01 
_as3_pushstring ""
//48 
_as3_returnvalue 
//f0 2d 
_as3_debugline line number: 45
//24 00 
_as3_pushbyte 0
//d6 
_as3_setlocal <2> 
//10 05 00 00 
_as3_jump offset: 5
//09 
_as3_label 
//f0 2f 
_as3_debugline line number: 47
//c2 02 
_as3_inclocal_i <2>
//f0 2e 
_as3_debugline line number: 46
//5d c3 02 
_as3_findpropstrict isWhitespace
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//46 bc 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::charAt(param count:1)
//46 c3 02 01 
_as3_callproperty isWhitespace(param count:1)
//11 e8 ff ff 
_as3_iftrue offset: -24
//f0 31 
_as3_debugline line number: 49
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 06 00 00 
_as3_jump offset: 6
//09 
_as3_label 
//f0 33 
_as3_debugline line number: 51
//d3 
_as3_getlocal <3> 
//c1 
_as3_decrement_i 
//d7 
_as3_setlocal <3> 
//f0 32 
_as3_debugline line number: 50
//5d c3 02 
_as3_findpropstrict isWhitespace
//d1 
_as3_getlocal <1> 
//d3 
_as3_getlocal <3> 
//46 bc 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::charAt(param count:1)
//46 c3 02 01 
_as3_callproperty isWhitespace(param count:1)
//11 e7 ff ff 
_as3_iftrue offset: -25
//f0 35 
_as3_debugline line number: 53
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//0f 0d 00 00 
_as3_ifnge offset: 13
//f0 36 
_as3_debugline line number: 54
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//24 01 
_as3_pushbyte 1
//a0 
_as3_add 
//46 bd 03 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::slice(param count:2)
//48 
_as3_returnvalue 
//2c 01 
_as3_pushstring ""
//f0 38 
_as3_debugline line number: 56
//48 
_as3_returnvalue 
        }// end function

        public static function isWhitespace(Singleton:String) : Boolean
        {
1  0 100//f1 a3 01 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\utils;StringUtil.as"
//f0 64 
_as3_debugline line number: 100
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 a9 08 00 64 
_as3_debug 1, 1065, 0, 100
//10 0e 00 00 
_as3_jump offset: 14
//09 
_as3_label 
//f0 6d 
_as3_debugline line number: 109
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//09 
_as3_label 
//f0 70 
_as3_debugline line number: 112
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
//10 75 00 00 
_as3_jump offset: 117
//f0 66 
_as3_debugline line number: 102
//d1 
_as3_getlocal <1> 
//d6 
_as3_setlocal <2> 
//2c aa 08 
_as3_pushstring " "
//f0 68 
_as3_debugline line number: 104
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 00 
_as3_pushbyte 0
//10 4c 00 00 
_as3_jump offset: 76
//2c ab 08 
_as3_pushstring "	"
//f0 69 
_as3_debugline line number: 105
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 01 
_as3_pushbyte 1
//10 3c 00 00 
_as3_jump offset: 60
//2c ac 08 
_as3_pushstring ""
//f0 6a 
_as3_debugline line number: 106
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 02 
_as3_pushbyte 2
//10 2c 00 00 
_as3_jump offset: 44
//2c ad 08 
_as3_pushstring "
"
//f0 6b 
_as3_debugline line number: 107
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 03 
_as3_pushbyte 3
//10 1c 00 00 
_as3_jump offset: 28
//2c ae 08 
_as3_pushstring ""
//f0 6c 
_as3_debugline line number: 108
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 04 
_as3_pushbyte 4
//10 0c 00 00 
_as3_jump offset: 12
//10 06 00 00 
_as3_jump offset: 6
//24 05 
_as3_pushbyte 5
//10 02 00 00 
_as3_jump offset: 2
//24 05 
_as3_pushbyte 5
//08 02 
_as3_kill <2>
//1b 95 ff ff 05 90 ff ff 90 ff ff 90 ff ff 90 ff ff 90 ff ff 95 ff ff 
_as3_lookupswitch -107(5)[-112, -112, -112, -112, -112, -107]
        }// end function

        public static function substitute(_module:String, ... args) : String
        {
1  0 1511  1 1511  2 1561  3 1571  4 168//f1 a3 01 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\utils;StringUtil.as"
//f0 97 01 
_as3_debugline line number: 151
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
//ef 01 9f 08 00 97 01 
_as3_debug 1, 1055, 0, 151
//ef 01 af 08 01 97 01 
_as3_debug 1, 1071, 1, 151
//ef 01 a6 08 02 9c 01 
_as3_debug 1, 1062, 2, 156
//ef 01 b0 08 03 9d 01 
_as3_debug 1, 1072, 3, 157
//ef 01 e3 04 04 a8 01 
_as3_debug 1, 611, 4, 168
//f0 99 01 
_as3_debugline line number: 153
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//14 03 00 00 
_as3_ifne offset: 3
//2c 01 
_as3_pushstring ""
//48 
_as3_returnvalue 
//f0 9c 01 
_as3_debugline line number: 156
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//f0 9e 01 
_as3_debugline line number: 158
//d3 
_as3_getlocal <3> 
//24 01 
_as3_pushbyte 1
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 0a 00 00 
_as3_iffalse offset: 10
//29 
_as3_pop 
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//66 be 03 
_as3_getproperty {}
//60 0c 
_as3_getlex Array
//b3 
_as3_istypelate 
//12 1e 00 00 
_as3_iffalse offset: 30
//f0 a0 01 
_as3_debugline line number: 160
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//66 be 03 
_as3_getproperty {}
//60 0c 
_as3_getlex Array
//87 
_as3_astypelate 
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//f0 a1 01 
_as3_debugline line number: 161
//62 04 
_as3_getlocal <4>
//66 e9 02 
_as3_getproperty length
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//10 08 00 00 
_as3_jump offset: 8
//f0 a5 01 
_as3_debugline line number: 165
//d2 
_as3_getlocal <2> 
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//f0 a8 01 
_as3_debugline line number: 168
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//10 2b 00 00 
_as3_jump offset: 43
//09 
_as3_label 
//f0 aa 01 
_as3_debugline line number: 170
//d1 
_as3_getlocal <1> 
//5d c0 03 
_as3_findpropstrict RegExp
//2c b2 08 
_as3_pushstring "\{"
//62 05 
_as3_getlocal <5>
//a0 
_as3_add 
//2c b3 08 
_as3_pushstring "\}"
//a0 
_as3_add 
//2c b4 08 
_as3_pushstring "g"
//4a c0 03 02 
_as3_constructprop RegExp(param count:2)
//62 04 
_as3_getlocal <4>
//62 05 
_as3_getlocal <5>
//66 be 03 
_as3_getproperty {}
//46 c1 03 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::replace(param count:2)
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//f0 a8 01 
_as3_debugline line number: 168
//c2 05 
_as3_inclocal_i <5>
//62 05 
_as3_getlocal <5>
//d3 
_as3_getlocal <3> 
//15 ce ff ff 
_as3_iflt offset: -50
//f0 ad 01 
_as3_debugline line number: 173
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public static function trimArrayElements(_module:String, _module:String) : String
        {
1  0 701  1 701  2 741  3 761  4 77//f1 a3 01 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\utils;StringUtil.as"
//f0 46 
_as3_debugline line number: 70
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//ef 01 6e 00 46 
_as3_debug 1, 110, 0, 70
//ef 01 a4 08 01 46 
_as3_debug 1, 1060, 1, 70
//f0 48 
_as3_debugline line number: 72
//d1 
_as3_getlocal <1> 
//2c 01 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//2a 
_as3_dup 
//12 05 00 00 
_as3_iffalse offset: 5
//29 
_as3_pop 
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 66 00 00 
_as3_iffalse offset: 102
//ef 01 a5 08 02 4a 
_as3_debug 1, 1061, 2, 74
//ef 01 a6 08 03 4c 
_as3_debug 1, 1062, 3, 76
//ef 01 e3 04 04 4d 
_as3_debug 1, 611, 4, 77
//f0 4a 
_as3_debugline line number: 74
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//f0 4c 
_as3_debugline line number: 76
//d3 
_as3_getlocal <3> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//f0 4d 
_as3_debugline line number: 77
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//10 1a 00 00 
_as3_jump offset: 26
//09 
_as3_label 
//f0 4f 
_as3_debugline line number: 79
//d3 
_as3_getlocal <3> 
//62 05 
_as3_getlocal <5>
//60 aa 01 
_as3_getlex mx.utils::StringUtil
//d3 
_as3_getlocal <3> 
//62 05 
_as3_getlocal <5>
//66 be 03 
_as3_getproperty {}
//46 c2 02 01 
_as3_callproperty trim(param count:1)
//61 be 03 
_as3_setproperty {}
//f0 4d 
_as3_debugline line number: 77
//c2 05 
_as3_inclocal_i <5>
//62 05 
_as3_getlocal <5>
//62 04 
_as3_getlocal <4>
//15 de ff ff 
_as3_iflt offset: -34
//f0 52 
_as3_debugline line number: 82
//62 04 
_as3_getlocal <4>
//24 00 
_as3_pushbyte 0
//0e 0a 00 00 
_as3_ifngt offset: 10
//f0 54 
_as3_debugline line number: 84
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 bf 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::join(param count:1)
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//f0 58 
_as3_debugline line number: 88
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

    }
}
