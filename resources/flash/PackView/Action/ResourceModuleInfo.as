package 
{
    import mx.modules.*;
    import mx.resources.*;

    private class ResourceModuleInfo extends Object
    {
        public var resourceModule:IResourceModule;
        public var errorHandler:Function;
        public var readyHandler:Function;
        public var moduleInfo:IModuleInfo;

        private function ResourceModuleInfo(param1:IModuleInfo, param2:Function, param3:Function)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 b0 01 
_as3_initproperty moduleInfo
//d0 
_as3_getlocal <0> 
//d2 
_as3_getlocal <2> 
//68 af 01 
_as3_initproperty readyHandler
//d0 
_as3_getlocal <0> 
//d3 
_as3_getlocal <3> 
//68 ae 01 
_as3_initproperty errorHandler
//47 
_as3_returnvoid 
        }// end function

    }
}
