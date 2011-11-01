package mx.modules
{
    import mx.core.*;

    public class ModuleManager extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function ModuleManager()
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

        public static function getModule(param1:String) : IModuleInfo
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d e4 02 
_as3_findpropstrict getSingleton
//46 e4 02 00 
_as3_callproperty getSingleton(param count:0)
//d1 
_as3_getlocal <1> 
//46 88 04 01 
_as3_callproperty getModule(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private static function getSingleton() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9e 02 
_as3_getlex mx.modules::ModuleManagerGlobals
//66 e6 02 
_as3_getproperty managerSingleton
//11 0d 00 00 
_as3_iftrue offset: 13
//60 9e 02 
_as3_getlex mx.modules::ModuleManagerGlobals
//5d f4 01 
_as3_findpropstrict ModuleManagerImpl
//4a f4 01 00 
_as3_constructprop ModuleManagerImpl(param count:0)
//61 e6 02 
_as3_setproperty managerSingleton
//60 9e 02 
_as3_getlex mx.modules::ModuleManagerGlobals
//66 e6 02 
_as3_getproperty managerSingleton
//48 
_as3_returnvalue 
        }// end function

        public static function getAssociatedFactory(param1:Object) : IFlexModuleFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d e4 02 
_as3_findpropstrict getSingleton
//46 e4 02 00 
_as3_callproperty getSingleton(param count:0)
//d1 
_as3_getlocal <1> 
//46 89 04 01 
_as3_callproperty getAssociatedFactory(param count:1)
//48 
_as3_returnvalue 
        }// end function

    }
}
