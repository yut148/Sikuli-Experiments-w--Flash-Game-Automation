package LocaleSorter.as$107
{
    import modules_alliance_AllianceView_mx_core_FlexModuleFactory.*;

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
//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 f9 02 
_as3_debugline line number: 377
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 96 03 
_as3_debugline line number: 406
//5e f0 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::extended_langs
//56 00 
_as3_newarray [array size:0]
//68 f0 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::extended_langs
//f0 9b 03 
_as3_debugline line number: 411
//5e e9 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::variants
//56 00 
_as3_newarray [array size:0]
//68 e9 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::variants
//f0 a0 03 
_as3_debugline line number: 416
//5e ec 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::extensions
//55 00 
_as3_newobject {object count:0}
//68 ec 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::extensions
//f0 a5 03 
_as3_debugline line number: 421
//5e ea 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::privates
//56 00 
_as3_newarray [array size:0]
//68 ea 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::privates
//f0 fb 02 
_as3_debugline line number: 379
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 fc 02 
_as3_debugline line number: 380
//47 
_as3_returnvoid 
        }// end function

        public function equals(_preloadedRSLs:LocaleID) : Boolean
        {
1  0 507//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 fb 03 
_as3_debugline line number: 507
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e3 02 00 fb 03 
_as3_debug 1, 355, 0, 507
//f0 fd 03 
_as3_debugline line number: 509
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
1  0 439//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 b5 03 
_as3_debugline line number: 437
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
//ef 01 e3 04 00 b7 03 
_as3_debug 1, 611, 0, 439
//f0 b7 03 
_as3_debugline line number: 439
//24 00 
_as3_pushbyte 0
//d6 
_as3_setlocal <2> 
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//82 
_as3_coerce_a 
//d7 
_as3_setlocal <3> 
//10 4c 00 00 
_as3_jump offset: 76
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
//f0 b9 03 
_as3_debugline line number: 441
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//46 fd 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::hasOwnProperty(param count:1)
//12 37 00 00 
_as3_iffalse offset: 55
//f0 bc 03 
_as3_debugline line number: 444
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//66 fb 03 
_as3_getproperty {}
//66 fe 03 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//14 0f 00 00 
_as3_ifne offset: 15
//f0 bd 03 
_as3_debugline line number: 445
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//6a fb 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//10 15 00 00 
_as3_jump offset: 21
//f0 bf 03 
_as3_debugline line number: 447
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//66 fb 03 
_as3_getproperty {}
//46 ff 03 00 
_as3_callproperty sort(param count:0)
//61 fb 03 
_as3_setproperty {}
//f0 b7 03 
_as3_debugline line number: 439
//32 03 02 
_as3_hasnext2 3, 2
//11 aa ff ff 
_as3_iftrue offset: -86
//08 03 
_as3_kill <3>
//08 02 
_as3_kill <2>
//f0 c3 03 
_as3_debugline line number: 451
//5e f0 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::extended_langs
//60 f0 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extended_langs
//46 80 04 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::sort(param count:0)
//68 f0 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::extended_langs
//f0 c4 03 
_as3_debugline line number: 452
//5e e9 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::variants
//60 e9 01 
_as3_getlex LocaleSorter.as$107:LocaleID::variants
//46 80 04 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::sort(param count:0)
//68 e9 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::variants
//f0 c5 03 
_as3_debugline line number: 453
//5e ea 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::privates
//60 ea 01 
_as3_getlex LocaleSorter.as$107:LocaleID::privates
//46 80 04 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::sort(param count:0)
//68 ea 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::privates
//f0 c7 03 
_as3_debugline line number: 455
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//2c 01 
_as3_pushstring ""
//14 13 00 00 
_as3_ifne offset: 19
//f0 c8 03 
_as3_debugline line number: 456
//5e e7 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::script
//60 f1 01 
_as3_getlex LocaleSorter.as$107::LocaleRegistry
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//46 e0 02 01 
_as3_callproperty getScriptByLang(param count:1)
//68 e7 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::script
//f0 cb 03 
_as3_debugline line number: 459
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//2c 01 
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
_as3_getlex LocaleSorter.as$107:LocaleID::region
//2c 01 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//12 16 00 00 
_as3_iffalse offset: 22
//f0 cc 03 
_as3_debugline line number: 460
//5e e7 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::script
//60 f1 01 
_as3_getlex LocaleSorter.as$107::LocaleRegistry
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//60 ef 01 
_as3_getlex LocaleSorter.as$107:LocaleID::region
//46 dc 02 02 
_as3_callproperty getScriptByLangAndRegion(param count:2)
//68 e7 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::script
//f0 ce 03 
_as3_debugline line number: 462
//60 ef 01 
_as3_getlex LocaleSorter.as$107:LocaleID::region
//2c 01 
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
_as3_getlex LocaleSorter.as$107:LocaleID::script
//2c 01 
_as3_pushstring ""
//ab 
_as3_equals 
//96 
_as3_not 
//12 19 00 00 
_as3_iffalse offset: 25
//f0 d0 03 
_as3_debugline line number: 464
//5e ef 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::region
//60 f1 01 
_as3_getlex LocaleSorter.as$107::LocaleRegistry
//f0 d1 03 
_as3_debugline line number: 465
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//46 e2 02 02 
_as3_callproperty getDefaultRegionForLangAndScript(param count:2)
//68 ef 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::region
//f0 d3 03 
_as3_debugline line number: 467
//47 
_as3_returnvoid 
        }// end function

        public function toString() : String
        {
1  0 4741  1 486//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 d8 03 
_as3_debugline line number: 472
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
//ef 01 88 09 00 da 03 
_as3_debug 1, 1160, 0, 474
//ef 01 e3 04 01 e6 03 
_as3_debug 1, 611, 1, 486
//f0 da 03 
_as3_debugline line number: 474
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//56 01 
_as3_newarray [array size:1]
//80 0c 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//f0 dc 03 
_as3_debugline line number: 476
//5d d3 02 
_as3_findpropstrict LocaleSorter.as$107:LocaleID::appendElements
//d1 
_as3_getlocal <1> 
//60 f0 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extended_langs
//4f d3 02 02 
_as3_callpropvoid LocaleSorter.as$107:LocaleID::appendElements(param count:2)
//f0 de 03 
_as3_debugline line number: 478
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//2c 01 
_as3_pushstring ""
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 df 03 
_as3_debugline line number: 479
//d1 
_as3_getlocal <1> 
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 e1 03 
_as3_debugline line number: 481
//60 ef 01 
_as3_getlex LocaleSorter.as$107:LocaleID::region
//2c 01 
_as3_pushstring ""
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 e2 03 
_as3_debugline line number: 482
//d1 
_as3_getlocal <1> 
//60 ef 01 
_as3_getlex LocaleSorter.as$107:LocaleID::region
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 e4 03 
_as3_debugline line number: 484
//5d d3 02 
_as3_findpropstrict LocaleSorter.as$107:LocaleID::appendElements
//d1 
_as3_getlocal <1> 
//60 e9 01 
_as3_getlex LocaleSorter.as$107:LocaleID::variants
//4f d3 02 02 
_as3_callpropvoid LocaleSorter.as$107:LocaleID::appendElements(param count:2)
//f0 e6 03 
_as3_debugline line number: 486
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 31 00 00 
_as3_jump offset: 49
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
//f0 e8 03 
_as3_debugline line number: 488
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d2 
_as3_getlocal <2> 
//46 fd 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::hasOwnProperty(param count:1)
//12 1b 00 00 
_as3_iffalse offset: 27
//f0 ea 03 
_as3_debugline line number: 490
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 eb 03 
_as3_debugline line number: 491
//5d d3 02 
_as3_findpropstrict LocaleSorter.as$107:LocaleID::appendElements
//d1 
_as3_getlocal <1> 
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d2 
_as3_getlocal <2> 
//66 fb 03 
_as3_getproperty {}
//4f d3 02 02 
_as3_callpropvoid LocaleSorter.as$107:LocaleID::appendElements(param count:2)
//f0 e6 03 
_as3_debugline line number: 486
//32 04 03 
_as3_hasnext2 4, 3
//11 c5 ff ff 
_as3_iftrue offset: -59
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//f0 ef 03 
_as3_debugline line number: 495
//60 ea 01 
_as3_getlex LocaleSorter.as$107:LocaleID::privates
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 19 00 00 
_as3_ifngt offset: 25
//f0 f1 03 
_as3_debugline line number: 497
//d1 
_as3_getlocal <1> 
//2c 96 05 
_as3_pushstring "x"
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 f2 03 
_as3_debugline line number: 498
//5d d3 02 
_as3_findpropstrict LocaleSorter.as$107:LocaleID::appendElements
//d1 
_as3_getlocal <1> 
//60 ea 01 
_as3_getlex LocaleSorter.as$107:LocaleID::privates
//4f d3 02 02 
_as3_callpropvoid LocaleSorter.as$107:LocaleID::appendElements(param count:2)
//f0 f5 03 
_as3_debugline line number: 501
//d1 
_as3_getlocal <1> 
//2c f8 08 
_as3_pushstring "_"
//46 bf 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::join(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function isSiblingOf(_preloadedRSLs:LocaleID) : Boolean
        {
1  0 515//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 83 04 
_as3_debugline line number: 515
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 89 09 00 83 04 
_as3_debug 1, 1161, 0, 515
//f0 85 04 
_as3_debugline line number: 517
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//d1 
_as3_getlocal <1> 
//66 ed 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::lang
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//d1 
_as3_getlocal <1> 
//66 e7 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::script
//ab 
_as3_equals 
//48 
_as3_returnvalue 
        }// end function

        public function transformToParent() : Boolean
        {
1  0 5311  1 5321  2 5401  3 567//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 8b 04 
_as3_debugline line number: 523
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
//ef 01 8a 09 00 93 04 
_as3_debug 1, 1162, 0, 531
//ef 01 e3 04 01 94 04 
_as3_debug 1, 611, 1, 532
//f0 8d 04 
_as3_debugline line number: 525
//60 ea 01 
_as3_getlex LocaleSorter.as$107:LocaleID::privates
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 18 00 00 
_as3_ifngt offset: 24
//f0 8f 04 
_as3_debugline line number: 527
//60 ea 01 
_as3_getlex LocaleSorter.as$107:LocaleID::privates
//60 ea 01 
_as3_getlex LocaleSorter.as$107:LocaleID::privates
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//f0 90 04 
_as3_debugline line number: 528
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 93 04 
_as3_debugline line number: 531
//20 
_as3_pushnull 
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//f0 94 04 
_as3_debugline line number: 532
//24 00 
_as3_pushbyte 0
//63 05 
_as3_setlocal <5>
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//82 
_as3_coerce_a 
//63 06 
_as3_setlocal <6>
//10 1d 00 00 
_as3_jump offset: 29
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
//f0 96 04 
_as3_debugline line number: 534
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d2 
_as3_getlocal <2> 
//46 fd 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::hasOwnProperty(param count:1)
//12 06 00 00 
_as3_iffalse offset: 6
//f0 97 04 
_as3_debugline line number: 535
//d2 
_as3_getlocal <2> 
//85 
_as3_coerce_s 
//d5 
_as3_setlocal <1> 
//f0 94 04 
_as3_debugline line number: 532
//32 06 05 
_as3_hasnext2 6, 5
//11 d9 ff ff 
_as3_iftrue offset: -39
//08 06 
_as3_kill <6>
//08 05 
_as3_kill <5>
//f0 9a 04 
_as3_debugline line number: 538
//d1 
_as3_getlocal <1> 
//12 45 00 00 
_as3_iffalse offset: 69
//ef 01 8c 09 02 9c 04 
_as3_debug 1, 1164, 2, 540
//f0 9c 04 
_as3_debugline line number: 540
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//66 fb 03 
_as3_getproperty {}
//80 0c 
_as3_coerce Array
//d7 
_as3_setlocal <3> 
//f0 9d 04 
_as3_debugline line number: 541
//d3 
_as3_getlocal <3> 
//66 e9 02 
_as3_getproperty length
//24 01 
_as3_pushbyte 1
//14 10 00 00 
_as3_ifne offset: 16
//f0 9f 04 
_as3_debugline line number: 543
//60 ec 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extensions
//d1 
_as3_getlocal <1> 
//6a fb 03 
_as3_deleteproperty {}
//29 
_as3_pop 
//f0 a0 04 
_as3_debugline line number: 544
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 a2 04 
_as3_debugline line number: 546
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
//f0 a3 04 
_as3_debugline line number: 547
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 a6 04 
_as3_debugline line number: 550
//60 e9 01 
_as3_getlex LocaleSorter.as$107:LocaleID::variants
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 18 00 00 
_as3_ifngt offset: 24
//f0 a8 04 
_as3_debugline line number: 552
//60 e9 01 
_as3_getlex LocaleSorter.as$107:LocaleID::variants
//60 e9 01 
_as3_getlex LocaleSorter.as$107:LocaleID::variants
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//f0 a9 04 
_as3_debugline line number: 553
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 ac 04 
_as3_debugline line number: 556
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//2c 01 
_as3_pushstring ""
//13 72 00 00 
_as3_ifeq offset: 114
//f0 af 04 
_as3_debugline line number: 559
//60 f1 01 
_as3_getlex LocaleSorter.as$107::LocaleRegistry
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//46 e0 02 01 
_as3_callproperty getScriptByLang(param count:1)
//2c 01 
_as3_pushstring ""
//13 10 00 00 
_as3_ifeq offset: 16
//f0 b1 04 
_as3_debugline line number: 561
//5e e7 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::script
//2c 01 
_as3_pushstring ""
//68 e7 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::script
//f0 b2 04 
_as3_debugline line number: 562
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 b4 04 
_as3_debugline line number: 564
//60 ef 01 
_as3_getlex LocaleSorter.as$107:LocaleID::region
//2c 01 
_as3_pushstring ""
//14 43 00 00 
_as3_ifne offset: 67
//ef 01 8d 09 03 b7 04 
_as3_debug 1, 1165, 3, 567
//f0 b8 04 
_as3_debugline line number: 568
//60 f1 01 
_as3_getlex LocaleSorter.as$107::LocaleRegistry
//f0 b9 04 
_as3_debugline line number: 569
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//46 e2 02 02 
_as3_callproperty getDefaultRegionForLangAndScript(param count:2)
//85 
_as3_coerce_s 
//63 04 
_as3_setlocal <4>
//f0 ba 04 
_as3_debugline line number: 570
//62 04 
_as3_getlocal <4>
//2c 01 
_as3_pushstring ""
//13 1b 00 00 
_as3_ifeq offset: 27
//f0 bc 04 
_as3_debugline line number: 572
//5e ef 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::region
//62 04 
_as3_getlocal <4>
//68 ef 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::region
//f0 bd 04 
_as3_debugline line number: 573
//5e e7 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::script
//2c 01 
_as3_pushstring ""
//68 e7 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::script
//f0 be 04 
_as3_debugline line number: 574
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 c3 04 
_as3_debugline line number: 579
//60 ef 01 
_as3_getlex LocaleSorter.as$107:LocaleID::region
//2c 01 
_as3_pushstring ""
//13 30 00 00 
_as3_ifeq offset: 48
//f0 c5 04 
_as3_debugline line number: 581
//60 e7 01 
_as3_getlex LocaleSorter.as$107:LocaleID::script
//2c 01 
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
_as3_getlex LocaleSorter.as$107::LocaleRegistry
//60 ed 01 
_as3_getlex LocaleSorter.as$107:LocaleID::lang
//46 e0 02 01 
_as3_callproperty getScriptByLang(param count:1)
//2c 01 
_as3_pushstring ""
//ab 
_as3_equals 
//11 10 00 00 
_as3_iftrue offset: 16
//f0 c7 04 
_as3_debugline line number: 583
//5e ef 01 
_as3_findproperty LocaleSorter.as$107:LocaleID::region
//2c 01 
_as3_pushstring ""
//68 ef 01 
_as3_initproperty LocaleSorter.as$107:LocaleID::region
//f0 c8 04 
_as3_debugline line number: 584
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 cc 04 
_as3_debugline line number: 588
//60 f0 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extended_langs
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//0e 18 00 00 
_as3_ifngt offset: 24
//f0 ce 04 
_as3_debugline line number: 590
//60 f0 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extended_langs
//60 f0 01 
_as3_getlex LocaleSorter.as$107:LocaleID::extended_langs
//66 e9 02 
_as3_getproperty length
//93 
_as3_decrement 
//24 01 
_as3_pushbyte 1
//4f 81 04 02 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::splice(param count:2)
//f0 cf 04 
_as3_debugline line number: 591
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 d2 04 
_as3_debugline line number: 594
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
        }// end function

        private static function appendElements(extended_langs:Array, extended_langs:Array) : void
        {
1  0 2481  1 2481  2 2501  3 250//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 f8 01 
_as3_debugline line number: 248
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 f9 08 00 f8 01 
_as3_debug 1, 1145, 0, 248
//ef 01 fa 08 01 f8 01 
_as3_debug 1, 1146, 1, 248
//ef 01 e3 04 02 fa 01 
_as3_debug 1, 611, 2, 250
//ef 01 fb 08 03 fa 01 
_as3_debug 1, 1147, 3, 250
//f0 fa 01 
_as3_debugline line number: 250
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
//10 15 00 00 
_as3_jump offset: 21
//09 
_as3_label 
//f0 fc 01 
_as3_debugline line number: 252
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
//f0 fa 01 
_as3_debugline line number: 250
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
//15 e4 ff ff 
_as3_iflt offset: -28
//f0 fe 01 
_as3_debugline line number: 254
//47 
_as3_returnvoid 
        }// end function

        public static function fromString(error:String) : LocaleID
        {
1  0 2591  1 2611  2 2631  3 2641  4 2661  5 2681  6 2681  7 2701  8 3021  9 306//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 83 02 
_as3_debugline line number: 259
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
//ef 01 9f 08 00 83 02 
_as3_debug 1, 1055, 0, 259
//ef 01 fc 08 01 85 02 
_as3_debug 1, 1148, 1, 261
//ef 01 cc 02 02 87 02 
_as3_debug 1, 332, 2, 263
//ef 01 fd 08 03 88 02 
_as3_debug 1, 1149, 3, 264
//ef 01 fe 08 04 8a 02 
_as3_debug 1, 1150, 4, 266
//ef 01 e3 04 05 8c 02 
_as3_debug 1, 611, 5, 268
//ef 01 f3 08 06 8c 02 
_as3_debug 1, 1139, 6, 268
//f0 85 02 
_as3_debugline line number: 261
//d0 
_as3_getlocal <0> 
//42 00 
_as3_construct (param count:0)
//80 1d 
_as3_coerce LocaleSorter.as$107::LocaleID
//d6 
_as3_setlocal <2> 
//f0 87 02 
_as3_debugline line number: 263
//60 d4 02 
_as3_getlex STATE_PRIMARY_LANGUAGE
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//f0 88 02 
_as3_debugline line number: 264
//d1 
_as3_getlocal <1> 
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
//2c f8 08 
_as3_pushstring "_"
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//63 04 
_as3_setlocal <4>
//f0 8c 02 
_as3_debugline line number: 268
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
//10 63 02 00 
_as3_jump offset: 611
//09 
_as3_label 
//ef 01 ff 08 07 8e 02 
_as3_debug 1, 1151, 7, 270
//f0 8e 02 
_as3_debugline line number: 270
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
//f0 90 02 
_as3_debugline line number: 272
//d3 
_as3_getlocal <3> 
//60 d4 02 
_as3_getlex STATE_PRIMARY_LANGUAGE
//14 51 00 00 
_as3_ifne offset: 81
//f0 92 02 
_as3_debugline line number: 274
//62 08 
_as3_getlocal <8>
//2c 96 05 
_as3_pushstring "x"
//14 0c 00 00 
_as3_ifne offset: 12
//f0 94 02 
_as3_debugline line number: 276
//d2 
_as3_getlocal <2> 
//26 
_as3_pushtrue 
//61 e4 01 
_as3_setproperty LocaleSorter.as$107:LocaleID::privateLangs
//10 35 00 00 
_as3_jump offset: 53
//f0 98 02 
_as3_debugline line number: 280
//62 08 
_as3_getlocal <8>
//2c e3 04 
_as3_pushstring "i"
//14 13 00 00 
_as3_ifne offset: 19
//f0 9a 02 
_as3_debugline line number: 282
//d2 
_as3_getlocal <2> 
//d2 
_as3_getlocal <2> 
//66 ed 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::lang
//2c 80 09 
_as3_pushstring "i-"
//a0 
_as3_add 
//61 ed 01 
_as3_setproperty LocaleSorter.as$107:LocaleID::lang
//10 16 00 00 
_as3_jump offset: 22
//f0 a0 02 
_as3_debugline line number: 288
//d2 
_as3_getlocal <2> 
//d2 
_as3_getlocal <2> 
//66 ed 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::lang
//62 08 
_as3_getlocal <8>
//a0 
_as3_add 
//61 ed 01 
_as3_setproperty LocaleSorter.as$107:LocaleID::lang
//f0 a1 02 
_as3_debugline line number: 289
//60 d6 02 
_as3_getlex STATE_EXTENDED_LANGUAGES
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 e9 01 00 
_as3_jump offset: 489
//ef 01 81 09 08 ae 02 
_as3_debug 1, 1153, 8, 302
//ef 01 82 09 09 b2 02 
_as3_debug 1, 1154, 9, 306
//f0 ae 02 
_as3_debugline line number: 302
//62 08 
_as3_getlocal <8>
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//63 09 
_as3_setlocal <9>
//f0 af 02 
_as3_debugline line number: 303
//62 09 
_as3_getlocal <9>
//24 00 
_as3_pushbyte 0
//14 07 00 00 
_as3_ifne offset: 7
//f0 b0 02 
_as3_debugline line number: 304
//10 be 01 00 
_as3_jump offset: 446
//f0 b2 02 
_as3_debugline line number: 306
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
//f0 b4 02 
_as3_debugline line number: 308
//d3 
_as3_getlocal <3> 
//60 d6 02 
_as3_getlex STATE_EXTENDED_LANGUAGES
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//f0 b5 02 
_as3_debugline line number: 309
//62 09 
_as3_getlocal <9>
//24 03 
_as3_pushbyte 3
//ab 
_as3_equals 
//12 29 00 00 
_as3_iffalse offset: 41
//f0 b7 02 
_as3_debugline line number: 311
//d2 
_as3_getlocal <2> 
//66 f0 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::extended_langs
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 b8 02 
_as3_debugline line number: 312
//d2 
_as3_getlocal <2> 
//66 f0 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::extended_langs
//66 e9 02 
_as3_getproperty length
//24 03 
_as3_pushbyte 3
//14 08 00 00 
_as3_ifne offset: 8
//f0 bb 02 
_as3_debugline line number: 315
//60 d8 02 
_as3_getlex STATE_SCRIPT
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 69 01 00 
_as3_jump offset: 361
//f0 be 02 
_as3_debugline line number: 318
//d3 
_as3_getlocal <3> 
//60 d8 02 
_as3_getlex STATE_SCRIPT
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//f0 bf 02 
_as3_debugline line number: 319
//62 09 
_as3_getlocal <9>
//24 04 
_as3_pushbyte 4
//ab 
_as3_equals 
//12 15 00 00 
_as3_iffalse offset: 21
//f0 c1 02 
_as3_debugline line number: 321
//d2 
_as3_getlocal <2> 
//62 08 
_as3_getlocal <8>
//61 e7 01 
_as3_setproperty LocaleSorter.as$107:LocaleID::script
//f0 c2 02 
_as3_debugline line number: 322
//60 d5 02 
_as3_getlex STATE_REGION
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 3a 01 00 
_as3_jump offset: 314
//f0 c4 02 
_as3_debugline line number: 324
//d3 
_as3_getlocal <3> 
//60 d5 02 
_as3_getlex STATE_REGION
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 14 00 00 
_as3_iffalse offset: 20
//29 
_as3_pop 
//f0 c5 02 
_as3_debugline line number: 325
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
//12 15 00 00 
_as3_iffalse offset: 21
//f0 c7 02 
_as3_debugline line number: 327
//d2 
_as3_getlocal <2> 
//62 08 
_as3_getlocal <8>
//61 ef 01 
_as3_setproperty LocaleSorter.as$107:LocaleID::region
//f0 c8 02 
_as3_debugline line number: 328
//60 da 02 
_as3_getlex STATE_VARIANTS
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 00 01 00 
_as3_jump offset: 256
//f0 ca 02 
_as3_debugline line number: 330
//d3 
_as3_getlocal <3> 
//60 da 02 
_as3_getlex STATE_VARIANTS
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 4d 00 00 
_as3_iffalse offset: 77
//29 
_as3_pop 
//f0 cb 02 
_as3_debugline line number: 331
//62 0a 
_as3_getlocal <10>
//2c 83 09 
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
//2c 84 09 
_as3_pushstring "z"
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//f0 cc 02 
_as3_debugline line number: 332
//62 09 
_as3_getlocal <9>
//24 05 
_as3_pushbyte 5
//b0 
_as3_greaterequals 
//2a 
_as3_dup 
//11 24 00 00 
_as3_iftrue offset: 36
//29 
_as3_pop 
//f0 cd 02 
_as3_debugline line number: 333
//62 0a 
_as3_getlocal <10>
//2c 9b 07 
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
//2c 85 09 
_as3_pushstring "9"
//ae 
_as3_lessequals 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//f0 ce 02 
_as3_debugline line number: 334
//62 09 
_as3_getlocal <9>
//24 04 
_as3_pushbyte 4
//b0 
_as3_greaterequals 
//12 19 00 00 
_as3_iffalse offset: 25
//f0 d1 02 
_as3_debugline line number: 337
//d2 
_as3_getlocal <2> 
//66 e9 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::variants
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 d2 02 
_as3_debugline line number: 338
//60 da 02 
_as3_getlex STATE_VARIANTS
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//10 89 00 00 
_as3_jump offset: 137
//f0 d4 02 
_as3_debugline line number: 340
//d3 
_as3_getlocal <3> 
//60 db 02 
_as3_getlex STATE_PRIVATES
//ad 
_as3_lessthan 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//f0 d5 02 
_as3_debugline line number: 341
//62 09 
_as3_getlocal <9>
//24 01 
_as3_pushbyte 1
//ab 
_as3_equals 
//12 59 00 00 
_as3_iffalse offset: 89
//f0 d8 02 
_as3_debugline line number: 344
//62 08 
_as3_getlocal <8>
//2c 96 05 
_as3_pushstring "x"
//14 17 00 00 
_as3_ifne offset: 23
//f0 da 02 
_as3_debugline line number: 346
//60 db 02 
_as3_getlex STATE_PRIVATES
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//f0 db 02 
_as3_debugline line number: 347
//d2 
_as3_getlocal <2> 
//66 ea 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::privates
//80 0c 
_as3_coerce Array
//63 05 
_as3_setlocal <5>
//10 32 00 00 
_as3_jump offset: 50
//f0 df 02 
_as3_debugline line number: 351
//60 d7 02 
_as3_getlex STATE_EXTENSIONS
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//f0 e0 02 
_as3_debugline line number: 352
//d2 
_as3_getlocal <2> 
//66 ec 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::extensions
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
//f0 e1 02 
_as3_debugline line number: 353
//d2 
_as3_getlocal <2> 
//66 ec 01 
_as3_getproperty LocaleSorter.as$107:LocaleID::extensions
//62 08 
_as3_getlocal <8>
//62 05 
_as3_getlocal <5>
//61 fb 03 
_as3_setproperty {}
//10 16 00 00 
_as3_jump offset: 22
//f0 e4 02 
_as3_debugline line number: 356
//d3 
_as3_getlocal <3> 
//60 d7 02 
_as3_getlex STATE_EXTENSIONS
//0f 0b 00 00 
_as3_ifnge offset: 11
//f0 e6 02 
_as3_debugline line number: 358
//62 05 
_as3_getlocal <5>
//62 08 
_as3_getlocal <8>
//4f ea 02 01 
_as3_callpropvoid http://adobe.com/AS3/2006/builtin::push(param count:1)
//f0 8c 02 
_as3_debugline line number: 268
//c2 06 
_as3_inclocal_i <6>
//62 06 
_as3_getlocal <6>
//62 07 
_as3_getlocal <7>
//15 95 fd ff 
_as3_iflt offset: -619
//f0 eb 02 
_as3_debugline line number: 363
//d2 
_as3_getlocal <2> 
//4f e6 01 00 
_as3_callpropvoid canonicalize(param count:0)
//f0 ed 02 
_as3_debugline line number: 365
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

    }
}
