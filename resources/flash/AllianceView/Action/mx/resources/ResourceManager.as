package mx.resources
{

    public class ResourceManager extends Object
    {
        private static var implClassDependency:ResourceManagerImpl;
        private static var instance:IResourceManager;
        static const VERSION:String = "3.5.0.12683";

        public function ResourceManager()
        {
//f1 ff 07 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManager.as"
//f0 6f 
_as3_debugline line number: 111
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f1 ff 07 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManager.as"
//f0 71 
_as3_debugline line number: 113
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 72 
_as3_debugline line number: 114
//47 
_as3_returnvoid 
        }// end function

        public static function getInstance() : IResourceManager
        {
1  0 78//f1 ff 07 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManager.as"
//f0 4e 
_as3_debugline line number: 78
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//ef 01 80 08 00 4e 
_as3_debug 1, 1024, 0, 78
//f0 50 
_as3_debugline line number: 80
//60 ab 02 
_as3_getlex mx.resources:ResourceManager::instance
//11 3e 00 00 
_as3_iftrue offset: 62
//f0 54 
_as3_debugline line number: 84
//5e ab 02 
_as3_findproperty mx.resources:ResourceManager::instance
//5d 0d 
_as3_findpropstrict mx.resources::IResourceManager
//f0 55 
_as3_debugline line number: 85
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c ad 05 
_as3_pushstring "mx.resources::IResourceManager"
//46 ac 02 01 
_as3_callproperty getInstance(param count:1)
//46 0d 01 
_as3_callproperty mx.resources::IResourceManager(param count:1)
//61 ab 02 
_as3_setproperty mx.resources:ResourceManager::instance
//f0 57 
_as3_debugline line number: 87
//10 1f 00 00 
_as3_jump offset: 31
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//30 
_as3_pushscope 
//5a 00 
_as3_newcatch <0>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//f0 5f 
_as3_debugline line number: 95
//5e ab 02 
_as3_findproperty mx.resources:ResourceManager::instance
//5d b6 01 
_as3_findpropstrict mx.resources::ResourceManagerImpl
//4a b6 01 00 
_as3_constructprop mx.resources::ResourceManagerImpl(param count:0)
//61 ab 02 
_as3_setproperty mx.resources:ResourceManager::instance
//1d 
_as3_popscope 
//08 02 
_as3_kill <2>
//f0 63 
_as3_debugline line number: 99
//60 ab 02 
_as3_getlex mx.resources:ResourceManager::instance
//48 
_as3_returnvalue 
        }// end function

    }
}
