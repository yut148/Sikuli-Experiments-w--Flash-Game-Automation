package mx.resources
{
    import flash.system.*;

    public class ResourceBundle extends Object implements IResourceBundle
    {
        var _locale:String;
        private var _content:Object;
        var _bundleName:String;
        static const VERSION:String = "3.5.0.12683";
        static var backupApplicationDomain:ApplicationDomain;
        static var locale:String;

        public function ResourceBundle(:String = null, :String = null)
        {
1  0 1741  1 174//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 ae 01 
_as3_debugline line number: 174
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e3 02 00 ae 01 
_as3_debug 1, 355, 0, 174
//ef 01 e4 02 01 ae 01 
_as3_debug 1, 356, 1, 174
//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 e1 01 
_as3_debugline line number: 225
//5e 4d 
_as3_findproperty mx.resources:ResourceBundle::_content
//55 00 
_as3_newobject {object count:0}
//68 4d 
_as3_initproperty mx.resources:ResourceBundle::_content
//f0 b9 01 
_as3_debugline line number: 185
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 bb 01 
_as3_debugline line number: 187
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9d 03 
_as3_findpropstrict _locale
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//d1 
_as3_getlocal <1> 
//61 9d 03 
_as3_setproperty _locale
//f0 bc 01 
_as3_debugline line number: 188
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9e 03 
_as3_findpropstrict _bundleName
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//d2 
_as3_getlocal <2> 
//61 9e 03 
_as3_setproperty _bundleName
//f0 be 01 
_as3_debugline line number: 190
//5e 4d 
_as3_findproperty mx.resources:ResourceBundle::_content
//5d 4e 
_as3_findpropstrict mx.resources:ResourceBundle::getContent
//46 4e 00 
_as3_callproperty mx.resources:ResourceBundle::getContent(param count:0)
//68 4d 
_as3_initproperty mx.resources:ResourceBundle::_content
//f0 bf 01 
_as3_debugline line number: 191
//47 
_as3_returnvoid 
        }// end function

        protected function getContent() : Object
        {
//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 8e 02 
_as3_debugline line number: 270
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 90 02 
_as3_debugline line number: 272
//55 00 
_as3_newobject {object count:0}
//48 
_as3_returnvalue 
        }// end function

        public function getString(modules_alliance_AllianceView_mx_core_FlexModuleFactory:String) : String
        {
1  0 364//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 ec 02 
_as3_debugline line number: 364
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b8 06 00 ec 02 
_as3_debug 1, 824, 0, 364
//f0 ee 02 
_as3_debugline line number: 366
//5d 05 
_as3_findpropstrict String
//5d 55 
_as3_findpropstrict mx.resources:ResourceBundle::_getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty mx.resources:ResourceBundle::_getObject(param count:1)
//46 05 01 
_as3_callproperty String(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function get content() : Object
        {
//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 e6 01 
_as3_debugline line number: 230
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 e8 01 
_as3_debugline line number: 232
//60 4d 
_as3_getlex mx.resources:ResourceBundle::_content
//48 
_as3_returnvalue 
        }// end function

        public function getBoolean(info:String, info:Boolean = true) : Boolean
        {
1  0 3021  1 3021  2 304//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 ae 02 
_as3_debugline line number: 302
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b8 06 00 ae 02 
_as3_debug 1, 824, 0, 302
//ef 01 b9 06 01 ae 02 
_as3_debug 1, 825, 1, 302
//ef 01 ba 06 02 b0 02 
_as3_debug 1, 826, 2, 304
//f0 b0 02 
_as3_debugline line number: 304
//5d 55 
_as3_findpropstrict mx.resources:ResourceBundle::_getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty mx.resources:ResourceBundle::_getObject(param count:1)
//46 9f 03 00 
_as3_callproperty toLowerCase(param count:0)
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 b2 02 
_as3_debugline line number: 306
//d3 
_as3_getlocal <3> 
//2c bd 06 
_as3_pushstring "false"
//14 05 00 00 
_as3_ifne offset: 5
//f0 b3 02 
_as3_debugline line number: 307
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
//f0 b4 02 
_as3_debugline line number: 308
//d3 
_as3_getlocal <3> 
//2c be 06 
_as3_pushstring "true"
//14 05 00 00 
_as3_ifne offset: 5
//f0 b5 02 
_as3_debugline line number: 309
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//f0 b7 02 
_as3_debugline line number: 311
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function getStringArray(locale:String) : Array
        {
1  0 3981  1 4001  2 4021  3 403//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 8e 03 
_as3_debugline line number: 398
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b8 06 00 8e 03 
_as3_debug 1, 824, 0, 398
//ef 01 bf 06 01 90 03 
_as3_debug 1, 831, 1, 400
//ef 01 e2 04 02 92 03 
_as3_debug 1, 610, 2, 402
//ef 01 e3 04 03 93 03 
_as3_debug 1, 611, 3, 403
//f0 90 03 
_as3_debugline line number: 400
//5d 55 
_as3_findpropstrict mx.resources:ResourceBundle::_getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty mx.resources:ResourceBundle::_getObject(param count:1)
//2c c0 06 
_as3_pushstring ","
//46 a0 03 01 
_as3_callproperty split(param count:1)
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//f0 92 03 
_as3_debugline line number: 402
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//f0 93 03 
_as3_debugline line number: 403
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//10 1c 00 00 
_as3_jump offset: 28
//09 
_as3_label 
//f0 95 03 
_as3_debugline line number: 405
//d2 
_as3_getlocal <2> 
//62 04 
_as3_getlocal <4>
//60 aa 01 
_as3_getlex mx.utils::StringUtil
//d2 
_as3_getlocal <2> 
//62 04 
_as3_getlocal <4>
//66 a1 03 
_as3_getproperty {}
//46 c2 02 01 
_as3_callproperty trim(param count:1)
//61 a1 03 
_as3_setproperty {}
//f0 93 03 
_as3_debugline line number: 403
//c2 04 
_as3_inclocal_i <4>
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//15 dd ff ff 
_as3_iflt offset: -35
//f0 98 03 
_as3_debugline line number: 408
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function getObject(IResourceBundle:String) : Object
        {
1  0 434//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 b2 03 
_as3_debugline line number: 434
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b8 06 00 b2 03 
_as3_debug 1, 824, 0, 434
//f0 b4 03 
_as3_debugline line number: 436
//5d 55 
_as3_findpropstrict mx.resources:ResourceBundle::_getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty mx.resources:ResourceBundle::_getObject(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private function _getObject(IResourceBundle:String) : Object
        {
1  0 4421  1 444//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 ba 03 
_as3_debugline line number: 442
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b8 06 00 ba 03 
_as3_debug 1, 824, 0, 442
//ef 01 6e 01 bc 03 
_as3_debug 1, 110, 1, 444
//f0 bc 03 
_as3_debugline line number: 444
//60 50 
_as3_getlex content
//d1 
_as3_getlocal <1> 
//66 a1 03 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//f0 bd 03 
_as3_debugline line number: 445
//d2 
_as3_getlocal <2> 
//11 1a 00 00 
_as3_iftrue offset: 26
//f0 bf 03 
_as3_debugline line number: 447
//5d 83 03 
_as3_findpropstrict Error
//2c c2 06 
_as3_pushstring "Key "
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//2c c3 06 
_as3_pushstring " was not found in resource bundle "
//f0 c0 03 
_as3_debugline line number: 448
//a0 
_as3_add 
//60 57 
_as3_getlex bundleName
//a0 
_as3_add 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//f0 c2 03 
_as3_debugline line number: 450
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function get locale() : String
        {
//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 f8 01 
_as3_debugline line number: 248
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 fa 01 
_as3_debugline line number: 250
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9d 03 
_as3_findpropstrict _locale
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 9d 03 
_as3_getproperty _locale
//48 
_as3_returnvalue 
        }// end function

        public function get bundleName() : String
        {
//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 d4 01 
_as3_debugline line number: 212
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 d6 01 
_as3_debugline line number: 214
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9e 03 
_as3_findpropstrict _bundleName
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 9e 03 
_as3_getproperty _bundleName
//48 
_as3_returnvalue 
        }// end function

        public function getNumber(create:String) : Number
        {
1  0 337//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 d1 02 
_as3_debugline line number: 337
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 b8 06 00 d1 02 
_as3_debug 1, 824, 0, 337
//f0 d3 02 
_as3_debugline line number: 339
//5d 0b 
_as3_findpropstrict Number
//5d 55 
_as3_findpropstrict mx.resources:ResourceBundle::_getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty mx.resources:ResourceBundle::_getObject(param count:1)
//46 0b 01 
_as3_callproperty Number(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private static function getClassByName(displayError:String, displayError:ApplicationDomain) : Class
        {
1  0 1491  1 1491  2 152//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 95 01 
_as3_debugline line number: 149
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//d7 
_as3_setlocal <3> 
//ef 01 89 05 00 95 01 
_as3_debug 1, 649, 0, 149
//ef 01 8a 05 01 95 01 
_as3_debug 1, 650, 1, 149
//ef 01 9f 05 02 98 01 
_as3_debug 1, 671, 2, 152
//f0 9a 01 
_as3_debugline line number: 154
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 0f 00 00 
_as3_iffalse offset: 15
//f0 9b 01 
_as3_debugline line number: 155
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//60 0a 
_as3_getlex Class
//87 
_as3_astypelate 
//80 0a 
_as3_coerce Class
//d7 
_as3_setlocal <3> 
//f0 9d 01 
_as3_debugline line number: 157
//d3 
_as3_getlocal <3> 
//48 
_as3_returnvalue 
        }// end function

        public static function getResourceBundle(installCompiledResourceBundles:String, installCompiledResourceBundles:ApplicationDomain = null) : ResourceBundle
        {
1  0 951  1 951  2 1031  3 1041  4 1351  5 138//f1 b3 06 
_as3_debugfile "C:\work\flex\sdk\frameworks\projects\framework\src;mx\resources;ResourceBundle.as"
//f0 5f 
_as3_debugline line number: 95
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
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//63 05 
_as3_setlocal <5>
//20 
_as3_pushnull 
//80 08 
_as3_coerce mx.resources::ResourceBundle
//63 06 
_as3_setlocal <6>
//ef 01 46 00 5f 
_as3_debug 1, 70, 0, 95
//ef 01 8c 05 01 5f 
_as3_debug 1, 652, 1, 95
//ef 01 b4 06 02 67 
_as3_debug 1, 820, 2, 103
//ef 01 b5 06 03 68 
_as3_debug 1, 821, 3, 104
//f0 64 
_as3_debugline line number: 100
//d2 
_as3_getlocal <2> 
//11 0a 00 00 
_as3_iftrue offset: 10
//f0 65 
_as3_debugline line number: 101
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//80 09 
_as3_coerce flash.system::ApplicationDomain
//d6 
_as3_setlocal <2> 
//f0 6a 
_as3_debugline line number: 106
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9b 03 
_as3_findpropstrict locale
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 9b 03 
_as3_getproperty locale
//2c 41 
_as3_pushstring "$"
//a0 
_as3_add 
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//2c 44 
_as3_pushstring "_properties"
//a0 
_as3_add 
//d7 
_as3_setlocal <3> 
//f0 6b 
_as3_debugline line number: 107
//5d a7 02 
_as3_findpropstrict mx.resources:ResourceBundle::getClassByName
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 a7 02 02 
_as3_callproperty mx.resources:ResourceBundle::getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//f0 6d 
_as3_debugline line number: 109
//62 04 
_as3_getlocal <4>
//11 16 00 00 
_as3_iftrue offset: 22
//f0 6f 
_as3_debugline line number: 111
//d1 
_as3_getlocal <1> 
//2c 44 
_as3_pushstring "_properties"
//a0 
_as3_add 
//d7 
_as3_setlocal <3> 
//f0 70 
_as3_debugline line number: 112
//5d a7 02 
_as3_findpropstrict mx.resources:ResourceBundle::getClassByName
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 a7 02 02 
_as3_callproperty mx.resources:ResourceBundle::getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//f0 73 
_as3_debugline line number: 115
//62 04 
_as3_getlocal <4>
//11 14 00 00 
_as3_iftrue offset: 20
//f0 75 
_as3_debugline line number: 117
//d1 
_as3_getlocal <1> 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 76 
_as3_debugline line number: 118
//5d a7 02 
_as3_findpropstrict mx.resources:ResourceBundle::getClassByName
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 a7 02 02 
_as3_callproperty mx.resources:ResourceBundle::getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//f0 79 
_as3_debugline line number: 121
//62 04 
_as3_getlocal <4>
//96 
_as3_not 
//2a 
_as3_dup 
//12 14 00 00 
_as3_iffalse offset: 20
//29 
_as3_pop 
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9c 03 
_as3_findpropstrict backupApplicationDomain
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 9c 03 
_as3_getproperty backupApplicationDomain
//76 
_as3_convert_b 
//12 56 00 00 
_as3_iffalse offset: 86
//f0 7b 
_as3_debugline line number: 123
//d1 
_as3_getlocal <1> 
//2c 44 
_as3_pushstring "_properties"
//a0 
_as3_add 
//d7 
_as3_setlocal <3> 
//f0 7c 
_as3_debugline line number: 124
//5d a7 02 
_as3_findpropstrict mx.resources:ResourceBundle::getClassByName
//d3 
_as3_getlocal <3> 
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9c 03 
_as3_findpropstrict backupApplicationDomain
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 9c 03 
_as3_getproperty backupApplicationDomain
//46 a7 02 02 
_as3_callproperty mx.resources:ResourceBundle::getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//f0 7e 
_as3_debugline line number: 126
//62 04 
_as3_getlocal <4>
//11 27 00 00 
_as3_iftrue offset: 39
//f0 80 01 
_as3_debugline line number: 128
//d1 
_as3_getlocal <1> 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//f0 81 01 
_as3_debugline line number: 129
//5d a7 02 
_as3_findpropstrict mx.resources:ResourceBundle::getClassByName
//d3 
_as3_getlocal <3> 
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//5d 9c 03 
_as3_findpropstrict backupApplicationDomain
//60 e7 02 
_as3_getlex mx.core::mx_internal
//80 9a 03 
_as3_coerce Namespace
//66 9c 03 
_as3_getproperty backupApplicationDomain
//46 a7 02 02 
_as3_callproperty mx.resources:ResourceBundle::getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//f0 85 01 
_as3_debugline line number: 133
//62 04 
_as3_getlocal <4>
//12 38 00 00 
_as3_iffalse offset: 56
//ef 01 49 04 87 01 
_as3_debug 1, 73, 4, 135
//f0 87 01 
_as3_debugline line number: 135
//62 04 
_as3_getlocal <4>
//42 00 
_as3_construct (param count:0)
//80 03 
_as3_coerce Object
//63 05 
_as3_setlocal <5>
//f0 88 01 
_as3_debugline line number: 136
//62 05 
_as3_getlocal <5>
//60 08 
_as3_getlex mx.resources::ResourceBundle
//b3 
_as3_istypelate 
//12 1b 00 00 
_as3_iffalse offset: 27
//ef 01 b6 06 05 8a 01 
_as3_debug 1, 822, 5, 138
//f0 8a 01 
_as3_debugline line number: 138
//d0 
_as3_getlocal <0> 
//65 00 
_as3_getscopeobject 0
//62 05 
_as3_getlocal <5>
//41 01 
_as3_call (param count:1)
//80 08 
_as3_coerce mx.resources::ResourceBundle
//63 06 
_as3_setlocal <6>
//f0 8b 01 
_as3_debugline line number: 139
//62 06 
_as3_getlocal <6>
//48 
_as3_returnvalue 
//f0 8f 01 
_as3_debugline line number: 143
//5d 83 03 
_as3_findpropstrict Error
//2c b7 06 
_as3_pushstring "Could not find resource bundle "
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
        }// end function

    }
}
