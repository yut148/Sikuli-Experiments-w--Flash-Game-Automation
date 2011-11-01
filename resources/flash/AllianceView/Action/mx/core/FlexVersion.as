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
//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 fa 01 
_as3_debugline line number: 250
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 87 02 
_as3_debugline line number: 263
//47 
_as3_returnvoid 
        }// end function

        static function changeCompatibilityVersionString(chainedIOErrorHandler:String) : void
        {
1  0 2491  1 2521  2 2541  3 2551  4 256//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 f9 01 
_as3_debugline line number: 249
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 6e 00 f9 01 
_as3_debug 1, 110, 0, 249
//ef 01 9b 08 01 fc 01 
_as3_debug 1, 1051, 1, 252
//ef 01 99 08 02 fe 01 
_as3_debug 1, 1049, 2, 254
//ef 01 9a 08 03 ff 01 
_as3_debug 1, 1050, 3, 255
//ef 01 66 04 80 02 
_as3_debug 1, 102, 4, 256
//f0 fc 01 
_as3_debugline line number: 252
//d1 
_as3_getlocal <1> 
//2c 84 05 
_as3_pushstring "."
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//f0 fe 01 
_as3_debugline line number: 254
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
//f0 ff 01 
_as3_debugline line number: 255
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
//f0 80 02 
_as3_debugline line number: 256
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
//f0 82 02 
_as3_debugline line number: 258
//5e bd 02 
_as3_findproperty mx.core:FlexVersion::_compatibilityVersion
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
_as3_setproperty mx.core:FlexVersion::_compatibilityVersion
//f0 83 02 
_as3_debugline line number: 259
//47 
_as3_returnvoid 
        }// end function

        public static function set compatibilityVersion(chainedIOErrorHandler:uint) : void
        {
1  0 1701  1 175//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 aa 01 
_as3_debugline line number: 170
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
//ef 01 6e 00 aa 01 
_as3_debug 1, 110, 0, 170
//ef 01 98 08 01 af 01 
_as3_debug 1, 1048, 1, 175
//f0 ac 01 
_as3_debugline line number: 172
//d1 
_as3_getlocal <1> 
//60 bd 02 
_as3_getlex mx.core:FlexVersion::_compatibilityVersion
//14 04 00 00 
_as3_ifne offset: 4
//f0 ad 01 
_as3_debugline line number: 173
//47 
_as3_returnvoid 
//f0 b1 01 
_as3_debugline line number: 177
//60 b5 02 
_as3_getlex mx.core:FlexVersion::compatibilityVersionChanged
//12 3c 00 00 
_as3_iffalse offset: 60
//f0 b3 01 
_as3_debugline line number: 179
//60 bb 02 
_as3_getlex compatibilityErrorFunction
//20 
_as3_pushnull 
//14 23 00 00 
_as3_ifne offset: 35
//f0 b5 01 
_as3_debugline line number: 181
//60 6b 
_as3_getlex mx.resources::ResourceManager
//46 ac 02 00 
_as3_callproperty getInstance(param count:0)
//2c d2 05 
_as3_pushstring "core"
//f0 b6 01 
_as3_debugline line number: 182
//60 c0 02 
_as3_getlex VERSION_ALREADY_SET
//46 7c 02 
_as3_callproperty mx.resources:IResourceManager::getString(param count:2)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 b7 01 
_as3_debugline line number: 183
//5d 83 03 
_as3_findpropstrict Error
//d2 
_as3_getlocal <2> 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//f0 ba 01 
_as3_debugline line number: 186
//5d bb 02 
_as3_findpropstrict compatibilityErrorFunction
//d1 
_as3_getlocal <1> 
//60 c0 02 
_as3_getlex VERSION_ALREADY_SET
//4f bb 02 02 
_as3_callpropvoid compatibilityErrorFunction(param count:2)
//f0 bd 01 
_as3_debugline line number: 189
//60 c1 02 
_as3_getlex mx.core:FlexVersion::compatibilityVersionRead
//12 3c 00 00 
_as3_iffalse offset: 60
//f0 bf 01 
_as3_debugline line number: 191
//60 bb 02 
_as3_getlex compatibilityErrorFunction
//20 
_as3_pushnull 
//14 23 00 00 
_as3_ifne offset: 35
//f0 c1 01 
_as3_debugline line number: 193
//60 6b 
_as3_getlex mx.resources::ResourceManager
//46 ac 02 00 
_as3_callproperty getInstance(param count:0)
//2c d2 05 
_as3_pushstring "core"
//f0 c2 01 
_as3_debugline line number: 194
//60 be 02 
_as3_getlex VERSION_ALREADY_READ
//46 7c 02 
_as3_callproperty mx.resources:IResourceManager::getString(param count:2)
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//f0 c3 01 
_as3_debugline line number: 195
//5d 83 03 
_as3_findpropstrict Error
//d2 
_as3_getlocal <2> 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//f0 c6 01 
_as3_debugline line number: 198
//5d bb 02 
_as3_findpropstrict compatibilityErrorFunction
//d1 
_as3_getlocal <1> 
//60 be 02 
_as3_getlex VERSION_ALREADY_READ
//4f bb 02 02 
_as3_callpropvoid compatibilityErrorFunction(param count:2)
//f0 c9 01 
_as3_debugline line number: 201
//5e bd 02 
_as3_findproperty mx.core:FlexVersion::_compatibilityVersion
//d1 
_as3_getlocal <1> 
//61 bd 02 
_as3_setproperty mx.core:FlexVersion::_compatibilityVersion
//f0 ca 01 
_as3_debugline line number: 202
//5e b5 02 
_as3_findproperty mx.core:FlexVersion::compatibilityVersionChanged
//26 
_as3_pushtrue 
//61 b5 02 
_as3_setproperty mx.core:FlexVersion::compatibilityVersionChanged
//f0 cb 01 
_as3_debugline line number: 203
//47 
_as3_returnvoid 
        }// end function

        public static function get compatibilityVersion() : uint
        {
//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 a0 01 
_as3_debugline line number: 160
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 a2 01 
_as3_debugline line number: 162
//5e c1 02 
_as3_findproperty mx.core:FlexVersion::compatibilityVersionRead
//26 
_as3_pushtrue 
//61 c1 02 
_as3_setproperty mx.core:FlexVersion::compatibilityVersionRead
//f0 a4 01 
_as3_debugline line number: 164
//60 bd 02 
_as3_getlex mx.core:FlexVersion::_compatibilityVersion
//48 
_as3_returnvalue 
        }// end function

        public static function set compatibilityErrorFunction(chainedIOErrorHandler:Function) : void
        {
1  0 122//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 7a 
_as3_debugline line number: 122
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 6e 00 7a 
_as3_debug 1, 110, 0, 122
//f0 7c 
_as3_debugline line number: 124
//5e b7 02 
_as3_findproperty mx.core:FlexVersion::_compatibilityErrorFunction
//d1 
_as3_getlocal <1> 
//61 b7 02 
_as3_setproperty mx.core:FlexVersion::_compatibilityErrorFunction
//f0 7d 
_as3_debugline line number: 125
//47 
_as3_returnvoid 
        }// end function

        public static function set compatibilityVersionString(chainedIOErrorHandler:String) : void
        {
1  0 2291  1 2311  2 2331  3 2341  4 235//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 e5 01 
_as3_debugline line number: 229
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 6e 00 e5 01 
_as3_debug 1, 110, 0, 229
//ef 01 9b 08 01 e7 01 
_as3_debug 1, 1051, 1, 231
//ef 01 99 08 02 e9 01 
_as3_debug 1, 1049, 2, 233
//ef 01 9a 08 03 ea 01 
_as3_debug 1, 1050, 3, 234
//ef 01 66 04 eb 01 
_as3_debug 1, 102, 4, 235
//f0 e7 01 
_as3_debugline line number: 231
//d1 
_as3_getlocal <1> 
//2c 84 05 
_as3_pushstring "."
//46 b7 03 01 
_as3_callproperty http://adobe.com/AS3/2006/builtin::split(param count:1)
//80 0c 
_as3_coerce Array
//d6 
_as3_setlocal <2> 
//f0 e9 01 
_as3_debugline line number: 233
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
//f0 ea 01 
_as3_debugline line number: 234
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
//f0 eb 01 
_as3_debugline line number: 235
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
//f0 ed 01 
_as3_debugline line number: 237
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
//f0 ee 01 
_as3_debugline line number: 238
//47 
_as3_returnvoid 
        }// end function

        public static function get compatibilityErrorFunction() : Function
        {
//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 72 
_as3_debugline line number: 114
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 74 
_as3_debugline line number: 116
//60 b7 02 
_as3_getlex mx.core:FlexVersion::_compatibilityErrorFunction
//48 
_as3_returnvalue 
        }// end function

        public static function get compatibilityVersionString() : String
        {
1  0 2171  1 2181  2 219//f1 97 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;FlexVersion.as"
//f0 d7 01 
_as3_debugline line number: 215
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 99 08 00 d9 01 
_as3_debug 1, 1049, 0, 217
//ef 01 9a 08 01 da 01 
_as3_debug 1, 1050, 1, 218
//ef 01 66 02 db 01 
_as3_debug 1, 102, 2, 219
//f0 d9 01 
_as3_debugline line number: 217
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
//f0 da 01 
_as3_debugline line number: 218
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
//f0 db 01 
_as3_debugline line number: 219
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
//f0 dd 01 
_as3_debugline line number: 221
//d1 
_as3_getlocal <1> 
//46 b6 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toString(param count:0)
//2c 84 05 
_as3_pushstring "."
//a0 
_as3_add 
//f0 de 01 
_as3_debugline line number: 222
//d2 
_as3_getlocal <2> 
//46 b6 03 00 
_as3_callproperty http://adobe.com/AS3/2006/builtin::toString(param count:0)
//a0 
_as3_add 
//2c 84 05 
_as3_pushstring "."
//a0 
_as3_add 
//f0 df 01 
_as3_debugline line number: 223
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
