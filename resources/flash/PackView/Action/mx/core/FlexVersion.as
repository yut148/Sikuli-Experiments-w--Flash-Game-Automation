package mx.core
{

    public class FlexVersion extends Object
    {
        private static var compatibilityVersionChanged:Boolean = false;
        public static const VERSION_2_0_1:uint = 33554433;
        private static var _compatibilityErrorFunction:Function;
        public static const CURRENT_VERSION:uint = 50331648;
        public static const VERSION_3_0:uint = 50331648;
        public static const VERSION_2_0:uint = 33554432;
        private static var _compatibilityVersion:uint = 50331648;
        public static const VERSION_ALREADY_READ:String = "versionAlreadyRead";
        public static const VERSION_ALREADY_SET:String = "versionAlreadySet";
        static const VERSION:String = "3.5.0.12683";
        private static var compatibilityVersionRead:Boolean = false;

        public function FlexVersion()
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

        static function changeCompatibilityVersionString(param1:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//2c f4 02 
_as3_pushstring "."
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//5d b8 03 
_as3_findpropstrict parseInt
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//66 b9 03 
_as3_getproperty {}
//46 b8 03 01 
_as3_callproperty parseInt(param count:1)
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//5d b8 03 
_as3_findpropstrict parseInt
//d2 
_as3_getlocal <2> 
//24 01 
_as3_pushbyte 1
//66 b9 03 
_as3_getproperty {}
//46 b8 03 01 
_as3_callproperty parseInt(param count:1)
//74 
_as3_convert_u 
//63 04 
_as3_setlocal <4>
//5d b8 03 
_as3_findpropstrict parseInt
//d2 
_as3_getlocal <2> 
//24 02 
_as3_pushbyte 2
//66 b9 03 
_as3_getproperty {}
//46 b8 03 01 
_as3_callproperty parseInt(param count:1)
//74 
_as3_convert_u 
//63 05 
_as3_setlocal <5>
//5e bd 02 
_as3_findproperty _compatibilityVersion
//d3 
_as3_getlocal <3> 
//24 18 
_as3_pushbyte 24
//a5 
_as3_lshift 
//62 04 
_as3_getlocal <4>
//24 10 
_as3_pushbyte 16
//a5 
_as3_lshift 
//a0 
_as3_add 
//62 05 
_as3_getlocal <5>
//a0 
_as3_add 
//61 bd 02 
_as3_setproperty _compatibilityVersion
//47 
_as3_returnvoid 
        }// end function

        public static function set compatibilityVersion(param1:uint) : void
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
//d1 
_as3_getlocal <1> 
//60 bd 02 
_as3_getlex _compatibilityVersion
//14 01 00 00 
_as3_ifne offset: 1
//47 
_as3_returnvoid 
//60 b5 02 
_as3_getlex compatibilityVersionChanged
//12 2d 00 00 
_as3_iffalse offset: 45
//60 bb 02 
_as3_getlex compatibilityErrorFunction
//20 
_as3_pushnull 
//14 1a 00 00 
_as3_ifne offset: 26
//60 6b 
_as3_getlex mx.resources::ResourceManager
//46 ac 02 00 
_as3_callproperty getInstance(param count:0)
//2c b9 03 
_as3_pushstring "core"
//60 c0 02 
_as3_getlex VERSION_ALREADY_SET
//46 7c 02 
_as3_callproperty mx.resources:IResourceManager::getString(param count:2)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//5d 83 03 
_as3_findpropstrict Error
//d2 
_as3_getlocal <2> 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//5d bb 02 
_as3_findpropstrict compatibilityErrorFunction
//d1 
_as3_getlocal <1> 
//60 c0 02 
_as3_getlex VERSION_ALREADY_SET
//4f bb 02 02 
_as3_callpropvoid compatibilityErrorFunction(param count:2)
//60 c1 02 
_as3_getlex compatibilityVersionRead
//12 2d 00 00 
_as3_iffalse offset: 45
//60 bb 02 
_as3_getlex compatibilityErrorFunction
//20 
_as3_pushnull 
//14 1a 00 00 
_as3_ifne offset: 26
//60 6b 
_as3_getlex mx.resources::ResourceManager
//46 ac 02 00 
_as3_callproperty getInstance(param count:0)
//2c b9 03 
_as3_pushstring "core"
//60 be 02 
_as3_getlex VERSION_ALREADY_READ
//46 7c 02 
_as3_callproperty mx.resources:IResourceManager::getString(param count:2)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//5d 83 03 
_as3_findpropstrict Error
//d2 
_as3_getlocal <2> 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//5d bb 02 
_as3_findpropstrict compatibilityErrorFunction
//d1 
_as3_getlocal <1> 
//60 be 02 
_as3_getlex VERSION_ALREADY_READ
//4f bb 02 02 
_as3_callpropvoid compatibilityErrorFunction(param count:2)
//5e bd 02 
_as3_findproperty _compatibilityVersion
//d1 
_as3_getlocal <1> 
//61 bd 02 
_as3_setproperty _compatibilityVersion
//5e b5 02 
_as3_findproperty compatibilityVersionChanged
//26 
_as3_pushtrue 
//61 b5 02 
_as3_setproperty compatibilityVersionChanged
//47 
_as3_returnvoid 
        }// end function

        public static function get compatibilityVersion() : uint
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e c1 02 
_as3_findproperty compatibilityVersionRead
//26 
_as3_pushtrue 
//61 c1 02 
_as3_setproperty compatibilityVersionRead
//60 bd 02 
_as3_getlex _compatibilityVersion
//48 
_as3_returnvalue 
        }// end function

        public static function set compatibilityErrorFunction(param1:Function) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e b7 02 
