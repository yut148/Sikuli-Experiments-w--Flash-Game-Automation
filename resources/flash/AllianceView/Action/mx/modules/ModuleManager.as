package mx.modules
{
    import en_US$controls_properties.*;
    import mx.core.*;

    public class ModuleManager extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function ModuleManager()
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 48 
_as3_debugline line number: 72
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 d0 08 
_as3_debugline line number: 1104
//47 
_as3_returnvoid 
        }// end function

        public static function getModule(installCompiledResourceBundles:String) : IModuleInfo
        {
1  0 47//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 2f 
_as3_debugline line number: 47
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 60 00 2f 
_as3_debug 1, 96, 0, 47
//f0 31 
_as3_debugline line number: 49
//5d e4 02 
_as3_findpropstrict mx.modules:ModuleManager::getSingleton
//46 e4 02 00 
_as3_callproperty mx.modules:ModuleManager::getSingleton(param count:0)
//d1 
_as3_getlocal <1> 
//46 88 04 01 
_as3_callproperty getModule(param count:1)
//48 
_as3_returnvalue 
        }// end function

        private static function getSingleton() : Object
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 47 
_as3_debugline line number: 71
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 49 
_as3_debugline line number: 73
//60 9e 02 
_as3_getlex mx.modules::ModuleManagerGlobals
//66 e6 02 
_as3_getproperty managerSingleton
//11 0f 00 00 
_as3_iftrue offset: 15
//f0 4a 
_as3_debugline line number: 74
//60 9e 02 
_as3_getlex mx.modules::ModuleManagerGlobals
//5d f4 01 
_as3_findpropstrict ModuleManager.as$26::ModuleManagerImpl
//4a f4 01 00 
_as3_constructprop ModuleManager.as$26::ModuleManagerImpl(param count:0)
//61 e6 02 
_as3_setproperty managerSingleton
//f0 4c 
_as3_debugline line number: 76
//60 9e 02 
_as3_getlex mx.modules::ModuleManagerGlobals
//66 e6 02 
_as3_getproperty managerSingleton
//48 
_as3_returnvalue 
        }// end function

        public static function getAssociatedFactory(getContent:Object) : IFlexModuleFactory
        {
1  0 61//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 3d 
_as3_debugline line number: 61
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e9 0a 00 3d 
_as3_debug 1, 1385, 0, 61
//f0 40 
_as3_debugline line number: 64
//5d e4 02 
_as3_findpropstrict mx.modules:ModuleManager::getSingleton
//46 e4 02 00 
_as3_callproperty mx.modules:ModuleManager::getSingleton(param count:0)
//d1 
_as3_getlocal <1> 
//46 89 04 01 
_as3_callproperty getAssociatedFactory(param count:1)
//48 
_as3_returnvalue 
        }// end function

    }
}
