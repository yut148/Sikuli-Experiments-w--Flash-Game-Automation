package 
{
    import flash.events.*;
    import mx.core.*;
    import mx.modules.*;

    private class ModuleManagerImpl extends EventDispatcher
    {
        private var moduleList:Object;

        private function ModuleManagerImpl()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e f6 01 
_as3_findproperty moduleList
//55 00 
_as3_newobject {object count:0}
//68 f6 01 
_as3_initproperty moduleList
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function getModule(param1:String) : IModuleInfo
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 f6 01 
_as3_getlex moduleList
//d1 
_as3_getlocal <1> 
//66 91 04 
_as3_getproperty {}
//60 1e 
_as3_getlex ModuleInfo
//87 
_as3_astypelate 
//80 1e 
_as3_coerce ModuleInfo
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//11 11 00 00 
_as3_iftrue offset: 17
//5d 1e 
_as3_findpropstrict ModuleInfo
//d1 
_as3_getlocal <1> 
//4a 1e 01 
_as3_constructprop ModuleInfo(param count:1)
//80 1e 
_as3_coerce ModuleInfo
//d6 
_as3_setlocal <2> 
//60 f6 01 
_as3_getlex moduleList
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 91 04 
_as3_setproperty {}
//5d 96 02 
_as3_findpropstrict ModuleInfoProxy
//d2 
_as3_getlocal <2> 
//4a 96 02 01 
_as3_constructprop ModuleInfoProxy(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function getAssociatedFactory(param1:Object) : IFlexModuleFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 1e 
_as3_coerce ModuleInfo
//6d 04 
_as3_setslot <4>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 09 
_as3_coerce flash.system::ApplicationDomain
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 0a 
_as3_coerce Class
//6d 06 
_as3_setslot <6>
//65 01 
_as3_getscopeobject 1
//d1 
_as3_getlocal <1> 
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//5d 8a 04 
_as3_findpropstrict flash.utils::getQualifiedClassName
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//46 8a 04 01 
_as3_callproperty flash.utils::getQualifiedClassName(param count:1)
//85 
_as3_coerce_s 
//6d 02 
_as3_setslot <2>
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//60 f6 01 
_as3_getlex moduleList
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 75 00 00 
_as3_jump offset: 117
//09 
_as3_label 
//65 01 
_as3_getscopeobject 1
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//23 
_as3_nextvalue 
//80 03 
_as3_coerce Object
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 03 
_as3_getslot <3>
//60 1e 
_as3_getlex ModuleInfo
//87 
_as3_astypelate 
//80 1e 
_as3_coerce ModuleInfo
//6d 04 
_as3_setslot <4>
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 87 02 
_as3_getproperty ready
//11 04 00 00 
_as3_iftrue offset: 4
//10 4e 00 00 
_as3_jump offset: 78
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 8f 02 
_as3_getproperty applicationDomain
//80 09 
_as3_coerce flash.system::ApplicationDomain
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//5d 0a 
_as3_findpropstrict Class
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//46 f8 02 01 
_as3_callproperty getDefinition(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//6d 06 
_as3_setslot <6>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//65 01 
_as3_getscopeobject 1
//6c 06 
_as3_getslot <6>
//b3 
_as3_istypelate 
//12 08 00 00 
_as3_iffalse offset: 8
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 fd 01 
_as3_getproperty factory
//48 
_as3_returnvalue 
//10 11 00 00 
_as3_jump offset: 17
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d2 
_as3_getlocal <2> 
//30 
_as3_pushscope 
//5a 00 
_as3_newcatch <0>
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//2a 
_as3_dup 
//30 
_as3_pushscope 
//2b 
_as3_swap 
//6d 01 
_as3_setslot <1>
//1d 
_as3_popscope 
//08 05 
_as3_kill <5>
//32 04 03 
_as3_hasnext2 4, 3
//11 84 ff ff 
_as3_iftrue offset: -124
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
        }// end function

    }
}
