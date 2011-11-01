package ModuleManager.as$26
{
    import en_US$controls_properties.*;
    import flash.events.*;
    import mx.core.*;
    import mx.modules.*;

    private class ModuleManagerImpl extends EventDispatcher
    {
        private var moduleList:Object;

        private function ModuleManagerImpl()
        {
//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 7d 
_as3_debugline line number: 125
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 8b 01 
_as3_debugline line number: 139
//5e f6 01 
_as3_findproperty ModuleManager.as$26:ModuleManagerImpl::moduleList
//55 00 
_as3_newobject {object count:0}
//68 f6 01 
_as3_initproperty ModuleManager.as$26:ModuleManagerImpl::moduleList
//f0 7f 
_as3_debugline line number: 127
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 80 01 
_as3_debugline line number: 128
//47 
_as3_returnvoid 
        }// end function

        public function getModule(installCompiledResourceBundles:String) : IModuleInfo
        {
1  0 1801  1 182//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 b4 01 
_as3_debugline line number: 180
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 60 00 b4 01 
_as3_debug 1, 96, 0, 180
//ef 01 c2 02 01 b6 01 
_as3_debug 1, 322, 1, 182
//f0 b6 01 
_as3_debugline line number: 182
//60 f6 01 
_as3_getlex ModuleManager.as$26:ModuleManagerImpl::moduleList
//d1 
_as3_getlocal <1> 
//66 91 04 
_as3_getproperty {}
//60 1e 
_as3_getlex ModuleManager.as$26::ModuleInfo
//87 
_as3_astypelate 
//80 1e 
_as3_coerce ModuleManager.as$26::ModuleInfo
//d6 
_as3_setlocal <2> 
//f0 b8 01 
_as3_debugline line number: 184
//d2 
_as3_getlocal <2> 
//11 17 00 00 
_as3_iftrue offset: 23
//f0 ba 01 
_as3_debugline line number: 186
//5d 1e 
_as3_findpropstrict ModuleManager.as$26::ModuleInfo
//d1 
_as3_getlocal <1> 
//4a 1e 01 
_as3_constructprop ModuleManager.as$26::ModuleInfo(param count:1)
//80 1e 
_as3_coerce ModuleManager.as$26::ModuleInfo
//d6 
_as3_setlocal <2> 
//f0 bb 01 
_as3_debugline line number: 187
//60 f6 01 
_as3_getlex ModuleManager.as$26:ModuleManagerImpl::moduleList
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 91 04 
_as3_setproperty {}
//f0 be 01 
_as3_debugline line number: 190
//5d 96 02 
_as3_findpropstrict ModuleManager.as$26::ModuleInfoProxy
//d2 
_as3_getlocal <2> 
//4a 96 02 01 
_as3_constructprop ModuleManager.as$26::ModuleInfoProxy(param count:1)
//48 
_as3_returnvalue 
        }// end function

        public function getAssociatedFactory(getContent:Object) : IFlexModuleFactory
        {
1  1 1501  0 150//f1 e8 0a 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\modules;ModuleManager.as"
//f0 96 01 
_as3_debugline line number: 150
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
//ef 01 ea 0a 01 96 01 
_as3_debug 1, 1386, 1, 150
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
_as3_coerce ModuleManager.as$26::ModuleInfo
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
//ef 01 e9 0a 00 96 01 
_as3_debug 1, 1385, 0, 150
//f0 98 01 
_as3_debugline line number: 152
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
//f0 9a 01 
_as3_debugline line number: 154
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//60 f6 01 
_as3_getlex ModuleManager.as$26:ModuleManagerImpl::moduleList
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 8d 00 00 
_as3_jump offset: 141
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
//f0 9c 01 
_as3_debugline line number: 156
//65 01 
_as3_getscopeobject 1
//65 01 
_as3_getscopeobject 1
//6c 03 
_as3_getslot <3>
//60 1e 
_as3_getlex ModuleManager.as$26::ModuleInfo
//87 
_as3_astypelate 
//80 1e 
_as3_coerce ModuleManager.as$26::ModuleInfo
//6d 04 
_as3_setslot <4>
//f0 9e 01 
_as3_debugline line number: 158
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 87 02 
_as3_getproperty ready
//11 07 00 00 
_as3_iftrue offset: 7
//f0 9f 01 
_as3_debugline line number: 159
//10 5d 00 00 
_as3_jump offset: 93
//f0 a1 01 
_as3_debugline line number: 161
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
//f0 a5 01 
_as3_debugline line number: 165
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
//f0 a6 01 
_as3_debugline line number: 166
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
//12 0b 00 00 
_as3_iffalse offset: 11
//f0 a7 01 
_as3_debugline line number: 167
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 fd 01 
_as3_getproperty factory
//48 
_as3_returnvalue 
//f0 a9 01 
_as3_debugline line number: 169
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
//f0 9a 01 
_as3_debugline line number: 154
//32 04 03 
_as3_hasnext2 4, 3
//11 69 ff ff 
_as3_iftrue offset: -151
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//f0 ae 01 
_as3_debugline line number: 174
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
        }// end function

    }
}
