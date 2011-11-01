package mx.utils
{

    public class StringUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function StringUtil()
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

        public static function trim(param1:String) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//14 03 00 00 
_as3_ifne offset: 3
//2c 03 
_as3_pushstring ""
//48 
_as3_returnvalue 
//24 00 
_as3_pushbyte 0
//d6 
_as3_setlocal <2> 
//10 03 00 00 
_as3_jump offset: 3
//09 
_as3_label 
//c2 02 
_as3_inclocal_i <2>
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
//11 ec ff ff 
_as3_iftrue offset: -20
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
//10 04 00 00 
_as3_jump offset: 4
//09 
_as3_label 
//d3 
_as3_getlocal <3> 
//c1 
_as3_decrement_i 
//d7 
_as3_setlocal <3> 
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
//11 eb ff ff 
_as3_iftrue offset: -21
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//0f 0b 00 00 
_as3_ifnge offset: 11
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
//2c 03 
_as3_pushstring ""
//48 
_as3_returnvalue 
        }// end function

        public static function isWhitespace(param1:String) : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//10 0a 00 00 
_as3_jump offset: 10
//09 
_as3_label 
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//09 
_as3_label 
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
//10 75 00 00 
_as3_jump offset: 117
//d1 
_as3_getlocal <1> 
//d6 
_as3_setlocal <2> 
//2c c8 05 
_as3_pushstring " "
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 00 
_as3_pushbyte 0
//10 44 00 00 
_as3_jump offset: 68
//2c c9 05 
_as3_pushstring "	"
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 01 
_as3_pushbyte 1
//10 36 00 00 
_as3_jump offset: 54
//2c ca 05 
_as3_pushstring ""
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 02 
_as3_pushbyte 2
//10 28 00 00 
_as3_jump offset: 40
//2c cb 05 
_as3_pushstring "
"
//d2 
_as3_getlocal <2> 
//1a 06 00 00 
_as3_ifstrictne offset: 6
//24 03 
_as3_pushbyte 3
//10 1a 00 00 
_as3_jump offset: 26
//2c cc 05 
_as3_pushstring ""
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
//1b a3 ff ff 05 a0 ff ff a0 ff ff a0 ff ff a0 ff ff a0 ff ff a3 ff ff 
_as3_lookupswitch -93(5)[-96, -96, -96, -96, -96, -93]
        }// end function

        public static function substitute(param1:String, ... args) : String
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
//d1 
_as3_getlocal <1> 
//20 
_as3_pushnull 
//14 03 00 00 
_as3_ifne offset: 3
//2c 03 
_as3_pushstring ""
//48 
_as3_returnvalue 
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
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
//12 17 00 00 
_as3_iffalse offset: 23
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
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//66 e9 02 
_as3_getproperty length
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//10 05 00 00 
_as3_jump offset: 5
//d2 
_as3_getlocal <2> 
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//10 25 00 00 
_as3_jump offset: 37
//09 
_as3_label 
//d1 
_as3_getlocal <1> 
//5d c0 03 
_as3_findpropstrict RegExp
//2c ce 05 
_as3_pushstring "\{"
//62 05 
_as3_getlocal <5>
//a0 
_as3_add 
//2c cf 05 
_as3_pushstring "\}"
//a0 
_as3_add 
//2c d0 05 
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
//c2 05 
_as3_inclocal_i <5>
//62 05 
_as3_getlocal <5>
//d3 
_as3_getlocal <3> 
//15 d4 ff ff 
_as3_iflt offset: -44
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public static function trimArrayElements(param1:String, param2:String) : String
        {
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
//d1 
_as3_getlocal <1> 
//2c 03 
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
//12 46 00 00 
_as3_iffalse offset: 70
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
//d3 
_as3_getlocal <3> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 04 
_as3_setlocal <4>
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//10 16 00 00 
_as3_jump offset: 22
//09 
_as3_label 
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
//c2 05 
_as3_inclocal_i <5>
//62 05 
_as3_getlocal <5>
//62 04 
_as3_getlocal <4>
//15 e2 ff ff 
_as3_iflt offset: -30
//62 04 
_as3_getlocal <4>
//24 00 
_as3_pushbyte 0
//0e 08 00 00 
_as3_ifngt offset: 8
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
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

    }
}