_as3_findproperty _compatibilityErrorFunction
//d1 
_as3_getlocal <1> 
//61 b7 02 
_as3_setproperty _compatibilityErrorFunction
//47 
_as3_returnvoid 
        }// end function

        public static function set compatibilityVersionString(param1:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//2c f4 02 
_as3_pushstring "."
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//5d b8 03 
_as3_findpropstrict parseInt
//d2 
_as3_getlocal <2> 
//24 00 
_as3_pushbyte 0
//66 b9 03 
_as3_getproperty {}
//46 b8 03 01 
_as3_callproperty parseInt(param count:1)
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//5d b8 03 
_as3_findpropstrict parseInt
//d2 
_as3_getlocal <2> 
//24 01 
_as3_pushbyte 1
//66 b9 03 
_as3_getproperty {}
//46 b8 03 01 
_as3_callproperty parseInt(param count:1)
//74 
_as3_convert_u 
//63 04 
_as3_setlocal <4>
//5d b8 03 
_as3_findpropstrict parseInt
//d2 
_as3_getlocal <2> 
//24 02 
_as3_pushbyte 2
//66 b9 03 
_as3_getproperty {}
//46 b8 03 01 
_as3_callproperty parseInt(param count:1)
//74 
_as3_convert_u 
//63 05 
_as3_setlocal <5>
//5e b8 02 
_as3_findproperty compatibilityVersion
//d3 
_as3_getlocal <3> 
//24 18 
_as3_pushbyte 24
//a5 
_as3_lshift 
//62 04 
_as3_getlocal <4>
//24 10 
_as3_pushbyte 16
//a5 
_as3_lshift 
//a0 
_as3_add 
//62 05 
_as3_getlocal <5>
//a0 
_as3_add 
//61 b8 02 
_as3_setproperty compatibilityVersion
//47 
_as3_returnvoid 
        }// end function

        public static function get compatibilityErrorFunction() : Function
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 b7 02 
_as3_getlex _compatibilityErrorFunction
//48 
_as3_returnvalue 
        }// end function

        public static function get compatibilityVersionString() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 b8 02 
_as3_getlex compatibilityVersion
//24 18 
_as3_pushbyte 24
//a6 
_as3_rshift 
//25 ff 01 
_as3_pushshort 255
//a8 
_as3_bitand 
//74 
_as3_convert_u 
//d5 
_as3_setlocal <1> 
//60 b8 02 
_as3_getlex compatibilityVersion
//24 10 
_as3_pushbyte 16
//a6 
_as3_rshift 
//25 ff 01 
_as3_pushshort 255
//a8 
_as3_bitand 
//74 
_as3_convert_u 
//d6 
_as3_setlocal <2> 
//60 b8 02 
_as3_getlex compatibilityVersion
//2d 0c 
_as3_pushint 65535
//a8 
_as3_bitand 
//74 
_as3_convert_u 
//d7 
_as3_setlocal <3> 
//d1 
_as3_getlocal <1> 
//46 b6 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toString(param count:0)
//2c f4 02 
_as3_pushstring "."
//a0 
_as3_add 
//d2 
_as3_getlocal <2> 
//46 b6 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toString(param count:0)
//a0 
_as3_add 
//2c f4 02 
_as3_pushstring "."
//a0 
_as3_add 
//d3 
_as3_getlocal <3> 
//46 b6 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toString(param count:0)
//a0 
_as3_add 
//48 
_as3_returnvalue 
        }// end function

    }
}
