package mx.core
{

    public class Singleton extends Object
    {
        private static var classMap:Object = {};
        static const VERSION:String = "3.5.0.12683";

        public function Singleton()
        {
//f1 93 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;Singleton.as"
//f0 6a 
_as3_debugline line number: 106
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f1 93 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;Singleton.as"
//f0 76 
_as3_debugline line number: 118
//47 
_as3_returnvoid 
        }// end function

        public static function registerClass(rootURL:String, rootURL:Class) : void
        {
1  0 741  1 741  2 77//f1 93 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;Singleton.as"
//f0 4a 
_as3_debugline line number: 74
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 93 01 00 4a 
_as3_debug 1, 147, 0, 74
//ef 01 94 08 01 4a 
_as3_debug 1, 1044, 1, 74
//ef 01 9f 05 02 4d 
_as3_debug 1, 671, 2, 77
//f0 4d 
_as3_debugline line number: 77
//60 b2 02 
_as3_getlex mx.core:Singleton::classMap
//d1 
_as3_getlocal <1> 
//66 b4 03 
_as3_getproperty {}
//80 0a 
_as3_coerce Class
//d7 
_as3_setlocal <3> 
//f0 4e 
_as3_debugline line number: 78
//d3 
_as3_getlocal <3> 
//11 0a 00 00 
_as3_iftrue offset: 10
//f0 4f 
_as3_debugline line number: 79
//60 b2 02 
_as3_getlex mx.core:Singleton::classMap
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 b4 03 
_as3_setproperty {}
//f0 50 
_as3_debugline line number: 80
//47 
_as3_returnvoid 
        }// end function

        public static function getClass(installCompiledResourceBundles:String) : Class
        {
1  0 90//f1 93 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;Singleton.as"
//f0 5a 
_as3_debugline line number: 90
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 93 01 00 5a 
_as3_debug 1, 147, 0, 90
//f0 5c 
_as3_debugline line number: 92
//60 b2 02 
_as3_getlex mx.core:Singleton::classMap
//d1 
_as3_getlocal <1> 
//66 b4 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        public static function getInstance(loadNext:String) : Object
        {
1  0 1051  1 107//f1 93 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;Singleton.as"
//f0 69 
_as3_debugline line number: 105
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 93 01 00 69 
_as3_debug 1, 147, 0, 105
//ef 01 9f 05 01 6b 
_as3_debug 1, 671, 1, 107
//f0 6b 
_as3_debugline line number: 107
//60 b2 02 
_as3_getlex mx.core:Singleton::classMap
//d1 
_as3_getlocal <1> 
//66 b4 03 
_as3_getproperty {}
//80 0a 
_as3_coerce Class
//d6 
_as3_setlocal <2> 
//f0 6c 
_as3_debugline line number: 108
//d2 
_as3_getlocal <2> 
//11 15 00 00 
_as3_iftrue offset: 21
//f0 6e 
_as3_debugline line number: 110
//5d 83 03 
_as3_findpropstrict Error
//2c 96 08 
_as3_pushstring "No class registered for interface '"
//f0 6f 
_as3_debugline line number: 111
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//2c cd 01 
_as3_pushstring "'."
//a0 
_as3_add 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//f0 71 
_as3_debugline line number: 113
//d2 
_as3_getlocal <2> 
//2a 
_as3_dup 
//d7 
_as3_setlocal <3> 
//2c 9e 04 
_as3_pushstring "getInstance"
//66 b4 03 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//41 00 
_as3_call (param count:0)
//08 03 
_as3_kill <3>
//48 
_as3_returnvalue 
        }// end function

    }
}
