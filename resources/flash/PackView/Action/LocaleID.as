package 
{

    private class LocaleID extends Object
    {
        private var privateLangs:Boolean = false;
        private var script:String = "";
        private var variants:Array;
        private var privates:Array;
        private var extensions:Object;
        private var lang:String = "";
        private var region:String = "";
        private var extended_langs:Array;
        public static const STATE_PRIMARY_LANGUAGE:int = 0;
        public static const STATE_REGION:int = 3;
        public static const STATE_EXTENDED_LANGUAGES:int = 1;
        public static const STATE_EXTENSIONS:int = 5;
        public static const STATE_SCRIPT:int = 2;
        public static const STATE_VARIANTS:int = 4;
        public static const STATE_PRIVATES:int = 6;

        private function LocaleID()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e f0 01 
_as3_findproperty extended_langs
//56 00 
_as3_newarray [array size:0]
//68 f0 01 
_as3_initproperty extended_langs
//5e e9 01 
_as3_findproperty variants
//56 00 
_as3_newarray [array size:0]
//68 e9 01 
_as3_initproperty variants
//5e ec 01 
_as3_findproperty extensions
//55 00 
_as3_newobject {object count:0}
//68 ec 01 
_as3_initproperty extensions
//5e ea 01 
_as3_findproperty privates
//56 00 
_as3_newarray [array size:0]
//68 ea 01 
_as3_initproperty privates
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function equals(param1:LocaleID) : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d e8 01 
_as3_findpropstrict toString
//46 e8 01 00 
_as3_callproperty toString(param count:0)
//d1 
_as3_getlocal <1> 
//46 e8 01 00 
_as3_callproperty toString(param count:0)
//ab 
_as3_equals 
//48 
_as3_returnvalue 
        }// end function

        public function canonicalize() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//24 00 
_as3_pushbyte 0
//d6 
_as3_setlocal <2> 
//60 ec 01 
_as3_getlex extensions
//82 
_as3_coerce_a 
//d7 
_as3_setlocal <3> 
//10 40 00 00 
_as3_jump offset: 64
//09 
_as3_label 
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//1e 
_as3_nextname 
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//46 fd 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::hasOwnProperty(param count:1)
//12 2e 00 00 
_as3_iffalse offset: 46
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//66 fb 03 
_as3_getproperty {}
//66 fe 03 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//14 0c 00 00 
_as3_ifne offset: 12
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//6a fb 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//10 12 00 00 
_as3_jump offset: 18
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//66 fb 03 
_as3_getproperty {}
//46 ff 03 00 
_as3_callproperty sort(param count:0)
//61 fb 03 
_as3_setproperty {}
//32 03 02 
_as3_hasnext2 3, 2
//11 b9 ff ff 
_as3_iftrue offset: -71
//08 03 
_as3_kill <3>
//08 02 
_as3_kill <2>
//5e f0 01 
_as3_findproperty extended_langs
//60 f0 01 
_as3_getlex extended_langs
//46 80 04 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::sort(param count:0)
//68 f0 01 
_as3_initproperty extended_langs
//5e e9 01 
_as3_findproperty variants
//60 e9 01 
_as3_getlex variants
//46 80 04 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::sort(param count:0)
//68 e9 01 
_as3_initproperty variants
//5e ea 01 
_as3_findproperty privates
//60 ea 01 
_as3_getlex privates
//46 80 04 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::sort(param count:0)
//68 ea 01 
_as3_initproperty privates
//60 e7 01 
_as3_getlex script
//2c 03 
_as3_pushstring ""
//14 10 00 00 
_as3_ifne offset: 16
//5e e7 01 
_as3_findproperty script
//60 f1 01 
_as3_getlex LocaleRegistry
//60 ed 01 
_as3_getlex lang
//46 e0 02 01 
_as3_callproperty getScriptByLang(param count:1)
//68 e7 01 
_as3_initproperty script
//60 e7 01 
_as3_getlex script
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 08 00 00 
_as3_iffalse offset: 8
//29 
_as3_pop 
//60 ef 01 
_as3_getlex region
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//12 13 00 00 
_as3_iffalse offset: 19
//5e e7 01 
_as3_findproperty script
//60 f1 01 
_as3_getlex LocaleRegistry
//60 ed 01 
_as3_getlex lang
//60 ef 01 
_as3_getlex region
//46 dc 02 02 
_as3_callproperty getScriptByLangAndRegion(param count:2)
//68 e7 01 
_as3_initproperty script
//60 ef 01 
_as3_getlex region
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 08 00 00 
_as3_iffalse offset: 8
//29 
_as3_pop 
//60 e7 01 
_as3_getlex script
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//12 13 00 00 
_as3_iffalse offset: 19
//5e ef 01 
_as3_findproperty region
//60 f1 01 
_as3_getlex LocaleRegistry
//60 ed 01 
_as3_getlex lang
//60 e7 01 
_as3_getlex script
//46 e2 02 02 
_as3_callproperty getDefaultRegionForLangAndScript(param count:2)
//68 ef 01 
_as3_initproperty region
//47 
_as3_returnvoid 
        }// end function

        public function toString() : String
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
//60 ed 01 
_as3_getlex lang
//56 01 
_as3_newarray [array size:1]
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//5d d3 02 
_as3_findpropstrict appendElements
//d1 
_as3_getlocal <1> 
//60 f0 01 
_as3_getlex extended_langs
//4f d3 02 02 
_as3_callpropvoid appendElements(param count:2)
//60 e7 01 
_as3_getlex script
//2c 03 
_as3_pushstring ""
//13 08 00 00 
_as3_ifeq offset: 8
//d1 
_as3_getlocal <1> 
//60 e7 01 
_as3_getlex script
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//60 ef 01 
_as3_getlex region
//2c 03 
_as3_pushstring ""
//13 08 00 00 
_as3_ifeq offset: 8
//d1 
_as3_getlocal <1> 
//60 ef 01 
_as3_getlex region
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//5d d3 02 
_as3_findpropstrict appendElements
//d1 
_as3_getlocal <1> 
//60 e9 01 
_as3_getlex variants
//4f d3 02 02 
_as3_callpropvoid appendElements(param count:2)
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//60 ec 01 
_as3_getlex extensions
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 28 00 00 
_as3_jump offset: 40
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
//60 ec 01 
_as3_getlex extensions
//d2 
_as3_getlocal <2> 
//46 fd 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::hasOwnProperty(param count:1)
//12 15 00 00 
_as3_iffalse offset: 21
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//5d d3 02 
_as3_findpropstrict appendElements
//d1 
_as3_getlocal <1> 
//60 ec 01 
_as3_getlex extensions
//d2 
_as3_getlocal <2> 
//66 fb 03 
_as3_getproperty {}
//4f d3 02 02 
_as3_callpropvoid appendElements(param count:2)
//32 04 03 
_as3_hasnext2 4, 3
//11 d1 ff ff 
_as3_iftrue offset: -47
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//60 ea 01 
_as3_getlex privates
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 13 00 00 
_as3_ifngt offset: 19
//d1 
_as3_getlocal <1> 
//2c 81 03 
_as3_pushstring "x"
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//5d d3 02 
_as3_findpropstrict appendElements
//d1 
_as3_getlocal <1> 
//60 ea 01 
_as3_getlex privates
//4f d3 02 02 
_as3_callpropvoid appendElements(param count:2)
//d1 
_as3_getlocal <1> 
//2c fe 05 
_as3_pushstring "_"
//46 bf 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::join(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function isSiblingOf(param1:LocaleID) : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 ed 01 
_as3_getlex lang
//d1 
_as3_getlocal <1> 
//66 ed 01 
_as3_getproperty lang
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//60 e7 01 
_as3_getlex script
//d1 
_as3_getlocal <1> 
//66 e7 01 
_as3_getproperty script
//ab 
_as3_equals 
//48 
_as3_returnvalue 
        }// end function

        public function transformToParent() : Boolean
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
//20 
_as3_pushnull 
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//60 ea 01 
_as3_getlex privates
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 12 00 00 
_as3_ifngt offset: 18
//60 ea 01 
_as3_getlex privates
//60 ea 01 
_as3_getlex privates
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//60 ec 01 
_as3_getlex extensions
//82 
_as3_coerce_a 
//63 06 
_as3_setlocal <6>
//10 17 00 00 
_as3_jump offset: 23
//09 
_as3_label 
//62 06 
_as3_getlocal <6>
//62 05 
_as3_getlocal <5>
//1e 
_as3_nextname 
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//60 ec 01 
_as3_getlex extensions
//d2 
_as3_getlocal <2> 
//46 fd 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::hasOwnProperty(param count:1)
//12 03 00 00 
_as3_iffalse offset: 3
//d2 
_as3_getlocal <2> 
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//32 06 05 
_as3_hasnext2 6, 5
//11 e2 ff ff 
_as3_iftrue offset: -30
//08 06 
_as3_kill <6>
//08 05 
_as3_kill <5>
//d1 
_as3_getlocal <1> 
//12 2c 00 00 
_as3_iffalse offset: 44
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//66 fb 03 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//66 e9 02 
_as3_getproperty length
//24 01 
_as3_pushbyte 1
//14 0a 00 00 
_as3_ifne offset: 10
//60 ec 01 
_as3_getlex extensions
//d1 
_as3_getlocal <1> 
//6a fb 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//d3 
_as3_getlocal <3> 
//d3 
_as3_getlocal <3> 
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//60 e9 01 
_as3_getlex variants
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 12 00 00 
_as3_ifngt offset: 18
//60 e9 01 
_as3_getlex variants
//60 e9 01 
_as3_getlex variants
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//60 e7 01 
_as3_getlex script
//2c 03 
_as3_pushstring ""
//13 4c 00 00 
_as3_ifeq offset: 76
//60 f1 01 
_as3_getlex LocaleRegistry
//60 ed 01 
_as3_getlex lang
//46 e0 02 01 
_as3_callproperty getScriptByLang(param count:1)
//2c 03 
_as3_pushstring ""
//13 0a 00 00 
_as3_ifeq offset: 10
//5e e7 01 
_as3_findproperty script
//2c 03 
_as3_pushstring ""
//68 e7 01 
_as3_initproperty script
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//60 ef 01 
_as3_getlex region
//2c 03 
_as3_pushstring ""
//14 29 00 00 
_as3_ifne offset: 41
//60 f1 01 
_as3_getlex LocaleRegistry
//60 ed 01 
_as3_getlex lang
//60 e7 01 
_as3_getlex script
//46 e2 02 02 
_as3_callproperty getDefaultRegionForLangAndScript(param count:2)
//85 
_as3_coerce_s 
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//2c 03 
_as3_pushstring ""
//13 12 00 00 
_as3_ifeq offset: 18
//5e ef 01 
_as3_findproperty region
//62 04 
_as3_getlocal <4>
//68 ef 01 
_as3_initproperty region
//5e e7 01 
_as3_findproperty script
//2c 03 
_as3_pushstring ""
//68 e7 01 
_as3_initproperty script
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//60 ef 01 
_as3_getlex region
//2c 03 
_as3_pushstring ""
//13 27 00 00 
_as3_ifeq offset: 39
//60 e7 01 
_as3_getlex script
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 0e 00 00 
_as3_iffalse offset: 14
//29 
_as3_pop 
//60 f1 01 
_as3_getlex LocaleRegistry
//60 ed 01 
_as3_getlex lang
//46 e0 02 01 
_as3_callproperty getScriptByLang(param count:1)
//2c 03 
_as3_pushstring ""
//ab 
_as3_equals 
//11 0a 00 00 
_as3_iftrue offset: 10
//5e ef 01 
_as3_findproperty region
//2c 03 
_as3_pushstring ""
//68 ef 01 
_as3_initproperty region
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//60 f0 01 
_as3_getlex extended_langs
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 12 00 00 
_as3_ifngt offset: 18
//60 f0 01 
_as3_getlex extended_langs
//60 f0 01 
_as3_getlex extended_langs
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        private static function appendElements(param1:Array, param2:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//24 00 
_as3_pushbyte 0
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//74 
_as3_convert_u 
//63 04 
_as3_setlocal <4>
//10 0f 00 00 
_as3_jump offset: 15
//09 
_as3_label 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//d3 
_as3_getlocal <3> 
//66 fb 03 
_as3_getproperty {}
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//d3 
_as3_getlocal <3> 
//91 
_as3_increment 
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//62 04 
_as3_getlocal <4>
//15 ea ff ff 
_as3_iflt offset: -22
//47 
_as3_returnvoid 
        }// end function

        public static function fromString(param1:String) : LocaleID
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 0c 
_as3_coerce Array
//63 05 
_as3_setlocal <5>
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 08 
_as3_setlocal <8>
//24 00 
_as3_pushbyte 0
//63 09 
_as3_setlocal <9>
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//63 0a 
_as3_setlocal <10>
//d0 
_as3_getlocal <0> 
//42 00 
_as3_construct (param count:0)
//80 1d 
_as3_coerce LocaleID
//d6 
_as3_setlocal <2> 
//60 d4 02 
_as3_getlex STATE_PRIMARY_LANGUAGE
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//d1 
_as3_getlocal <1> 
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
//2c fe 05 
_as3_pushstring "_"
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//24 00 
_as3_pushbyte 0
//63 06 
_as3_setlocal <6>
//62 04 
_as3_getlocal <4>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 07 
_as3_setlocal <7>
//10 cc 01 00 
_as3_jump offset: 460
//09 
_as3_label 
//62 04 
_as3_getlocal <4>
//62 06 
_as3_getlocal <6>
//66 fb 03 
_as3_getproperty {}
//46 fc 03 00 
_as3_callproperty toLowerCase(param count:0)
//85 
_as3_coerce_s 
//63 08 
_as3_setlocal <8>
//d3 
_as3_getlocal <3> 
//60 d4 02 
_as3_getlex STATE_PRIMARY_LANGUAGE
//14 3f 00 00 
_as3_ifne offset: 63
//62 08 
_as3_getlocal <8>
//2c 81 03 
_as3_pushstring "x"
//14 09 00 00 
_as3_ifne offset: 9
//d2 
_as3_getlocal <2> 
//26 
_as3_pushtrue 
//61 e4 01 
_as3_setproperty privateLangs
//10 29 00 00 
_as3_jump offset: 41
//62 08 
_as3_getlocal <8>
//2c 8b 03 
_as3_pushstring "i"
//14 10 00 00 
_as3_ifne offset: 16
//d2 
_as3_getlocal <2> 
//d2 
_as3_getlocal <2> 
//66 ed 01 
_as3_getproperty lang
//2c ff 05 
_as3_pushstring "i-"
//a0 
_as3_add 
//61 ed 01 
_as3_setproperty lang
//10 10 00 00 
_as3_jump offset: 16
//d2 
_as3_getlocal <2> 
//d2 
_as3_getlocal <2> 
//66 ed 01 
_as3_getproperty lang
//62 08 
_as3_getlocal <8>
//a0 
_as3_add 
//61 ed 01 
_as3_setproperty lang
//60 d6 02 
_as3_getlex STATE_EXTENDED_LANGUAGES
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 74 01 00 
_as3_jump offset: 372
//62 08 
_as3_getlocal <8>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//2a 
_as3_dup 
//63 09 
_as3_setlocal <9>
//24 00 
_as3_pushbyte 0
//14 04 00 00 
_as3_ifne offset: 4
//10 61 01 00 
_as3_jump offset: 353
//62 08 
_as3_getlocal <8>
//24 00 
_as3_pushbyte 0
//46 bc 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::charAt(param count:1)
//46 d8 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toLowerCase(param count:0)
//85 
_as3_coerce_s 
//63 0a 
_as3_setlocal <10>
//d3 
_as3_getlocal <3> 
//60 d6 02 
_as3_getlex STATE_EXTENDED_LANGUAGES
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 06 00 00 
_as3_iffalse offset: 6
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 03 
_as3_pushbyte 3
//ab 
_as3_equals 
//12 20 00 00 
_as3_iffalse offset: 32
//d2 
_as3_getlocal <2> 
//66 f0 01 
_as3_getproperty extended_langs
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//d2 
_as3_getlocal <2> 
//66 f0 01 
_as3_getproperty extended_langs
//66 e9 02 
_as3_getproperty length
//24 03 
_as3_pushbyte 3
//14 05 00 00 
_as3_ifne offset: 5
//60 d8 02 
_as3_getlex STATE_SCRIPT
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 1e 01 00 
_as3_jump offset: 286
//d3 
_as3_getlocal <3> 
//60 d8 02 
_as3_getlex STATE_SCRIPT
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 06 00 00 
_as3_iffalse offset: 6
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 04 
_as3_pushbyte 4
//ab 
_as3_equals 
//12 0f 00 00 
_as3_iffalse offset: 15
//d2 
_as3_getlocal <2> 
//62 08 
_as3_getlocal <8>
//61 e7 01 
_as3_setproperty script
//60 d5 02 
_as3_getlex STATE_REGION
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 fb 00 00 
_as3_jump offset: 251
//d3 
_as3_getlocal <3> 
//60 d5 02 
_as3_getlex STATE_REGION
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 11 00 00 
_as3_iffalse offset: 17
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 02 
_as3_pushbyte 2
//ab 
_as3_equals 
//2a 
_as3_dup 
//11 06 00 00 
_as3_iftrue offset: 6
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 03 
_as3_pushbyte 3
//ab 
_as3_equals 
//12 0f 00 00 
_as3_iffalse offset: 15
//d2 
_as3_getlocal <2> 
//62 08 
_as3_getlocal <8>
//61 ef 01 
_as3_setproperty region
//60 da 02 
_as3_getlex STATE_VARIANTS
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 cd 00 00 
_as3_jump offset: 205
//d3 
_as3_getlocal <3> 
//60 da 02 
_as3_getlex STATE_VARIANTS
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 41 00 00 
_as3_iffalse offset: 65
//29 
_as3_pop 
//62 0a 
_as3_getlocal <10>
//2c 80 06 
_as3_pushstring "a"
//b0 
_as3_greaterequals 
//2a 
_as3_dup 
//12 07 00 00 
_as3_iffalse offset: 7
//29 
_as3_pop 
//62 0a 
_as3_getlocal <10>
//2c 81 06 
_as3_pushstring "z"
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 06 00 00 
_as3_iffalse offset: 6
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 05 
_as3_pushbyte 5
//b0 
_as3_greaterequals 
//2a 
_as3_dup 
//11 1e 00 00 
_as3_iftrue offset: 30
//29 
_as3_pop 
//62 0a 
_as3_getlocal <10>
//2c d4 04 
_as3_pushstring "0"
//b0 
_as3_greaterequals 
//2a 
_as3_dup 
//12 07 00 00 
_as3_iffalse offset: 7
//29 
_as3_pop 
//62 0a 
_as3_getlocal <10>
//2c 82 06 
_as3_pushstring "9"
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 06 00 00 
_as3_iffalse offset: 6
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 04 
_as3_pushbyte 4
//b0 
_as3_greaterequals 
//12 13 00 00 
_as3_iffalse offset: 19
//d2 
_as3_getlocal <2> 
//66 e9 01 
_as3_getproperty variants
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//60 da 02 
_as3_getlex STATE_VARIANTS
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 6b 00 00 
_as3_jump offset: 107
//d3 
_as3_getlocal <3> 
//60 db 02 
_as3_getlex STATE_PRIVATES
//ad 
_as3_lessthan 
//2a 
_as3_dup 
//12 06 00 00 
_as3_iffalse offset: 6
//29 
_as3_pop 
//62 09 
_as3_getlocal <9>
//24 01 
_as3_pushbyte 1
//ab 
_as3_equals 
//12 47 00 00 
_as3_iffalse offset: 71
//62 08 
_as3_getlocal <8>
//2c 81 03 
_as3_pushstring "x"
//14 11 00 00 
_as3_ifne offset: 17
//60 db 02 
_as3_getlex STATE_PRIVATES
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//d2 
_as3_getlocal <2> 
//66 ea 01 
_as3_getproperty privates
//80 0c 
_as3_coerce Array
//63 05 
_as3_setlocal <5>
//10 29 00 00 
_as3_jump offset: 41
//60 d7 02 
_as3_getlex STATE_EXTENSIONS
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//d2 
_as3_getlocal <2> 
//66 ec 01 
_as3_getproperty extensions
//62 08 
_as3_getlocal <8>
//66 fb 03 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//2a 
_as3_dup 
//11 05 00 00 
_as3_iftrue offset: 5
//29 
_as3_pop 
//56 00 
_as3_newarray [array size:0]
//80 0c 
_as3_coerce Array
//80 0c 
_as3_coerce Array
//63 05 
_as3_setlocal <5>
//d2 
_as3_getlocal <2> 
//66 ec 01 
_as3_getproperty extensions
//62 08 
_as3_getlocal <8>
//62 05 
_as3_getlocal <5>
//61 fb 03 
_as3_setproperty {}
//10 10 00 00 
_as3_jump offset: 16
//d3 
_as3_getlocal <3> 
//60 d7 02 
_as3_getlex STATE_EXTENSIONS
//0f 08 00 00 
_as3_ifnge offset: 8
//62 05 
_as3_getlocal <5>
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//c2 06 
_as3_inclocal_i <6>
//62 06 
_as3_getlocal <6>
//62 07 
_as3_getlocal <7>
//15 2c fe ff 
_as3_iflt offset: -468
//d2 
_as3_getlocal <2> 
//4f e6 01 00 
_as3_callpropvoid canonicalize(param count:0)
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

    }
}
