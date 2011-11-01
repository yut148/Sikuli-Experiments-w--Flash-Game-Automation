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

        public function ResourceBundle(param1:String = null, param2:String = null)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 4d 
_as3_findproperty _content
//55 00 
_as3_newobject {object count:0}
//68 4d 
_as3_initproperty _content
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
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
//5e 4d 
_as3_findproperty _content
//5d 4e 
_as3_findpropstrict mx.resources:ResourceBundle::getContent
//46 4e 00 
_as3_callproperty mx.resources:ResourceBundle::getContent(param count:0)
//68 4d 
_as3_initproperty _content
//47 
_as3_returnvoid 
        }// end function

        protected function getContent() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//55 00 
_as3_newobject {object count:0}
//48 
_as3_returnvalue 
        }// end function

        public function getString(param1:String) : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 05 
_as3_findpropstrict String
//5d 55 
_as3_findpropstrict _getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty _getObject(param count:1)
//46 05 01 
_as3_callproperty String(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function get content() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 4d 
_as3_getlex _content
//48 
_as3_returnvalue 
        }// end function

        public function getBoolean(param1:String, param2:Boolean = true) : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 55 
_as3_findpropstrict _getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty _getObject(param count:1)
//46 9f 03 00 
_as3_callproperty toLowerCase(param count:0)
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//2c f7 03 
_as3_pushstring "false"
//14 02 00 00 
_as3_ifne offset: 2
//27 
_as3_pushfalse 
//48 
_as3_returnvalue 
//d3 
_as3_getlocal <3> 
//2c f8 03 
_as3_pushstring "true"
//14 02 00 00 
_as3_ifne offset: 2
//26 
_as3_pushtrue 
//48 
_as3_returnvalue 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function getStringArray(param1:String) : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 55 
_as3_findpropstrict _getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty _getObject(param count:1)
//2c f9 03 
_as3_pushstring ","
//46 a0 03 01 
_as3_callproperty split(param count:1)
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//66 e9 02 
_as3_getproperty length
//73 
_as3_convert_i 
//d7 
_as3_setlocal <3> 
//24 00 
_as3_pushbyte 0
//63 04 
_as3_setlocal <4>
//10 16 00 00 
_as3_jump offset: 22
//09 
_as3_label 
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
//c2 04 
_as3_inclocal_i <4>
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//15 e3 ff ff 
_as3_iflt offset: -29
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function getObject(param1:String) : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 55 
_as3_findpropstrict _getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty _getObject(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private function _getObject(param1:String) : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
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
//d2 
_as3_getlocal <2> 
//11 14 00 00 
_as3_iftrue offset: 20
//5d 83 03 
_as3_findpropstrict Error
//2c fb 03 
_as3_pushstring "Key "
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//2c fc 03 
_as3_pushstring " was not found in resource bundle "
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
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
        }// end function

        public function get locale() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
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
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
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

        public function getNumber(param1:String) : Number
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0b 
_as3_findpropstrict Number
//5d 55 
_as3_findpropstrict _getObject
//d1 
_as3_getlocal <1> 
//46 55 01 
_as3_callproperty _getObject(param count:1)
//46 0b 01 
_as3_callproperty Number(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private static function getClassByName(param1:String, param2:ApplicationDomain) : Class
        {
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
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 f7 02 01 
_as3_callproperty hasDefinition(param count:1)
//12 0c 00 00 
_as3_iffalse offset: 12
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
//d3 
_as3_getlocal <3> 
//48 
_as3_returnvalue 
        }// end function

        public static function getResourceBundle(param1:String, param2:ApplicationDomain = null) : ResourceBundle
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
//d2 
_as3_getlocal <2> 
//11 08 00 00 
_as3_iftrue offset: 8
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//80 09 
_as3_coerce flash.system::ApplicationDomain
//d6 
_as3_setlocal <2> 
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
//2c f3 03 
_as3_pushstring "$"
//a0 
_as3_add 
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//2c f4 03 
_as3_pushstring "_properties"
//a0 
_as3_add 
//d7 
_as3_setlocal <3> 
//5d a7 02 
_as3_findpropstrict getClassByName
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 a7 02 02 
_as3_callproperty getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 13 00 00 
_as3_iftrue offset: 19
//d1 
_as3_getlocal <1> 
//2c f4 03 
_as3_pushstring "_properties"
//a0 
_as3_add 
//d7 
_as3_setlocal <3> 
//5d a7 02 
_as3_findpropstrict getClassByName
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 a7 02 02 
_as3_callproperty getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//62 04 
_as3_getlocal <4>
//11 10 00 00 
_as3_iftrue offset: 16
//d1 
_as3_getlocal <1> 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//5d a7 02 
_as3_findpropstrict getClassByName
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//46 a7 02 02 
_as3_callproperty getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
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
//12 4a 00 00 
_as3_iffalse offset: 74
//d1 
_as3_getlocal <1> 
//2c f4 03 
_as3_pushstring "_properties"
//a0 
_as3_add 
//d7 
_as3_setlocal <3> 
//5d a7 02 
_as3_findpropstrict getClassByName
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
_as3_callproperty getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//11 21 00 00 
_as3_iftrue offset: 33
//d1 
_as3_getlocal <1> 
//85 
_as3_coerce_s 
//d7 
_as3_setlocal <3> 
//5d a7 02 
_as3_findpropstrict getClassByName
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
_as3_callproperty getClassByName(param count:2)
//80 0a 
_as3_coerce Class
//63 04 
_as3_setlocal <4>
//62 04 
_as3_getlocal <4>
//12 1d 00 00 
_as3_iffalse offset: 29
//62 04 
_as3_getlocal <4>
//42 00 
_as3_construct (param count:0)
//80 03 
_as3_coerce Object
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//60 08 
_as3_getlex mx.resources::ResourceBundle
//b3 
_as3_istypelate 
//12 0d 00 00 
_as3_iffalse offset: 13
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
//2a 
_as3_dup 
//63 06 
_as3_setlocal <6>
//48 
_as3_returnvalue 
//5d 83 03 
_as3_findpropstrict Error
//2c f5 03 
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
