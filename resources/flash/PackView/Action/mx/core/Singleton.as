package mx.core
{

    public class Singleton extends Object
    {
        private static var classMap:Object = {};
        static const VERSION:String = "3.5.0.12683";

        public function Singleton()
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

        public static function registerClass(param1:String, param2:Class) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 b2 02 
_as3_getlex classMap
//d1 
_as3_getlocal <1> 
//66 b4 03 
_as3_getproperty {}
//80 0a 
_as3_coerce Class
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//11 08 00 00 
_as3_iftrue offset: 8
//60 b2 02 
_as3_getlex classMap
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 b4 03 
_as3_setproperty {}
//47 
_as3_returnvoid 
        }// end function

        public static function getClass(param1:String) : Class
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 b2 02 
_as3_getlex classMap
//d1 
_as3_getlocal <1> 
//66 b4 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        public static function getInstance(param1:String) : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 b2 02 
_as3_getlex classMap
//d1 
_as3_getlocal <1> 
//66 b4 03 
_as3_getproperty {}
//80 0a 
_as3_coerce Class
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//11 11 00 00 
_as3_iftrue offset: 17
//5d 83 03 
_as3_findpropstrict Error
//2c c2 05 
_as3_pushstring "No class registered for interface '"
//d1 
_as3_getlocal <1> 
//a0 
_as3_add 
//2c c3 05 
_as3_pushstring "'."
//a0 
_as3_add 
//4a 83 03 01 
_as3_constructprop Error(param count:1)
//03 
_as3_throw 
//d2 
_as3_getlocal <2> 
//2a 
_as3_dup 
//d7 
_as3_setlocal <3> 
//2c 97 02 
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
