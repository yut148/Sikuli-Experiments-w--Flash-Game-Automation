package mx.resources
{

    public class ResourceManager extends Object
    {
        private static var implClassDependency:ResourceManagerImpl;
        private static var instance:IResourceManager;
        static const VERSION:String = "3.5.0.12683";

        public function ResourceManager()
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

        public static function getInstance() : IResourceManager
        {
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
//60 ab 02 
_as3_getlex instance
//11 36 00 00 
_as3_iftrue offset: 54
//5e ab 02 
_as3_findproperty instance
//5d 0d 
_as3_findpropstrict mx.resources::IResourceManager
//60 a6 01 
_as3_getlex mx.core::Singleton
//2c 99 03 
_as3_pushstring "mx.resources::IResourceManager"
//46 ac 02 01 
_as3_callproperty getInstance(param count:1)
//46 0d 01 
_as3_callproperty mx.resources::IResourceManager(param count:1)
//61 ab 02 
_as3_setproperty instance
//10 1d 00 00 
_as3_jump offset: 29
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
//5e ab 02 
_as3_findproperty instance
//5d b6 01 
_as3_findpropstrict mx.resources::ResourceManagerImpl
//4a b6 01 00 
_as3_constructprop mx.resources::ResourceManagerImpl(param count:0)
//61 ab 02 
_as3_setproperty instance
//1d 
_as3_popscope 
//08 02 
_as3_kill <2>
//60 ab 02 
_as3_getlex instance
//48 
_as3_returnvalue 
        }// end function

    }
}
